	-- T�ng kim

	function TaskShedule()

	TaskName( "T��ng D��ng chi�n d�ch (t�ng kim)" );

	TaskInterval( 1440 );

	TaskTime( 11, 50 );

	TaskCountLimit( 0 );

	-- OutputMsg( "                           Chien truong Tong - Kim - 11h (11 : 50) " );

	end

	function TaskContent()
	
	Battle_StartNewRound( 1, 1 );	-- GM ch� l�nh, kh�i ��ng t�ng kim s� c�p
	
	Battle_StartNewRound( 1, 2 );	-- GM ch� l�nh, kh�i ��ng t�ng kim trung c�p
	
	Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng t�ng kim cao c�p
	
	OutputMsg( " =========================Chien truong Tong - Kim So Cap 11 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 11 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 11 : 50 khoi dong --->")
	
	zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng T�ng - Kim<color> <color=0xa9ffe0>S� c�p, Trung c�p, Cao c�p �� ��n gi� b�o danh, c�c nh�n s� giang h� nhanh ch�n tham gia ��u qu�n, Th�i gian b�o danh l� 11 ph�t."
	zAddLocalCountNews = "Chi�n tr��ng T�ng Kim �� b�t ��u b�o danh, c�c nh�n s� giang h� mau ��n khu v�c b�o danh �� tham gia chi�n tr��ng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
	end

	function GameSvrConnected(dwGameSvrIP)

	end

	function GameSvrReady(dwGameSvrIP)

	end


