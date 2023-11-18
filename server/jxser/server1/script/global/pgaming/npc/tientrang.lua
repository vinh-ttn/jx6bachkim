Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-------------------------------------------------------------------------
function main()
dofile("script/global/pgaming/npc/tientrang.lua")
if NPCTienTrang ~=1 then
	Talk(1,"","T�nh n�ng n�y t�m ��ng, xin h�y quay l�i sau.")
	return 1
end
 if PhuongThucDoi == 1 then
		if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Mu�n R�t KNB",Rut_KNB},
			{"��i KNB Th�nh Ti�n ��ng",KNBthanhTienDong},
			{"Nh�n Ti�n Gh� Qua Th�i",No},
		}
		CreateNewSayEx("<color=green>T�i Kho�n: <color=red>"..GetAccount().."<color> - Nh�n V�t: <color=red>"..GetName().."<color>\nKNB c�n l�i: <color=yellow>"..GetExtPoint(1).."<color>\n�i�m N�p Th�: <color=yellow>"..GetTask(5733).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H�y M� Kh�a R��ng Tr��c<color>")
	end
	else
	if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Mu�n R�t ti�n ��ng",Rut_KNB},
			{"Nh�n Ti�n Gh� Qua Th�i",No},
		}
		CreateNewSayEx("<color=green>T�i Kho�n: <color=red>"..GetAccount().."<color> - Nh�n V�t: <color=red>"..GetName().."<color>\nTi�n ��ng c�n l�i: <color=yellow>"..GetExtPoint(1).."<color>\n�i�m N�p Th�: <color=yellow>"..GetTask(5733).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H�y M� Kh�a R��ng Tr��c<color>")
	end
 end
end
function Rut_KNB()
	if PhuongThucDoi == 1 then
	AskClientForNumber("RutKNB",0,500,"S� L��ng R�t")
	else
	AskClientForNumber("RutTienDong",0,500,"S� L��ng R�t")
	end
end
function RutKNB(num)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","C�n tr�ng 30 � r��ng ch�a ��")
		return 1
end 
	if (GetExtPoint(1) >= num) then
		SetTask(5733,GetTask(5733)+num)
		PayExtPoint(1,num)
		tbAwardTemplet:GiveAwardByList({tbProp={4,343,1,1,0,0},nCount=num},1)
		SetTask(5997,GetTask(5997)+num)
		Msg2Player("Ch�c M�ng "..myplayersex().." �� R�t Th�nh C�ng <color=yellow>"..num.."<color> KNB")
		WriteLogPro("dulieu/RutKimNguyenBao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� R�t "..num.." KNB");
	else
		Talk(1, "", "<color=red>"..myplayersex().." �ang C�: <color=yellow>"..GetExtPoint(1).."<color> KNB\n         S� L��ng C�n R�t: <color=yellow>"..num.."<color> KNB\n                    C�n Thi�u: <color=yellow>"..num-GetExtPoint(1).."<color> KNB<color>")
	end
end

function RutTienDong(num)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","C�n tr�ng 30 � r��ng ch�a ��")
		return 1
end 
	if (GetExtPoint(1) >= num) then
		SetTask(5733,GetTask(5733)+num)
		PayExtPoint(1,num)
		tbAwardTemplet:GiveAwardByList({tbProp={4,417,1,1,0,0},nCount=num},1)
		SetTask(5997,GetTask(5997)+num)
		Msg2Player("Ch�c M�ng "..myplayersex().." �� R�t Th�nh C�ng <color=yellow>"..num.."<color> Ti�n ��ng")
		WriteLogPro("dulieu/RutKimNguyenBao.txt",""..GetAccount().."  "..GetName().."\t "..tonumber(GetLocalDate("%Y%m%d%H%M")).."   "..GetIP().."\t �� R�t "..num.." Ti�n ��ng");
	else
		Talk(1, "", "<color=red>"..myplayersex().." �ang C�: <color=yellow>"..GetExtPoint(1).."<color> Ti�n ��ng\n         S� L��ng C�n R�t: <color=yellow>"..num.."<color> Ti�n ��ng\n                    C�n Thi�u: <color=yellow>"..num-GetExtPoint(1).."<color> Ti�n ��ng<color>")
	end
end

function KNBthanhTienDong()
	local nKNB = CalcEquiproomItemCount(4,343,1,-1)
	AskClientForNumber("doiknbthanhtiendong2",0,nKNB, "Nh�p s� l��ng: ")
end

function doiknbthanhtiendong2(n_key)
local nRuong = CalcFreeItemCellCount() 
if nRuong < 30 then
		Talk(1,"","C�n tr�ng 30 � r��ng ch�a ��")
		return 1
	end 
for i=1,n_key do
		tbAwardTemplet:GiveAwardByList({tbProp = {4,417,0,0,0,0}, nCount = TyLeDoiKnbSangTienDong}, "test", 1);
		ConsumeEquiproomItem(1,4,343,1,-1)
	end
end;

function WriteLogPro(data,str)
	local Data2 = openfile(""..data.."", "a+");
	write(Data2,tostring(str));
	closefile(Data2);
end