	Include("\\relaySetting\\task\\congthanh\\citywar_head.lua")

	LEAGUETYPE_CITYWAR_SIGN = 508;

	LEAGUETYPE_CITYWAR_FIRST = 509;

	function TaskShedule()

	TaskName( "Bang s� h�y b� b�o danh c�ng th�nh chi�n ");

	TaskInterval(1440);	-- m�i ng�y

	-- TaskTime(0, 0);			--0 �i�m g�y ra
	TaskTime(17, 59);			--0 �i�m g�y ra

	TaskCountLimit(0);	-- v� h�n th�

	clearCityWarLeague();

	checkCityWarLeague();
	
	OutputMsg( "  ");
	OutputMsg( " ========================================================================================");
	OutputMsg( "                           Cong Thanh Chien - Clear Challenger - OK");

	end

function TaskContent()
	if Ctc3truCheckIsLimitOpenCityWar(1) == 0 then return end
	clearCityWarLeague();
	checkCityWarLeague();
	OutputMsg( " ========================= Cong Thanh Chien - Clear Challenger ---> ")
end;

	function checkCityWarLeague()

	-- kh�i ��ng th� ki�m tra c� hay kh�ng t�n t�i chi�n ��i

	for i = 1, 7 do

	local szLg = cityid_to_lgname(i);

	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szLg);

	if (FALSE(nlid)) then

	local nNewLeagueID = LG_CreateLeagueObj()	-- sanh th�nh x� �o�n s� li�u ��i t��ng (ph�n h�i ��i t��ng ID)

	LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_SIGN, szLg)	-- thi�t tr� x� �o�n tin t�c (lo�i h�nh, t�n g�i)

	local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");

	LG_FreeLeagueObj(nNewLeagueID);

	end;

	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, szLg);

	if (FALSE(nlid)) then

	local nNewLeagueID = LG_CreateLeagueObj()	-- sanh th�nh x� �o�n s� li�u ��i t��ng (ph�n h�i ��i t��ng ID)

	LG_SetLeagueInfo(nNewLeagueID, LEAGUETYPE_CITYWAR_FIRST, szLg)	-- thi�t tr� x� �o�n tin t�c (lo�i h�nh, t�n g�i)

	local ret = LG_ApplyAddLeague(nNewLeagueID, "", "");

	LG_FreeLeagueObj(nNewLeagueID);

	end;

	end;

	end;

	function clearCityWarLeague()

	--	 � 24 th� ch�p h�nh ph�a d��i thao t�c

	for i = 1, 7 do

	local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3]);

	if (not FALSE(nlid)) then

	local nCount = LG_GetMemberCount(nlid);

	for k= 0, nCount -1 do

	local szMemberName = LG_GetMemberInfo(nlid, k);

	LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_FIRST, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3], szMemberName, "", "", 0);

	end;

	end;

	nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3]);

	if (not FALSE(nlid)) then

	nCount = LG_GetMemberCount(nlid);

	local tbTemMem = {};

	for k = 0, nCount -1 do

	local szMemberName = LG_GetMemberInfo(nlid, k);

	tbTemMem[getn(tbTemMem)+1] = szMemberName;

	end;

	for k = 1, getn(tbTemMem) do

	LGM_ApplyRemoveMember(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[i][3], tbTemMem[k], "", "", 0);

	end;

	end;

	end;

	end;

	function cityid_to_lgname(nCityID)

	return Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[nCityID][3];

	end;

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


