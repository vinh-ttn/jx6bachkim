	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function GameSvrConnected(dwGameSvrIP)

	SyncAllLadder(dwGameSvrIP)

	end;

	function GameSvrReady(dwGameSvrIP)

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "Relay b�ng x�p h�ng" );

	-- 10 ph�t m�t l�n

	-- TaskInterval( 2440 );
	TaskInterval( 1440 ); -- c�p nh�t l�i c�c id b�ng x?p h�ng trong 1 ng�y

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( " ========================================================================================" );
	OutputMsg( "                            Ladder startup. . . 10.001 -> 10500" );

	-- for i=10001, 10300 do
	for i=10001, 10500 do

	LoadLadder(i)

	end

	end

	function TaskContent()

	-- OutputMsg( "SDBLadder Loaded" );
	OutputMsg( "KHOI DONG LAI BANG XEP HANG" );
	OutputMsg( " ========================================================================================");	OutputMsg( " ");
	OutputMsg( "                               Server HKMP Edit By PGaming  ");
	OutputMsg( " ");
	OutputMsg( " ========================================================================================");
	
	end


