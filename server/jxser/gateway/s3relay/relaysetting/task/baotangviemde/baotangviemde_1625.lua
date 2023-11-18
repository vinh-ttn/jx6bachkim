function TaskShedule()
	TaskName( "Viªm §Õ B¶o Tµng" );
	TaskInterval(24 * 60);
	TaskTime(16, 25);
	TaskCountLimit(0);
end

function TaskContent()
	OutputMsg("===================Hoat Dong Viem De 16:25 BAT DAU==================")
	GlobalExecute("dwf \\script\\missions\\yandibaozang\\yandibaozang_trigger.lua YDBZ_OnTrigger()")
	szMsg = "Viªm §Õ B¶o Tµng §· Më Cöa B¸o Danh, H·y Nhanh Ch©n §Õn B×nh C« N­¬ng ë BiÖn Kinh §Ó Tham Gia, Thêi Gian B¸o Danh Lµ 5 Phót!"
	--GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
