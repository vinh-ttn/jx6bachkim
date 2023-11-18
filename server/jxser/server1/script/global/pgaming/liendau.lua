EnemySay = 
{
	{"<link=image[0,8]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr><link><color>","S� gi� li�n ��u"}, --
}

function FunctionLeagueMatch()
	local szTitle = EnemySay[1][1]..CheckLgMatchName().."<enter>"..CheckLGMatchType().."<enter>"..GetStateGlMatch().."<enter>"..CheckCityNameVsLevelAndGroup()..GetGroupAndPlayer()..""
	local tbOpt = 
	{
		{"K�t th�c ��i tho�i.",OnCancel},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
--================================================-- Li�n ��u --===============================================--
-- T�nh n�ng:
	-- Ng��i th�ng s� nh�n �c 3 tri�u Kinh nghi�m � c� S� - Trung c�p v� Cao c�p
	-- ng��i thua ho�c h�a s� nh�n �c 1.5 tri�u Kinh nghi�m � c� S� - Trung c�p v� Cao c�p
	-- Cao c�p ng��i th�ng s� nh�n �c 15 �i�m Vinh D�, thua s� kh�ng c� �i�m vinh d�, h�a nhau  s� �c 9 �i�m vinh d�.
	-- S� - Trung c�p ng��i th�ng s� nh�n �c 10 �i�m Vinh D�, thua s� kh�ng c� �i�m vinh d�, h�a nhau s� �c 7 �i�m vinh d�
	-- C�ng khai minh b�ch trong vi�c x�p h�ng
	-- V�o ��u tr��ng s� ko th� di chuy�n v�t ph�m trong h�nh trang, v� c� th� s� d�ng v�t ph�m trong thanh c�ng c�.
	-- X�a b� �� n�ng ��ng khi tham gia Li�n ��u
	-- Hi�n t�i th�i gian b�t ��u t� ng�y 8 ��n 28 h�ng th�ng
	-- H�nh th�c ��n ��u t� do, n_ntype = 5
	-- C�c ng�y ��u tu�n t� th� 2 ��n th� 6 ��u m�i ng�y 4 tr�n t� 19h~20h00. C�c ng�y cu�i tu�n th� 7 v� ch� nh�t ��u 8 tr�n m�i ng�y t� 18h~19h00 v� 21h~22h00
	-- �� x�a b� �� n�ng ��ng c�ng th�m khi tham gia li�n ��u
	-- vi�t h�a v� ch�nh s�a ho�n to�n c�c c�u tho�i v� th�ng b�o
	-- T�t c� m�i ng��i c� th� b�o danh tham gia li�n ��u � th�t ��i th�nh th�, kh�ng c�n ph�n chia MapID, h� th�ng s� t� nh�n di�n v� ��a v�o khu v�c thi ��u khu v�c <~ 199 v� 120 ~ 
	-- 1 ��u tr��ng 10x10 � = 100 � x2 ng��i = 200 ng��i t�i �a trong 1 ��u tr��ng, c� 8 ��u tr��ng <=> 800 � <=> 1600 ng��i thi ��u t�i �a trong 1 l�n (c� th� m� th�m 2 ��u tr��ng cho m�i 2 Level)
	-- t�t c� ng��i tham gia b�o danh ��u s� ��a v� 1 Map v� l�m li�n ��u (1), b�o danh v�o ��u tr��ng h� th�ng s� t�nh t�ng ng��i �� c� trong ��u tr��ng, n�u ��u tr��ng n�o �t h�n 200 ng��i
	-- h� th�ng s� ��a v�o, n�u b�ng 200 ng��i h� th�ng s� ti�n h�nh ��a v�o ��u tr��ng ti�p theo.	
Include("\\script\\missions\\leaguematch\\head.lua")

CityNameWithMapID = {{1, "Ph��ng T��ng"},{11, "Th�nh ��"},{37, "Bi�n Kinh"},{78, "T��ng D��ng"},{80, "D��ng Ch�u"},{162, "��i L�"},{176, "L�m An"},}
SubWorldLvl1 = {{506, "(1)"},{507, "(2)"},{508, "(3)"},{509, "(4)"},{510, "(5)"},{511, "(6)"},{512, "(7)"},{513, "(8)"},}
SubWorldLvl2 = {{516, "(1)"},{517, "(2)"},{518, "(3)"},{519, "(4)"},{520, "(5)"},{521, "(6)"},{522, "(7)"},{523, "(8)"},}

function GetGroupAndPlayer()
	local String1 = "Error String1"
	local String2 = "Error String2"
	local OldSubWorld = SubWorld
	for i = 1, 8 do
		SubWorld = SubWorldLvl1[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local String1_1 = "<color=pink>-------------------[<color><color=Orange>S� - Tr"
				local String1_2 = "ung c�p<color><bclr><color=pink>]-------------------<color>��u tr"
				local String1_3 = "��ng: <color=green>"..i.."<color> - S� ng��i: <color=gree"
				local String1_4 = "n>"..getn(wlls_get_ms_troop()).."<color> - T�ng ng��i: <col"
				local String1_5 = "or=green>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				String1 = String1_1..String1_2..String1_3..String1_4..String1_5
				break;
			end
	end
	for i = 1, 8 do
		SubWorld = SubWorldLvl2[i][1];
			if getn(wlls_get_ms_troop()) < WLLS_MAX_COUNT then
				local String2_1 = "<color=pink>-----------------------[<color><color=Orange>Cao c�p<"
				local String2_2 = "color><bclr><color=pink>]----------------------<color>��u tr��ng: <color"
				local String2_3 = "=green>"..i.."<color> - S� ng��i: <color=green"
				local String2_4 = ">"..getn(wlls_get_ms_troop()).."<color> - T�ng ng��i: <color=g"
				local String2_5 = "reen>"..(getn(wlls_get_ms_troop()) + ((i-1)*200)).."<color>"
				String2 = String2_1..String2_2..String2_3..String2_4..String2_5
				break;
			end
	end
	SubWorld = OldSubWorld
	return "<enter>"..String2.."<enter>"..String1.."";
end

function CityNameWithMapID(MapID)
	for i = 1, getn(CityNameWithMapID) do
		if CityNameWithMapID[i][1] == MapID then
			return CityNameWithMapID[i][2];
		end
	end
end

function CheckCityNameVsLevelAndGroup()
	local NowDayw = tonumber(date("%w"))
	local strNowDayw
	if NowDayw == 0 or NowDayw >= 6 then
		strNowDayw = "��u <color=yellow>8<color> tr�n, t� <color=yellow>18h00 ~ 19h00<color> v� <color=yellow>20h00 ~ 21h00<color>"
	else
		strNowDayw = "��u <color=yellow>4<color> tr�n, t� <color=yellow>19h00 ~ 20h00<color><enter>"
	end
	return "H�m nay: "..strNowDayw..""
end

function CheckLgMatchName()
	return "T�nh n�ng : <color=yellow>V� L�m Li�n ��u<color>";
end

function GetStateGlMatch()
	local n_timer = GetGlbValue(GLB_WLLS_TIME) + 1
			n_timer = WLLS_TIMER_PREP_TOTAL - n_timer
	local n_matchphase = GetGlbValue( 820 );
	if n_matchphase < 2 then
		return "Tr�ng th�i: <color=pink>T�m ngh�, ti�n h�nh nh�n th��ng<color>";
	elseif n_matchphase == 2 then
		return "Tr�ng th�i: <color=green>Ch�a t�i gi� b�o danh<color>";
	elseif n_matchphase == 3 then
		return "Tr�ng th�i: <color=yellow>Chu�n b� b�o danh<color>";
	elseif n_matchphase == 4 then
		return "Tr�ng th�i: <color=Water>Ti�n h�nh b�o danh<color>, th�i gian c�n <color=yellow>"..ceil(n_timer*WLLS_TIMER_PREP_FREQ/60).." ph�t<color>";
	elseif n_matchphase == 5 then
		local n_resttime = 120 - GetGlbValue(825)
		local n_resttime = ceil(n_resttime*5/60)
		return "Tr�ng th�i: <color=yellow>�ang thi ��u, th�i gian c�n<color> <color=blue>"..n_resttime.." ph�t<color>";
	end
end

function CheckLGMatchType()
	local n_ntype = GetGlbValue(824);
	if n_ntype == 0 then
		return "H�nh th�c : <color=red>T�nh n�ng ch�a ���c m�<color>";
	elseif (WLLS_TAB[n_ntype].max_member <= 1) then
		return "H�nh th�c : <color=green>��n ��u t� do<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	elseif (WLLS_TAB[n_ntype].max_member > 1) then
		return "H�nh th�c : <color=green>��u nhi�u ng��i<color> - n_ntype: <color=green>"..n_ntype.."<color>";
	end
end

--==============================================-- END - Li�n ��u --============================================--