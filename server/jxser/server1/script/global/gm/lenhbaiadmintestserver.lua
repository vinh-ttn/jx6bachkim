IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\activitysys\\npcdailog.lua");
Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\testserver.lua")
Include("\\script\\global\\general\\thunghiem\\main.lua")
Include("\\script\\gm_tool\\dispose_item.lua");
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\systemconfig.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\general\\nguyenlieuevent12thang.lua")
Include("\\script\\global\\pgaming\\trangbixanh\\tuychontrangbixanh.lua")
Include("\\script\\global\\gm\\gm_lib.lua");
Include("\\script\\global\\gm\\gm_help.lua");
Include("\\script\\global\\gm\\gm_script.lua");
-- Tr��c khi s� d�ng ���c ch�c n�ng GM, ng��i ch�i ph�i nh�p m�t kh�u
function GMPassword()
	local nResult, nIdx = CheckGameMaster()
	if (nResult == 0) then
		Talk(1, "", "B�n kh�ng ph�i l� <color=red>GM<color>, kh�ng th� s� d�ng v�t ph�m n�y");
	return 0 end

	local szName = GetName();
	local szAccount = GetAccount();
	local nIsLogin = GetTaskTemp(TASKTEMP_LOGIN_LBGM);
	if (nIsLogin == 1) then
		DialogMain();
	return 1 end
	
	g_AskClientStringEx("", 1, 50, "Nh�p m�t kh�u:", {EnterGMPassword, { nIdx, szAccount, szName}})
end

function EnterGMPassword(nIdx, szAccount, szName, szPassword)
	if (TAB_LIST_GAMEMASTER[nIdx]["Password"] ~= szPassword) then
		Talk(1, "", "M�t kh�u kh�ng ��ng, vui l�ng ki�m tra l�i!");
	return 0 end
	DialogMain();
	SetTaskTemp(TASKTEMP_LOGIN_LBGM, 1)
	Msg2Player("B�n �� nh�p m�t kh�u ��ng, ��ng nh�p th�nh c�ng! B�y gi� c� th� s� d�ng ���c ch�c n�ng d�nh cho GM.")
end

TITLEDIALOG = "T�n nh�n v�t: <color=green>%s<color>\n".."T�n t�i kho�n: <color=green>%s<color>\n".."T�a ��: <color=green>%d, %d/%d<color>" 
function DialogMain(nItemIndex)
	dofile("script/global/gm/lenhbaiadmintestserver.lua")
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};
			tinsert(tbSay, "Test Server/testserver");	
			tinsert(tbSay, "X�a to�n b� item trong h�nh trang/XoaItemHanhTrangGM");
			tinsert(tbSay, "Nh�n nguy�n li�u ho�t ��ng/nguyenlieuhoatdong");
			--tinsert(tbSay, "Nh�n trang b� xanh t�y ch�n op 1 d�ng/TrangBiXanhOf1DongTuyChon");
			tinsert(tbSay, "L�y v�t ph�m/TakeSpecifiedItem");			
			tinsert(tbSay, "K� n�ng/SkillsSystem");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end
--------------------------------------------------------------
--						Nguy�n Li�u Ho�t ��ng						--
--------------------------------------------------------------

function nguyenlieuhoatdong()
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};	
			if EventTuDong == 1 then
			tinsert(tbSay, "Nh�n nguy�n li�u event/NguyenLieuEvent");
			end
			tinsert(tbSay, "Nguy�n Li�u N�ng C�p Ng�a/nguyenlieunangcapngua");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function nguyenlieunangcapngua()
		local strFaction = GetFaction()
		local nW,nX,nY = GetWorldPos();
		local tbSay = {format(TITLEDIALOG, GetName(), GetAccount() ,nW,nX,nY)};	
			tinsert(tbSay, "Nh�n 1 b� n�ng c�p chi�n m�/cotuoivadaythung");
			tinsert(tbSay, "Nh�n �i�m t�ch l�y n�ng c�p 10.000 �i�m/bacdauthuanmadon");
			tinsert(tbSay, "K�t th�c ��i tho�i./no")			
		CreateTaskSay(tbSay)
	return 1;
end

function cotuoivadaythung()
AskClientForNumber("cotuoivadaythung2",0,1999,"Nh�p S� L��ng:") 
end

function cotuoivadaythung2(num)
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4891,1,0,0},nCount = num}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4892,1,0,0},nCount = num}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4894,1,0,0},nCount = num}, "test", 1);
end


function bacdauthuanmadon()
	SetTask(5953,10000)
Talk(1,"","V�o NPC N�ng C�p Th�n M� �� r�t �i�m.")
end
--------------------------------------------------------------
--						X�a H�nh Trang						--
--------------------------------------------------------------
function XoaItemHanhTrangGM()
	Say("B�n c� mu�n x�a to�n b� kh�ng?", 2, "��ng v�y!/xoatoanbogm", "Ta nh�m./no")
end

function xoatoanbogm()
--Msg2Player("X�a th�nh c�ng!")
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
RemoveItemByIndex(v)
end
ItemIndex = AddItem(6,1,4851,0,0,0)
ItemIndex2 = AddItem(6,1,1266,0,0,0)
ItemIndex3 = AddItem(6,1,4850,0,0,0)
ItemIndex4 = AddItem(6,1,4890,0,0,0)
SetItemBindState(ItemIndex, -2)
SetItemBindState(ItemIndex2, -2)
SetItemBindState(ItemIndex3, -2)
SetItemBindState(ItemIndex4, -2)
end
--------------------------------------------------------------
--						L�y V�t Ph�m						--
--------------------------------------------------------------
function TakeSpecifiedItem()
%tbAloneScript:TakeSpecifiedItem()
end
function SkillsSystem()
%tbAloneScript:SkillsSystem()
end
----------------------------------
function GMLoginInGame()
	if (CheckGameMaster() == 2) then
		if (CalcEquiproomItemCount(6,1,4890,-1) == 0) then
			local nItemIndex = AddItem(6,1,4890,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (CalcEquiproomItemCount(6,1,1266,-1) == 0) then
			local nItemIndex = AddItem(6,1,1266,1,0,0);
			SetItemBindState(nItemIndex, -1);
		end
		if (GetLevel() < 5) then
			ST_LevelUp(5-GetLevel())
		end
		
		if (Title_GetActiveTitle() ~= 5000) then
			SetTask(1122, 5000)
			Title_AddTitle(5000, 1, 30*24*60*60*18);
			Title_ActiveTitle(5000);
		end
	end
end

function Write()
	local data = "goldequip.txt";
	local str = "";
	for i = 5670, 5919 do
		local nItemIndex = NewItemEx(4,0,1,0,i-1,0,0,0,0,0,0,0,0,0,0,0)
		str = str..format("\t\t{\"%s\",%d},\n",GetItemName(nItemIndex),i)
	end
	-- for i = 4813, 4832 do
		-- local nItemIndex = NewItemEx(4,0,1,0,i-1,0,0,0,0,0,0,0,0,0,0,0)
		-- str = str..format("\t\t{\"%s\",%d},\n",GetItemName(nItemIndex),i)
	-- end
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end

-- Ki�m tra GM (ki�m tra xem t�i kho�n, nh�n v�t n�y c� ph�i l� GM hay kh�ng?)
-- Gi� tr� tr� v�: [-2]: L�i table - [0]: kh�ng ph�i GM - [1]: t�i kho�n l� GM - [2]: t�n t�i kho�n v� nh�n v�t l� GM
--	Gi� tr� th� 2: s� th� t� c�a TK
function CheckGameMaster()
	if not (TAB_LIST_GAMEMASTER) then
		print("Khong tim thay table!")
	return -2 end
	
	for i = 1, getn(TAB_LIST_GAMEMASTER) do
		if not (TAB_LIST_GAMEMASTER[i]["Account"]) then
			print("Khong tim thay string [Account] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Player"]) then
			print("Khong tim thay table [Player] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Password"]) then
			print("Khong tim thay string [Password] trong danh sach table!!!")
		return -2 end
		
		if not (TAB_LIST_GAMEMASTER[i]["Rank"]) then
			print("Khong tim thay string [Rank] trong danh sach table!!!")
		return -2 end
		
		if (TAB_LIST_GAMEMASTER[i]["Account"] == GetAccount()) then
			for k = 1, getn(TAB_LIST_GAMEMASTER[i]["Player"]) do
				if (TAB_LIST_GAMEMASTER[i]["Player"][k] == GetName()) then
				return 2, i end
			end
		return 1, i end
	end
return 0 end

function StartGameServer()
	for i = 1, getn(TAB_LINKFILEDATA) do
		FileSystem_LoadFile(TAB_LINKFILEDATA[i][1])
	end
end

-- Thi�t l�p d� li�u
--		+ szLinkFile: ���ng d�n file d�ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: T� kh�a c�n load
--		+ szValue: Gi� tr� c�a t� kh�a ��
function FileSystem_SetData(szLinkFile, szSection, szKey, szValue)
	IniFile_SetData(szLinkFile, szSection, szKey, szValue)
end

function FileSystem_SaveData(szLinkFile)
	IniFile_Save(szLinkFile, szLinkFile)
end

-- L�y d� li�u
--		+ szLinkFile: ���ng d�n file d�ng "\\data\\log.txt"
--		+ szSection: "SECTION"
--		+ szKey: T� kh�a c�n load
function FileSystem_GetData(szLinkFile, szSection, szKey)
	return IniFile_GetData(szLinkFile, szSection, szKey)
end

-- Load d� li�u
--		+ szLinkFile: ���ng d�n file d�ng "\\data\\log.txt"
function FileSystem_LoadFile(szLinkFile)
	File_Create(szLinkFile)
	return IniFile_Load(szLinkFile, szLinkFile)
end

-- L�y danh s�ch trong file:
--		+ szLinkFile: ���ng d�n file d�ng "\\data\\log.txt"
--		+ szSection = "TABLE"
--> Gi� tr� tr� v�: S� l��ng d�ng, danh s�ch table
function FileSystem_GetCount(szLinkFile, szSection)
	local tbKey = {}
	local nFile = TabFile_Load(szLinkFile, szSection)
	if nFile ~= 1 then
		print("T�p tin kh�ng t�n t�i ho�c ch�a c� d� li�u!")
		return 0
	end
	
	for i = 2, TabFile_GetRowCount(szSection) do
		local szKey = TabFile_GetCell(szSection, i, "["..szSection.."]")
		local strKey = split(szKey, "=")
		if strKey[2] then
			tbKey[getn(tbKey)+1] = strKey;
		end
	end
	
	return getn(tbKey), tbKey
end

function GetIP()
	local tbIP = split(GetIP(), " : ")
	return tbIP[1], tbIP[2]
end

function OnTimer()
	-- SetFightState(0); --Thi�t l�p tr�ng th�i chi�n ��u
	-- ForbidChangePK(1); --C�m chuy�n PK
	-- SetPKFlag(2); --Thi�t l�p PK
	-- SetChatFlag(1); --C�m ch�t
	-- DisabledStall(1); --C�m b�y b�n
	-- ForbitTrade(1); --C�m giao d�ch
	-- DisabledUseTownP(1); --C�m s� d�ng THP
	-- ForbidEnmity(1); --C�m c�u s�t
	-- SetCreateTeam(0); --Thi�t l�p t�o t� ��i
	local nPlayerIndex = PlayerIndex or 0;
	local szName = GetName() or "";
	local szAccount = GetAccount() or "";
	local nTimerOut = GetTaskTemp(TASKTEMP_KICKOUT);
	local nTime = GetCurServerTime();
	local nTimeNow = (nTimerOut - nTime) + TIMER_KICKOUT ;
	Msg2Player("<color=cyan>B�n c�n "..nTimeNow.." gi�y n�a s� b� h� th�ng kick ra kh�i game.")
	if (nTimeNow == 0) then
		SetTaskTemp(TASKTEMP_KICKOUT, 0)
		OfflineLive(nPlayerIndex);
		KickOutSelf(nPlayerIndex);
		print(format("[LOCKED] - Nguoi choi %s(%s) da bi kick ra khoi server!", szName, szAccount));
		StopTimer(TIMETASK_ID);
	end
end
