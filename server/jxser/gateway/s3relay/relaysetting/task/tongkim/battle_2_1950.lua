function TaskShedule()
	TaskName( "Quoc Chien 20:49" );
	TaskInterval( 1440 );
	TaskTime( 19, 50);
	TaskCountLimit( 0 );
	OutputMsg( "====================> Quoc Chien 19:50 <====================" );

end

function TaskContent()
	local nWeekday = tonumber(date("%w"));
	if nWeekday == 1 and (CW_GetCityStatus(4) == 0 and CW_GetOccupant(4) ~= nil) and (CW_GetCityStatus(7) == 0 and CW_GetOccupant(7) ~= nil) then	
	if CW_GetOccupant(4) == CW_GetOccupant(7) then
			local szMsg  = format("Chi�u c�o thi�n h� : <color=cyan>\%s\<color> ��ng th�i chi�m ���c <color=yellow>L�m An<color> v� <color=yellow>Bi�n Kinh<color>, bang ch� c� th� tr�c ti�p l�n ng�i thi�n t�", CW_GetOccupant(4));
			local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
			zMsg2SubWorld  = format("Chi�u c�o thi�n h� : <color=cyan>\%s\<color> ��ng th�i chi�m ���c <color=yellow>L�m An<color> v� <color=yellow>Bi�n Kinh<color> : <color=cyan>Bang Ch�<color> c� th� tr�c ti�p l�n ng�i <color=cyan>Ho�ng ��<color>", CW_GetOccupant(4));
			GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
			GlobalExecute(szNews);
			Battle_StartNewRound( 1, 3 );
			--RemoteExecute("\\script\\global\\newlife\\tinhnang\\msg2subworld.lua","TongKim", 0)
			for i = 0,10 do
			NW_SetTask(i, 0);
			end
			NW_Abdicate();
			NW_SetTask(0, 1);
			return
		end
		local szMsg  =  format("<color=yellow>Qu�c Chi�n<color> : <color=cyan>N��c T�ng <color=yellow>(\%s\)<color> N��c Kim <color=yellow>(\%s\)<color> thi�n t� �o�t ng�i �� m�, xin m�i c�c v� t��ng s� ��n t�ng kim �� ghi danh tham chi�n !", CW_GetOccupant(7), CW_GetOccupant(4));
		local szNews = format("dw AddLocalCountNews([[%s]], 2)", szMsg);
		zMsg2SubWorld  = format("<color=yellow>Chi�n Tr��ng Qu�c Chi�n<color> : <color=cyan>N��c T�ng <color=yellow>(\%s\)<color> N��c Kim <color=yellow>(\%s\)<color> thi�n t� �o�t ng�i �� m�, xin m�i c�c v� t��ng s� ��n t�ng kim �� ghi danh tham chi�n !", CW_GetOccupant(7), CW_GetOccupant(4));
		GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
		GlobalExecute(szNews);
		Battle_StartNewRound( 2, 3 );
	end
	
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
