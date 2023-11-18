---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2010\\config.lua")
Include("\\script\\activitysys\\config\\2010\\head.lua")
Include("\\script\\missions\\basemission\\lib.lua")

tbPoolCount = {
	--[100] = {nCount = 0, szName = "����O?", nTotal = 0, },

}
tbBossPos =
{
	--[100] = {{1758,3011}, {1675,3053}},

}

--`�ӻNPC
function pActivity:AddInitNpc()
	local tbFarmerPos = {
		{100,1643,3145,},
		{153,1639,3187,},
		{174,1622,3202,},
	}
	local tbFarmer = {
		szName = "H�ng Nga", 
		szTitle = "<npc>��`����ˣ��?���ڴ�������Щ�ʻ�",
		nLevel = 95,
		nNpcId = 1594,
		nIsboss = 0,
		szScriptPath = "\\script\\vng_event\\eventpgaming\\thang10\\npc_sukien.lua",
	}
	for _, tbTmpPos in tbFarmerPos do
		local nMapId, nPosX, nPosY = unpack(tbTmpPos)
		%basemission_CallNpc(tbFarmer, nMapId, nPosX*32, nPosY*32)	
	end
end
function pActivity:OnGetMuTong()
	--PlayerFunLib:GetItem({tbProp={6,1,2736,1,0,0},nBindState = -2,nExpiredTime=20500405,},1,"2011ֲ���ڣ��A��ľͰ")
	WriteLog(format("%s\tAccount:%s[Name:%s]�A��1��ˮͰ.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName())
			);
end

--�Ͻ��ߢ�ˮ��ľͰ
function pActivity:OnGiveMuTong()
	
	local nCount = 1 
	if not nCount or 0==nCount then
		print("�A��ˮͰ�u������")
		return
	end
	--print("OnGiveMuTong")
	--print(nCount)
	
	if not PlayerFunLib:CheckItemInBag({tbProp={6,1,2737,1,0,0},},1,"�Ͽ׸��?��ˮȥ") then
		return
	end
	
	PlayerFunLib:ConsumeEquiproomItem({tbProp={6, 1, 2737, 1, 0, 0},},1)
	self:AddTaskDaily(%nTskIdx_DaylyGiveWater,nCount)
	self:GiveAward("mutong", nCount, "��װ��ˮ��Ͱ��ȡ��Ʒ")
	
	local nTsk = self:GetTask(%nTskIdx_DaylyGiveWater)
	local nDaylyCount = nTsk - floor(nTsk/256) * 256
	WriteLog(format("%s\tAccount:%s[Name:%s] ��[%d] ��װ��ˮ��Ͱ����`׻�?�����[%d] ��.",
				GetLocalDate("%Y-%m-%d %H:%M:%S"),
				GetAccount(),
				GetName(),
				nCount,
				nDaylyCount)
			);
	
	--�u�Uͳ��
	--if self:CheckTaskDaily(%nTskIdx_DaylyGiveWater,1,"","==") == 1 then
		--AddStatData("zhishujie_canyurenshu")
	--end
	--AddStatData("zhishujie_dashuicishu")
	
	--print(self:GetTask(%nTskIdx_DaylyGiveWater))
end

--�Ͻ���?���ˮ
function pActivity:OnGiveLongYinShengShui(nCount)
	
	if not nCount or 0==nCount then
		print("������?���ˮ�u������")
		return
	end

	--print("OnGiveLongYinShengShui")
	--print(nCount)
	
	self:GiveAward("longyinshengshui", nCount, "����?���ˮ�A����Ʒ")

	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"","<") then	
		local nAddExpBaseCount = %nPerExpFromLongYinShengShui * nCount
		local nExpCur = self:GetTask(%nTskIdx_GiveLongYinShengShuiExp)
		local nMaxExpAdd = %nMaxExpFromLongYinShengShui - nExpCur
		--������ӵľ��г��u�~�ƣ��ضϴ��U
		if nAddExpBaseCount > nMaxExpAdd then
			nAddExpBaseCount = nMaxExpAdd
		end
		
		local nExp = nAddExpBaseCount * %nExpBaseFromLongYinShengShui
		self:AddTask(%nTskIdx_GiveLongYinShengShuiExp, nAddExpBaseCount)
		PlayerFunLib:AddExp(nExp, 1, "����?���ˮ�A����Ʒ")
	end
	if self:CheckTask(%nTskIdx_GiveLongYinShengShuiExp,%nMaxExpFromLongYinShengShui,"",">=") then
		local szMsg = format("ķ����?���ˮ�A���ľ���?Ѵ����~")
		Msg2Player(szMsg)
	end
	
	--�u�Uͳ��
	--AddStatData("zhishujie_longyinshengshuicishu")
	
	self:AddTask(%nTskIdx_LastRecordDay, nCount)
	local nTotalCount = self:GetTask(%nTskIdx_LastRecordDay)
	WriteLog(format("%s\tAccount:%s[Name:%s] ��[%d]��?���ˮ����`�?���������[%d]��.",
			GetLocalDate("%Y-%m-%d %H:%M:%S"),
			GetAccount(),
			GetName(),
			nCount,
			nTotalCount)
		);
	
	--print(self:GetTask(%nTskIdx_LastRecordDay))
	--print(self:GetTask(%nTskIdx_GiveLongYinShengShuiExp))
	
	--ͳ�Ƹ���ͼ��?���ˮ�u�����жϣǷ��`?�ˢboss
	self:_AddLongYinShengShuiStat(nCount)
end


--�ж�ľͰ��״`�
function pActivity:CheckMuTong()
	local nCount1 = CalcItemCount(-1, 6, 1, 2736, -1)
	if nCount1 >= 1 then
		Msg2Player("ķ?Ѿ���ľͰ�ˣ����ܤ���ȡ��")
		return 
	end
	local nCount2 = CalcItemCount(-1, 6, 1, 2737, -1)
	if nCount2 >= 1 then
		Msg2Player("ķ?Ѿ���װ��ˮ��Ͱ�ˣ�ͪ������a�����׽���")
		return 
	end
	return 1
end

--�жϻ����
function pActivity:CheckActivityTime()
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
	if nDate < self.nStartDate/10000 then
		Msg2Player("ֲ���ڻ��A��п���")
		return
	elseif nDate >= self.nEndDate/10000 then
		Msg2Player("ֲ���ڻ?Ѿ�������")
		return
	end
	return 1
end


function pActivity:_AddLongYinShengShuiStat(nCount)
	local nMapId, nX, nY = GetWorldPos()
	if nCount ~= nil then
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount + nCount
		%tbPoolCount[nMapId].nTotal = %tbPoolCount[nMapId].nTotal + nCount
	end
	
	--local szMsg = format("%s\t ͳ����?���ˮ:map%d(%s)=%d"
	--	,GetLocalDate("%Y-%m-%d %H:%M:%S")
	--	,nMapId,%tbPoolCount[nMapId].szName, %tbPoolCount[nMapId].nTotal)
	--print(szMsg)
	
	if %tbPoolCount[nMapId].nCount >= %nCall_MuKe_LongYinShengShui_Count then
		self:_CallMuKeBoss(nMapId)
		%tbPoolCount[nMapId].nCount = %tbPoolCount[nMapId].nCount - %nCall_MuKe_LongYinShengShui_Count
	end
end

function pActivity:_CallMuKeBoss(nMapId)
	--local szInfo = format("ľ�ͳ��֤� %s ��ׯ, ��ȥ�߰���", %tbPoolCount[nMapId].szName)
	--local nPosId = random(1,2)
	--local tbNpc = {
	--	szName = "ľ��", 
	--	nLevel = 95,
	--	nMapId = nMapId,
	--	nPosX = %tbBossPos[nMapId][nPosId][1]*32,
	--	nPosY = %tbBossPos[nMapId][nPosId][2]*32,
	--	nNpcId = 1670,
	--	nIsboss = 1,
	--	szDeathScript = "\\script\\activitysys\\config\\28\\boss_muke_death.lua",
	--	pCallBack = %AddOnTime,
	--}
	%basemission_CallNpc(tbNpc)
	AddGlobalNews(szInfo)
	AddGlobalNews(szInfo)
	
	local szMsg = format("%s\tmap%d(%s)ͩA�(%d,%d) ����boss [ľ��], ������?Ѿ�����[%d]��?���ˮ"
		, GetLocalDate("%Y-%m-%d %H:%M:%S")
		, nMapId, %tbPoolCount[nMapId].szName, tbNpc.nPosX, tbNpc.nPosY
		, %tbPoolCount[nMapId].nTotal)
	WriteLog(szMsg)
end

