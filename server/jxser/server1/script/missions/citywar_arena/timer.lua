Include("\\script\\missions\\citywar_arena\\head.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE);
	SetMissionV(MS_NEWSVALUE, V + 1);

	if (V == GO_TIME) then
		RunMission(MISSIONID)
		return
	end

	--�����׶�
	if (timestate == 1) then 
		ReportMemberState(V);
	elseif (timestate == 2) then --��ս��
		ReportBattle(V);
	elseif (timestate == 3) then  --ս��������
		Msg2MSAll(MISSIONID, "Chi�n d�ch k�t th�c ");
		StopMissionTimer(MISSIONID, 16);
		StopMissionTimer(MISSIONID, 17);
	end;
end;

function ReportMemberState(V)
	--�ڱ����ڼ䣬ϵͳ����֪ͨ��ҵ�ǰ�ı������
	if (V == GO_TIME) then
		Msg2MSAll(MSSIONID, "S� ng��i v�o trong �� ��, cu�c thi ��u ch�nh th�c b�t ��u ");
		msgstr = format("Bang h�i <color=yellow>%s<color> v� <color=yellow>%s<color> �� b�t ��u thi ��u: S� ng��i hai b�n hi�n t�i l�: <color=yellow>%d - %d.<color>", GetMissionS(1), GetMissionS(2), GetMSPlayerCount(MISSIONID, 1), GetMSPlayerCount(MISSIONID, 2));
		WriteLog(msgstr)
		RunMission(MISSIONID);
		return
	end;
		RestTime = (GO_TIME - V) * 20;
		RestMin, RestSec = GetMinAndSec(RestTime);
		local str1 = "Th�i gian v�o ��u tr��ng c�n <color=yellow>"..RestMin.." ph�t<color>, ��i khi�u chi�n xin l�p t�c v�o ��u tr��ng."
		str1 = "Tr�n khi�u chi�n th�nh �ang trong giai �o�n v�o ��u tr��ng, hai b�n nhanh ch�ng v�o ��u tr��ng. S� ng��i hai b�n <color=yellow>"..GetMSPlayerCount(MISSIONID, 1)..":"..GetMSPlayerCount(MISSIONID, 2).."<color>. Th�i gian v�o ��u tr��ng c�n: <color=yellow>"..RestMin.." ph�t "..RestSec.." gi�y ";
		Msg2MSAll(MISSIONID, str1);	
end;

function ReportBattle(V)
--ս�����й����У�ϵͳ����֪ͨ�������������
	if (GetMSPlayerCount(MISSIONID, 1) <= 0 ) then 
		Msg2MSAll(MISSIONID, "Thi ��u k�t th�c, <color=yellow>"..GetMissionS(2).."<color> gi�nh ���c th�ng l�i chung cu�c!");
		WinBonus(2)
		CloseMission(MISSIONID);
		return
	end;
	
	if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
		Msg2MSAll(MISSIONID, "Thi ��u k�t th�c, <color=yellow>"..GetMissionS(1).."<color> gi�nh ���c th�ng l�i chung cu�c!");
		WinBonus(1)
		CloseMission(MISSIONID);
		return
	end;

	gametime = (floor(GetMSRestTime(MISSIONID,17)/18));
	RestMin, RestSec = GetMinAndSec(gametime);
	str1 = "Giai �o�n thi ��u : S� ng��i hai b�n hi�n t�i: phe V�ng <color=yellow>"..GetMSPlayerCount(MISSIONID, 1).."<color>, b�n m�u T�m <color=yellow>"..GetMSPlayerCount(MISSIONID, 2).."<color>. Th�i gian c�n d�  <color=yellow>"..RestMin.." ph�t "..RestSec.." gi�y<color> ";
	Msg2MSAll(MISSIONID, str1);
end;
