IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
	V = GetMissionV(MS_NEWSVALUE) + 1;
SetMissionV(MS_NEWSVALUE, V); 


-- script viet hoa By http://tranhba.com  ghi danh giai �o�n 
if (timestate == 1) then 
ReportMemberState(V); 
elseif (timestate == 2) then -- script viet hoa By http://tranhba.com  v�o tr�ng li�u 
ReportEntry(V); 
elseif (timestate == 3) then -- script viet hoa By http://tranhba.com  v�ng chi�n 
ReportBattle(V); 
elseif (timestate == 4) then 
WaitTime(V); -- script viet hoa By http://tranhba.com  chi�n ��u k�t th�c , ch� ��i m�t v�ng 
else 
StopMissionTimer(MISSIONID, TIME_NO1); 
end; 
end; 

function WaitTime(V) 
str1 = GetMissionS(FACTIONS); 
		n = GetMissionV(MS_LUN) + 1;
SetMissionV(MS_LUN,n); 
		n = n+1;
str = str1.." ��ng h�ng v� cu�c so t�i b�y gi� b�t ��u ti�n v�o th� "..n.." ��i phi�n ��ch tranh t�i v�o tr�ng , xin/m�i ng��i d� thi mau s�m v�o tr�ng . "; 
AddGlobalNews(str); 
-- script viet hoa By http://tranhba.com  RandomCamp() 
SetMissionV(MS_STATE,2); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_3); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE, 0); 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 

str1 = GetMissionS(FACTIONS); 
if (V == END_TIME) then 
maxn = TableSDD_Search("olympictab",""); 
if (maxn < 3) then 
str = str1.." ��ng h�ng v� cu�c so t�i ghi danh �� ��n gi� , b�i v� ghi danh nh�n s� kh�ng �� tranh t�i y�u c�u , v� v�y tranh t�i h�y b� . "; 
AddGlobalCountNews(str); 
CloseMission(MISSIONID); 
else 
SetMissionV(TOTALNUMBER,maxn-1); 
str = str1.." ��ng h�ng v� cu�c so t�i ghi danh �� ��n gi� , b�y gi� b�t ��u ti�n v�o th� 1 ��i phi�n ��ch tranh t�i v�o tr�ng , xin/m�i ng��i d� thi mau s�m v�o tr�ng . "; 
AddGlobalNews(str); 
RandomCamp(); 
SetMissionV(MS_STATE,2); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_3); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE, 0); 
end; 
else 
RestMin = END_TIME - V; 
str =str1.." ��ng h�ng v� cu�c so t�i ghi danh th�i gian c�n c� "..RestMin.." ph�t , xin/m�i 81 c�p tr� l�n "..str1.." nh�n s� mau s�m ��n tr��c khi an c�a ho�ng cung ghi danh . "; 
AddGlobalCountNews(str); 
end; 
end; 

function ReportEntry(V) -- script viet hoa By http://tranhba.com  v�o tr�ng th�i gian 
str1 = GetMissionS(FACTIONS); 
	n = GetMissionV(MS_LUN) + 1;
if (V == GO_TIME) then 
str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian �� ch�n ch� , tranh t�i ch�nh th�c b�t ��u !"; 
AddGlobalCountNews(str); 
Msg2MSAll(MISSIONID,str); 
RunMission(MISSIONID); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_2); -- script viet hoa By http://tranhba.com  b�t ��u tranh t�i t�nh gi� 
SetMissionV(MS_NEWSVALUE, 0); 
else 
RestMin = floor((GO_TIME - V) / 3); 
RestSec = mod((GO_TIME - V),3) * 20; 

-- script viet hoa By http://tranhba.com  str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian c�n c� "..RestMin.." ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
-- script viet hoa By http://tranhba.com  AddGlobalCountNews(str); 

if (RestMin > 0) and (RestSec == 0) then 
str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian c�n c� "..RestMin.." ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
Msg2MSAll(MISSIONID, str); 
if ((GO_TIME - V) == 3) then 
str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian c�n c� cu�i c�ng 1 ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
AddGlobalCountNews(str) 
elseif ((GO_TIME - V) == 15) then 
str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian c�n d� l�i 5 ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
AddGlobalCountNews(str) 
end 
elseif (RestMin == 0) then 
str = " th� "..n.." ��i phi�n "..str1.." ��ng h�ng v� cu�c so t�i v�o tr�ng th�i gian c�n c� "..RestSec.." gi�y . "; 
Msg2MSAll(MISSIONID, str); 
end; 
end; 
end; 

function ReportBattle(V) -- script viet hoa By http://tranhba.com  chi�n ��u ti�n h�nh trong qu� tr�nh 

if (V == FIGHT_TIME) then 
CalcScore(); 
EndFight(); 
else 
if ScanFight() == 0 then 
SortScore() 
EndFight() 
else 
RestMin = floor((FIGHT_TIME - V) / 3); 
RestSec = mod((FIGHT_TIME - V),3) * 20; 

if (RestMin == 0) then 
Msg2MSAll(MISSIONID, "<#> chi�n ��u giai �o�n , tranh t�i c�n th�a l�i th�i gian "..RestSec.."<#> gi�y . "); 
elseif (RestSec == 0) then 
Msg2MSAll(MISSIONID, "<#> chi�n ��u giai �o�n , tranh t�i c�n th�a l�i th�i gian "..RestMin.."<#> ph�t . "); 
else 
Msg2MSAll(MISSIONID, "<#> chi�n ��u giai �o�n , tranh t�i c�n th�a l�i th�i gian "..RestMin.."<#> ph�n "..RestSec.."<#> gi�y . "); 
end; 
end; 
end; 
end; 

function ScanFight() 
OldPlayer = PlayerIndex; 
	maxn = floor((GetMissionV(TOTALNUMBER) + 1) / 2);
kflag = 0; 
for i = 1,maxn do 
j = i*2; 
idx , pidx = GetNextPlayer(MISSIONID, 0, j-1); 
idy , pidy = GetNextPlayer(MISSIONID, 0, j); 

if (pidx > 0) and (pidy == 0) then 
PlayerIndex = pidx; 
AddScore(3); 
elseif (pidy > 0) and (pidx == 0) then 
PlayerIndex = pidy; 
AddScore(3); 
elseif (pidx > 0) and (pidy > 0) then 
kflag = 1; 
end; 
end; 
PlayerIndex = OldPlayer; 
return kflag; 
end; 

function EndFight() 
str1 = GetMissionS(FACTIONS); 
	n = GetMissionV(MS_LUN) + 1;
if (n >= FIGHTS) then 
maxn = GetMissionV(TOTALNUMBER1); 
		SetMissionV(FIGHT_MODE,GetMissionV(FIGHT_MODE) + 1);		

if (maxn < 5) then 
for i = 1,maxn do 
pname,px,py = TableSDD_GetValue("olympictab",i); 
				px = px + 65536;
TableSDD_SetValue("olympictab",i,pname,px,py); 
end; 
end; 

if (maxn == 2) then 
pname,px,py = TableSDD_GetValue("olympictab",1); 
str = str1.." ��ng h�ng v� cu�c so t�i th� "..n.." ��i phi�n tranh t�i k�t th�c , ��n ��y t�t c� tranh t�i �� to�n b� k�t th�c . v� ��ch l� #"..pname; 
AddGlobalNews(str); 
CloseMission(MISSIONID); 
else 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,qx,0); 
end; 
str = str1.." ��ng h�ng v� cu�c so t�i th� "..n.." ��i phi�n tranh t�i k�t th�c , xin/m�i ng��i d� thi chu�n b� m�t cu�c tranh t�i , tranh t�i �em � 5 ph�t sau v�o tr�ng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,4); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_4); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE,0); 
RandomCamp(); 
end; 
else 
str = str1.." ��ng h�ng v� cu�c so t�i th� "..n.." ��i phi�n tranh t�i k�t th�c , xin/m�i ng��i d� thi chu�n b� m�t cu�c tranh t�i , tranh t�i �em � 5 ph�t sau v�o tr�ng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,4); 
StopMissionTimer(MISSIONID, TIME_NO1); 
StartMissionTimer(MISSIONID, TIME_NO1, TIMER_4); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE,0); 
RandomCamp(); 
end; 
end; 
