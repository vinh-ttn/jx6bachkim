
function TaskShedule()
	TaskName("Boss Ti�u Ho�ng Kim 12:00")
	TaskTime(12,00);
	TaskInterval(24 * 60) 
	TaskCountLimit(0)
	local szMsg = format("<=====BOSS TIEU HOANG KIM: [%d:%d] IS START========>",12,00)
	OutputMsg(szMsg);
end

function TaskContent()
		local szMsg = "Boss Ti�u Ho�ng Kim xu�t hi�n tr�n b�n �� th� gi�i, qu�y nhi�u d�n l�nh, c�c nh�n s� h�y ra s�c truy l�ng b�n ch�ng."
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		OutputMsg("===========<START BOSS TIEU HOANG KIM 12:00>==========")
		GlobalExecute("dwf \\script\\global\\pgaming\\missions\\bosshoangkim\\bosstieu\\smallboss_main.lua  smallboss_call2world()")

end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end