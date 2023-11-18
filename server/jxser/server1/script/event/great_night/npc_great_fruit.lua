IncludeLib("ITEM")
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\tong\\tong_award_head.lua");
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local _Limit = function(nNpcIdx)
	
	if (0 == GetCamp()) then
		Msg2Player("B�n ch�a gia nh�p m�n ph�i, kh�ng th� h�i qu�.")
		return
	end

	if (0 == GetFightState() or GetLife(0) <= 0 or GetProtectTime() > 0 ) then
		Msg2Player("kh�ng th� h�i qu�.")
		return
	end
	
	local nPlayerLevel = GetLevel();
	local nGetSeedLevel = nil;
	if (nPlayerLevel < 80) then
		nGetSeedLevel = 1;
	elseif (nPlayerLevel >= 80 and nPlayerLevel < 120) then
		nGetSeedLevel = 2;
	elseif (nPlayerLevel >= 120) then
		nGetSeedLevel = 3;
	end
	
	if (nGetSeedLevel ~= GetNpcParam(nNpcIdx, 1)) then -- ������𲻶�,���ܽ���ʰȡ
		--���������Ҽ��𲻶�,����ʰȡ
		if (1 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Lo�i qu� n�y ng��i ch�i t� c�p 80 tr� xu�ng c� th� h�i!")
		elseif (2 == GetNpcParam(nNpcIdx, 1)) then
			Msg2Player("Lo�i qu� n�y ng��i ch�i t� c�p 80 ��n c�p 119 m�i c� th� h�i.")
		else
			Msg2Player("Lo�i qu� n�y ng��i ch�i t� c�p 120 tr� l�n m�i c� th� h�i!")
		end
		return
	end;
	
	return nGetSeedLevel
end

local _GetFruit = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	
	DelNpc(nNpcIdx)
	
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,904,1,0,0,0}, nExpiredTime = 10080}, "��m Huy Ho�ng", 1);
	--tongaward_goldenseed();
	--AddGlobalNews(format("��i hi�p %s �� h�i ���c qu� Ho�ng Kim!!!",GetName()));
	Msg2Player("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�t ���c qu� Huy Ho�ng!!!")
end

local _GetFruit2 = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	
	DelNpc(nNpcIdx)
	
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,905,1,0,0,0}, nExpiredTime = 10080}, "��m Huy Ho�ng", 1);
	--tongaward_goldenseed();
	--AddGlobalNews(format("��i hi�p %s �� h�i ���c qu� Ho�ng Kim!!!",GetName()));
	Msg2Player("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�t ���c qu� Huy Ho�ng!!!")
end

local _GetFruit3 = function(nNpcIdx, dwNpcId)
	
	if nNpcIdx <= 0 or GetNpcId(nNpcIdx) ~= dwNpcId then
		return 0
	end
	local nGetSeedLevel = %_Limit(nNpcIdx)
	
	if nGetSeedLevel == nil then
		return 0
	end
	
	
	DelNpc(nNpcIdx)
	
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,906,1,0,0,0}, nExpiredTime = 10080}, "��m Huy Ho�ng", 1);
	--tongaward_goldenseed();
	--AddGlobalNews(format("��i hi�p %s �� h�i ���c qu� Ho�ng Kim!!!",GetName()));
	Msg2Player("Ch�c m�ng ��i hi�p <color=green>"..GetName().."<color> �� nh�t ���c qu� Huy Ho�ng!!!")
end


local _OnBreak = function()
	local nNpcIdx = GetLastDiagNpc();
	Msg2Player("Thu th�p ��t �o�n")
	SetNpcParam(nNpcIdx, 3, 0)
end

function main()
dofile("script/event/great_night/npc_great_fruit.lua");
	local nNpcIdx = GetLastDiagNpc();
	local dwNpcId = GetNpcId(nNpcIdx)

	if  GetNpcParam(nNpcIdx, 3) > 0 then
	Msg2Player("�ang c� ng��i h�i qu� n�y r�i")
	return
	end
	
	if %_Limit(nNpcIdx) == nil then
		return
	end
	--SetNpcParam(nNpcIdx, 3, 1)
	local nPlayerLevel = GetLevel();
	local nGetSeedLevel;
	if (nPlayerLevel < 80) then
	tbProgressBar:OpenByConfig(2, %_GetFruit, {nNpcIdx, dwNpcId}, %_OnBreak)
	SetNpcParam(nNpcIdx, 3, 1)
	elseif (nPlayerLevel >= 80 and nPlayerLevel < 120) then
	tbProgressBar:OpenByConfig(2, %_GetFruit2, {nNpcIdx, dwNpcId}, %_OnBreak)
	SetNpcParam(nNpcIdx, 3, 1)
	elseif (nPlayerLevel >= 120) then
	tbProgressBar:OpenByConfig(2, %_GetFruit3, {nNpcIdx, dwNpcId}, %_OnBreak)
	SetNpcParam(nNpcIdx, 3, 1)
	end
SetPKFlag(1)
end;

