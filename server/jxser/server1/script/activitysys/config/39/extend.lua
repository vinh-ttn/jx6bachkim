Include("\\script\\activitysys\\config\\39\\head.lua")
Include("\\script\\activitysys\\functionlib.lua")


function pActivity:GetSeedTime(TSK_SEEDTIME, TSK_SEEDTIME_EX)
	---�û�п��£����ж�
	local nMaxTime = 3
	local nSeedTimeInfo = self.TaskGroup:GetTask(TSK_SEEDTIME)
	local nSeedTimeEx = self.TaskGroup:GetTask(TSK_SEEDTIME_EX)
	local nInitDate = mod(floor(self.nStartDate/10000), 1000000)
	local nCurDay = tonumber(GetLocalDate("%y%m%d")) 
	if nSeedTimeInfo == 0 then
		nSeedTimeInfo = nInitDate * 256 + 1
	end
	
	local nLastDay, nRemainTime = floor(nSeedTimeInfo/256), mod(nSeedTimeInfo, 256)
	nRemainTime = nRemainTime + (nCurDay-nLastDay)
	if nRemainTime > nMaxTime then
		nRemainTime = nMaxTime
	end
	self.TaskGroup:SetTask(TSK_SEEDTIME, nCurDay*256+nRemainTime)
	return nRemainTime, nSeedTimeEx
end


function pActivity:CheckSeedTime(TSK_SEEDTIME, TSK_SEEDTIME_EX)
	local nSeedTime, nSeedTimeEx = self:GetSeedTime(TSK_SEEDTIME, TSK_SEEDTIME_EX)
	if nSeedTime <= 0 and nSeedTimeEx <= 0 then
		Talk(1, "", "S� l�n nh�n �� d�ng h�t")
		return 
	end
	return 1
end

function pActivity:SubSeedTime(TSK_SEEDTIME, TSK_SEEDTIME_EX)
	local nSeedTime, nSeedTimeEx = self:GetSeedTime(TSK_SEEDTIME, TSK_SEEDTIME_EX)
	local nCurDay = tonumber(GetLocalDate("%y%m%d")) 
	if nSeedTime > 0 then
		self.TaskGroup:SetTask(TSK_SEEDTIME, nCurDay*256+nSeedTime-1)
		return 
	end
	self.TaskGroup:SetTask(TSK_SEEDTIME_EX, nSeedTimeEx-1)
end

function pActivity:CheckRedline()
	local nRedlineIndex = 3111
	local nItemCount = CalcItemCount(-1, 6, 1, nRedlineIndex, -1)
	if nItemCount > 0 then
		Talk(1, "", "Ng��i �� c� D�y H�ng r�i")
		return
	end
	return 1
end
--By: NgaVN
function pActivity:GiveRedline()
	local nMonth = tonumber(GetLocalDate("%m"))
	local nDay = tonumber(GetLocalDate("%d")) 
--By: NgaVN - 	B� �i ch�c n�ng t�m s� nh�n duy�n c�a d�y t� h�ng
	--local nValenNumber = random(1, 100)
	
	--self.TaskGroup:SetTask(TSK_REDLINE_NUM, nValenNumber)
	nDay = nDay + 1
	if nDay > 29 then
		nDay = 1
		nMonth = 3
	end
	--local nLimit = 20120000 + nMonth * 100 + nDay
	local nLimit = 20120301
	PlayerFunLib:GetItem({tbProp={6,1,3111,1,0,0},nBindState = -2,nExpiredTime=nLimit,},1,"get red line")
end

function pActivity:CheckTeamConfig()
	local nNormSize = 2
	local nNormSex = 1
	local nTeamSize = GetTeamSize()
	local nSexScore = 0
	local nRedlineScore = 0
	if nTeamSize ~= nNormSize then
		Talk(1, "", format("Xin h�y ��m b�o %s ng��i t� ��i", nNormSize))
		return 
	end
	
	for i = 1, nTeamSize do
		local nMemberIndex = GetTeamMember(i)
		if CallPlayerFunction(nMemberIndex, PlayerFunLib.CheckTotalLevel, PlayerFunLib, 120,"",">=") ~= 1 then
			Talk(1, "", format("Xin h�y x�c nh�n ng��i v� ��i ng� c�a ng��i �� ��t ��n %d c�p",120))
			return 
		end
	end
	
	local szLoverName = GetMateName()
	for i = 1, nTeamSize do
		local nMemberIndex = GetTeamMember(i)
		local nMemberName = CallPlayerFunction(nMemberIndex, GetName)
		if nMemberName == szLoverName then
			return 1
		end
	end
	
	for i = 1, nTeamSize do
		local nMemberIndex = GetTeamMember(i)
		local nMemberSex = CallPlayerFunction(nMemberIndex, GetSex)
		--local nValenNumber = CallPlayerFunction(nMemberIndex, self.TaskGroup.GetTask, self.TaskGroup, TSK_REDLINE_NUM)
		local nItemCount = CallPlayerFunction(nMemberIndex, CalcEquiproomItemCount, 6, 1, 3111, -1)
		if nItemCount <= 0 then
			Talk(1, "", "Xin h�y x�c nh�n ng��i v� ng��i h�u duy�n ��u c� T� H�ng r�i h�y ��n nh�n H�t Gi�ng Hoa H�ng")
			return
		end
		nSexScore = nSexScore + nMemberSex
		--nRedlineScore = nRedlineScore + nValenNumber
	end
	if nSexScore ~= nNormSex then
		Talk(1, "", "C�n ph�i ph� h�p v�i �i�u ki�n y�u c�u r�i h�y ��n nh�n H�t Gi�ng Hoa H�ng")
		return
	end
--By: NgaVN - 	B� �i ch�c n�ng b� �i ch�c n�ng t�m s� nh�n duy�n c�a d�y t� h�ng	
--	if (floor(nRedlineScore/2)*2) ~= nRedlineScore then
--		Talk(1, "", "Xin h�y x�c nh�n ��i ng� c�a ng��i l� ng��i h�u duy�n v�i ng��i ho�c �� l� ph�i ng�u c�a ng��i sau �� m�i ��n nh�n H�t Gi�ng Hoa H�ng nh�.")
--		return 
--	end
	return 1
end

function pActivity:CheckBagIsFree(nStackCount, nCount)
	local nFreeCellCount = ceil(nCount/nStackCount)
	if PlayerFunLib:CheckFreeBagCell(nFreeCellCount, format("C�n c� %d kh�ng gian h�nh trang", nFreeCellCount)) ~= 1 then
		return 
	end
	return 1
end

function pActivity:CheckDateEx()
	local nCurDate = nCurDate or tonumber(GetLocalDate("%Y%m%d%H%M"))
	if self.nStartDate and self.nStartDate ~= 0 and self.nStartDate > nCurDate then
		Talk(1, "", "Ho�t ��ng v�n ch�a b�t ��u, xin h�y ki�n nh�n ch� ��i")
		return nil
	end
	if self.nEndDate and self.nEndDate ~= 0 and self.nEndDate <= nCurDate then
		Talk(1, "", "��i hi�p l��ng th�, ho�t ��ng l�n n�y �� k�t th�c")
		return nil
	end
	return 1
end