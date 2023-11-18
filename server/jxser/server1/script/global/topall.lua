-- Author by AloneScript (Linh Em)
-- Date: 04/09/2018
-- Description: H� th�ng B�ng X�p H�ng

-- 10276: Hoa S�n Th�p ��i cao th�
-- 10277: Thi�u L�m Th�p ��i cao th�
-- 10278: Thi�n V��ng Th�p ��i cao th�
-- 10279: ���ng M�n Th�p ��i cao th�
-- 10280: Ng� ��c Th�p ��i cao th�
-- 10281: Nga My Th�p ��i cao th�
-- 10282: Th�y Y�n Th�p ��i cao th�
-- 10283: C�i Bang Th�p ��i cao th�
-- 10284: Thi�n Nh�n Th�p ��i cao th�
-- 10285: V� �ang Th�p ��i cao th�
-- 10286: C�n L�n Th�p ��i cao th�
-- 10287: Th�p ��i cao th� th� gi�i
-- 10288: Th�p ��i ph� h� th� gi�i

IncludeLib("TONG");
IncludeLib("SETTING");
IncludeLib("RELAYLADDER");
Include("\\script\\global\\gm\\gm_script.lua")

TRANSLIFE = {
	[0] = 0.000,
	[1] = 0.001,
	[2] = 0.002,
	[3] = 0.003,
	[4] = 0.004,
	[5] = 0.005,
	[6] = 0.006,
}

function Rankings()
	local nIsGM = tbAloneScript:CheckGameMaster()
	if (nIsGM == 2) then
	return 0 end
	
	if (GetLevel() >= 10) then
		-- Rankings_ClearTop10()
		Rankings_Top10Server()
		Rankings_Top10Money()
		Rankings_Top10Faction_Famous();
		Rankings_Top10Faction_Richs();
	end
end

function Rankings_Top10Server()
	local nTranLife = ST_GetTransLifeCount();
	local nLevel = GetLevel();
	local nExp = GetExp()/1e12;
	local nExpPercent = GetExpPercent()/100;
	local nRankings = nLevel+TRANSLIFE[nTranLife]+nExpPercent+nExp;
	Ladder_NewLadder(10287, format("%s\t%d TS ",GetName(), nTranLife), nRankings,1)
end

function Rankings_Top10Money()
	local nMoney = GetCash()+GetBoxMoney()
	local nRankings = nMoney/10000
	Ladder_NewLadder(10288, GetName(), nRankings,1)
end

function Rankings_Top10Faction_Richs()
	local nFaction = GetFaction();
	local nMoney = GetCash()+GetBoxMoney()
	local nRankings = (nMoney/10000)
	if (GetLevel() >= 10) then
		if (nFaction == "shaolin") then
			Ladder_NewLadder(10265, GetName(), nRankings,1);
		elseif (nFaction == "tianwang") then
			Ladder_NewLadder(10266, GetName(), nRankings,1);
		elseif (nFaction == "tangmen") then
			Ladder_NewLadder(10267, GetName(), nRankings,1);
			print(nRankings)
		elseif (nFaction == "wudu") then
			Ladder_NewLadder(10268, GetName(), nRankings,1);
		elseif (nFaction == "emei") then
			Ladder_NewLadder(10269, GetName(), nRankings,1);
		elseif (nFaction == "cuiyan") then
			Ladder_NewLadder(10270, GetName(), nRankings,1);
		elseif (nFaction == "gaibang") then
			Ladder_NewLadder(10271, GetName(), nRankings,1);
		elseif (nFaction == "tianren") then
			Ladder_NewLadder(10272, GetName(), nRankings,1);
		elseif (nFaction == "wudang") then
			Ladder_NewLadder(10273, GetName(), nRankings,1);
		elseif (nFaction == "kunlun") then
			Ladder_NewLadder(10274, GetName(), nRankings,1);
		elseif (nFaction == "huashan") then
			Ladder_NewLadder(10275, GetName(), nRankings,1);
		end
	end
end

function Rankings_Top10Faction_Famous()
	local nFaction = GetFaction();
	local nTranLife = ST_GetTransLifeCount();
	local nLevel = GetLevel();
	local nExp = GetExp()/1e12;
	local nExpPercent = GetExpPercent()/100;
	local nRankings = nLevel+TRANSLIFE[nTranLife]+nExpPercent+nExp;
	-- if (GetLevel() >= 10) then
		-- if (nFaction == "shaolin") then
			-- Ladder_NewLadder(10277, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "tianwang") then
			-- Ladder_NewLadder(10278, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "tangmen") then
			-- Ladder_NewLadder(10279, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "wudu") then
			-- Ladder_NewLadder(10280, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "emei") then
			-- Ladder_NewLadder(10281, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "cuiyan") then
			-- Ladder_NewLadder(10282, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "gaibang") then
			-- Ladder_NewLadder(10283, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "tianren") then
			-- Ladder_NewLadder(10284, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "wudang") then
			-- Ladder_NewLadder(10285, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "kunlun") then
			-- Ladder_NewLadder(10286, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- elseif (nFaction == "huashan") then
			-- Ladder_NewLadder(10276, format("%s		%d chuy�n sinh  ",GetName(), nTranLife), nRankings,1);
		-- end
	-- end
	
	if (GetLevel() >= 10) then
		if (nFaction == "shaolin") then
			Ladder_NewLadder(10277, GetName(), nRankings,1);
		elseif (nFaction == "tianwang") then
			Ladder_NewLadder(10278, GetName(), nRankings,1);
		elseif (nFaction == "tangmen") then
			Ladder_NewLadder(10279, GetName(), nRankings,1);
		elseif (nFaction == "wudu") then
			Ladder_NewLadder(10280, GetName(), nRankings,1);
		elseif (nFaction == "emei") then
			Ladder_NewLadder(10281, GetName(), nRankings,1);
		elseif (nFaction == "cuiyan") then
			Ladder_NewLadder(10282, GetName(), nRankings,1);
		elseif (nFaction == "gaibang") then
			Ladder_NewLadder(10283, GetName(), nRankings,1);
		elseif (nFaction == "tianren") then
			Ladder_NewLadder(10284, GetName(), nRankings,1);
		elseif (nFaction == "wudang") then
			Ladder_NewLadder(10285, GetName(), nRankings,1);
		elseif (nFaction == "kunlun") then
			Ladder_NewLadder(10286, GetName(), nRankings,1);
		elseif (nFaction == "huashan") then
			Ladder_NewLadder(10276, GetName(), nRankings,1);
		end
	end
end

function Rankings_ClearTop10()
	for i=10276,10288 do
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10119)
end