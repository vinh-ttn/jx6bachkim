function TaskShedule()
	TaskName( "Vi�m �� B�o T�ng" );
	TaskInterval(24 * 60);
	TaskTime(8, 25);
	TaskCountLimit(0);
	OutputMsg("======================================================================================================")
	OutputMsg("                                   Hoat Dong Viem De Bat Dau Tu                                       ")
	OutputMsg("                     8h:25 - 10h:25 - 14h:25 - 16h:25 - 18h:25 - 20h:25 22h:25                        ")
	OutputMsg("                          Tham Gia Nhan Duoc Phan Thuong Vo Cung Gia Tri                              ")
end

function TaskContent()
	OutputMsg("===================Hoat Dong Viem De 8h:25 Bat Dau======================")
	GlobalExecute("dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger()")
	szMsg = "Vi�m �� B�o T�ng �� M� C�a B�o Danh, H�y Nhanh Ch�n ��n B�nh C� N��ng � Bi�n Kinh �� Tham Gia, Th�i Gian B�o Danh L� 5 Ph�t!"
	--GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
