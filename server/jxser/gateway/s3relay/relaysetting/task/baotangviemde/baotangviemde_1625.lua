function TaskShedule()
	TaskName( "Vi�m �� B�o T�ng" );
	TaskInterval(24 * 60);
	TaskTime(16, 25);
	TaskCountLimit(0);
end

function TaskContent()
	OutputMsg("===================Hoat Dong Viem De 16:25 BAT DAU==================")
	GlobalExecute("dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger()")
	szMsg = "Vi�m �� B�o T�ng �� M� C�a B�o Danh, H�y Nhanh Ch�n ��n B�nh C� N��ng � Bi�n Kinh �� Tham Gia, Th�i Gian B�o Danh L� 5 Ph�t!"
	--GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
