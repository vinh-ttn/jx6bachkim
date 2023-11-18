if MODEL_GAMECLIENT ~= 1 then
	return
end

Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\script_protocol\\protocol_def_c.lua")
Include("\\script\\event\\prize\\acc_time_prize_def.lua")
IncludeLib("SETTING")

function tbAccTimePrize:OnClick()
	if GetOnlineCommissionStatus() == 1 then
		Talk(1, "", "�y th�c online kh�ng th� ti�n h�nh thao t�c n�y")
		return
	end
	if GetStallState() == 1 then 
		Talk(1, "", "Tr�ng th�i h�ng rong kh�ng th� ti�n h�nh thao t�c n�y")
		return 
	end
	local handle = OB_Create()
	ScriptProtocol:SendData("emSCRIPT_PROTOCOL_ACC_TIME_PRIZE", handle)
	OB_Release(handle)
end

function tbAccTimePrize:GetBtnState()
	local nRecordTime = GetTask(self.TSK_RECORD_TIME)
	local nCurTime = GetCurServerTime()
	local nDiff = nCurTime - nRecordTime
	local nAwardState = 0
	if self:IsSameDay(nRecordTime, nCurTime) == 1 then
		nAwardState = GetTask(self.TSK_HAVE_AWARD)
	end
	local nAccTime = self:GetCurAccTime()
	local nPrizeLevel = floor(nAccTime / self.ONE_DAY)
	nPrizeLevel = min(nPrizeLevel, 5)
	for i=1, nPrizeLevel do
		local nFlag = GetBit(nAwardState, i)
		if nFlag ~= 1 then
			return 1
		end
	end
	return 0
end

function OnRecvData(nOperation, nParam)
	if nOperation == SEND_ACC_TIME then
		AccTimeAward_RecordAccTime(nParam)
	elseif nOperation == CHANGE_VISIBILITY then
		AccTimeAward_ChangeVisiblity(nParam)
	end
end