Include("\\script\\missions\\olympic\\tong\\head.lua")
function InitMission() 
for i = 1, 40 do 
SetMissionV(i,0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

SetMissionV(MS_STATE, 3); 
StartMissionTimer(MISSIONID, TIME_NO3, TIMER_1); -- script viet hoa By http://tranhba.com  b�t ��u ghi danh t�nh gi� 

end; 

function RunMission() 
idx = 0; 
for i = 1 , 500 do 
idx, pidx = GetNextPlayer(MISSIONID,idx, 0); 

if (idx == 0) then 
break 
end; 

if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end 
end; 
SetMissionV(MS_STATE, 4);-- script viet hoa By http://tranhba.com  b�t ��u chi�n ��u 
end; 

function EndMission() 
GameOver(); 
for i = 1, 40 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
StopMissionTimer(MISSIONID, TIME_NO3); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
str2 = GetName().."<#> th�i lui ra kh�i chi�n tr��ng "; 
SetCurCamp(GetCamp()) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
Msg2MSAll(MISSIONID, str2); 
SetTaskTemp(JOINSTATE, 0); 
end;
