--function h� tr� trao th��ng trang b� ho�ng kim - Updated by DinhHQ - 20110920
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\dailogsys\\dailogsay.lua");


function main()

	local player_Faction = GetLastFactionNumber()

if (player_Faction == 4) then

	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Nga My Ch��ng", nmc},	
		{"Nga My Ki�m", nmk},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 5) then	
			
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Th�y Y�n �ao", tyd},	
		{"Th�y Y�n song �ao", tysd},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 2) then
	
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"���ng M�n phi �ao", dmpd},	
		{"���ng M�n n� ti�n", dmnt},
		{"���ng M�n phi ti�u", dmpt},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 3) then
	
local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Ng� ��c Ch��ng", ngudc},	
		{"Ng� ��c �ao", ngudd},
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)	


elseif (player_Faction == 1) then
	
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Thi�n V��ng �ao", tvd},	
		{"Thi�n V��ng Th��ng", tvt},
		{"Thi�n V��ng Ch�y", tvc},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 0) then
		
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Thi�u L�m Quy�n", tlq},	
		{"Thi�u L�m �ao", tld},
		{"Thi�u L�m C�n", tlc},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 8) then
		local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"V� �ang ki�m", vodk},	
		{"V� �ang Ch��ng", vodc},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)
	
elseif (player_Faction == 9) then
		local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"C�n L�n �ao", cold},	
		{"C�n L�n ki�m", colk},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 7) then
		
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Thi�n Nh�n �ao", tnhd},	
		{"Thi�n Nh�n K�ch", tnhk},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 6) then
		
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"C�i Bang B�ng", cbro},	
		{"C�i Bang R�ng", cbo},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	

elseif (player_Faction == 10) then
	
	local szTitle = "Xin h�y l�a ch�n h� ph�i ph� h�p"
	local tbOpt =
	{
		{"Hoa S�n Ki�m", hosk},	
		{"Hoa S�n N�i C�ng", hsnc},
		{"K�t th�c ��i tho�i.",OnCancel},
	}

	CreateNewSayEx(szTitle, tbOpt)	
else
		Say("V� danh ti�u t�t h�y t�m 1 m�n ph�i cho m�nh �i !", 0)
		return 0
	end

end

function nmc()
		local ItemIdx=AddGoldItem(0, 2361);
		--SetItemBindState(ItemIdx, -2);
		return 0
end

function nmk()
		local ItemIdx=AddGoldItem(0, 2351);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tyd()
		local ItemIdx=AddGoldItem(0, 2371);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tysd()
		local ItemIdx=AddGoldItem(0, 2381);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmpd()
		local ItemIdx=AddGoldItem(0, 2411);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmnt()
		local ItemIdx=AddGoldItem(0, 2421);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function dmpt()
		local ItemIdx=AddGoldItem(0, 2431);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function ngudc()
		local ItemIdx=AddGoldItem(0, 2391);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function ngudd()
		local ItemIdx=AddGoldItem(0, 2401);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvd()
		local ItemIdx=AddGoldItem(0, 2341);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvt()
		local ItemIdx=AddGoldItem(0, 2331);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tvc()
		local ItemIdx=AddGoldItem(0, 2321);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tlq()
		local ItemIdx=AddGoldItem(0, 2291);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tld()
		local ItemIdx=AddGoldItem(0, 2311);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tlc()
		local ItemIdx=AddGoldItem(0, 2301);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function vodk()
		local ItemIdx=AddGoldItem(0, 2491);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function vodc()
		local ItemIdx=AddGoldItem(0, 2481);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cold()
		local ItemIdx=AddGoldItem(0, 2501);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function colk()
		local ItemIdx=AddGoldItem(0, 2511);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tnhd()
		local ItemIdx=AddGoldItem(0, 2471);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function tnhk()
		local ItemIdx=AddGoldItem(0, 2461);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cbro()
		local ItemIdx=AddGoldItem(0, 2451);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function cbo()
		local ItemIdx=AddGoldItem(0, 2441);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function hosk()
		local ItemIdx=AddGoldItem(0, 4769);
		--SetItemBindState(ItemIdx, -2);
return 0
end

function hsnc()
		local ItemIdx=AddGoldItem(0, 4759);
		--SetItemBindState(ItemIdx, -2);
return 0
end