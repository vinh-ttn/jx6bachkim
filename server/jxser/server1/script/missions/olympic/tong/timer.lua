Include("\\script\\missions\\olympic\\tong\\head.lua");

function OnTimer()
	timestate = GetMissionV(MS_STATE);
	V = GetMissionV(MS_NEWSVALUE) + 1;
	SetMissionV(MS_NEWSVALUE, V);


	-- script viet hoa By http://tranhba.com �#�#####
	if (timestate == 3) then 	-- script viet hoa By http://tranhba.com  �#�#�#
		ReportEntry(V);
	elseif (timestate == 4) then 	-- script viet hoa By http://tranhba.com  �#####
		ReportBattle(V);
	else
		StopMissionTimer(MISSIONID, TIME_NO3);
	end;
end;

function ReportEntry(V)				-- script viet hoa By http://tranhba.com  �#�#��##
	if (V == GO_TIME) then
		Msg2MSAll(MISSIONID, "���#�###�#�##�#�##�#�#�#�#######�###���#�#�#!");
		RunMission(MISSIONID);
		StopMissionTimer(MISSIONID, TIME_NO3);
		StartMissionTimer(MISSIONID, TIME_NO3, TIMER_1);  -- script viet hoa By http://tranhba.com �#�#���###��
		SetMissionV(MS_NEWSVALUE, 0);
	else
		RestMin = floor((GO_TIME - V) / 3);
		RestSec = mod((GO_TIME - V),3) * 20;

		if (RestMin > 0) and (RestSec == 0) then
			str = "���#�###�#�##�#�##�#�#�#��####�#"..RestMin.."###�####��####�#��###���##"..GetMSPlayerCount(MISSIONID, 3).."######"..GetMSPlayerCount(MISSIONID, 2);
			Msg2MSAll(MISSIONID, str);
		elseif (RestMin == 0) then
			str = "���#�###�#�##�#�##�#�#�#��####�#"..RestSec.."�#####��####�#��###���##"..GetMSPlayerCount(MISSIONID, 3).."######"..GetMSPlayerCount(MISSIONID, 2);
			Msg2MSAll(MISSIONID, str);
		end;
	end;
end;

function ReportBattle(V)		-- script viet hoa By http://tranhba.com �########���##

	if (GetMSPlayerCount(MISSIONID, 3) <= 0 ) then 
		Msg2MSAll(MISSIONID, "<#>�####��###"..GetMissionS(2).."<#>�##��####�#ģ#�#!");
		SetMissionV(V_ID,2);
		CloseMission(MISSIONID);
		return
	end;
	
	if (GetMSPlayerCount(MISSIONID, 2) <= 0 ) then 
		Msg2MSAll(MISSIONID, "<#>�####��###"..GetMissionS(1).."<#>�##��####�#ģ#�#!");
		SetMissionV(V_ID,3);
		CloseMission(MISSIONID);
		return
	end;

	if (V == END_TIME) then
		Rest1 = GetMSPlayerCount(MISSIONID, 3);
		Rest2 = GetMSPlayerCount(MISSIONID, 2);

		if (Rest1 > Rest2) then 
			Msg2MSAll(MISSIONID, "<#>���#�##��###"..GetMissionS(1).."<#>�##��#⩳#���###");
			str = "<#>���##��#��######"..GetMissionS(1).."<#>�#�#"..GetMissionS(2).."<#>##";
			SetMissionV(V_ID,3);
		elseif (Rest2 > Rest1) then 
			Msg2MSAll(MISSIONID, "<#>���#�##��###"..GetMissionS(2).."<#>�##��#⩳#���###")
			str = "<#>���##��#��######"..GetMissionS(2).."<#>�#�#"..GetMissionS(1).."<#>##";
			SetMissionV(V_ID,2);
		else
			if (GetTotalLevel() == 1) then
				Msg2MSAll(MISSIONID, "<#>���#�##��###"..GetMissionS(1).."<#>�##��#⩳#���###")
				str = "<#>���##��#��######"..GetMissionS(1).."<#>�#�#"..GetMissionS(2).."<#>##";
				SetMissionV(V_ID,3);
			else
				Msg2MSAll(MISSIONID, "<#>���#�##��###"..GetMissionS(2).."<#>�##��#⩳#���###")
				str = "<#>���##��#��######"..GetMissionS(2).."<#>�#�#"..GetMissionS(1).."<#>##";
				SetMissionV(V_ID,2);
			end;
		end;
		CloseMission(MISSIONID);
	else
		RestMin = floor((END_TIME - V) / 3);
		RestSec = mod((END_TIME - V),3) * 20;

		if (RestMin == 0) then
			Msg2MSAll(MISSIONID, "<#>�#############�#��###���##"..GetMSPlayerCount(MISSIONID, 3).."<#>######"..GetMSPlayerCount(MISSIONID, 2).."<#>##���#�#㵣�##"..RestSec.."<#>�###");
		elseif (RestSec == 0) then
			Msg2MSAll(MISSIONID, "<#>�#############�#��###���##"..GetMSPlayerCount(MISSIONID, 3).."<#>######"..GetMSPlayerCount(MISSIONID, 2).."<#>##���#�#㵣�##"..RestMin.."<#>###�##");
		else
			Msg2MSAll(MISSIONID, "<#>�#############�#��###���##"..GetMSPlayerCount(MISSIONID, 3).."<#>######"..GetMSPlayerCount(MISSIONID, 2).."<#>##���#�#㵣�##"..RestMin.."<#>##"..RestSec.."<#>�###");
		end;
	end;
end;

function GetTotalLevel()
idx = 0;
nTotalLevel1 = 0;
nTotalLevel2 = 0;
	
	for i = 1 , 500 do 
 		idx, pidx = GetNextPlayer(MISSIONID,idx, 3);
 
 		if (idx == 0) then 
 			break
 		end;
 
 		if (pidx > 0) then
   			PlayerIndex = pidx;
   			nTotalLevel1 = nTotalLevel1 + GetLevel();
		end
 	end;
 	
 	idx = 0;
 	for i = 1 , 500 do 
 		idx, pidx = GetNextPlayer(MISSIONID,idx, 2);
 
 		if (idx == 0) then 
 			break
 		end;
 
 		if (pidx > 0) then
   			PlayerIndex = pidx;
   			nTotalLevel2 = nTotalLevel2 + GetLevel();
		end
 	end;

 	if (nTotalLevel1 < nTotalLevel2) then 
 		return 1
 	else 
 		return 0
 	end;
end;

