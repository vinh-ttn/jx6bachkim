-- ��ս�ν�
-- DongZhi
Include( "\\RelaySetting\\battle\\script\\rf_header.lua" )

function TaskShedule()
	
	TaskName( "T�ng Kim Qu�c Chi�n t�ng �i�u ��ng" );	--��������
	TaskTime( 19, 00 );				--����ʱ��
	TaskInterval(1440);				--���ʱ��:һ��
	TaskCountLimit(0);				--�޴�������
	
	OutputMsg("**************** T�ng Kim Qu�c Chi�n nhi�m v� kh�i ��ng th�nh c�ng****************")	
end

function TaskContent()
	
	local nWeekday = tonumber(date("%w"));
	
	if nWeekday == 1 then
		OutputMsg("**************** Create GUOZHAN New Battle ****************")	
		battle_StartNewIssue(2, 3);	
	zMsg2SubWorld  = "<color=yellow>Chi�n Tr��ng Qu�c Chi�n<color> <color=green>Thi�n T�<color> �� kh�i ��ng, c�c anh h�ng 2 bang chi�m L�m An - Bi�n Kinh h�y chu�n b� tinh th�n s�n s�ng ��n<color=pink> 21h<color> chi�n ��u."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
