Include("\\script\\missions\\bw\\bwhead.lua");

function OnTimer()
	State = GetMissionV(MS_STATE) ;
	if (State == 0) then
		return
	end;
	
	local str1 = "";
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
	local nGroup1PlayerCount = GetMSPlayerCount(BW_MISSIONID, 1);
	local nGroup2PlayerCount = GetMSPlayerCount(BW_MISSIONID, 2);
	if (nGroup1PlayerCount <= 0 ) and (nGroup2PlayerCount <= 0 ) then 
		str1 = GetMissionS(CITYID).."Hai b�n ��ng th�i r�i l�i ��i<#>, ��i <color=yellow>"..szCaptainName[1].."<color><#> c�ng<color=yellow>"..szCaptainName[2].."<color><#> ngang t�i ngang s�c";
	end;

	if (nGroup1PlayerCount == nGroup2PlayerCount) then 
		str1 = GetMissionS(CITYID).."Hai b�n ��ng th�i r�i l�i ��i<#>, ��i <color=yellow>"..szCaptainName[1].."<color><#> c�ng<color=yellow>"..szCaptainName[2].."<color><#> ngang t�i ngang s�c"
	elseif (nGroup2PlayerCount > nGroup1PlayerCount) then
		str1 = GetMissionS(CITYID).."K�t qu?l�i ��i<#>, ��i <color=yellow>"..szCaptainName[2].."<color> <#> c�n nhi�u ng��i h�n ��i<color=yellow>"..szCaptainName[1].."<color> <#>, gi�nh ���c th�ng l�i cu�i c�ng!"
		bw_branchtask_win(2);
	elseif (nGroup1PlayerCount > nGroup2PlayerCount) then 
		str1 = GetMissionS(CITYID).."K�t qu?l�i ��i<#>, ��i <color=yellow>"..szCaptainName[2].."<color> <#> c�n nhi�u ng��i h�n ��i<color=yellow>"..szCaptainName[1].."<color> <#>, gi�nh ���c th�ng l�i cu�i c�ng!"
		bw_branchtask_win(1);
	end;
	Msg2MSAll(BW_MISSIONID, str1);
	--AddGlobalCountNews(str1);
	SetMissionV(MS_STATE,3);
	CloseMission(BW_MISSIONID);
	return
end;
