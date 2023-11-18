local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)
	
	
	local nNextHour = nStartHour
	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)
	
	if nNextMinute >= 60 then
		
		nNextHour = nNextHour + floor(nNextMinute / 60)
		nNextMinute = mod(nNextMinute, 60) 
	end
	
	if (nNextHour >= 24) then
		nNextHour = mod(nNextHour, 24);
	end;
	return nNextHour, nNextMinute
end



function TaskShedule()
	--���÷�������
	TaskName("Loan Chieu Cuu Chau Coc")
	
	local  nInterval = 60
	
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)
	
	TaskTime(nNextHour, nNextMinute);

	--���ü��ʱ�䣬��λΪ����
	TaskInterval(nInterval) --nInterval����һ��
	--���ô���������0��ʾ���޴���
	

	TaskCountLimit(0)
	


	local szMsg = format("=====> %s BAT DAU %d:%d va %d PHUT SE KET THUC", "HOAT DONG LOAN CHIEN CUU CHAU COC",nNextHour, nNextMinute, nInterval)
	OutputMsg(szMsg);
end

function TaskContent()
	local nTime = tonumber(date("%H%M"))
	local nWeek	= tonumber(date("%w"))
	local nDate	= tonumber(date("%y%m%d"))
	local nTaskState = tonumber(date("%y%m%d%H"))
	if nTime >= 0000 and nTime <= 0010 then
		Ladder_ClearLadder(10269);
		OutputMsg("XOA XEP HANG LOAN CHIEN CUC CHAU COC")
	end
	local flag = 0
	if (nTime >= 1600 and nTime < 1700) then	
		flag = 1
	end
	if flag == 1 then
		local szMsg = "Lo�n Chi�n C�u C�c �� ��n gi� b�o danh, m�i ng��i nhanh ch�n ��n L�m An g�p Ch��ng ��ng Cung N� �� ghi danh."
		GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)", szMsg))
		GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
		OutputMsg("=====> BAT DAU BAO DANH LOAN CHIEN CUU CHAU COC (datusha.lua)")
			
		RemoteExecute("\\script\\missions\\datusha\\datusha.lua", "DaTuShaClass:Open", 0);
	end
end


function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
