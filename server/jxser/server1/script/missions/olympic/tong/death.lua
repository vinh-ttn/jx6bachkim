Include("\\script\\missions\\olympic\\tong\\head.lua");

function OnDeath(Launcher) 
curcamp = GetCurCamp(); 
DelMSPlayer(MISSIONID,curcamp); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung th� 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng��i ch�t 
DeathName = GetName(); 

SetFightState(0) 
if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

		pkcount = GetTaskTemp(MS_TOTALPK) + 1; -- script viet hoa By http://tranhba.com ���㵱ǰ��pk����
		SetTask(MS_TOTALPK, GetTask(MS_TOTALPK) + 1); -- script viet hoa By http://tranhba.com ͳ���ܹ���pk����
SetTaskTemp(MS_TOTALPK, pkcount); 

if (curcamp == 3) then 
str = GetMissionS(2).."<#> d��i tr��ng "..LaunName.."<#> b� th��ng n�ng ["..DeathName.."<#>] , PK nh�n s� t�ng v� "..pkcount; 
-- script viet hoa By http://tranhba.com 			SetMissionV(MS_TONG2VALUE, GetMissionV(MS_TONG2VALUE) + 1);
elseif (curcamp == 2) then 
str = GetMissionS(1).."<#> d��i tr��ng "..LaunName.."<#> b� th��ng n�ng ["..DeathName.."<#>] , PK nh�n s� t�ng v� "..pkcount; 
-- script viet hoa By http://tranhba.com 			SetMissionV(MS_TONG1VALUE, GetMissionV(MS_TONG1VALUE) + 1);
end; 

Msg2MSAll(MISSIONID, str); 
PlayerIndex = OrgPlayer; 
end; 

SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
ForbitTrade(0); 
SetLogoutRV(0) 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetTaskTemp(JOINSTATE, 0); 
end; 
