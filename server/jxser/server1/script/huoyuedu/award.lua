Include("\\script\\huoyuedu\\huoyuedu.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--DC ph�n th��ng �� n�ng ��ng - Modified By DinhHQ - 20120410
tbHuoYueDu.tbAward = 
{
	[1] = 
	{
		nValue = 20,
		tbItem = {nExp_tl = 5000000},
	},
	[2] = 
	{
		nValue = 50,
		tbItem = {nExp_tl = 10000000},
	},
	[3] = 
	{
		nValue = 80,
		tbItem = {nExp_tl = 15000000},
	},
	[4] = 
	{
		nValue = 100,
		tbItem = {nExp_tl = 20000000},
	},
}

function tbHuoYueDu:GetTaskDailyBit(nTaskId, nBit)
	do	
		--Talk(1,"","Ch�c n�ng �ang t�m ��ng !")
		return
	end
	local nTaskValue = GetTask(nTaskId)
	local nCurDate = tonumber(GetLocalDate("%y%m%d"))
	if nCurDate ~= floor(nTaskValue / 256) then
		nTaskValue = nCurDate * 256
	end
	return GetBit(nTaskValue, nBit)
end

function tbHuoYueDu:SetTaskDailyBit(nTaskId, nBit, nValue)
	do	
		--Talk(1,"","Ch�c n�ng �ang t�m ��ng !")
		return
	end
	local nTaskValue = GetTask(nTaskId)
	local nCurDate = tonumber(GetLocalDate("%y%m%d"))
	if nCurDate ~= floor(nTaskValue / 256) then
		nTaskValue = nCurDate * 256
		SetTask(nTaskId, nTaskValue)
	end
	SetTask(nTaskId, SetBit(nTaskValue, nBit, nValue))
end

function tbHuoYueDu:GiveAward(nAwardIndex)
	do	
		--Talk(1,"","Ch�c n�ng �ang t�m ��ng !")
		return
	end
	if PlayerFunLib:CheckTaskDaily(self.TSK_TotalHuoYueDu, self.tbAward[nAwardIndex].nValue, "", ">=") ~= 1 then
		return
	end
	if self:GetTaskDailyBit(self.TSK_Award, nAwardIndex) == 1 then--�Ѿ���ȡ��
		return
	end
	tbAwardTemplet:GiveAwardByList(self.tbAward[nAwardIndex]["tbItem"], format("ACTIVITY%dPOINT_GETAWARD", self.tbAward[nAwardIndex].nValue))
	self:SetTaskDailyBit(self.TSK_Award, nAwardIndex, 1)
end