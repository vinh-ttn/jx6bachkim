Include("\\script\\mission\\sevencity\\war.lua")

function TaskShedule()
	-- ���÷�������
	TaskName("SevenCityWar clear data after war")
	TaskInterval(24 * 60)
	TaskTime(23, 50)
	TaskCountLimit(0)
	-- ���������Ϣ
	OutputMsg("=====> [SEVENCITY] Xoa Du Lieu")
end

function TaskContent()
	local day = tonumber(date("%w"))
	-- ����
	if (day == 5) then
		BattleWorld:Clear()
		RemoteExecute(
			REMOTE_SCRIPT,
			"RelayProtocol:Prepare",
			0)
		OutputMsg("=====> [SEVENCITY] Xoa Du Lieu")
	end
end
