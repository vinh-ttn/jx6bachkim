Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\namcung\\hotrogm.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\quanly.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua")
tbGmRole = {}
tbGmRole.nPak = curpack()
tbGmRole.tbAccount = 
{
	["2"] = 
	{
		"AdminAd"
	},
	["123456"] = 
	{
		"tester4"
	},
	["123456"] = 
	{
		"NamCung5"
	},
	
	
}
tbGmRole.tbSkill = 
{
	732,
	733
}

function tbGmRole:CheckAccountAndRoleName()
	local szAccount = GetAccount()
	local szName = GetName()
	local tbRoleList = self.tbAccount[szAccount]
	if tbRoleList then
		for i=1, getn(tbRoleList) do
			if tbRoleList[i] == szName then
				return 1
			end
		end
	end
end

function tbGmRole:Change2GM()
	if not self:CheckAccountAndRoleName() then
		return
	end
	for i=1, getn(self.tbSkill) do
		AddMagic(self.tbSkill[i], 1)
	end
	
	local nLevel = GetLevel()
	if nLevel < 120 then
		ST_LevelUp(120-nLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	if CalcFreeItemCellCount() >= 1 then
		local nItemIndex = AddItem(6,1,4257,1,0,0)
		SetItemBindState(nItemIndex, -2)
	end
	
end
--------------------------------------------------------
function tbGmRole:GMC_Menu()
	 dofile("script/global/gmrole.lua");
	if CheckAccountGM() then
	
	SetTaskTemp(2,0)
	SetTaskTemp(3,0)
	SetTaskTemp(200,0)
	SetTaskTemp(201,0)
	w,x,y=GetWorldPos()
	SubWorld = SubWorldID2Idx(w)
	SubName=SubWorldName(SubWorld)
	local szTitle = "<npc><color=red>H� tr� GM<color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter><color=Yellow>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! <color><enter><color=red>V� Tr�<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-T�a �� X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
		local tbOpt =
	{
		{"H� tr� GM Test Server", gmtest},
		{"Qu�n l� Ng��i Ch�i", QLG}, 
		{"D�ch chuy�n t�c th�i", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {self.DenDD, {self}} }}, 
		{"��n b�n �� c�ng th�nh chi�n", gopos_sevenctc},
		{"Th�ng b�o quan tr�ng d�nh cho GM", thongbaoquantrong},
		{"Kick All nh�n v�t �ang Online",kickroll},
		{"T�m v� tr� nh�n v�t", g_AskClientStringEx, {GetName(), 0, 300, "T�n nh�n v�t", {self.FindRole, {self}} }}, 
		{"L�y v�t ph�m", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th�ng s� ITEM", {self.TaoItem, {self}} }},
		{"GM hi�n th�n",DelSkill,{733}},
		{"GM �n th�n",AddSkill,{733}},
		--{"L�y Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {self.AddSkill, {self}} }}, 
		--{"X�a Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {self.DelSkill, {self}} }},
		--{"L�y danh s�ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {self.AddDSSkill, {self}} }}, 
		--{"X�a danh s�ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {self.DelDSSkill, {self}} }}, 
		{"Reload file", Reloadfile},
		{"K�t Th�c H� Tr�"}
	}
	CreateNewSayEx(szTitle, tbOpt)
elseif CheckAccountMod() then
	
	SetTaskTemp(2,0)
	SetTaskTemp(3,0)
	SetTaskTemp(200,0)
	SetTaskTemp(201,0)
	w,x,y=GetWorldPos()
	SubWorld = SubWorldID2Idx(w)
	SubName=SubWorldName(SubWorld)
	local szTitle = "<npc><color=red>H� tr� GM<color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter><color=Yellow>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! <color><enter>Script GM By <color=orange>Nam Cung Nh�t Thi�n<color> - <color=green>https://www.facebook.com/nhatthienpro<color><enter><color=red>V� Tr�<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-T�a �� X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"
		local tbOpt =
	{
		{"H� tr� GM Test Server", gmtest},
		--{"Qu�n l� Ng��i Ch�i", QLG}, 
		{"D�ch chuy�n t�c th�i", g_AskClientStringEx, {"53,200,201", 0, 256, "Map,X,Y", {self.DenDD, {self}} }}, 
		{"Th�ng b�o quan tr�ng d�nh cho GM", thongbaoquantrong},
		{"Kick All nh�n v�t �ang Online",kickroll},
		{"T�m v� tr� nh�n v�t", g_AskClientStringEx, {GetName(), 0, 300, "T�n nh�n v�t", {self.FindRole, {self}} }}, 
		--{"L�y v�t ph�m", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th�ng s� ITEM", {self.TaoItem, {self}} }},
		{"GM hi�n th�n",DelSkill,{733}},
		{"GM �n th�n",AddSkill,{733}},
		--{"L�y Skills", g_AskClientStringEx, {"1200,20", 0, 256, "ID Skill", {self.AddSkill, {self}} }}, 
		--{"X�a Skills", g_AskClientStringEx, {"1200", 0, 300, "ID Skill", {self.DelSkill, {self}} }},
		--{"L�y danh s�ch Skills", g_AskClientStringEx, {"1200,1210", 0, 256, "ID Skill", {self.AddDSSkill, {self}} }}, 
		--{"X�a danh s�ch Skills", g_AskClientStringEx, {"1,1500", 0, 256, "ID Skill", {self.DelDSSkill, {self}} }}, 
		--{"Reload file", Reloadfile},
		{"K�t Th�c H� Tr�"}
	}
	CreateNewSayEx(szTitle, tbOpt)
else
		Msg2Player("Ch� c� <color=orange>GM Ho�c Mod<color> m�i s� d�ng ���c v�t ph�m n�y. !");
		return 0
end

end
--=======================Quan ly gamer====================================
function QLG() 
Quanly_player(sel)
--Say("Xin Ch�n Ch� N�ng?:",4,"Xem nh�n v�t �ang online/Show",
					--"Xem Thong Tin Gamer (1~100)/Show100",
					--"Xem Thong Tin Gamer (101~200)/Show200",
					--"Xem Thong Tin Gamer (201~300)/Show300",
					--"Kick ra ch�ng Rollback/kickall",
					--"Quan Ly Gamer/chaozuo",
					--"Quan Ly Exp/quanlyexpsv",
					--"Gia Tang Chuyen Sinh/adminnnn",
				--	"Thoat./")
end 
--function Show()
--for i=1,GetPlayerCount() do
	--gmidx=PlayerIndex
	--PlayerIndex=i
	--TarName=GetName()
	--PlayerIndex=gmidx
                --  local W,X,Y=GetWorldPos()
                --  local nX = X/8
               --   local nY=Y/16
	--Msg2Player("ID "..i.." Ten "..TarName.." t�i t�a �� "..nX.."/"..nY.." t�i mapID "..W.."");
--end
--end;

--function kickall()
	--for i=1,GetPlayerCount() do
		--gmidx=PlayerIndex
		--PlayerIndex=i
		--KickOutSelf()
		--PlayerIndex=gmidx
	--end
--end; 

--function quanlyexpsv()
--Say("Admin anh mu�n g�?:",5,
	            ---"x2 Exp Server/#expsv(2)",
		--"x3 Exp Server/#expsv(3)",
		--"x4 Exp Server/#expsv(4)",
		--"x5 Exp Server/#expsv(5)",
		--"Exp Tro Lai Nhu Cu/#expsv(1)",
		--"Thoat./")
--end
--function expsv(x)
--AddSkillState(440, 1, 1, 64800);
--SetGlbMissionV(27,x)
--AddGlobalCountNews("Server �ang Exp Trong Qu� Tr�nh Tu Luy�n !",3)
--end
--==========================================================================================================
function tbGmRole:AddDSSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do AddMagic(i,20) end
end 

function tbGmRole:DelDSSkill(szPos) 
      local tbPos = lib:Split(szPos, ",")
       local s = tonumber(tbPos[1])
       local e = tonumber(tbPos[2])
      for i=s,e do DelMagic(i) end
end 

function tbGmRole:AddSkill(szPos)
       local tbPos = lib:Split(szPos, ",")
       local id = tonumber(tbPos[1])
       local cap = tonumber(tbPos[2])
      AddMagic(id,cap)
end

function tbGmRole:DelSkill(szPos) 
      local idskill = tonumber(szPos) 
      DelMagic(idskill) 
end 

function tbGmRole:NewWorld(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2]) 
local y =  tonumber(tbPos[3]) 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y)
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 

end 

function tbGmRole:DenDD(szPos) 
local tbPos = lib:Split(szPos, ",") 
local nMapId = GetWorldPos()
local m = tonumber(tbPos[1]) 
local x =  tonumber(tbPos[2])*8 
local y =  tonumber(tbPos[3])*16 
if nMapId == m then 
SetPos(x, y) 
else 
NewWorld(m, x, y) 
	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3)  
end 
end

function tbGmRole:FindRole(szName) 
local nPlayerIndex = PlayerIndex 
local nPak = usepack(self.nPak) 
CallPlayerFunction(nPlayerIndex, QueryWiseManForSB, "tbGmRole_Finded", "tbGmRole_UnFind", 0, szName); 
usepack(nPak) 
end 


function tbGmRole:Finded(szTargetName, szMapName, nSubWorldID, nPosX, nPosY)
local toadox = nPosX/8
local toadoy = nPosY/16 
local szTitle = format("<color=yellow>%s<color>: �ang � <color=yellow>%s<color>  t�a �� <color=red>%d / %d<color>,               Map <color=red>%d<color>", szTargetName, szMapName,toadox,toadoy,nSubWorldID) 
local tbOpt = 
{ 
{"��a ta ��n ng��i ��",self.NewWorld, {self, format("%d,%d,%d",nSubWorldID, nPosX, nPosY)}},
{"K�t th�c ��i tho�i"} 
} 
CreateNewSayEx(szTitle, tbOpt) 
end 


function tbGmRole_Finded(TargetName, MoneyToPay, LifeMax, ManaMax, PKValue, PlayerLevel, MapName, nPosX, nPosY, nSex, nWorldRank, nSubWorldID, nFightMode, bTargetProtect)
	tbGmRole:Finded(TargetName, MapName, nSubWorldID, nPosX, nPosY)
end

function tbGmRole_UnFind(TargetName, MoneyToPay)
	Talk(1, "", format("<#16082>%s", TargetName))
end

function gmtest()
	namcung2()
end
function gopos_sevenctc()
	Say("Ng��i mu�n �i chi�n tr��ng n�o c�a Th�t Th�nh ��i Chi�n?", 8,
		"Chi�n tr��ng Th�nh ��/#goto_ctc(1)",
		"Chi�n tr��ng Bi�n Kinh/#goto_ctc(2)",
		"Chi�n tr��ng ��i L�/#goto_ctc(3)",
		"Chi�n tr��ng Ph��ng T��ng/#goto_ctc(4)",
		"Chi�n tr��ng L�m An/#goto_ctc(5)",
		"Chi�n tr��ng T��ng D��ng/#goto_ctc(6)",
		"Chi�n tr��ng D��ng Ch�u/#goto_ctc(7)",
		"�� ta suy ngh� l�i/Cancel")
end
function goto_ctc(nIndex)
	if nIndex == 1 then 	NewWorld(926, 1713,3296)
	elseif nIndex == 2 then	NewWorld(927, 1750,3386)
	elseif nIndex == 3 then	NewWorld(928, 1716,3292)
	elseif nIndex == 4 then	NewWorld(929, 1763,3507)
	elseif nIndex == 5 then	NewWorld(930, 1752,3392)
	elseif nIndex == 6 then	NewWorld(931, 1712,3294)
	elseif nIndex == 7 then	NewWorld(932, 1714,3293)
	end
end
function tbGmRole:TaoItem(szItem)
	local szICode = lib:Split(szItem, ",");
	local n = getn(szICode);
	if (n ~= 1) then
	if (n < 6) then Talk(1, "", format("Sai Item code. Thi�u tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	if (n > 7) then Talk(1, "", format("Sai Item code. V��t qu� tr��ng d� li�u. Nh�p l�i: <color=yellow>%s<color>",n)); return end
	local itclass = tonumber(szICode[1]); 
	local ittype = tonumber(szICode[2]); 
	local itid = tonumber(szICode[3]); 
	local itlv = tonumber(szICode[4]); 
	local itseri = tonumber(szICode[5]); 
	local itluck = tonumber(szICode[6]); 
	local itmagic = tonumber(szICode[7]); 
	if (itlv < 0) then Talk(1, "", format("C�p �� m�n �� kh�ng ���c th�p. Nh�p l�i: <color=yellow>%s<color>",itlv)); return end
	if (itlv > 10) then Talk(1, "", format("Ch� h� tr� c�p 10. Nh�p l�i:<color=yellow>%s<color>",itlv)); return end
	if (itmagic == nil) then itmagic=0; end
	AddItem(itclass,ittype,itid,itlv,itseri,itluck,itmagic);
	else
	local EquipId = tonumber(szICode[1]); 
	AddGoldItem(0, EquipId);
	end
end