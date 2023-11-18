---------------Youtube PGaming---------------
Include("\\script\\lib\\composeex.lua")
Include("\\script\\activitysys\\config\\2012\\head.lua")
Include("\\script\\activitysys\\config\\2012\\variables.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\lib\\progressbar.lua")


tbMaterial_Medal = {
	[1]={szName="Ng�i Sao Chi�n Th�ng",tbProp={6,1,1494,1,0,0},nExpiredTime=20191001,nCount=10,},
	[2]={szName="Ph�o Trung",tbProp={6,1,1352,1,0,0},nExpiredTime=20191001,nCount=3,},
	}
tbMaterial_Shijin = {szName="Ng�n L��ng",nJxb=150000,nCount=1,}	
	
tbProduct = {
	[1] = {szName="qu� qu�c kh�nh",tbProp={6,1,1495,1,0,0},nExpiredTime=20191001,},
	[2] = {szName="Ph�o ��i",tbProp={6,1,1353,1,0,0},nExpiredTime=20191001,}
	}

tbMedalLevelUpRate = {25,35 }	

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
	--�������Ϊ�O��ʹ�AĬ��ֵ
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
DynamicExecuteByPlayer(PlayerIndex, "\\script\\activitysys\\config\\2012\\update_xunzhang.lua",  "tbProgressBar:OpenByConfig", 14, self.WantCompose, {self, GetName()})
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
		Msg2Player("Ch?t�o th�t b�i, m�t �i m�t s?nguy�n li�u.")
		return 0;
	end
	local bSuccess = self:CanCompose()
	if bSuccess == 0 then
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, self.tbFormula.tbLog.szFail)
		Msg2Player("Th�t ��ng tiOc, n�ng c�p th�t b�i")
		return 0
	else
		%tbLog:PlayerAwardLog(%EVENT_LOG_TITLE, self.tbFormula.tbLog.szSuccess)
		Msg2Player("Ch�c mong, n�ng c�p th�nh c�ng")
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
		
		
		tbFormulaList.tbProduct = %tbProduct[nType]
		tbFormulaList.nRate = %tbMedalLevelUpRate[nType]
		tbFormulaList.tbLog = %tbMedalLog[nType]
		p = %tbUpdateXunZhang:new(tbFormulaList, "updatemedal", INVENTORY_ROOM.room_equipment)
		tinsert(self.tbUpdateCompose, nType, p)
	end

end

function pActivity:toUpdatecompose(nType)
	self.tbUpdateCompose[nType]:ComposeDailog()
end

pActivity.nPak = curpack()