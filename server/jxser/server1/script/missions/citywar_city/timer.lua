Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\ctc3tru.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE);
	SetMissionV(MS_NEWSVALUE, V+1);
	if (timestate == 2) then --��ս��
		ReportBattle(V);
	end;
end;

function ReportBattle(V)
--ս�����й����У�ϵͳ����֪ͨʯ�������
	local Ctc3tru_GameCity = Ctc3tru_GetNameCityWarWithnCan1to7(GetWarOfCity());
	gametime = (floor(GetMSRestTime(MISSIONID,13) / 18));
	RestMin, RestSec = GetMinAndSec(gametime);
	str = format("Hi�n t�i <color=yellow>%s<color> �ang tranh �o�t quy�t li�t! Th�i gian c�n <color=green>%d<color> ph�t; hi�n t�i <color=green>%d<color> Long tr� �� h�i ph�c thu�c t�nh ", Ctc3tru_GameCity, RestMin, MS_SYMBOLCOUNT);
	for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
			str = str .. "<color=green>Phe Th�. "	;
		else 	
			str = str .. "<color=yellow>Phe C�ng. ";
		end;
	end;

	--2004.11.5�ر���ȫ���͹㲥�Ĺ���
	--if (mod(V, 18) == 0) then 
	--	AddGlobalNews(str)
	--else
		Msg2MSAll(MISSIONID, str)
	--end;
end;
 