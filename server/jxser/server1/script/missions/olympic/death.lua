IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnDeath(Launcher) 
DeathName = GetName(); 

pn = TableSDD_Search("olympictab",DeathName); 
pname,px,py = TableSDD_GetValue("olympictab",pn); 

DelMSPlayer(MISSIONID, py); 
SetLogoutRV(1); 

PlayerIndex1 = NpcIdx2PIdx(Launcher); -- script viet hoa By http://tranhba.com  murder hung th� 
OrgPlayer = PlayerIndex; -- script viet hoa By http://tranhba.com  ng��i ch�t 

if (PlayerIndex1 > 0) then 
PlayerIndex = PlayerIndex1; 
LaunName = GetName(); 

str = " chi�n hu�ng b�o c�o #"..LaunName.."<#> � tranh t�i trung ��nh b�i "..DeathName.."<#> . "; 
Msg2MSAll(MISSIONID, str); 

PlayerIndex = OrgPlayer; 
end; 

SetCurCamp(GetCamp()) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
SetTaskTemp(JOINSTATE, 0); 
end; 
