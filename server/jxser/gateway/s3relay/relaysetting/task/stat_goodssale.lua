	-- ��ng gi� s� li�u th�ng k�

	--------------------------------------------------------------------------

	-- c�ng t�c th�ng k� chi�n ��i tin t�c

	LGTYPE_STATINFO 			= 10000 -- chi�n ��i lo�i h�nh

	LGNAME_STAT_GOODS_SALE 		= "stat_goodssale" -- chi�n ��i t�n g�i

	LOGNAME_GOODS_SALE			= "Logs/stat_goodssale_"

	---------------------------------------------------------

	-- c�ng t�c th�ng k� h�ng m�c nhi�m v� l��ng bi�n ��i ID ��nh ngh�a

	LG_STATITEM_TASKID_TOTAL	= 0; -- t�ng th�ng k� nh� s� (LeagueMember TaskID)

	LG_STATITEM_TASKID_TODAY	= 1; -- c�ng ng�y c�ng t�c th�ng k� nh� s� (LeagueMember TaskID)

	-- 1 ~ 12 12 th�ng ph�n c�ng t�c th�ng k� nh� s�

	-- 2005 ni�n: 501~512

	-- 2006 ni�n: 601~612

	--LG_STAT_TASKID_CURDATE		= 0; -- tr��c m�t c�ng t�c th�ng k� ng�y (League TaskID)

	--------------------------------------------------------------------------

	function TaskShedule()

	TaskName( "Ti�u th� v�t ph�m c�ng t�c th�ng k� ");

	-- 8*60 ph�t m�t l�n

	TaskInterval(8*60);

	-- kh�ng thi�t TaskTme, c�n l�i l� Relay kh�i ��ng th� m� b�t ��u

	-- 0 �i�m 00 xa nhau th�y

	TaskTime(0, 0);

	TaskCountLimit(0);

	--OutputMsg( "Kh�i ��ng v�t ph�m ti�u th� c�ng t�c th�ng k�. . .");

	end

	function TaskContent()

	local logName = LOGNAME_GOODS_SALE..(date("%Y%m%d%H%M%s"))..".log";

	local szMsg = "";

	local nLeagueID = LG_GetLeagueObj(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE)

	if (nLeagueID == 0) then

	--szMsg = "[Error]NotFound StatInfo: ".. LGNAME_STAT_GOODS_SALE;

	--WriteStringToFile(logName, szMsg);

	return 0;

	end

	-- tab head

	szMsg = "ItemName\tTotal\tToDay\r\n" -- v�t ph�m danh 	T�ng th�ng k� 	C�ng ng�y c�ng t�c th�ng k�

	WriteStringToFile(logName, szMsg);

	local nMemberCount = LG_GetMemberCount(nLeagueID);

	if (nMemberCount <= 0) then

	return 0;

	end

	OutputMsg( "C�ng t�c th�ng k� v�t ph�m s� l��ng: ".. nMemberCount);

	local i = 0;

	for i = 0, nMemberCount-1 do

	local szMemberName, nJob = LG_GetMemberInfo(nLeagueID, i);

	local nTotal = LG_GetMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, szMemberName, LG_STATITEM_TASKID_TOTAL);

	local nToDay = LG_GetMemberTask(LGTYPE_STATINFO, LGNAME_STAT_GOODS_SALE, szMemberName, LG_STATITEM_TASKID_TODAY);

	szMsg = szMemberName.."\t "..nTotal.."\t "..nToDay.."\r\n "; -- v�t ph�m danh 	T�ng th�ng k� 	C�ng ng�y c�ng t�c th�ng k�

	OutputMsg( "C�ng t�c th�ng k� v�t ph�m s� l��ng: ".. szMsg);

	WriteStringToFile(logName, szMsg);

	end

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


