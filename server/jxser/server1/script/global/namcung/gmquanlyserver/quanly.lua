IncludeLib("SETTING")
IncludeLib("FILESYS")
IncludeLib("TASKSYS")
IncludeLib("PARTNER");
IncludeLib("BATTLE");
IncludeLib("RELAYLADDER")
IncludeLib("TONG") 
IncludeLib("LEAGUE")

Include("\\script\\lib\\remoteexc.lua")
Include("\\script\\global\\login.lua")
Include("\\script\\event\\birthday_jieri\\200905\\class.lua"); 
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\tagnewplayer\\fucmain.lua"); 
Include("\\script\\tagnewplayer\\head.lua"); 
Include("\\script\\tagnewplayer\\dispose_item.lua"); 
Include("\\script\\activitysys\\config\\1005\\activeingame.lua") 
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua") 

--Include("\\script\\missions\\citywar_global\\infocenter_head.lua")
--Include("\\script\\missions\\citywar_city\\head.lua");

Include("\\script\\global\\namcung\\hotrogm.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\libgm.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua")

--===================Ph�n c�p GM theo t�i kho�n================================
Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");

Include("\\script\\global\\autoexec.lua")
--=============================MENU GM=====================================
function Quanly_player(sel)
	if CheckAccountGM()==0 then
		Msg2Player("Ch� c� <color=orange>GM<color> m�i s� d�ng ���c v�t ph�m n�y. !");
		return 0
	end
	SetTaskTemp(200,0)
	w,x,y=GetWorldPos()
	SubWorld = SubWorldID2Idx(w)
	SubName=SubWorldName(SubWorld)
	--Msg2Player("V� Tr�:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=Green>"..SubName.."<color>-T�a �� X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."");
	local szTitle = "<npc><color=red>H� tr� GM<color>: <color=orange>"..GetName().." <color>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter><color=Yellow>Hoan ngh�nh c�c anh h�ng h�o ki�t... ! <color><ent<color> - <color=red>V� Tr�<color>:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=red>"..SubName.."<color>-T�a �� X/Y:<color=yellow> "..x.."<color>/<color=cyan>"..y.."<color>"

	local tbOpt =
	{
		{"Qu�n L� Nh�n V�t �ang Online", MenuPlay},	
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
	return 1
end
-----------------------------------------------------------------------

Include("\\script\\vng_lib\\files_lib.lua")
function MenuiTEM()
	gmidx=PlayerIndex
	SetTaskTemp(200,gmidx)
	tangqua()
end
--------------------------------- TAO DUONG DAN CAN RELOAD FILE ---------------------------------
function NhapDuongDanFileCanReLoadOK(Link)
        local ReloadScript = LoadScript(Link);
        if (FALSE(ReloadScript )) then
            Msg2Player("Xu�t hi�n l�i ho�c sai ���ng d�n, kh�ng th� Reload file!<enter><color=green>"..Link.."");
        else
            Msg2Player("<color=green>Reload th�nh c�ng Script<color><enter><color=green>"..Link.."");
        end
end

function Reloadfile()
    return AskClientForString("NhapDuongDanFileCanReLoadOK", "", 1, 500, "<#>Nh�p ���ng d�n")
end  
---------------------------------------------------------------------------------------------------

function DenDiem(szPos) 
	local tbPos = lib:Split(szPos, ",") 
	local nMapId = GetWorldPos()
	local m = tonumber(tbPos[1]) 
	local x =  tonumber(tbPos[2])*8 
	local y =  tonumber(tbPos[3])*16 
	if nMapId == m then 
		SetPos(x, y) 
	else 
		NewWorld(m, x, y) 
	end
end
--=================Quan ly ITEM===========================
function MenuPlay()
	local nNam = tonumber(GetLocalDate("%Y"));
   	local nThang = tonumber(GetLocalDate("%m"));
   	local nNgay = tonumber(GetLocalDate("%d"));
    	local nGio = tonumber(GetLocalDate("%H"));
    	local nPhut = tonumber(GetLocalDate("%M"));
   	local nGiay = tonumber(GetLocalDate("%S"));
	local nW, nX, nY = GetWorldPos()
	SubWorld = SubWorldID2Idx(nW)
	SubName=SubWorldName(SubWorld)
    	local nIdPlay = PlayerIndex
    	local szTitlet = format("<npc><color=green>Xin Ch�o<color>: <color=red>"..GetName().."<color> !\n<color=green>V� tr� hi�n t�i<color>:<color=orange>ID:<color><color=orange>"..nW.."<color>-<color=Green>"..SubName.."<color><color=Yellow>-<color><color=red>t�a ��<color>: <color=yellow>"..nX.."/"..nY.."<color> \n<color><color=green>Index<color>:            <color=red>"..nIdPlay.."<color>\n<color=green>Hi�n �ang C�<color>:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng�i ch�i trong game.\n<color><color=green>H�m Nay<color>: <color=metal>         Ng�y "..nNgay.." Th�ng "..nThang.." N�m "..nNam.."<color>. \n<color=green>L�c<color>:             <color=pink> "..nGio.." Gi� "..nPhut.." Ph�t "..nGiay.." Gi�y.<color>")
  	local tbOpt =
        	{

            		{"Th�ng tin ng�i ch�i", ShowNV},
           		{"Nh�p ID ng�i ch�i", luachonid1},
		{"T�m t�i kho�n nh�n v�t",TimTKNV},
		{"T�m t�n nh�n v�t",TimNV},
		{"Tri�u t�p t�t c� c�c nh�n v�t �ang tr�c tuy�n", CallAllPlayers},
		{"Ch�c n�ng m� kh�a", menumokhoa},
           		{"kh�ng c�n n�a",OnCancel}
        	}
        	CreateNewSayEx(szTitlet, tbOpt);
end
function TimTKNV()
	SetTaskTemp(201,1)
	AskClientForString("TimTenTK","",1,999999999,"Nh�p T�n")
end
function TimTenTK(nVar)
	local sl =getn(tbGMJX.ListIdxKichOut)
	for i=1,sl do
    		gmidx=PlayerIndex
    		PlayerIndex=i
    		TarName=GetAccount()
		Ac=GetAccount()
		sName=GetName()
		w,x,y=GetWorldPos()
    		PlayerIndex=gmidx
		if GetTaskTemp(201) == 1 then
			if TarName == nVar then
				one(i)
				Msg2Player("InDex:<color=green>"..i.."<color> - T�n:<color=yellow> "..sName.."<color> - TK:<color=cyan> "..Ac.."<color>-<color=cyan> "..w.."");
				return
			end
		end
	end
	Talk(1, "", "Kh�ng T�m Th�y<color=yellow>T�i Kho�n <color=green>"..nVar.."<color>");
end

function TimNV()
	SetTaskTemp(201,1)
	AskClientForString("TimTen","",1,999999999,"Nh�p T�n")
end
function TimTen(nVar)
	local sl =getn(tbGMJX.ListIdxKichOut)
	for i=1,sl do
    		gmidx=PlayerIndex
    		PlayerIndex=i
    		TarName=GetName()
		Ac=GetAccount()
		w,x,y=GetWorldPos()
    		PlayerIndex=gmidx
		if GetTaskTemp(201) == 1 then
			if TarName == nVar then
				one(i)
				Msg2Player("InDex:<color=green>"..i.."<color> - T�n:<color=yellow> "..TarName.."<color> - TK:<color=cyan> "..Ac.."<color>-<color=cyan> "..w.."");
				return
			end
		end
	end
	Talk(1, "", "Kh�ng T�m Th�y<color=yellow> T�n ho�c T�i Kho�n <color=green>"..nVar.."<color>");
end
function ShowAll()
	local sl =getn(tbGMJX.ListIdxKichOut)
	Msg2Player("<color=orange>GM<color> th�c hi�n l�nh [<color=green> ShowALL <color>] nh�n v�t");
	for i=1,sl do
    		gmidx=PlayerIndex
    		PlayerIndex=i
    		TarName=GetName()
		Ac=GetAccount()
		if Ac ~="" then
			DynamicExecute("\\script\\global\\namcung\\xephang\\top10_all.lua", "XepHang")
		end
    		PlayerIndex=gmidx
		if Ac ~="" then
			Msg2Player("ID:<color=green>"..i.."<color> - T�n nh�n v�t:<color=yellow> "..TarName.."<color> - T�i kho�n:<color=cyan> "..Ac.."");
		
		end
	end
end
function SaveAll()
	local sl =getn(tbGMJX.ListIdxKichOut)
	Msg2Player("<color=orange>GM<color> th�c hi�n l�nh [ <color=green>SaveAll<color> ] nh�n v�t");
	for i=1,sl do
    		gmidx=PlayerIndex
    		PlayerIndex=i
    		TarName=GetName()
		Ac=GetAccount()
		SaveNow()
		if Ac ~="" then
			DynamicExecute("\\script\\global\\namcung\\xephang\\top10_all.lua", "XepHang")
		end
    		PlayerIndex=gmidx
		if Ac ~="" then
			Msg2Player("ID:<color=green>"..i.."<color> - T�n nh�n v�t:<color=yellow> "..TarName.."<color> - T�i kho�n:<color=cyan> "..Ac.."<color> �� Save th�nh c�ng");
		end
	end
end
function ShowNV()
	AskClientForNumber("ShowNV1",0,1180,"Nh�p s� l��ng")
end
function ShowNV1(num)
	local nNum = num + 10
	for i=num,nNum do
    		gmidx=PlayerIndex
    		PlayerIndex=i
    		TarName=GetName()
		Ac=GetAccount()
                  		local W,X,Y=GetWorldPos()
		SubWorld = SubWorldID2Idx(w)
		SubName=SubWorldName(SubWorld)
                 		local nX = X/8
                 		local nY=Y/16
		SaveNow()
		if Ac ~="" then
			DynamicExecute("\\script\\global\\namcung\\xephang\\top10_all.lua", "XepHang")
		end
    		PlayerIndex=gmidx
		--if Ac ~="" then
    				Msg2Player("ID:<color=green> "..i.."<color> -T�n nh�n v�t : <color=yellow> "..TarName.."<color> - T�i kho�n<color=cyan> "..Ac.."");
		if TarName ~= "" then
			Msg2Player("V� Tr�:<color=orange>ID:<color><color=orange>"..w.."<color>-<color=Green>"..SubName.."<color> - T�a �� X/Y:<color=yellow> "..X.."<color>/<color=cyan>"..Y.."");
			end
			
		--end
	end
end
--*************************************************************************
function menumokhoa()
    	local szTitlet = "<color=orange>GM<color> l�a ch�n ch�c n�ng?"
  	local tbOpt =
        	{
		{"M� kh�a t�i kho�n t�m th�i", Ds_Khoa,{1}},
		{"M� kh�a t�i kho�n v�nh vi�n", Ds_Khoa,{2}},
           		{"kh�ng c�n n�a",OnCancel}
        	}
        	CreateNewSayEx(szTitlet, tbOpt);
end
function Ds_Khoa(n)
	if n==1 then
		DynamicExecute("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua", "Unlock1")
	elseif n==2 then
		DynamicExecute("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua", "Unlock2")
	end
end
--*************************************************************************
function luachonid1()
	AskClientForNumber("one",0,5000,"Nh�p ID ng�i ch�i")
end
function one(num)
		SetTaskTemp(200,num)
    		gmName=GetName()
    		gmidx=PlayerIndex
    		PlayerIndex=GetTaskTemp(200)
    		tk=GetAccount()
    		lev=GetLevel()
    		xp=GetExp()
    		cam=GetCamp()
    		fac=GetFaction()
   		 cash=GetCash()
   		 lif=GetExtPoint(1)
   		 man=GetMana()
   		 apo=GetEnergy()
    		spo=GetRestSP()
   		 cr=GetColdR()
    		--pr=GetTask(747)	--- diem tich luy tong kim
    		phr=GetPhyR()
    		fr=GetFireR()
    		lr=GetLightR()
   		 eng=GetEng()
   		 dex=GetDex()
   		 strg=GetStrg()
    		vit=GetVit()
		trungsinh = ST_GetTransLifeCount()
		w,x,y=GetWorldPos()
		SubWorld = SubWorldID2Idx(w)
		SubName=SubWorldName(SubWorld)
    		xinxi = GetInfo()
    		ObjName=GetName()
		local sex = GetSex();
		local Faction = GetLastFactionNumber();
		if trungsinh == 0 then trungsinh = "Ch�a chuy�n sinh" end 
		if cam == 1 then cam = "Ch�nh Ph�i" elseif cam == 2 then cam = " T� Ph�i " elseif cam == 3 then cam = "Trung L�p" elseif cam == 4  then cam = "Giang h�" elseif cam == 0 then cam = "V� danh" end 
		if sex == 0 then sex = "Nam" else sex = "N�" end --ktra lai khi test ko nho 0 la nam hay 1 la nam
		if Faction == 0 then Faction = "Thi�u L�m" 
		elseif Faction == 1 then Faction = "Thi�n V��ng"
		elseif Faction == 2 then Faction = "���ng M�n" 
		elseif Faction == 3 then Faction = "Ng� ��c" 
		elseif Faction == 4 then Faction = "Nga My" 
		elseif Faction == 5 then Faction = "Th�y Y�n" 
		elseif Faction == 6 then Faction = "C�i Bang" 
		elseif Faction == 7 then Faction = "Thi�n Nh�n" 
		elseif Faction == 8 then Faction = "V� �ang" 
		elseif Faction == 9 then Faction = "C�n L�n" 
		elseif Faction == 10 then Faction = "Hoa S�n"
		else Faction = "Ch�a gia nh�p m�n ph�i"
		end
    		PlayerIndex=gmidx
    		Msg2Player("Nh�n v�t t�n:<color=orange> "..ObjName.."<color>");
    		local szTitle1 ="T�i Kho�n:<color=green> "..tk.."<color> - Nh�n V�t :<color=orange> "..ObjName.."<color>\nC�p ��:<color=red> "..lev.."<color> - Kinh nghi�m: <color=green>"..xp.."%<color> - Trung sinh: <color=yellow>"..trungsinh.."<color> \nPhe:<color=red> "..cam.."<color> - M�n ph�i: <color=orange>"..Faction .."<color> - Gi�i t�nh: <color=Red>"..sex.."<color>\nTi�n M�t:<color=yellow> "..(cash/10000).." v�n<color> - Ti�n ��ng : <color=cyan>"..lif.." ��ng<color>\nV� Tr�: <color=orange>ID: <color><color=orange>"..w.."<color>-<color=Green>"..SubName.."<color> - T�a �� X/Y:<color=yellow> "..x.."<color>/<color=yellow>"..y.."<color>"
    		local tbOpt =
        		{
            			{"Di chuy�n nh�n v�t v� v� tr� GM", moveNV,{GetTaskTemp(200)}},
			{"��a ta ��n nh�n v�t", moveGM,{GetTaskTemp(200)}},
			{"K�ch Out nh�n v�t",KichOut_NV,{GetTaskTemp(200)}},
			{"T�ng qu� cho nh�n v�t",tangqua},
			{"C�m ch�t ��i v�i nh�n v�t", CamChat_NV,{GetTaskTemp(200)}},
            			{"M� ch�t cho nh�n v�t",MoChat_NV,{GetTaskTemp(200)}},
			{"Kh�a t�i kho�n nh�n v�t t�m th�i (kich kh�i game)",ThaoTacNhanVat,{tk,1}},
			{"Kh�a t�i kho�n nh�n v�t v�nh vi�n",ThaoTacNhanVat,{tk,2}},
            			{"kh�ng c�n n�a",OnCancel}
        		}
        		CreateNewSayEx(szTitle1, tbOpt);
    		Msg2Player("Ng�i ch�i <color=cyan>"..xinxi)
end

function ThaoTacNhanVat(ten,n)
	if n==1 then
		DynamicExecute("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua", "tbGMJX:BandLoginServer",ten)
	elseif n==2 then
		DynamicExecute("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua", "tbGMJX:BandLoginForver",ten)
	end
end



local QUESTKEY = TabFile_Load("\\settings\\item\\004\\questkey.txt","QUESTKEY");
local MAGIC = TabFile_Load("\\settings\\item\\004\\magicscript.txt","MAGIC");
local ITEM = TabFile_Load("\\settings\\item\\004\\goldequip.txt","ITEM")

function tangqua()
	local szTitle = "<color=orange>GM<color>: B�n mu�n l�y l�m g�? H�y ch�n l�nh mu�n l�m.<color><color=orange>\nTrang B� HK: <color=green>Goldequip<color><color=red> nh�p ID <color><color=yellow>Trang B�<color><color=orange>\nV�t Ph�n NV: <color=green>Questkey<color><color=red> nh�p ID c�t<color> <color=yellow>DetailType<color><color=orange>\nV�t Ph�m CN: <color><color=green>Magicscript<color><color=red> nh�p ID c�t <color=yellow>ParticularType<color>"
	local Opt = {};
	tinsert(Opt,{"T�ng ti�n v�n l��ng cho nh�n v�t",option,{1}});
	tinsert(Opt,{"T�ng 20 khi�u chi�n l�nh",option,{5}});
	tinsert(Opt,{"T�ng trang b� (GoldItem) cho nh�n v�t (ID item vd: 55) ",option,{2}});
	tinsert(Opt,{"T�ng v�t ph�m (questkey) cho nh�n v�t (ID item vd: 55)",option,{3}})
	tinsert(Opt,{"T�ng v�t ph�m (magicscript) cho nh�n v�t (ID item vd: 55)",option,{4}})
	tinsert(Opt,{"T�ng c�p cho nh�n v�t",option,{6}})
	tinsert(Opt,{"K�t th�c ��i tho�i.",OnCancel});
	CreateNewSayEx(szTitle,Opt)
end
function askStringInput(szFunct,szStr)
	AskClientForString(szFunct,"",1,999999999,szStr);
end
function askNumberInput(szFunct,szStr)
	AskClientForNumber(szFunct,0,9999999,szStr)
end
function option(nSel)
	SetTaskTemp(201,nSel)
	if (nSel == 1) then
		askStringInput("GiveMoneyToPlayer","S� Ti�n cho");
	elseif (nSel == 5) then
		--askStringInput("GiveDiemPlayer","S� ki�u chi�n l�nh");
		GiveDiemPlayer(20)
	elseif (nSel == 2) then -- t�ng trang b~
		askNumberInput("GiveTrangBi","Id Trang B�");
	elseif (nSel == 3 or nSel == 4) then -- t�ng v�t ph�m
		askNumberInput("GiveVatPham","Id V�t Ph�m");
	elseif (nSel == 6 ) then -- t�ng c�p
		askNumberInput("ThangCap","nh�p s� c�p");
	end
end
function GiveDiemPlayer(nMoney)
	local gmrole = PlayerIndex;
	local IsMoney = tonumber(nMoney);
	local Money = GetTaskTemp(3)
	if IsMoney and GetTaskTemp(2) == 0 then 
		SetTaskTemp(2,1)
		SetTaskTemp(3,IsMoney)
		Say("B�n c� ch�c l� mu�n cho <color=yellow>"..IsMoney.." khi�u chi�n l�nh<color> kh�ng?",2,"Ta ch�c ch�n/#GiveDiemPlayer(IsMoney)","�� ta suy ngh� l�i/#cancel(count)")
	elseif GetTaskTemp(3) > 0 and GetTaskTemp(2)  == 1 then 
		PlayerIndex=GetTaskTemp(200)
		local Name = GetName()

		for i=1,20 do
			AddItem(6,1,1499,0,0,0,0)
		end

		--local szTongName, nTongID = GetTongName();
		--LG_ApplyAppendMemberTask(TIAOZHANLING_LGTYPE,TIAOZHANLING_LGName, szTongName, LGTSK_TIAOZHANLING_COUNT, 2000, "", "");
		

		Msg2Player("B�n ���c <color=orange>GM<color> t�ng : "..Money.." khi�u chi�n l�nh ")
		PlayerIndex = gmrole;
		Msg2Player("B�n t�ng khi�u chi�n l�nh cho nh�n v�t<color=orange> "..Name.."<color> l� <color=yellow>"..Money.." c�i ")
		SetTaskTemp(2,0)
		SetTaskTemp(3,0)
	end
end
function ThangCap(nlevel)
	local gmrole = PlayerIndex;
	local Islevel = tonumber(nlevel);
	local level= GetTaskTemp(3)
	if Islevel and GetTaskTemp(2) == 0 then 
		SetTaskTemp(2,1)
		SetTaskTemp(3,Islevel)
		Say("B�n c� ch�c l� mu�n t�ng<color=orange> "..Islevel.."<color> c�p<color> cho nh�n v�t ? ",2,"Ta ch�c ch�n/#ThangCap(Islevel)","�� ta suy ngh� l�i/#cancel(count)")
		elseif GetTaskTemp(3) > 0 and GetTaskTemp(2)  == 1 then 
		PlayerIndex=GetTaskTemp(200)
		local Name = GetName()
		local nCurLevel = GetLevel()				
		ST_LevelUp(level)	
		Msg2Player("B�n ���c<color=green> GM<color> t�ng :<color=orange> "..level.." <color>c�p")
		PlayerIndex = gmrole;
		Msg2Player("B�n t�ng cho nh�n v�t<color=orange> "..Name.."<color> l�<color=yellow> "..level.."<color> c�p")
		SetTaskTemp(2,0)
		SetTaskTemp(3,0)
	end	
end
function GiveMoneyToPlayer(nMoney)
	local gmrole = PlayerIndex;
	local IsMoney = tonumber(nMoney);
	local Money = GetTaskTemp(3)
	if IsMoney and GetTaskTemp(2) == 0 then 
		SetTaskTemp(2,1)
		SetTaskTemp(3,IsMoney)
		Say("B�n c� ch�c l� mu�n t�ng <color=orange> "..IsMoney.."<color> l��ng",2,"Ta ch�c ch�n/#GiveMoneyToPlayer(IsMoney)","�� ta suy ngh� l�i/#cancel(count)")
		elseif GetTaskTemp(3) > 0 and GetTaskTemp(2)  == 1 then 
		PlayerIndex=GetTaskTemp(200)
		local Name = GetName()
		Earn(Money)
		Msg2Player("B�n ���c<color=green> GM<color> t�ng :<color=orange> "..Money.." <color>l��ng ")
		PlayerIndex = gmrole;
		Msg2Player("B�n t�ng ti�n cho nh�n v�t<color=orange> "..Name.."<color> l�<color=yellow> "..Money.."<color> l��ng")
		SetTaskTemp(2,0)
		SetTaskTemp(3,0)
	end
end
function GiveVatPham(szVar)
	szVar = tonumber(szVar);
	ItemName,Genre,Detail,Particular,id2,id3,id4 = getProp(szVar)

	local szTitle = "<color=orange>GM<color>: B�n c� ch�c l� mu�n t�ng <color=orange>"..ItemName.."<color> cho nh�n v�t ? Xin h�y x�c nh�n.!<color>"
	local Opt = {};
	tinsert(Opt,{"��ng � t�ng ["..ItemName.."] !", GiveVatPham_soluong,{ItemName,Genre,Detail,Particular,id2,id3,id4}});
	tinsert(Opt,{"�� suy ngh� l�i."});
	CreateNewSayEx(szTitle,Opt)
end
function GiveVatPham_soluong(ItemName,Genre,Detail,Particular,id2,id3,id4)
	g_AskClientNumberEx(0,500,"Nh�p s� l��ng",{GiveVatPham_yes,{ItemName,Genre,Detail,Particular,id2,id3,id4}})
end
function GiveVatPham_yes(ItemName,Genre,Detail,Particular,id2,id3,id4,nAmount)
	gmrole = PlayerIndex;
	PlayerIndex = GetTaskTemp(200)
	PlayerName = GetName()
	if (CalcFreeItemCellCount() < 10) then
		Talk(1,"","B�n kh�ng c� �� <color=yellow>10<color> � tr�ng trong h�nh trang. <color=orange>GM<color> kh�ng t�ng v�t ph�m cho b�n ���c")
		PlayerIndex = gmrole;
		Msg2Player("Nh�n v�t <color=orange>"..PlayerName.."<color> kh�ng c� �� <color=yellow>"..nAmount.."<color> � tr�ng trong h�nh trang")
		return
	end
	if nAmount > 0 then 
		for i=1,nAmount do 
			AddItem(Genre,Detail,Particular,id2,id3,id4);	
		end
		Msg2Player("B�n ���c <color=orange>GM<color> t�ng v�t Ph�m: <color=green>"..ItemName.."<color> s� l��ng:<color=yellow> "..nAmount.."<color>")
		PlayerIndex = gmrole;
		Msg2Player("B�n �� t�ng v�t ph�m : <color=green>"..ItemName.."<color> s� l��ng:<color=yellow> "..nAmount.."<color> cho nh�n v�t : <color=orange>"..PlayerName.."")
		SetTaskTemp(201,0)	
	end
	PlayerIndex = gmrole;
end
function GiveTrangBi(szVar)
	gmrole = PlayerIndex;
	szVar = tonumber(szVar);
	ItemName,Id,ItemId = getProp(szVar);
	PlayerIndex = GetTaskTemp(200)
	local Name = GetName()
	local IndexS = AddGoldItem(Id,ItemId+1);
	SetItemBindState(IndexS,-2)
	Msg2Player(format("B�n nh�n ���c trang b�: <color=orange>%s <color>do<color=green> GM<color> t�ng.",ItemName))
	PlayerIndex = gmrole;
	Msg2Player("B�n �� t�ng trang b�:<color=orange> "..ItemName.."<color> cho nh�n v�t <color=green> "..Name.."")
	SetTaskTemp(201,0)
end
 function getProp(nNum)
	if %QUESTKEY ~= 1 or %MAGIC ~= 1 or %ITEM ~= 1 then 
		print(foramt("File ko ton tai: %d %d %d",%QUESTKEY,%MAGIC,%ITEM))
		return
	end
	local zType = GetTaskTemp(201)
	print(zType)
	if zType == 3 then 
		--QUESTKEY 
		for nRow = 2,TabFile_GetRowCount("QUESTKEY") do 
			szName = TabFile_GetCell("QUESTKEY",nRow,"����");
			Genre = tonumber(TabFile_GetCell("QUESTKEY",nRow,"ItemGenre"));
			Detail = tonumber(TabFile_GetCell("QUESTKEY",nRow,"DetailType"));
			
			--S� d�ng tr�n Excel
			--Id = nRow - 2;
			--if (Id == nNum - 2) then
			--	return szName,Genre,Detail,1,1,0,0
			--end
			
			--S� c�t tr�n DetailType
			if (nNum == Detail) then
				return szName,Genre,Detail,Particular,1,0,0
			end
		end
	elseif zType == 4 then 
		--MAGIC
		for nRow =2,TabFile_GetRowCount("MAGIC") do 
			 szName = TabFile_GetCell("MAGIC",nRow,"����");
			 Genre = tonumber(TabFile_GetCell("MAGIC",nRow,"ItemGenre"));
			 Detail = tonumber(TabFile_GetCell("MAGIC",nRow,"DetailType"));
			 Particular = tonumber(TabFile_GetCell("MAGIC",nRow,"ParticularType"));
			Id = nRow - 2;

			--S� d�ng tr�n Excel
			--if (Id == nNum - 2) then
			--	return szName,Genre,Detail,Particular,1,0,0
			--end

			--S� c�t tr�n ParticularType
			if (nNum == Particular) then
				return szName,Genre,Detail,Particular,1,0,0
			end
		end
	else
		--ITEM
		for nRow = 2,TabFile_GetRowCount("ITEM") do
			szName = TabFile_GetCell("ITEM",nRow,"����");
			 Id = nRow - 2;
			 if (Id == nNum - 2) then 
				return szName,0,Id
			end
		end
	end
end
--=================Thong bao gm===========================
function thongbaoquantrong()
	local tbOpt = {}
	tinsert(tbOpt, "Msg2SubWorld/#thongbao(1)")
	tinsert(tbOpt, "AddGlobalNews/#thongbao(2)")
	tinsert(tbOpt, "Tho�t/OnCancel")
	Say("��i hi�p t�m ta c� vi�c g�?", getn(tbOpt), tbOpt)
end
function thongbao(n)
	if n == 1 then
		AskClientForString("Input_Msg2SubWorld","",1,9999999999,"Type Msg mu�n nh�n")
	else
		AskClientForString("Input_AddGlobalNews","",1,9999999999,"Type Msg mu�n nh�n")
	end
end
function Input_Msg2SubWorld(nVal)
	Msg2SubWorld(format("[<color=orange>GM<color>]:<color=yellow>%s<color>",nVal))
end
function Input_AddGlobalNews(nVal)
	AddGlobalNews(format("[<color=orange>GM<color>]:<color=green>%s<color>",nVal))
end
--=================Skill GM===========================
function DelSkill(szPos) 
      	local idskill = tonumber(szPos) 
      	DelMagic(idskill) 
end
function AddSkill(szPos)
       	local id = tonumber(szPos)
     	AddMagic(id,20)
end 
--=================Mat na GM===========================
function MatNa(szPos)
	AddItem(0,11,szPos,1,0,0,0)
end 

--=================Quan ly ITEM===========================
function QLItem()
	local szTitle = "<npc>Hoan ngh�nh qu� b�ng h�u tham gia m�y ch� <color=red>V� L�m T�nh Ki�m<color> )"
	local tbOpt =
	{
		{"T�o Items", g_AskClientStringEx, {"0,10,9,1,0,0", 0, 256, "Th�ng s� ITEM", {TaoItem, {self}} }},
		{"Ta mu�n l�y �� m�n ph�i.", ChonDo},
		{"Ta mu�n l�y �� xanh v� t�m.", ChonXanhTim},
		{"Ta mu�n l�y ng�a", layngua},
		{"K�t th�c ��i tho�i.",OnCancel},

	}
	CreateNewSayEx(szTitle, tbOpt)
end
--==========================Tao item========================
function TaoItem(szItem)
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
--========================Quan ly mon phai============================
function QLMP()
	local szTitle = "<npc>Hoan ngh�nh qu� b�ng h�u tham gia m�y ch� <color=red>V� L�m T�nh Ki�m<color> )"
	local tbOpt =
	{
		{"Gia nh�p m�n ph�i",GiaNhapMP},
		{"T�y ti�m n�ng",do_clear_prop},
		{"T�y k� n�ng",TaySkill},
		{"K�t th�c ��i tho�i.",OnCancel},

	}
	CreateNewSayEx(szTitle, tbOpt)
end
function GiaNhapMP()
	local szTitle = "<npc>Ch�n m�n ph�i c�n gia nh�p"
	local tbOpt =
	{
		{"Administrator",HocSkill,{11}},
		{"Thi�u l�m",HocSkill,{1}},
		{"Thi�n v��ng bang",HocSkill,{2}},
		{"���ng M�n",HocSkill,{3}},
		{"Ng� ��c gi�o",HocSkill,{4}},
		{"Nga mi",HocSkill,{5}},
		{"Th�y y�n",HocSkill,{6}},
		{"C�i bang",HocSkill,{7}},
		{"Thi�n nh�n gi�o",HocSkill,{8}},
		{"V� �ang",HocSkill,{9}},
		{"C�n l�n",HocSkill,{10}},
		{"K�t th�c ��i tho�i.",OnCancel},

	}
	CreateNewSayEx(szTitle, tbOpt)

end
function TaySkill()
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���︻��ƶ���������
	local h = HaveMagic(732)		-- �Ṧ�������
	local k = HaveMagic(733)		-- ���︻��ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �⸽���ж����ų���δѧ���Ṧ���˷���-1�Ӷ���֢��������������
	if (j ~= -1) then x = x + j end
	if (h ~= -1) then x = x + h end
	if (k ~= -1) then x = x + k end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ�ɸ˸���������0��Ϊ�Ժ󶵴�ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���︻�Aƶ��ݬ������
	if (h ~= -1) then AddMagic(732, h) end
	if (k ~= -1) then AddMagic(733, k) end
	KickOutSelf()
end

function HocSkill(n)
	TaySkill()
	DelSkills()
	do_clear_prop()
	SetFightState(1)	--0 phi chien dau, 1 chien dau
	if (n==1) then
		SetCamp(1) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(1)
		SetSeries(5) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		SetSex(0) --0 nam,1 nu
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Thi�u L�m")
		SetFaction("shaolin")
		AddSkills("shaolin",20)
	elseif (n==2) then
		SetCamp(3) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(3)
		SetSeries(5) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Thi�n v��ng bang")
		SetFaction("tianwang")
		AddSkills("tianwang",20)
	elseif (n==3) then
		SetCamp(3) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(3)
		SetSeries(1) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i ���ng m�n")
		SetFaction("tangmen")
		AddSkills("tangmen",20)
	elseif (n==4) then
		SetCamp(2) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(2)
		SetSeries(1) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Ng� ��c")
		SetFaction("wudu")
		AddSkills("wudu",20)
	elseif (n==5) then
		SetCamp(1) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(1)
		SetSeries(2) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		SetSex(1) --0 nam,1 nu
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Nga mi")
		SetFaction("emei")
		AddSkills("emei",20)
	elseif (n==6) then
		SetCamp(3) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(3)
		SetSeries(2) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Th�y y�n")
		SetFaction("cuiyan")
		AddSkills("cuiyan",20)
	elseif (n==7) then
		SetCamp(1) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(1)
		SetSeries(3) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i C�i bang")
		SetFaction("gaibang")
		AddSkills("gaibang",20)
	elseif (n==8) then
		SetCamp(2) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(2)
		SetSeries(3) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i Thi�n nh�n")
		SetFaction("tianren")
		AddSkills("tianren",20)
	elseif (n==9) then
		SetCamp(1) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(1)
		SetSeries(4) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i V� �ang")
		SetFaction("wudang")
		AddSkills("wudang",20)
	elseif (n==10) then
		SetCamp(3) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(3)
		SetSeries(4) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Ng��i �� gia nh�p th�nh c�ng ph�i C�n l�n")
		SetFaction("kunlun")
		AddSkills("kunlun",20)
	elseif (n==11) then
		SetCamp(5) --1 vang, 2 tim, 3 xanh, 4 do, 5 hong (phi chien dau)
		SetCurCamp(5)
		SetFightState(0)	--0 phi chien dau, 1 chien dau
		SetSeries(5) --1 moc, 2 thuy, 3 hoa, 4 tho, 5 kim
		Talk(1, "KickOutSelf", "Tr�ng th�i administrator")	
		AddMagic(732, 50) --Skill GM
	end
end
--===========================Quan ly diem==========================
function QLDiem()
	local szTitle = "<npc>Hoan ngh�nh qu� b�ng h�u tham gia m�y ch� <color=red>V� L�m T�nh Ki�m<color> )"
	local tbOpt =
	{
		{"Ta mu�n n�ng c�p", Up_Level},
		{"K�t th�c ��i tho�i.",OnCancel},

	}
	CreateNewSayEx(szTitle, tbOpt)
end
--==============================================================

function QuanLySkill()
	local szTitle = "<color=gold>GM:<color> B�n mu�n l�m g�? Nh�ng ch�c n�ng b�n d��i c� th� gi�p b�n"
	local tbOpt =
	{
		{"Th�m 1 Skill",AskClientForString,{"InputAddSkill","1200,20", 1, 999999999,"Nh�p (ID Skill, c�p Skill)"}},
		{"X�a 1 Skill",AskClientForString,{"InputDelSkill","1200", 1, 999999999,"Nh�p ID Skill"}},
		{"Th�m d�y Skill",AskClientForString,{"InputAddDSSkill","100,110", 1, 999999999,"Nh�p (ID b�t ��u, ID k�t th�c) ko qu� 10 skill"}},
		{"X�a d�y Skill",AskClientForString,{"InputDelDSSkill","1,1500", 1, 999999999,"Nh�p (ID b�t ��u, ID k�t th�c)"}},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function InputAddSkill(nVar)
	local tbPos = lib:Split(nVar, ",")
       	local id = tonumber(tbPos[1])
      	local cap = tonumber(tbPos[2])
     	AddMagic(id,cap)
end
function InputDelSkill(szPos)
      	local idskill = tonumber(szPos) 
      	DelMagic(idskill) 
end 
function InputAddDSSkill(szPos)
	local tbPos = lib:Split(szPos, ",")
	local s = tonumber(tbPos[1])
       	local e = tonumber(tbPos[2])
      	for i=s,e do AddMagic(i,20) end
end 

function InputDelDSSkill(szPos)
      	local tbPos = lib:Split(szPos, ",")
      	local s = tonumber(tbPos[1])
      	local e = tonumber(tbPos[2])
      	for i=s,e do DelMagic(i) end
end 
function AddSkills(Party,Level)
	local skillMap ={
		shaolin={
			{14,0},
			{8,0},
			{10,0},
			{4,0},
			{6,0},
			{15,0},
			{16,0},
			{20,0},
			{271,0},
			{11,0},
			{19,0},
			{273,0},
			{21,0},
			{318,20},
			{319,20},
			{321,20},
			{709,20},
			{1055,20},
			{1056,20},
			{1057,20},
			{1220,20},
		},
		tianwang={
			{34,0},
			{30,0},
			{29,0},
			{26,0},
			{23,0},
			{24,0},
			{33,0},
			{37,0},
			{35,0},
			{31,0},
			{40,0},
			{42,0},
			{36,0},
			{32,0},
			{41,0},
			{324,0},
			{322,20},
			{323,20},
			{325,20},
			{708,20},
			{1058,20},
			{1059,20},
			{1060,20},
			{1221,20},
		},
		tangmen={
			{45,0},
			{43,0},
			{347,0},
			{303,0},
			{50,0},
			{54,0},
			{47,0},
			{343,0},
			{345,0},
			{349,0},
			{48,0},
			{249,0},
			{58,0},
			{341,0},
			{339,20},
			{302,20},
			{342,20},
			{351,20},
			{710,20},
			{1069,20},
			{1070,20},
			{1071,20},
			{1110,20},
			{1223,20},
		},
		wudu={
			{63,0},
			{65,0},
			{62,0},
			{60,0},
			{67,0},
			{70,0},
			{66,0},
			{68,0},
			{384,0},
			{64,0},
			{69,0},
			{356,0},
			{73,0},
			{72,0},
			{75,0},
			{71,0},
			{74,0},
			{353,20},
			{355,20},
			{390,20},
			{711,20},
			{1066,20},
			{1067,20},
			{1222,20},
		},
		emei={
			{85,0},
			{80,0},
			{77,0},
			{79,0},
			{93,0},
			{385,0},
			{82,0},
			{89,0},
			{86,0},
			{92,0},
			{252,0},
			{88,0},
			{91,0},
			{282,0},
			{328,20},
			{380,20},
			{332,20},
			{712,20},
			{1061,20},
			{1062,20},
			{1114,20},
			{1224,20},
		},
		cuiyan={
			{99,0},
			{102,0},
			{95,0},
			{97,0},
			{269,0},
			{105,0},
			{113,0},
			{100,0},
			{109,0},
			{114,0},
			{108,0},
			{111,0},
			{336,20},
			{337,20},
			{713,20},
			{1063,20},
			{1065,20},
			{1225,20},
		},
		gaibang={
			{122,0},
			{119,0},
			{116,0},
			{115,0},
			{129,0},
			{274,0},
			{124,0},
			{277,0},
			{128,0},
			{125,0},
			{130,0},
			{360,0},
			{357,20},
			{359,20},
			{714,20},
			{1073,20},
			{1074,20},
			{1227,20},
		},
		tianren={
			{135,0},
			{145,0},
			{132,0},
			{131,0},
			{136,0},
			{137,0},
			{141,0},
			{138,0},
			{140,0},
			{364,0},
			{143,0},
			{150,0},
			{142,0},
			{148,0},
			{361,20},
			{362,20},
			{391,20},
			{715,20},
			{1075,20},
			{1076,20},
			{1226,20},
		},
		wudang={
			{153,0},
			{155,0},
			{152,0},
			{151,0},
			{159,0},
			{164,0},
			{158,0},
			{160,0},
			{157,0},
			{166,0},
			{165,0},
			{267,0},
			{365,20},
			{368,20},
			{716,20},
			{1078,20},
			{1079,20},
			{1228,20},
		},
		kunlun={
			{169,0},
			{179,0},
			{167,0},
			{168,0},
			{392,0},
			{171,0},
			{174,0},
			{178,0},
			{172,0},
			{393,0},
			{173,0},
			{175,0},
			{181,0},
			{176,0},
			{90,0},
			{275,0},
			{182,0},
			{372,20},
			{375,20},
			{394,20},
			{717,20},
			{1080,20},
			{1081,20},
			{630,20},
			{1229,20},
		}
	}
	if(Level~=nil) then
		for party ,each in skillMap do
			for i=1, getn(skillMap[party]) do
				if (skillMap[party][i][2]==0) then
					skillMap[party][i][2]=0
				else
					skillMap[party][i][2]=Level
				end
			end
		end
	end
	if(Party ==nil) then
		Msg2Player("Mu�n ng�n ch�n ta �, kh�ng d� d�ng th� ��u!")
	else
		if(skillMap[Party]==nil) then
			Msg2Player("Nh�p t�n m�n ph�i b� sai!")
			return
		end
		for i=1,getn(skillMap[Party]) do
			AddMagic(skillMap[Party][i][1],skillMap[Party][i][2])
		end
	end
	return
end
function DelSkills(Party)
	local skillMap ={
		shaolin={
			{14,20},
			{8,20},
			{10,20},
			{4,20},
			{6,20},
			{15,20},
			{16,20},
			{20,20},
			{271,20},
			{11,20},
			{19,20},
			{273,30},
			{21,20},
			{318,20},
			{319,20},
			{321,20},
			{709,20},
			{1055,20},
			{1056,20},
			{1057,20},
			{1220,20},
		},
		tianwang={
			{34,20},
			{30,20},
			{29,20},
			{26,20},
			{23,20},
			{24,20},
			{33,20},
			{37,20},
			{35,20},
			{31,20},
			{40,20},
			{42,20},
			{36,30},
			{32,20},
			{41,20},
			{324,20},
			{322,20},
			{323,20},
			{325,20},
			{708,20},
			{1058,20},
			{1059,20},
			{1060,20},
			{1221,20},
		},
		tangmen={
			{45,20},
			{43,20},
			{347,20},
			{303,20},
			{50,20},
			{54,20},
			{47,20},
			{343,20},
			{345,20},
			{349,20},
			{48,30},
			{249,20},
			{58,20},
			{341,20},
			{339,20},
			{302,20},
			{342,20},
			{351,20},
			{710,20},
			{1069,20},
			{1070,20},
			{1071,20},
			{1110,20},
			{1223,20},
		},
		wudu={
			{63,20},
			{65,20},
			{62,20},
			{60,20},
			{67,20},
			{70,20},
			{66,20},
			{68,20},
			{384,20},
			{64,20},
			{69,20},
			{356,20},
			{73,20},
			{72,20},
			{75,30},
			{71,20},
			{74,20},
			{353,20},
			{355,20},
			{390,20},
			{711,20},
			{1066,20},
			{1067,20},
			{1222,20},
		},
		emei={
			{85,20},
			{80,20},
			{77,20},
			{79,20},
			{93,20},
			{385,20},
			{82,20},
			{89,20},
			{86,20},
			{92,20},
			{252,30},
			{88,20},
			{91,20},
			{282,20},
			{328,20},
			{380,20},
			{332,20},
			{712,20},
			{1061,20},
			{1062,20},
			{1114,20},
			{1224,20},
		},
		cuiyan={
			{99,20},
			{102,20},
			{95,20},
			{97,20},
			{269,20},
			{105,20},
			{113,20},
			{100,20},
			{109,20},
			{114,30},
			{108,20},
			{111,20},
			{336,20},
			{337,20},
			{713,20},
			{1063,20},
			{1065,20},
			{1225,20},
		},
		gaibang={
			{122,20},
			{119,20},
			{116,20},
			{115,20},
			{129,20},
			{274,20},
			{124,20},
			{277,20},
			{128,20},
			{125,20},
			{130,30},
			{360,20},
			{357,20},
			{359,20},
			{714,20},
			{1073,20},
			{1074,20},
			{1227,20},
		},
		tianren={
			{135,20},
			{145,20},
			{132,20},
			{131,20},
			{136,20},
			{137,20},
			{141,20},
			{138,20},
			{140,20},
			{364,20},
			{143,20},
			{150,30},
			{142,20},
			{148,20},
			{361,20},
			{362,20},
			{391,20},
			{715,20},
			{1075,20},
			{1076,20},
			{1226,20},
		},
		wudang={
			{153,20},
			{155,20},
			{152,20},
			{151,20},
			{159,20},
			{164,20},
			{158,20},
			{160,20},
			{157,20},
			{166,30},
			{165,20},
			{267,20},
			{365,20},
			{368,20},
			{716,20},
			{1078,20},
			{1079,20},
			{1228,20},
		},
		kunlun={
			{169,20},
			{179,20},
			{167,20},
			{168,20},
			{392,20},
			{171,20},
			{174,20},
			{178,20},
			{172,20},
			{393,20},
			{173,20},
			{175,20},
			{181,20},
			{176,20},
			{90,20},
			{275,30},
			{182,20},
			{372,20},
			{375,20},
			{394,20},
			{717,20},
			{1080,20},
			{1081,20},
			{630,20},
			{1229,20},
		}
	}
	if(Party ==nil) then
		for  party,each in skillMap do
			for  i=1,getn(skillMap[party]) do
				DelMagic(skillMap[party][i][1])
			end
		end
	else
		if(skillMap[Party]==nil) then
			return
		end
		for i=1,getn(skillMap[Party]) do
			DelMagic(skillMap[Party][i][1])
		end
	end
	UpdateSkill()
	return
end
----------------------------------------------
function OnCancel()
	SetTaskTemp(2,0)
	SetTaskTemp(3,0)
	SetTaskTemp(200,0)
	SetTaskTemp(201,0)
end