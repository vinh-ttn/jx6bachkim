--���ά���ű�
--by luobaohang 06/03/10
IncludeLib("TONG")
-- ���ά����ʱ��
INTERVAL_TIME = 999999
function TaskShedule()
	TaskName("�ɰ��������");
	-- ���ô���ʱ��(��ʱִ��)
	-- ִ��1��
	TaskCountLimit(1);
end

function TaskContent()
	local nTongID = TONG_GetFirstTong()
	OutputMsg("=====> CUU BANG HOI DA KHOI DONG.......................")
	while (nTongID ~= 0)do
		if (TONG_GetDay(nTongID) <= 0)then
			OutputMsg("DANG VAN HANH CUU BANG HOI"..TONG_GetName(nTongID))
			TONG_ApplyInit(nTongID)
		end	
		nTongID = TONG_GetNextTong(nTongID)
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
