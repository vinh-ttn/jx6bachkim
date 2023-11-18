Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")

local nHideTime = 7200

local _limit = function()
	if (GetLevel() < 50) then
	Talk(1,"","<color=yellow>��ng c�p 50 tr� l�n <color> m�i g�t c�.")
	return 1;
	end	
	if (0 == GetCamp()) then
	Talk(1,"","B�n ch�a gia nh�p <color=yellow> M�n Ph�i <color> kh�ng th� g�t c�")
	return 1;
end
end

local _OnBreak = function()
	Msg2Player("Thu th�p �� b� gi�n �o�n.")
end

local _GetAward = function(nNpcIndex, dwNpcId)
	if nNpcIndex <= 0 or GetNpcId(nNpcIndex) ~= dwNpcId then
		return
	end
	
	if IsNpcHide(nNpcIndex) == 1 then
		return 0
	end

	if CalcFreeItemCellCount() < 1 then
		Talk(1,"","H�y �� Tr�ng T�i Thi�u 1 � R�i Thu Ho�ch")
		return
	end 

	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4891,0,0,0},nCount = 1}, "test", 1);
	AddGlobalNews(format("Ch�c m�ng <color=green>%s<color> h�i ���c <color=red>C� T��i<color> t�i  <color=yellow>%s<color> � M�c B�c Th�o Nguy�n",GetName(),"�i�m 2 154/150"))	
	HideNpc(nNpcIndex, %nHideTime * 18)
	
end 


function main()
local nNpcIndex = GetLastDiagNpc()
local dwNpcId = GetNpcId(nNpcIndex)
	if %_limit() then
		return
	end
	tbProgressBar:OpenByConfig(1000, %_GetAward, {nNpcIndex, dwNpcId}, %_OnBreak)
end



