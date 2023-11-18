
IncludeLib("RELAYLADDER");

function OnDeath(nNpcIndex)
	local nPlayerIndex	= NpcIdx2PIdx(nNpcIndex);
	if nPlayerIndex > 0 then
		local szDeadName	= GetName()
		local szKiller		= doFunByPlayer(nPlayerIndex, GetName)
		local nCount		= doFunByPlayer(nPlayerIndex, GetTask, tbMissionClass.TSK_Kills)
		local szMsg			= format("<color=yellow>%s<color> ��nh b�i <color=yellow>%s<color>", szKiller, szDeadName)
		doFunByPlayer(nPlayerIndex, SetTask, tbMissionClass.TSK_Kills, nCount + 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, format("S� ng��i �� ��nh b�i: %d", nCount + 1))
		doFunByPlayer(nPlayerIndex, SetTask, 5980, doFunByPlayer(nPlayerIndex, GetTask, 5980) + 1)
		doFunByPlayer(nPlayerIndex, Ladder_NewLadder, 10231, szKiller, doFunByPlayer(nPlayerIndex, GetTask, 5980), 1)
		doFunByPlayer(nPlayerIndex, Msg2Player, szMsg)
		Msg2Player(szMsg)
	end
	local bilCountKill = GetTask(tbMissionClass.TSK_Kills)
	Msg2Player("B�n �� g� g�c ���c <color=yellow>"..bilCountKill.."<color> ��i th�, nh�n ���c <color=yellow>"..(bilCountKill * 500000).."<color> �i�m kinh nghi�m!")
	AddOwnExp(bilCountKill*500000)
	Msg2Player("B�n �� b� tr�ng th��ng.")
	tbMissionClass:GotoSignUpPlace()
	local nPlayerCount = tbMissionClass:GetMSPlayerCount(0)
	
	if nPlayerCount == 1 then
		tbMissionClass:OnClose()
	end
end