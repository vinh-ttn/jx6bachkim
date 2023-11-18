Include("\\script\\missions\\citywar_city\\head.lua");
Include("\\script\\missions\\citywar_city\\ctc3tru.lua");

function OnTimer()
	local Ctc3tru_GameCity = Ctc3tru_GetNameCityWarWithnCan1to7(GetWarOfCity());
	WriteLog(GetLoop().."��n gi� thi ��u. ");
	timestate = GetMissionV(MS_STATE);
	str = format("th�nh <color=yellow>%s<color> k�t th�c th�i gian tranh �o�t!! Hi�n t�i <color=green>%d<color> Long tr� �� h�i ph�c thu�c t�nh", Ctc3tru_GameCity, MS_SYMBOLCOUNT);
	for i = 1, MS_SYMBOLCOUNT do 
		if (GetMissionV(MS_SYMBOLBEGIN + i - 1)  == 1) then
			str = str .. "<color=green>Phe Ph�ng Th�. "	;
		else 	
			str = str .. "<color=green>Phe T�n C�ng. ";
		end;
	end;
	
	if (timestate == 2) then --��ս��
		nCount = CheckWin();
		if (nCount > MS_SYMBOLCOUNT / 2) then 
			str = format("Phe t�n c�ng cu�i c�ng %s: %s gi�nh th�ng l�i ho�n to�n! Nh�n ���c quy�n th�ng tr� %s?",str,GetGamerName(2),Ctc3tru_GameCity);
			AddGlobalNews(str);
			GameWin(2)
			return
		else
			str = format("Phe ph�ng th� cu�i c�ng %s: %s th�ng l�i ho�n to�n! Ti�p t�c gi� quy�n th�ng tr� %s?",str,GetGamerName(2),Ctc3tru_GameCity);
			AddGlobalNews(str);
			GameWin(1)
			return
		end;
	end;

	CloseMission(MISSIONID);
end;
