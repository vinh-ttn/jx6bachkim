
function OnTongJoin() 
OpenMission(13); 
OnTongJoin1(); 
end; 

function OnTongJoin1() 
tname = GetTong() 
if (tname ~= "") then 
if (GetMissionS(1) == "") then 
SetMissionS(1,tname) 
elseif (GetMissionS(1) ~= tname) and (GetMissionS(2) == "") then 
SetMissionS(2,tname) 
end; 
end; 

if (tname == GetMissionS(1)) and (GetTask(626) > 0) then 
if (GetJoinTongTime() >= 1440) then 
JoinTongCamp(3); 
else 
Say("Ng�i gia nh�p bang h�i th�i gian qu� ng�n , kh�ng th� tham gia chi�n ��u #", 0); 
end; 
elseif (tname == GetMissionS(2)) and (GetTask(626) > 0) then 
if (GetJoinTongTime() >= 1440) then 
JoinTongCamp(2); 
else 
Say("Ng�i gia nh�p bang h�i th�i gian qu� ng�n , kh�ng th� tham gia chi�n ��u #", 0); 
end; 
else 
Say("Ng��i kh�ng ph�i l� tranh t�i song ph��ng th�nh vi�n , kh�ng th� v�o tr�ng . ",0) 
end; 

end; 

function OnTongFighting() 
Say("Tr��c m�t song ph��ng tranh t�i �ang ti�n h�nh trong , kh�ng th� v�o tr�ng . ",0) 
end; 

function JoinTongCamp(Camp) 

SetFightState(0); 
LeaveTeam(); 
if (GetMSPlayerCount(13, Camp) >= 16) then 
Say("Tr��c m�t n�n ph��ng nh�n s� c�a �� ��y , kh�ng c�ch n�o l�i th�m v�o #",0) 
return 
end; 

AddMSPlayer(13, Camp); 
SetTaskTemp(242, 1); 
SetCurCamp(Camp); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � chi�n tr��ng trung s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200, 1); 

-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m , m�t lo�i l� l�a ch�n ti�n v�o n�n khu ��ch th�nh ph� 
SetRevPos(176, 67); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
	SetDeathScript("\\script\\missions\\olympic\\tong\\death.lua");

x = GetTask(300); 
y = GetTask(301); 
z = GetTask(302); 
SetTempRevPos(x, y * 32, z * 32); 
if (Camp == 3) then 
str = GetName().."<#> gia nh�p "..GetMissionS(1).."<#> nh�t ph��ng , tr��c m�t t�ng nh�n s� v� "..GetMSPlayerCount(13,3); 
SetPos(CampPos1[1], CampPos1[2]) 
elseif (Camp == 2) then 
str = GetName().."<#> gia nh�p "..GetMissionS(2).."<#> nh�t ph��ng , tr��c m�t t�ng nh�n s� v� "..GetMSPlayerCount(13,2); 
SetPos(CampPos2[1], CampPos2[2]) 
else 
return 
end; 

Msg2MSAll(13, str); 
end; 
