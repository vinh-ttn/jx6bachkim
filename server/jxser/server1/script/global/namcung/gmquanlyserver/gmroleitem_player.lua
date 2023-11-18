IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\libgm.lua")

tbGMJX = {}
function tbGMJX:_init()
	self.ListPlayer = {};
	self.ListBand = {};
	self.MuteChat = {};
	self.PlayerId = {};
	self.ListName = {};
	self.ListGift = {};
	self.Item = {{}};
	self.ListIdxKichOut = {};
end
tbGMJX:_init()

tbGMJX.szFile = "\\dulieu\\bandbygm.dat"
server_loadfile(tbGMJX.szFile)

--********************M� kh�a nh�n v�t t�m th�i v� v�nh vi�n*********************************
function Unlock1()
	AskClientForString("MoKhoaTT","",1,999999999,"T�n T�i Kho�n")
end
function Unlock2()
	AskClientForString("UnlockPlayer","",1,999999999,"T�n T�i Kho�n")
end
function MoKhoaTT(nVar)
	if not tbGMJX.ListPlayer[nVar] then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng t�n t�i trong h� th�ng <color=orange> GM..");
		return
	end
	if not tbGMJX.ListName[nVar] then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng b� kh�a t�m th�i.");
		return
	end	
	if not tbGMJX.ListBand[tbGMJX.ListName[nVar]] then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng b� kh�a t�m th�i.");
		return
	end
	tbGMJX.ListBand[tbGMJX.ListName[nVar]] = nil
	Msg2Player(format("<color=orange>GM<color> �� m� kh�a t�m th�i cho t�i kho�n: <color=yellow>%s",tbGMJX.ListName[nVar]))
end
function UnlockPlayer(zVar)
	local IsBand = server_getdata(tbGMJX.szFile,"ACCOUNT_BAND_FORVER",zVar);
	if not IsBand or IsBand == "" then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng b� kh�a v�nh vi�n.");
		return
	end
	server_setdata(tbGMJX.szFile,"ACCOUNT_BAND_FORVER",zVar,"")
	server_savedata(tbGMJX.szFile);
	Msg2Player("<color=orange>GM<color> �� m� kh�a v�nh vi�n cho t�i kho�n: <color=yellow>"..zVar.."")
end
--********************Kh�a nh�n v�t t�m th�i v� v�nh vi�n*********************************
function tbGMJX:BandLoginServer(nVar)
	if not tbGMJX.ListPlayer[nVar] then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng t�n t�i trong h� th�ng <color=orange>GM.");
		return
	end

	local gmrole = PlayerIndex
	Msg2Player(format("B�n �� b� kh�a nh�n v�t <color=yellow>%s <color>v� t�i kho�n: <color=orange>%s <color>ra kh�i server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
	PlayerIndex = self.ListPlayer[nVar].PlayerIdx
	if nVar == GetAccount() then 
		local szAccount = GetAccount();
		self.ListBand[szAccount] = 1
		self.ListName[szAccount] = szAccount;
		OfflineLive(PlayerIndex)
		KickOutSelf()
	end
	PlayerIndex = gmrole;
	Msg2Player(format("<color=orange>GM<color> �� kh�a t�m th�i t�i kho�n: <color=yellow>%s",nVar))
end
function tbGMJX:BandLoginForver(nVar)
	if not tbGMJX.ListPlayer[nVar] then 
		Msg2Player("T�i kho�n: <color=yellow>"..nVar.."<color> kh�ng t�n t�i trong h� th�ng <color=orange>GM.");
		return
	end

	local gmrole = PlayerIndex
	Msg2Player(format("B�n �� b� kh�a nh�n v�t <color=yellow>%s <color> v� t�i kho�n: <color=orange>%s <color> ra kh�i server.",self.ListPlayer[nVar].szName,self.ListPlayer[nVar].szAccount));
	PlayerIndex = self.ListPlayer[nVar].PlayerIdx
	if nVar == GetAccount() then
		local szAccount = GetAccount();
		server_setdata(self.szFile,"ACCOUNT_BAND_FORVER",szAccount,1);
		server_savedata(self.szFile);
		OfflineLive(PlayerIndex)
		KickOutSelf()
	end
	PlayerIndex = gmrole;
	Msg2Player(format("<color=orange>GM<color> �� kh�a v�nh vi�n t�i kho�n: <color=yellow>%s",nVar))
end
--********************Kich out nh�n v�t kh�a t�m th�i*************************************
function tbGMJX:KickYourAss(szAccount)
	if self.ListBand[szAccount] then 
		OfflineLive(PlayerIndex)
		KickOutSelf();
	end
end
function tbGMJX:KickVinhVien(szAccount)
	server_loadfile("\\dulieu\\bandbygm.dat");
	local IsBandForever = server_getdata("\\dulieu\\bandbygm.dat","ACCOUNT_BAND_FORVER",szAccount)
	if IsBandForver ~= nil or IsBandForever ~= "" then 
		OfflineLive(PlayerIndex)
		KickOutSelf();
	end
end
--************************Save nh�n v�t v�o h� th�ng GM******************************************
function tbGMJX:GetInfoPlayer(szName)
	if not self.ListPlayer[szName] then 
		local CountList = getn(self.ListIdxKichOut) + 1
		self.ListIdxKichOut[CountList] = PlayerIndex;
		self.ListPlayer[szName] = {PlayerIdx = PlayerIndex,szAccount = GetAccount(),nLevel = GetLevel(),szName = GetName(),nID = CountList};
		print(format("Thong tin tai khoan: %s da duoc luu vao, indexid : %d",self.ListPlayer[szName].szAccount,CountList)) --thu lai minh xem
	end
end
--*********************************************************************************************
function tbGMJX:RemoveInfo(szName)
	if self.ListPlayer[szName] then 
		tremove(self.ListIdxKichOut,self.ListPlayer[szName].nID);
		self.ListPlayer[szName] = nil
	end
end
function tbGMJX:LimitAccount(zIp)
	if type(zIp) == "string" then
		local ip1,ip2,ip3,ip4 = strfind(zIp,"(%d+).(%d+).(%d+).(%d+)");
		local strIp = format("%s%s%s%s",ip1, ip2,ip3,ip4)
		if self.LimitAccount[strIp] then 
			local countlogin = self.LimitAccount[strIp].CounLogin;
			if countlogin > 5 then 
	
			else
				self.LimitAccount[strIp].CountLogin = countlogin + 1;
			end
		end
		
		
		
	end
end
--************************Thao tac l�n nh�n v�t*******************************************
function moveNV(ID_NV)
----------------------------------dua ve ba lang huyen------------------------------
	--gmidx=PlayerIndex
	--PlayerIndex=ID_NV
	--w,x,y=GetWorldPos()
	--if (w~=53) then
	--	SetFightState(0)
		--NewWorld(53,200*8,200*16)
	--else
	--	SetPos(1630, 3255)
	--end
	--Msg2Player("Qu�n l� <color=green>"..gmName.."<color> �� di chuy�n b�n v� Ba L�ng Huy�n");
	--PlayerIndex=gmidx
	--Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ��c GM di chuy�n v� Ba L�ng Huy�n th�nh c�ng");

-------------------------------- dua ve vi tri gm-----------------------------------------------
		local szName = GetName()
		gmidx=PlayerIndex
		w,x,y=GetWorldPos()
		PlayerIndex = ID_NV
		SetFightState(0)
		NewWorld(w,x,y)
		Msg2Player("B�n �� ���c<color=orange> GM<color> tri�u h�i.")
		local MVName = GetName()
		PlayerIndex=gmidx
		Msg2Player(format("B�n �� tri�u h�i nh�n v�t: <color=orange>"..MVName..""))
	
end
function moveGM(ID_NV)
	gmidx=PlayerIndex
	PlayerIndex=ID_NV
	w,x,y=GetWorldPos()
	PlayerIndex=gmidx
	if (w~=53) then
		NewWorld(w,x,y)
	else
		SetPos(x, y)
	end
	Msg2Player("<color=orange>B�n �� ��n v� tr� nh�n v�t th�nh c�ng");
end
function KichOut_NV(ID_NV)
	gmidx=PlayerIndex
	PlayerIndex=ID_NV
	Msg2Player("<color=orange> GM<color>: <color=green>"..gmName.."<color> �� kick k�t t�i kho�n cho b�n");
	OfflineLive(PlayerIndex)
	KickOutSelf()
	PlayerIndex=gmidx
	Msg2Player("Nh�n v�t <color=yellow>"..ObjName.."<color> ��c <color=orange> GM<color> kick k�t t�i kho�n th�nh c�ng");
end;

function kickroll()
local countplayers = GetPlayerCount();
		for i=1,countplayers do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				KickOutSelf();  
			else
				break;
			end
		end
end

function CamChat_NV(ID_NV)
	gmidx=PlayerIndex
	PlayerIndex=ID_NV
	SetChatFlag(1)
	Msg2Player("B�n b� <color=orange> GM<color> kh�a <color=green>Chat<color> tr�n m�i t�n s� !")
	PlayerIndex=gmidx
	--AddGlobalCountNews("Nh�n V�t:<color=red> "..ObjName.."<color> �� B� C�m Chat Tr�n M�i T�n S� !",1)
	Msg2Player("<color=orange> GM<color> c�m <color=green>Chat<color>nh�n v�t<color=yellow> "..ObjName.."");
end
function MoChat_NV(ID_NV)
	gmidx=PlayerIndex
	PlayerIndex=ID_NV
	SetChatFlag(0)
	Msg2Player("B�n ��c <color=orange> GM<color> m� kh�a <color=green>Chat<color>tr�n m�i t�n s� !")
	PlayerIndex=gmidx
	--AddGlobalCountNews("Nh�n V�t:<color=green> "..ObjName.."<color> ��c<color=orange> GM<color> m� Chat tr�n m�i t�n s� !",1)
	Msg2Player("<color=orange> GM<color> m� <color=green>Chat<color>nh�n v�t <color=yellow>"..ObjName.."");
end 

function CallAllPlayers()
	local gmrole = PlayerIndex;
	local MapId,nX,nY = GetWorldPos();
	local count = GetPlayerCount();
	if count > 0 then 
		for i=1,count do 
			PlayerIndex = i;
			if PlayerIndex > 0 then 
				NewWorld(MapId,nX,nY);
				Msg2Player("B�n ���c <color=orange>GM<color> tri�u t�p.")
			else
				break
			end
		end
		PlayerIndex = gmrole;
		Msg2Player(format("B�n �� tri�u t�p th�nh c�ng :<color=orange> [%d]<color> ng��i ch�i v� <color=orange>MAP<color>:<color=yellow> [%d]<color>  t�a ��:<color=Green> [%d.%d]",count,MapId,nX,nY))
	end
end
