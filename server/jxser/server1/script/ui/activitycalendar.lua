IncludeLib("FILESYS")
Include("\\script\\script_protocol\\protocol_def_c.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local nTaskHuoYueDu = 2880
local nTaskIsAward = 2882
local tbAwardKind = {20, 50, 80, 100}
local tbPVP = {}
local tbPVE = {}
local tbHuoYueDu = {}	-- ÿ�����TaskId��DateTaskId, Limit �Լ�ÿ�βμӿɻ�õĻ�Ծ��
local szFilePath = "\\settings\\huoyuedu\\huoyuedu.txt"

function LoadTable(szPath)
	if (TabFile_Load(szPath, szPath) == 0) then
		return
	end
	local nRowCount = TabFile_GetRowCount(szPath)
	local tbActivity = {}
	for i=1, (nRowCount - 1) do
		local nActivityId = tonumber(TabFile_GetCell(szPath, i + 1, 1))--�ID
		tbActivity[nActivityId] = tbActivity[nActivityId] or {}
		
		local nTaskId = tonumber(TabFile_GetCell(szPath, i + 1, 3))--��¼ÿ��μӴ������������
		tbActivity[nActivityId]["nTaskId"] = nTaskId
		
		local nColumn = 4
		local nCount = tonumber(TabFile_GetCell(szPath, i + 1, nColumn))--��������
		tbActivity[nActivityId]["nLimit"] = nCount
		
		tbActivity[nActivityId]["nTotalValue"] = 0--��Ծ����ֵ
		tbActivity[nActivityId]["tbValue"] = tbActivity[nActivityId]["tbValue"] or {}
		if nCount > 0 then
			for j=1, nCount do
				tbActivity[nActivityId]["tbValue"][j] = tonumber(TabFile_GetCell(szPath, i + 1, nColumn + j))
				tbActivity[nActivityId]["nTotalValue"] = tbActivity[nActivityId]["nTotalValue"] + tbActivity[nActivityId]["tbValue"][j]
			end
		end
		tbActivity[nActivityId]["nWeekResetFlag"] = tonumber(TabFile_GetCell(szPath, i + 1, 15)) or 0
	end
	return tbActivity
end

tbHuoYueDu = LoadTable(szFilePath)

function GetTaskDailyBit(nTaskId, nBit)
	local nTaskValue = GetTask(nTaskId)
	local nCurTime = GetCurServerTime()
	local nCurDate = tonumber(FormatTime2Date(nCurTime))
	nCurDate = mod(nCurDate, 1000000)
	if nCurDate ~= floor(nTaskValue / 256) then
		nTaskValue = nCurDate * 256
	end
	return GetBit(nTaskValue, nBit)
end

function GetTaskDaily(nTaskId)
	local nTaskValue = GetTask(nTaskId)
	local nCurTime = GetCurServerTime()
	local nCurDate = tonumber(FormatTime2Date(nCurTime))
	nCurDate = mod(nCurDate, 1000000)
	if nCurDate ~= floor(nTaskValue / 256) then
		nTaskValue = nCurDate * 256
	end
	return mod(nTaskValue, 256)
end

function GetTaskWeekly(nTaskId)
	local nTaskValue = GetTask(nTaskId)
	local nCurTime = GetCurServerTime()
	local nCurWeek = tonumber(GetLocalDate("%y%W"))
	local WEEK_FACTOR = 1024 --pow(2,10)
	
	if floor(nTaskValue/WEEK_FACTOR) ~= nCurWeek then
		nTaskValue = nCurWeek * WEEK_FACTOR
	end
	return mod(nTaskValue, WEEK_FACTOR)
end

function GetTaskCount(nActivityId)
	local tbTemp = %tbHuoYueDu[nActivityId]
	if not tbTemp then
		return 0
	end
	local nWeekResetFlag = tbTemp["nWeekResetFlag"] or 0
	local nTaskId = tbTemp["nTaskId"]
	if nWeekResetFlag == 1 then
		return GetTaskWeekly(nTaskId)
	end
	return GetTaskDaily(nTaskId)
end

function UpdateHuoYueDu(nUpdateHuoYueDu)
	local nResult = GetTaskDaily(%nTaskHuoYueDu)
	CoreDataChanged(nUpdateHuoYueDu, nResult, 1)
end

function UpdateAwardBtnState(nUpdateAwardBtnState)
	local nAwardCount = getn(%tbAwardKind)
	local nHuoYueDu = GetTaskDaily(%nTaskHuoYueDu)
	for i = 1, nAwardCount do
		local nResult = 0 -- ������δ��ȡ
		if nHuoYueDu < %tbAwardKind[i] then
			nResult = 1		-- �޷���ȡ
		end
		if GetTaskDailyBit(%nTaskIsAward, i) == 1 then--�Ѿ���ȡ������
			nResult = 2
		end
		CoreDataChanged(nUpdateAwardBtnState, nResult, i - 1)
	end
end

function GiveAward(nIndex)
	local handle = OB_Create()
	ObjBuffer:PushByType(handle, OBJTYPE_NUMBER, nIndex)
	ScriptProtocol:SendData("emSCRIPT_PROTOCAL_HuoYueDu_Award", handle)
	OB_Release(handle)
end

-- ���ݻId���õ�TaskId��DateTaskId��Limit�������Ϣ
function SetAcitivityId(nIndex, nActivityId, nType)
	if nType == 0 then
		tinsert(%tbPVP, nIndex, {["nActivityId"] = nActivityId})
	elseif nType == 1 then
		tinsert(%tbPVE, nIndex, {["nActivityId"] = nActivityId})
	end
end

function UpdatePVPActivityList(nUpdatePVPActivityList)
	local tbFinished = {}
	local tbNotFinished = {}
	for i = 1, getn(%tbPVP) do
		local nActivityId = %tbPVP[i]["nActivityId"]
		local tbTemp = %tbHuoYueDu[nActivityId]
		if GetTaskCount(nActivityId) < tbTemp["nLimit"] then
			tinsert(tbNotFinished, i)
		else
			tinsert(tbFinished, i)
		end
	
	end
	for i = 1, getn(tbNotFinished) do
		local nActivityId = %tbPVP[tbNotFinished[i]]["nActivityId"]
		local szHuoYueDu = GetHuoYueDuString(nActivityId)
		CoreDataChanged(nUpdatePVPActivityList, tbNotFinished[i] - 1, 0, szHuoYueDu)
	end
	for i = 1, getn(tbFinished) do
		local nActivityId = %tbPVP[tbFinished[i]]["nActivityId"]
		local szHuoYueDu = GetHuoYueDuString(nActivityId)
		CoreDataChanged(nUpdatePVPActivityList, tbFinished[i] - 1, 1, szHuoYueDu)
	end
end

function UpdatePVEActivityList(nUpdatePVEActivityList)
	local tbFinished = {}
	local tbNotFinished = {}
	for i = 1, getn(%tbPVE) do
		local nActivityId = %tbPVE[i]["nActivityId"]
		local tbTemp = %tbHuoYueDu[nActivityId]
	
		if GetTaskCount(nActivityId) < tbTemp["nLimit"] then
			tinsert(tbNotFinished, i)
		else
			tinsert(tbFinished, i)
		end
	end
	for i = 1, getn(tbNotFinished) do
		local nActivityId = %tbPVE[tbNotFinished[i]]["nActivityId"]
		local szHuoYueDu = GetHuoYueDuString(nActivityId)
		CoreDataChanged(nUpdatePVEActivityList, tbNotFinished[i] - 1, 0, szHuoYueDu)
	end
	for i = 1, getn(tbFinished) do
		local nActivityId = %tbPVE[tbFinished[i]]["nActivityId"]
		local szHuoYueDu = GetHuoYueDuString(nActivityId)
		CoreDataChanged(nUpdatePVEActivityList, tbFinished[i] - 1, 1, szHuoYueDu)
	end	
end

function GetHuoYueDuString(nActivityId)
	local nHuoYueDu = 0
	local nJoinNumber = 0
	local nCount = 0
	
	nJoinNumber = GetTaskCount(nActivityId)
	nCount = min(nJoinNumber, %tbHuoYueDu[nActivityId]["nLimit"])
	for i = 1, nCount do
		if %tbHuoYueDu[nActivityId]["tbValue"][i] then
			nHuoYueDu = nHuoYueDu + %tbHuoYueDu[nActivityId]["tbValue"][i]
		end
	end
	local szHuoYueDu = format("%d/%d", %tbHuoYueDu[nActivityId]["nTotalValue"], nHuoYueDu)
	return szHuoYueDu
end