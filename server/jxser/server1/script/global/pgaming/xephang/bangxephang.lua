Include("\\script\\lib\\player.lua")
IncludeLib("RELAYLADDER");
IncludeLib("TONG")

function BangXepHang(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	if Player:GetLevel() >= 10 then
		-- print("PlayerIndex: "..PlayerIndex)
		XepHangTop10CaoThu(PlayerIndex)
		XepHangTop10PhuHo(PlayerIndex)
		XepHangTop10MonPhai(PlayerIndex)
		BangXepHangTop10PhuHoMonPhai(PlayerIndex)
		XepHangTop10CaoThuLienDau(PlayerIndex)
	end
end

function DelPlayersRank()
	for i=10277, 10286 do -- m�n ph�i cao th�
		Ladder_ClearLadder(i)
	end
	for i=10265, 10275 do -- m�n ph�i ph� h�
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10287) -- cao th�
	Ladder_ClearLadder(10288) -- ph� h�
	Ladder_ClearLadder(10195) -- li�n ��u
	Ladder_ClearLadder(10119) -- s�n boss s�t th�
	for i=10120, 10122 do -- th�n th� phi ph�m
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10230) -- s� tr�n th�ng hoa s�n ��i chien
	Ladder_ClearLadder(10231) -- s� ng��i h� g�c ���c trong hoa s�n ��i chien
	Ladder_ClearLadder(10006) -- nhi�m v� d� t�u
	Ladder_ClearLadder(10228) -- th�i gian online
	Ladder_ClearLadder(10229) -- n�p khi�u chien l�nh
	Ladder_ClearLadder(10232) -- nh�m b�o ph�
	Ladder_ClearLadder(10233) -- vi�m �� b�o t�ng
	Msg2Player("X�a x�p h�ng <enter><color=green>m�n ph�i cao th�<enter>m�n ph�i ph� h�<enter>th�p ��i cao th�<enter>th�p ��i ph� h�<enter>th�p ��i li�n ��u vinh d�<enter>hoang d� th�p ��i cao th�<enter>...")
end

function XepHangTop10CaoThu(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	Ladder_NewLadder(10287, Player:GetName(), Player:GetLevel(), 1);
end

function XepHangTop10PhuHo(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	local AllMoney = (Player:GetCash() + Player:GetBoxMoney())
	Ladder_NewLadder(10288, Player:GetName(), AllMoney, 1);
end

function XepHangTop10MonPhai(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	local player_Faction = Player:GetFaction()
	local szTongName, nTongID = Player:GetTong();	
	if Player:GetLevel() >= 10 then
		if (player_Faction == "cuiyan") then	
			Ladder_NewLadder(10282, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "emei") then				
			Ladder_NewLadder(10281, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "tangmen") then
			Ladder_NewLadder(10279, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "wudu") then
			Ladder_NewLadder(10280, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "tianwang") then
			Ladder_NewLadder(10278, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "shaolin") then
			Ladder_NewLadder(10277, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "wudang") then
			Ladder_NewLadder(10285, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "kunlun") then
			Ladder_NewLadder(10286, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "tianren") then
			Ladder_NewLadder(10284, Player:GetName(), Player:GetLevel(), 1);
		elseif (player_Faction == "gaibang") then
			Ladder_NewLadder(10283, Player:GetName(), Player:GetLevel(), 1);
		else
				if szTongName == nil or szTongName == "" then
						if Player:GetCamp() == 4 then
								Ladder_NewLadder(10119, Player:GetName(), Player:GetLevel(), 1);
						end
				end
		end
	end
end

function BangXepHangTop10PhuHoMonPhai(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	local player_Faction = Player:GetFaction()
	if Player:GetLevel() >= 10 then
		if (player_Faction == "cuiyan") then	
			Ladder_NewLadder(10265, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "emei") then				
			Ladder_NewLadder(10266, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "tangmen") then
			Ladder_NewLadder(10267, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "wudu") then
			Ladder_NewLadder(10268, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "tianwang") then
			Ladder_NewLadder(10269, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "shaolin") then
			Ladder_NewLadder(10270, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "wudang") then
			Ladder_NewLadder(10271, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "kunlun") then
			Ladder_NewLadder(10272, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "tianren") then
			Ladder_NewLadder(10273, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (player_Faction == "gaibang") then
			Ladder_NewLadder(10274, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		elseif (GetLastFactionNumber() == 10) then
			Ladder_NewLadder(10275, Player:GetName(),(Player:GetCash() + Player:GetBoxMoney()),1);
		end
	end
end

function XepHangTop10CaoThuLienDau(PlayerIndex)
	local Player = Player:New(PlayerIndex)
	Ladder_NewLadder(10195, Player:GetName(), Player:GetTask(2501),1);
end

-- 10250 battle
-- 10262 denggao
-- 10189, tbMOONCAKE_LADDERID 
-- 10190, tbMOONCAKE_LADDERID 
-- 10191, tbMOONCAKE_LADDERID 
-- 10192, tbMOONCAKE_LADDERID 
-- 10193, tbMOONCAKE_LADDERID 
-- 10194, tbMOONCAKE_LADDERID 
-- 10195 phong ba -------------------------------------------------------
-- STORM_LADDERID_WEEK1	= 10182
-- STORM_LADDERID_WEEK2	= 10183
-- STORM_LADDERID_WEEK3	= 10184
-- STORM_LADDERID_WEEK4	= 10185
-- STORM_LADDERID_MONTH	= 10186
-- ['Th�nh ��'] = 10228 ------------------------------------------------
-- ['Ph��ng T��ng'] = 10229 ------------------------------------------
-- ['Bi�n Kinh'] = 10230 -----------------------------------------------
-- ['L�m An'] = 10231 ------------------------------------------------
-- ['��i L�'] = 10232 --------------------------------------------------
-- ['T��ng D��ng'] = 10233 ------------------------------------------
-- ['D��ng Ch�u'] = 10234 
-- PHB_WULIN = 10227
-- 10263,10264,10265 event zhongqui_jieri
-- 10118 d� t�u
-- 10188  nhi�m v� gi�o  d�c ��ng h�nh
-- 10179 v��t �i
-- 10180 v��t �i
-- 10235 v��t �i
-- ladder = 10120 v� l�m ��i h�i ------------------------------------
-- ladder = 10121 v� l�m ��i h�i ------------------------------------
-- ladder = 10122 v� l�m ��i h�i ------------------------------------
-- ladder = 10123 v� l�m ��i h�i
-- ladder = 10124 v� l�m ��i h�i
-- ladder = 10125 v� l�m ��i h�i
-- ladder = 10126 v� l�m ��i h�i
-- ladder = 10127 v� l�m ��i h�i
-- ladder = 10128 v� l�m ��i h�i
-- ladder = 10129 v� l�m ��i h�i
-- 10261 c�ng th�nh
-- 10269 lo�n chi?n c�u ch�u c�c
-- LadderId = 10141 thuy?n r�ng
-- LadderId = 10142 thuy?n r�ng
-- ladder = 10131 freshman_match
-- ladder = 10132 freshman_match
-- ladder = 10133 freshman_match
-- ladder = 10134 freshman_match
-- ladder = 10135 freshman_match
-- ladder = 10136 freshman_match
-- ladder = 10137 freshman_match
-- ladder = 10138 freshman_match
-- ladder = 10139 freshman_match
-- ladder = 10140 freshman_match
-- 10252 vi�m �? b�o t�ng
-- 10237 t�ng b�o ��
-- 10187 t?n s� b�o r��ng 

-- 10006 x?p h�ng nhi�m v� d� t�u

