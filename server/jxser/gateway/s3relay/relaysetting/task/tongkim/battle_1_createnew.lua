	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "T�ng kim chi�n d�ch t�ng ch� huy" );

	TaskSetMode(1);

	-- m�i tu�n (ng�y th� Hai) b�t ��u m�i m�t v�ng

	TaskSetStartDay(1, 3);

	-- m�t v�ng m�t tu�n ho�n

	TaskInterval(7);

	TaskTime(2, 0);

	TaskCountLimit(0);

	end

	function TaskContent()

	OutputMsg( "****************Create XIANGYANG New Battle******** ")

	battle_StartNewIssue(1, 1 );

	battle_StartNewIssue(1, 2 );

	battle_StartNewIssue(1, 3 );

	OutputMsg( "*************************************************** ")

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


