	-- �� tr�nh th� v�n ki�n ghi nh� k� ��ng th�i �� tr�nh TaskLit. ini! ! !

	RUNONCE_NAME	= "C�t b� v� d�ng chi�n ��i "

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName(RUNONCE_NAME)

	-- ch� ch�p h�nh m�t l�n

	TaskInterval( 244000 )

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(1)

	-- ph�t ra kh�i ��ng tin t�c

	end

	function TaskContent()

	if (tonumber(date( "%Y%m%d ")) > 20060228) then

	OutputMsg( "[ ".. RUNONCE_NAME.."] nhi�m v� �� qua k�, s� d� b�t n�ng ch�p h�nh.")

	return

	end

	for n_lgtype = 2, 4 do

	local n_count	= 0

	local n_lid		= LG_GetFirstLeague(n_lgtype)

	while (n_lid ~= 0) do

	local str_lgname = LG_GetLeagueInfo(n_lid)

	n_lid = LG_GetNextLeague(n_lgtype, n_lid)

	LG_ApplyRemoveLeague(n_lgtype, str_lgname)

	n_count	= n_count + 1

	end

	OutputMsg( "C�t b� chi�n ��i, lo�i h�nh: ".. n_lgtype..". S� l��ng: ".. n_count)

	end

	OutputMsg( "Da hoan thanh nhiem vu [ ".. RUNONCE_NAME.."]!")

	end

	function GameSvrConnected(dwGameSvrIP)


	end

	function GameSvrReady(dwGameSvrIP)

	end


