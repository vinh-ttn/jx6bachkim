---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\npcdailog.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\equipex\\head.lua")
--------------------------------------------------------
BANHCHUNGTHUONGHAN 		 = 5862
NHANTHUONGMOC1	 		 = 5861
NHANTHUONGMOC2	 		 = 5860
NHANTHUONGMOC3			 = 5859
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
dofile("script/vng_event/eventpgaming/thang1/cay.lua")

	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName);
	end
	
	local tbDailog = DailogClass:new(szNpcName);
	tbDailog.szTitleMsg = "<color=green>Ho�t ��ng h�i l�c ��u xu�n �� b�t ��u, trong th�i gian ch� ��nh, Ng��i ch�i ��n tr��c c�y ��o, c�y mai � th�t ��i th�nh th�, t�n th� th�n th�nh t�m c�u nguy�n, s� nh�n ���c nh�ng ph�n th��ng n�m m�i. Ngo�i ra, c�c v� ��i hi�p c�ng c� th� treo th�m li�n t�t v�i ba ch� Ph�c - L�c - Th� s� nh�n ���c nh�ng ph�n th��ng b�t ng�.<color>\n Hi�n t�i b�n �� treo ���c "..GetTask(5782).." li�n",
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog, nNpcIndex)

local nYear  = tonumber(date("%y"));
local nTime1 = "20"..nYear.."01010000"
local nTime2 = "20"..nYear.."02010000"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1) and (nDayNow <= nTime2) then
		--tbDailog:AddOptEntry("Ta mu�n treo li�n Ph�c - L�c - Th� �� ��n t�t",NhanMoc);
		tbDailog:Show();
	else
		Talk(1,"","<color=green>Ho�t ��ng Di�n Ra T�:\n\n <color=red>0h Ng�y 01 - 01 - 20"..nYear.." ��n 0h Ng�y 01 - 02 - 20"..nYear.."<color><color>")
	end
end				
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NhanMoc()
	--for i = 1657, 1659 do
	--ItemIndex = CalcEquiproomItemCount(6,1,i,-1)
	--SyncItem(ItemIndex); 
	--end
	AskClientForNumber("phucloctho",0,nItemIndex, "Nh�p s� l��ng mu�n treo: ")
end	

--------------------------------------------------------Del item---------------------------------------------------------------------------------------
function DelNguyenLieu(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end
-----------------------------------------------------So luong item-------------------------------------------------------------------------------------------------------------------------------------------
function phucloctho(n_key)

	for i=1,n_key do
		AddItem(6,1,radom(122,124),1,0,0)
		DelNguyenLieu(1657,1)
		DelNguyenLieu(1658,1)
		DelNguyenLieu(1659,1)
	SetTask(5782,GetTask(5782)+n_key)
	end
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------