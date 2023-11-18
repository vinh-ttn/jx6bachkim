IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua")
function InitMission() 
TableSDD_Close("olympictab"); 
TableSDD_Open("olympictab"); 
	for i = 1, MAX_MEMBER_COUNT+10 do
TableSDD_SetValue( "olympictab", i, "", 0, 0) 
end 

for i = 1, 40 do 
SetMissionV(i,0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 
SetMissionV(MS_STATE, 1); 
	SetMissionV(OL_KEY, random(10000000)+1);

StartMissionTimer(MISSIONID, TIME_NO1, TIMER_1); -- script viet hoa By http://tranhba.com  b�t ��u ghi danh t�nh gi� 
-- script viet hoa By http://tranhba.com  StartMissionTimer(MISSIONID, TIME_NO2, TIMER_2); 

end; 

function RunMission() 
OldPlayer = PlayerIndex; 

maxn = GetMissionV(TOTALNUMBER); 
for i = 1,maxn do 
idx , pidx = GetNextPlayer(MISSIONID, 0, i); 
if (pidx > 0) then 
PlayerIndex = pidx; 
SetFightState(1); 
end; 
end; 

PlayerIndex = OldPlayer; 
SetMissionV(MS_STATE, 3); 
end; 

function EndMission() 
for i = 1, 40 do 
SetMissionV(i , 0); 
end; 

for i = 1, 10 do 
SetMissionS(i, "") 
end; 

StopMissionTimer(MISSIONID, TIME_NO1); 
StopMissionTimer(MISSIONID, TIME_NO2); 
end; 

function OnLeave(RoleIndex) 
PlayerIndex = RoleIndex; 
SetCurCamp(GetCamp()) 
-- script viet hoa By http://tranhba.com  SetLogoutRV(0); nh� ch�i r�i tuy�n c�ng s� t� Mission trung OnLeave , v� v�y kh�ng th� � ch� n�y �i�u d�ng SetLogoutRV(0) , nh�t ��nh ph�i � �em nh� ch�i NewWorld ra Mission b�n �� ��ch ��a ph��ng �i�u d�ng Fanghao_Wu 2006-3-21 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
SetTaskTemp(JOINSTATE, 0); 
end;
