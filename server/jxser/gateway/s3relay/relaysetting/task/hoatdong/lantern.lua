--���ƻ
--ÿ��19��00~21��00 ÿ15���� �ڻ�ɽ��ǵ��ɽ�����ɽ������ɽ
--�ĸ��ص�ֱ� ����300������
LANTERN_DATE_START	= 20080611
LANTERN_DATE_END	= 20500713
LANTERN_TIME_START 	= 1900
LANTERN_TIME_END	= 2100

function TaskShedule()
	-- ���÷�������
	TaskName("Ho�t ��ng Hoa ��ng");
	TaskTime(19, 00);
	TaskInterval(15);
	TaskCountLimit(0);
	OutputMsg("=====> HOAT DONG HOA DANG KHOI DONG : "..date("%H%M"));
end

function TaskContent()
	local nTime	= tonumber(date("%H%M"));
	local nDate	= tonumber(date("%Y%m%d"));
	
	if (nDate >= LANTERN_DATE_START and nDate <= LANTERN_DATE_END and nTime >= LANTERN_TIME_START and nTime <= LANTERN_TIME_END) then
		if (nTime == LANTERN_TIME_END) then
			GlobalExecute("dw del_all_lantern()");
			return 0;
		end
		GlobalExecute("dw Msg2SubWorld([[Ng��i nhanh �i n�i Thanh Th�nh, V� Di s�n, �i�m Th��ng s�n, Hoa S�n,  ch� c�n tr� l�i ���c 3 c�u nh�n ���c ph�n th��ng h�p d�n]])");
		GlobalExecute("dw create_lanterns()");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
