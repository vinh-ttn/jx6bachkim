Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-------------------------------------------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then
		return "N� Hi�p"
	else
		return "��i Hi�p"
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function thongtingamer() 
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
local nGio = tonumber(GetLocalDate("%H")); 
local nPhut = tonumber(GetLocalDate("%M")); 
local nGiay = tonumber(GetLocalDate("%S")); 
local nW, nX, nY = GetWorldPos()
local X = nX*32
local Y = nY*32
local zX = floor(nX/8)
local zY = floor(nY/16)
local nIdPlay = PlayerIndex 
local tbSay = {}
	tinsert(tbSay,"Thao t�c l�n ng��i ch�i - Nh�p T�i Kho�n/luachonid3")
	tinsert(tbSay,"Tho�t/no")
	tinsert(tbSay,"Tr� l�i")
	Say("Xin Ch�o <color=red>"..GetName().."<color>!\nT�a �� hi�n t�i: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color> \n<color>Index:           <color=green>"..nIdPlay.."<color>\nHi�n �ang C�:    <bclr=red><color=yellow>["..GetPlayerCount().."]<color><bclr> ng��i ch�i trong game.\n", getn(tbSay), tbSay)
end

-----------------------------------------------------------------------Tim Theo Ten Tai Khoan------------------------------------------------------------------------------------------------------------------------
function luachonid3() 
	AskClientForString("TenTaiKhoan", "", 0,5000,"T�n T�i Kho�n") 
end 

function TenTaiKhoan(nNameChar) 
local nNum = GetPlayerCount()
for i = 1, nNum+1000 do
		gmidx=PlayerIndex
		PlayerIndex=i
		TarName=GetAccount()
		PlayerIndex=gmidx
	if TarName == nNameChar then
		SetTaskTemp(200,i) 
		gmName=GetName() 
		gmidx=PlayerIndex 
		PlayerIndex=GetTaskTemp(200) 
		tk=GetAccount() 
		lev=GetLevel()
		xp=GetExp() 
		cam=GetCamp() 
		fac=GetFaction() 
		cash=GetCash() 
		lif=GetExtPoint(1)*100 --- 100 t��ng �ng 100 ��ng
		nTienDong=CalcEquiproomItemCount(4,417,1,1)
		nDiemVip=GetTask(5793)
		nTransLife=GetTask(1963)
		knb=GetExtPoint(1)
		vnd=GetTask(5793)
		man=GetMana() 
		apo=GetEnergy() 
		spo=GetRestSP() 
		cr=GetColdR() 
		pr=GetTask(747) 
		phr=GetPhyR() 
		fr=GetFireR() 
		lr=GetLightR() 
		eng=GetEng() 
		dex=GetDex() 
		strg=GetStrg() 
		vit=GetVit() 
		w,x,y=GetWorldPos() 
		xinxi = GetInfo() 
		ObjName=GetName() 
		PlayerIndex=gmidx 
		Msg2Player("Nh�n v�t t�n:<color=metal> "..ObjName.."<color> - ID: <color=green> "..i.."<color>"); 
		local tbSay =  {}
		local szAccount = GetAccount()
		tinsert(tbSay,"Thu L�i Ti�n C�a Gammer/RutTien")
		tinsert(tbSay,"N�p th� cho ng��i ch�i/NapThe")
		tinsert(tbSay,"Tho�t./no")
		tinsert(tbSay,"Tr� l�i.")            

		Say("<color=green>T�i Kho�n: "..tk.." - Nh�n V�t: "..ObjName.."\nC�p ��: "..lev.." - Kinh nghi�m: "..xp.."\nM�u: "..cam.." - M�n ph�i: "..fac.."\nNg�n L��ng: "..(cash/10000).." v�n\nV� tr�: "..w..","..x..","..y.." - Ti�n ��ng: "..nTienDong.." Xu\nTi�n n�p: "..vnd.." ��ng - S� ti�n ch�a r�t: "..lif.." ��ng<color>", getn(tbSay), tbSay)
		return --end
	end 
end
	if TarName ~= nNameChar then
		Msg2Player("Kh�ng t�m th�y nh�n v�t t�n <color=green>"..nNameChar.."<color>"); 
	end
end 
-------------------------------------------------------------------------------------------------------------------------
function RutTien()
	AskClientForNumber("XacNhanRut",0,100000000,"Nh�p S� Ti�n")
end
function XacNhanRut(num)
local KNB = num/TyLeNapThe--- 100 t��ng �ng 100 ��ng
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
PayExtPoint(1,num/TyLeNapThe)--- 100 t��ng �ng 100 ��ng
SetTask(5793,GetTask(5793)-num)
--SetTask(5733,GetTask(5733)-num/TyLeNapThe)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Thu Ti�n C�a Member <color=metal>"..num.."<color> Th�nh C�ng");
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> ���c GM Thu L�i <color=metal>"..num.."<color> Th�nh C�ng");
end
-------------------------------------------------------------------------------------------------------------------------
function NapThe()
	AskClientForNumber("XacNhanNap",0,100000000,"Nh�p S� Ti�n")
end
function XacNhanNap(num)
local KNB = num/TyLeNapThe--- 100 t��ng �ng 100 ��ng
gmidx=PlayerIndex 
PlayerIndex=GetTaskTemp(200)
AddExtPoint(1,num/TyLeNapThe)--- 100 t��ng �ng 100 ��ng
SetTask(5793,GetTask(5793)+num)
--SetTask(5733,GetTask(5733)+num/TyLeNapThe)
Msg2Player("Qu�n l� <color=pink>GM<color> �� Chuy�n <color=metal>"..num.." VND <color> <color=green>"..ObjName.."<color> Nh�n ���c <color=metal>"..KNB.."<color> Ti�n ��ng Th�nh C�ng");
PlayerIndex=gmidx 
Msg2Player("Nh�n v�t <color=green>"..ObjName.."<color> �� �ng H� Server <color=metal>"..num.." VND V� Nh�n ���c "..KNB.."<color> Ti�n ��ng Th�nh C�ng");
end
