-- �����ļ���ӻ
Include("\\script\\gb_taskfuncs.lua");
function TaskShedule()
	FESTIVAL_SHREWMOUSE = "BANG HOI THU THAP VAT PHAM";
	TaskName("�ռ������Ʒ");	

	-- 3��Сʱһ�Σ���λ����
	TaskInterval(15);
	-- ���ô���ʱ��
	local nNowHour = tonumber(date("%H"));
	local nBeginTime = mod(nNowHour + 1, 24);--���δ��3����+ 1 ����ͷ
	
	TaskTime(nBeginTime, 0);
	OutputMsg(format("=====> HOAT DONG THU THAP VAT PHAM BANG HOI BAT DAU TU %d:%d?", nBeginTime, 0));
	-- ִ�����޴�
	TaskCountLimit(0);
	gb_SetTask(FESTIVAL_SHREWMOUSE, 1, 3);
end

function TaskContent()
	local nHour = tonumber(date("%H"));
	local nMin = tonumber(date("%M"));
	nResult = hourcheck(nHour, nMin);
	if (nResult == 0) then
		return
	end

	OutputMsg("=====> GHI DANH THU THAP VAT PHAM BANG HOI HOAT DONG");
	GlobalExecute("dwf \\script\\missions\\tong\\collectgoods\\collg_gmscript.lua collg_opencellectgoods( 827 )");	--827Ϊ����ռ���Ʒ�׼������mapid
end

function hourcheck(nHour, nMin)
	if (mod(nHour, 3) ~= 2) then
		return 0;
	end
	if (nMin > 55) then
		return 0;
	end;
	return 1;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
