-- ʱ�����ս������ʱ��

INTERVAL_TIME = 60	-- ÿСʱ����
-- INTERVAL_TIME = 10	-- ÿСʱ����

function GetNextTime()
    local hour = tonumber(date("%H"));
    if (hour == 23) then
    	hour = 0;
    else
    	hour = hour + 1;
    end
    return hour, 0;
end

function TaskShedule()
	TaskName("Thach Thuc Thoi Gian");	

	-- 60����һ��
	TaskInterval(INTERVAL_TIME);
	-- ���ô���ʱ��
	local h, m = GetNextTime();
	TaskTime(h, m);
	OutputMsg(format("=====> VUOT AI KHIEU CHIEN THOI GIAN BAT DAU %d:%d...", h, m));
	-- ִ�����޴�
	TaskCountLimit(0);

	-- OutputMsg("�����Զ���������...");
end

function TaskContent()
	OutputMsg("VUOT AI KHIEU CHIEN THOI GIAN DANG GHI DANH");
	-- ����GameServer�ϵĽű�
	GlobalExecute("dwf \\settings\\trigger_challengeoftime.lua OnTrigger()");
	szMsg = "'Th�ch th�c th�i gian' �� ��n gi� b�o danh. ��i tr��ng nhanh ch�n ��n Nhi�p Th� Tr�n �� ghi danh th�i gian ghi danh l� 10 ph�t."
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
