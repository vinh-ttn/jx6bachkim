	-- chi�n d�ch h� th�ng

	-- Fanghao_Wu 2004-12-6

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "T� ��ng tin t�c - th�ng c�o" );

	-- 10 ph�t m�t l�n

	TaskInterval( 1 );

	-- 0 th� 0 xa nhau th�y (kh�ng thi�t TaskTme, c�n l�i l� Relay kh�i ��ng th� m� b�t ��u)

	--	TaskTime( 18, 32 );

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit( 0 );

	-- ph�t ra kh�i ��ng tin t�c

	OutputMsg( "BATTLE 1 startup. . ." );

	end

	function TaskContent()

	Battle_StartNewRound( 1, 1 );	-- GM ch� l�nh, kh�i ��ng t�n chi�n cu�c

	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


