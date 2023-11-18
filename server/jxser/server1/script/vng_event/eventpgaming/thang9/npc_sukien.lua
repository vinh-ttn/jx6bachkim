---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuongeventcacthang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--------------------------------------------------------
HUYCHUONGQUOCKHANH 	 = 5823
NHANTHUONGMOC1	     = 5821
NHANTHUONGMOC2	     = 5820
NHANTHUONGMOC3	     = 5819
---------------------------------------------------------
function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
--------------------------------------------------------------
function main()
dofile("script/vng_event/eventpgaming/thang9/npc_sukien.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<color=green>Nhi�t li�t ch�c mong ng�y Qu�c Kh�nh. Trong kho�ng th�i gian s� ki�n ng��i ch�i ca th� �em 10 <color=yellow>Ng�i sao chi�n th�ng<color> v� <color=yellow>15 v�n l��ng<color> �� ��i l�y  <color=yellow>Qu� Qu�c Kh�nh<color>.B�n trong <color=yellow>Qu� Qu�c Kh�nh<color> c� ch�a huy ch��ng qu�c kh�nh v� m�nh t�ng b�o ��.<color>",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nTime  = "20"..nYear..""
local nTime1 = "20"..nYear.."09010000"
local nTime2 = "20"..nYear.."10010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		tbDailog:AddOptEntry("Nh�n Th��ng ��t M�c",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Ho�t ��ng Di�n Ra T�:\n\n <color=red>0h Ng�y 01 - 09 - 20"..nYear.." ��n 0h Ng�y 01 - 10 - 20"..nYear.."<color><color>")
	end
end	
			
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	local tbOpt = {
		{"Nh�n Th��ng M�c "..nGioiHanMoc1.." Huy ch��ng qu�c kh�nh",PhanThuong1},
		{"Nh�n Th��ng M�c "..nGioiHanMoc2.." Huy ch��ng qu�c kh�nh",PhanThuong2},
		{"Nh�n Th��ng M�c "..nGioiHanMoc3.." Huy ch��ng qu�c kh�nh",PhanThuong3},
		{"H�y B�",},
	}
	CreateNewSayEx("<color=green>"..myplayersex().." Mu�n Nh�n M�c N�o<color>\n<color=red>Hi�n T�i Ng��i �� S� D�ng <color=yellow>"..GetTask(HUYCHUONGQUOCKHANH).."<color> Huy ch��ng qu�c kh�nh<color>", tbOpt)
end	
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------
function PhanThuong1()
	if (GetTask(NHANTHUONGMOC1) == 0) then
		if (GetTask(HUYCHUONGQUOCKHANH) < nGioiHanMoc1) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc1..":<color>\n<bclr=blue>+"..nTienVanMoc1HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc1HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc500","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
--------------------------------------------------------Moc 1000---------------------------------------------------------------------------------------
function PhanThuong2()
	if (GetTask(NHANTHUONGMOC2) == 0) then
		if (GetTask(HUYCHUONGQUOCKHANH) < nGioiHanMoc2) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc2..":<color>\n<bclr=blue>+"..nTienVanMoc2HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc2HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc1000","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
----------------------------------------------------------Moc 2000--------------------------------------------------------------------------------
function PhanThuong3()
	if (GetTask(NHANTHUONGMOC3) == 0) then
		if (GetTask(HUYCHUONGQUOCKHANH) < nGioiHanMoc3) then
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>")
		else
			Say("<color=green>Ph�n Th��ng M�c "..nGioiHanMoc3..":<color>\n<bclr=blue>+"..nTienVanMoc3HienThi.." v�n<bclr><color=orange>\n<bclr=blue>+"..nKinhNghiemMoc3HienThi.." tri�u kinh nghi�m<bclr><color=orange>\n+Trang B� ho�c v�t ph�m ng�u nhi�n<color>",2,"Nh�n Th��ng/Moc1500","Th�i Ta Quay L�i Sau/No")
		end
	else
		Say("<color=green>"..myplayersex().." �� Nh�n Ph�n Th��ng N�y R�i")
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------