

function TaskShedule()
	--���÷�������
	TaskName(" ho�t ��ng x�p h�ng <Th�ch th�c th�i gian> m�i ng�y")
	
	TaskTime(0, 0);
	
	--���ü��ʱ�䣬��λΪ����
	TaskInterval(1440) --30����һ��
	
	--���ô���������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("=====> BANG XEP HANG <THACH THUC THOI GIAN> MOI NGAY=======");
end

function TaskContent()
	name , value = Ladder_GetLadderInfo(10235, 1);
	value = value * (-1);
	if (name ~= "") then
		local szTime	= format("%s ph�t %s gi�y", floor(value/60), floor(mod(value, 60)));
		local szMsg 	= format("Ch�c m�ng <%s> �� ho�n th�nh <Th�ch th�c th�i gian> th�i gian v��t �i nhanh nh�t l� <%s>", name, szTime);
		GlobalExecute(format("dw AddGlobalNews([[%s]], 10)", szMsg))
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
	end
	Ladder_ClearLadder(10235);
	OutputMsg("=====> Bang Xep Hang Vuot Ai Moi Ngay 00:00 Bat Dau==================");
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


