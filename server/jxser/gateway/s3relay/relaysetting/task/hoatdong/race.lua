

function TaskShedule()
	--���÷�������
	TaskName("�ļ��������ջ")
	local nStartHour = tonumber(date("%H")) + 1;
	
	if (nStartHour >= 24) then
		nStartHour = 0;
	end;
	
	TaskTime(nStartHour, 0);
	
	--���ü��ʱ�䣬��λΪ����
	TaskInterval(15) --15һ��
	
	--���ô���������0��ʾ���޴���
	TaskCountLimit(0)
	OutputMsg("=====> HOAT DONG NGAY LE : 4 MUA TRANH TAI");
end

function TaskContent()

	local nHour = tonumber(date("%H"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%y%m%d"))
	
	if nDate < 080611 or nDate > 120713 then --��2008��06��11�� ���C 2008��07��13��24��
		return
	end
	local bIsStart = 0
	if (nHour >= 10 and nHour < 11) or (nHour >= 12 and nHour < 13) or (nHour >= 13 and nHour < 14) or (nHour >= 14 and nHour < 15) or (nHour >= 15 and nHour < 16) or (nHour >= 17 and nHour < 18) or (nHour >= 19 and nHour < 20) or (nHour >= 21 and nHour < 22) or (nHour >= 22 and nHour < 23) then
		bIsStart = 1
	elseif nHour >= 14 and nHour < 15 and (nWeek == 6 or nWeek == 0 or nDate == 080430 or nDate == 080501 ) then
		bIsStart = 1
	elseif nHour >= 2 and nHour < 3 and  (nWeek == 6 or nDate == 080430 or nDate == 080501 ) then
		bIsStart = 1
	end
	
	if bIsStart == 1 then
		GlobalExecute("dwf \\script\\missions\\racegame\\missionctrl.lua startRaceMission()")
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", "Ho�t ��ng 4 m�a tranh t�i �� b�t ��u b�o danh, tr��c m�t c� th� ��n Minh Nguy�t Tr�n �� b�o danh, 1 ph�t sau tranh t�i b�t ��u."))
	end
end



function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end


