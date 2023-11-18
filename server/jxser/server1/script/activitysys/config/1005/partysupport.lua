Include("\\script\\activitysys\\config\\1005\\check_func.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")

tbPVLB_PtSpprt = {}
tbPVLB_PtSpprt.nCOTBatchAward = 28
tbPVLB_PtSpprt.nMaxPlayersCount = 4
tbPVLB_PtSpprt.nYDBZBatchAward = 10

function tbPVLB_PtSpprt:COTAward(nBatch, tbPlayers)
	if tbPVLB_Check:CheckTime() ~= 1 then
		return
	end
	if nBatch ~= self.nCOTBatchAward then		
		return
	end
	self:Award(tbPlayers, "ToDoiHoTroTanThuVuotAi")
end

function tbPVLB_PtSpprt:YDBZAward(nBatch, tbPlayers)
	if tbPVLB_Check:CheckTime() ~= 1 then
		return
	end
	if nBatch ~= self.nYDBZBatchAward then		
		return
	end
	self:Award(tbPlayers, "ToDoiHoTroTanThuVuotViemDe")
end

function tbPVLB_PtSpprt:Award(tbPlayers, strLog)
	local nNewPlayersCount = 0
	local nOldPlayer = PlayerIndex
	--��m s� l��ng t�n th� trong t� ��i
	for i = 1, getn(tbPlayers) do
		PlayerIndex = tbPlayers[i]
		if tbPVLB_Check:IsNewPlayer() == 1 and GetLife(0) > 0 then
			nNewPlayersCount = nNewPlayersCount + 1
		end
	end
	if nNewPlayersCount <= 0 then
		return
	end
	local nExpAward
	if nNewPlayersCount > self.nMaxPlayersCount then
		nExpAward = self.nMaxPlayersCount*1000000
	else
		nExpAward = nNewPlayersCount*1000000
	end
	 
	for i = 1, getn(tbPlayers) do
		PlayerIndex = tbPlayers[i]
		local tbExp = {szName = "�i�m Kinh Nghi�m", nExp = nExpAward}
		tbAwardTemplet:Give(tbExp, 1, {"PhongVanLenhBai", strLog})
		tbVngTransLog:Write("201109_EventPhongVanLenhBai/", 11, strLog, nExpAward.." exp", 1)
		Msg2Player(format("<color=green>T� ��i c� <color><color=yellow>%d<color><color=green> t�n th�, nh�n ���c ph�n th��ng b� sung: <color><color=yellow>%d �i�m kinh nghi�m.<color>", nNewPlayersCount, nExpAward))
	end
	PlayerIndex = nOldPlayer
end