---------------Youtube PGaming---------------
Include("\\script\\lib\\composeex.lua")
Include("\\script\\activitysys\\config\\2002\\phongphaotieu\\head.lua")
Include("\\script\\activitysys\\config\\2002\\phongphaotieu\\variables.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
tbMaterial_Medal = {
	[1]={szName="Ph�o Ti�u",tbProp={6,1,1351,1,0,0},nExpiredTime=nTime,nCount=10,},
	}
tbMaterial_Shijin = {szName="Ph�o Trung",tbProp={6,1,1352,1,0,0},nExpiredTime=nTime,nCount=2,}
tbMaterial_Money = {szName="Ng�n L��ng",nJxb=1000,nCount=1,}	

tbProduct = {
	[1] = {szName="Phong Ph�o Ti�u ��c Bi�t",tbProp={6,1,1354,1,0,0},nExpiredTime=nTime,},
	}



tbMedalLog = {
	[1] = {
		szSuccess = "NangcapThanhCongPhaoTrung",
		szFail = "NangcapThatBaiPhaoTrung",
		},
	[2] = {
		szSuccess = "NangcapThanhCongPhaoDai",
		szFail = "NangcapThatBaiPhaoDai",
		},
	}

pActivity.tbUpdateCompose = {}
tbUpdateXunZhang = tbActivityCompose:new()

function tbUpdateXunZhang:ComposeDailog()
	if self.nRoomType == INVENTORY_ROOM.room_giveitem then
		return self:ComposeGiveUI()
	end
	local tbMaterial = self.tbFormula.tbMaterial
	local tbProduct = self.tbFormula.tbProduct
	
	local szComposeTitle = self.tbFormula.szComposeTitle or format("��i %s", tbProduct.szName)
	
	local szMsg = format("%s y�u c�u: <enter>%s", szComposeTitle ,self:GetMaterialList(tbMaterial))
	local tbOpt = {}
	tbOpt[1] = {"X�c nh�n", self.OpenProgressBar, {self}}
	tbOpt[2] = {"H�y b� "}
	CreateNewSayEx(szMsg, tbOpt)
	
end


function tbUpdateXunZhang:OpenProgressBar()
	local tbMaterial	= self.tbFormula.tbMaterial
	local nComposeCount = 1
	if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>��i hi�p mang nguy�n li�u kh�ng �� r�i!<color>"
		Talk(1, "", szMsg)
		return 0;
	end
	g_AskClientStringEx("", 0, 3, "Nh�p s� l��ng:", {self.a, {self}})
end
	
function tbUpdateXunZhang:a(n_key)
for i=1,n_key do
DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\2002\\update_xunzhang.lua",  "tbProgressBar:OpenByConfig", 14, self.WantCompose, {self, GetName()})
end
end

function tbUpdateXunZhang:CanCompose()
	local nRate = random(1,100)
	if nRate <= self.tbFormula.nRate then
		return 1
	else
		return 0
	end
end

function tbUpdateXunZhang:WantCompose(szName)
	local nPlayerIndex = SearchPlayer(szName)
	if nPlayerIndex <= 0 then
		return 
	end
	CallPlayerFunction(nPlayerIndex, self.Compose, self)
end

function tbUpdateXunZhang:Compose()
	local tbMaterial	= self.tbFormula.tbMaterial
	local tbProduct		= self.tbFormula.tbProduct
	
	nComposeCount = nComposeCount or 1
	
	if type(self.tbFormula.pLimitFun) == "function" then
		if self.tbFormula:pLimitFun(nComposeCount) ~= 1 then
			return 0
		end
	end
	local nFreeItemCellLimit = self.tbFormula.nFreeItemCellLimit or 1
	nFreeItemCellLimit = 10
	
	if self.tbFormula.nWidth ~= 0 and self.tbFormula.nHeight ~= 0 and CountFreeRoomByWH(self.tbFormula.nWidth, self.tbFormula.nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d � h�nh trang", nFreeItemCellLimit, self.tbFormula.nWidth, self.tbFormula.nHeight))
		return 0
	end
	if self:CheckMaterial(tbMaterial, nComposeCount) ~=1 then
		local szMsg = self.tbFormula.szFailMsg or "<color=red>��i hi�p mang nguy�n li�u kh�ng �� r�i!<color>"
		Talk(1, "", szMsg)
		return 0;
	end
	if self:ConsumeMaterial(tbMaterial, nComposeCount, self.szLogTitle) ~= 1 then
		Msg2Player("Ch� t�o th�t b�i.")
		return 0;
	end
	local bSuccess = self:CanCompose()
	local nYear  = tonumber(date("%y"));
	local nTime = "20"..nYear.."0301"
	if bSuccess == 0 then
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, self.tbFormula.tbLog.szFail)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1357,1,0,0}, nExpiredTime=nTime,}, "test", 1);
		return 0
	else
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, self.tbFormula.tbLog.szSuccess)
	end
	
	if type(tbProduct) == "table" then
		tbAwardTemplet:GiveAwardByList(tbProduct, self.szLogTitle, nComposeCount)
	end
	
	if type(self.tbFormula.pProductFun) == "function" then
		
		self.tbFormula:pProductFun(nComposeCount)

	end
	return 1;
end
function pActivity:InitUpdateCompose()
	self.tbUpdateCompose = {}
	for nType=1,getn(%tbMaterial_Medal) do
		tbFormulaList = {	
			nWidth = 1,
			nHeight = 1,
			nFreeItemCellLimit = 0.02,
			}
		tbFormulaList.tbMaterial = {}
		tbFormulaList.tbProduct = {}
		tinsert(tbFormulaList.tbMaterial, %tbMaterial_Medal[nType])
		tinsert(tbFormulaList.tbMaterial, %tbMaterial_Shijin)
		tinsert(tbFormulaList.tbMaterial, %tbMaterial_Money)
		
		tbFormulaList.tbProduct = %tbProduct[nType]
		tbFormulaList.nRate = %TyLeGhepPhongPhaoTieu[nType]
		tbFormulaList.tbLog = %tbMedalLog[nType]
		p = %tbUpdateXunZhang:new(tbFormulaList, "updatemedal", INVENTORY_ROOM.room_equipment)
		tinsert(self.tbUpdateCompose, nType, p)
	end

end

function pActivity:toUpdatecompose1(nType)
	self.tbUpdateCompose[nType]:ComposeDailog()
end

pActivity.nPak = curpack()