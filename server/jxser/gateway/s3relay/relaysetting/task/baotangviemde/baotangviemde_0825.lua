function TaskShedule()
	TaskName( "Viªm §Õ B¶o Tµng" );
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
	szMsg = "Viªm §Õ B¶o Tµng §· Më Cöa B¸o Danh, H·y Nhanh Ch©n §Õn B×nh C« N­¬ng ë BiÖn Kinh §Ó Tham Gia, Thêi Gian B¸o Danh Lµ 5 Phót!"
	--GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
