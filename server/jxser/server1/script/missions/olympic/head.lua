IncludeLib("SETTING"); 

-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 176; 
CS_RevData = 67; 

FACTIONTAB = {"Thi�u L�m ","Thi�n v��ng ","���ng m�n ","N�m ��c ","Nga Mi ","Th�y kh�i ","C�i Bang ","Ng�y nh�n ","V� ���ng ","C�n L�n "} 

MapTab = 335; 

FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  tr� ch�i l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 200; 
FIGHTS = 3; -- script viet hoa By http://tranhba.com  tranh t�i b�n v� ��m 
JOINTONGTIME = 1; -- script viet hoa By http://tranhba.com  v�o gi�p th�i gian h�n ch� 


MS_STATE = 1; 
MS_LUN = 2; -- script viet hoa By http://tranhba.com  th� bao nhi�u ��i phi�n ��ch tranh t�i 
TOTALNUMBER = 3 -- script viet hoa By http://tranhba.com  d� thi nh�n vi�n t�ng s� 
FACTIONS = 4; -- script viet hoa By http://tranhba.com  m�n ph�i ID 
FIGHT_MODE = 5; -- script viet hoa By http://tranhba.com  0 t�ch ph�n m� th�c , 1 ��o th�i m� th�c 
TOTALNUMBER1 = 6; 

OL_KEY = 7; -- script viet hoa By http://tranhba.com  0-100000000 ��ch ng�u nhi�n ��m 
MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 

TIME_NO1 = 23; -- script viet hoa By http://tranhba.com  ��nh l�c x�c ph�t kh� 
TIME_NO2 = 24; -- script viet hoa By http://tranhba.com  bang h�i ��nh l�c x�c ph�t kh� 

TIMER_1 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 ph�t �� k� m�t l�n ghi danh 
TIMER_2 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  20 gi�y �� k� m�t l�n tranh t�i th�i gian 
TIMER_3 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com  20 gi�y �� k� m�t l�n v�o tr�ng 
TIMER_4 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 ph�t ch� ��i th�i gian 
TIMER_5 = 60 * FRAME2TIME; -- script viet hoa By http://tranhba.com  1 ph�t �� k� m�t l�n bang h�i ghi danh th�i gian 


END_TIME = 1 ; -- script viet hoa By http://tranhba.com  ghi danh th�i gian l� 1 ph�t 
GO_TIME = 6 ; -- script viet hoa By http://tranhba.com  v�o tr�ng th�i gian 2 ph�t 
FIGHT_TIME = 6; -- script viet hoa By http://tranhba.com  tranh t�i th�i gian 2 ph�t 
END_TONG_TIME = 1; -- script viet hoa By http://tranhba.com  bang h�i ghi danh th�i gian 1 ph�t 

JOINSTATE = 242; 
MISSIONID = 12; 

TASKFLAG = 623; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng , b�y t� �� ghi danh 
SCORE = 624; -- script viet hoa By http://tranhba.com  c�t gi� th�nh t�ch 
TONGSCORE = 625; -- script viet hoa By http://tranhba.com  c�t gi� bang h�i k�t qu� c�a cu�c so t�i 
AREAID = 626; -- script viet hoa By http://tranhba.com  v�o cu�c so t�i tr�ng ��ch d�u hi�u 
OLYMPICFLAG = 630; -- script viet hoa By http://tranhba.com  t� c�ch d� thi 


function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame(leavetype) 
-- script viet hoa By http://tranhba.com leavetype = 0 b�y t� , �em v� tr� thi�t tr�n ��t �� ��ch b�n ngo�i s�n khu v�c # kh�ng ph�i l� chi�n ��u khu v�c # 
-- script viet hoa By http://tranhba.com leavetype = 1 b�y t� , �em v� tr� thi�t � m�t ch� kh�c �� , t�c ho�n to�n r�i �i chi�n tr��ng 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(CS_RevId, CS_RevData); 

SetFightState(0); 
SetPunish(1); -- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0); -- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
-- script viet hoa By http://tranhba.com  SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
ForbitTrade(0); 
SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(GetLeavePos()); 
end; 

function CalcScore() 
OldPlayer = PlayerIndex; 
	maxn = floor((GetMissionV(TOTALNUMBER) + 1) / 2);
for i = 1,maxn do 
j = i*2 
idx , pidx = GetNextPlayer(MISSIONID, 0, j-1); 
idy , pidy = GetNextPlayer(MISSIONID, 0, j); 

if (pidx > 0) and (pidy > 0) then 
if (GetMissionV(FIGHT_MODE) == 0) then 
PlayerIndex = pidx; 
AddScore(1); 
PlayerIndex = pidy; 
AddScore(1); 
else 
PlayerIndex = pidx; 
lv1 = GetLevel(); 
PlayerIndex = pidy; 
lv2 = GetLevel(); 
if (lv2 > lv1) then 
AddScore(3); 
else 
PlayerIndex = pidx; 
AddScore(3); 
end 
end 
elseif (pidx > 0) then 
PlayerIndex = pidx; 
AddScore(3); 
elseif (pidy > 0) then 
PlayerIndex = pidy; 
AddScore(3); 
end; 
end; 
SortScore(); 
end; 

-- script viet hoa By http://tranhba.com  theo nh� th�nh t�ch s�p x�p th� t� 

function SortScore() 
-- script viet hoa By http://tranhba.com  maxn = GetMissionV(TOTALNUMBER) - 1; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
pname,px,py = TableSDD_GetValue("olympictab",i); 
		for j = i+1,maxn+1 do
qname,qx,qy = TableSDD_GetValue("olympictab",j); 
if (px < qx) then 
TableSDD_SetValue("olympictab",i,qname,qx,qy); 
TableSDD_SetValue("olympictab",j,pname,px,py); 
px = qx; 
end; 
end; 
end; 
PlayerIndex = OldPlayer; 
end; 

function AddScore(pscore) 
if (GetMissionV(FIGHT_MODE) ~= 0) then 
pscore = FIGHTS * pscore 
end; 
k = GetTask(SCORE); 
	SetTask(SCORE,k+pscore);
pname = GetName(); 
Msg2Player("Ng��i � ��y v�n ��i phi�n tranh t�i trung ph�i ph�n "..pscore.." ph�n , b�y gi� m�t m�i k� t�ng ph�n "..GetTask(SCORE).." ph�n . ") 
pn = TableSDD_Search("olympictab",pname); 
pname,px,py = TableSDD_GetValue("olympictab",pn); 
	px = pscore * 256 + px
TableSDD_SetValue("olympictab",pn,pname,px,py); 
LeaveGame(1); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function JoinCamp(Camp) 

LeaveTeam() 

AddMSPlayer(MISSIONID, Camp); 
-- script viet hoa By http://tranhba.com  SetTaskTemp(JOINSTATE, 1); 

Camp1 = Camp - 1; 
	Camp1 = mod(Camp1,2) + 2;
SetCurCamp(Camp1); 

-- script viet hoa By http://tranhba.com  thi�t tr� c�ng bang h�i c� li�n quan thay ��i l��ng , kh�ng cho ph�p � s�n ��u chi�n s�a ��i m�t bang h�i tr�n doanh ��ch thao t�c 
SetTaskTemp(200,1); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i chi�n ��u 
SetFightState(0); 

-- script viet hoa By http://tranhba.com  nh� ch�i th�i lui ra l�c , b�o t�n RV c�ng , t�i h� l�n ch� v�o l�c d�ng RV( th�nh ph� s�ng l�i �i�m , kh�ng ph�i l� th�i lui ra �i�m ) 
SetLogoutRV(1); 

-- script viet hoa By http://tranhba.com  v� t� vong tr�ng ph�t 
SetPunish(0); 

-- script viet hoa By http://tranhba.com  t�t h�p th�nh ��i ch�c n�ng 
SetCreateTeam(0); 

-- script viet hoa By http://tranhba.com  m� ra PK ch�t m� kh�ng cho ph�p giao d�ch 
SetPKFlag(1) 
ForbidChangePK(1); 

-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m , m�t lo�i l� l�a ch�n ti�n v�o n�n khu ��ch th�nh ph� 
SetRevPos(CS_RevId, CS_RevData); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t nh� ch�i ��ch t� vong ch�n v�n 
	SetDeathScript("\\script\\missions\\olympic\\death.lua");

-- script viet hoa By http://tranhba.com  thi�t tr� l�n sau t� vong s�ng l�i �i�m 

x = GetTask(300); 
y = GetTask(301); 
z = GetTask(302); 
SetTempRevPos(x, y * 32, z * 32); 

-- script viet hoa By http://tranhba.com  v�o tr�ng 
Camp1 = floor((Camp - 1) / 2); 
	nx = floor(Camp1 / 10) + 1;
	ny = mod(Camp1,10) + 1;
GotoMap(nx,ny); 

str = GetName().."<#> �� ti�n v�o tranh t�i cu�c so t�i tr�ng . "; 
Msg2MSAll(MISSIONID, str); 
end; 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function GotoMap(nx,ny) 
	nnx = (nx + ny) * 43 + 1187;
	nny = (ny - nx) * 44 + 3465;
NewWorld(MapTab,nnx,nny); 
end; 

function RandomCamp() 
Ptab = {}; 
maxn = GetMissionV(TOTALNUMBER); 
if (GetMissionV(FIGHT_MODE) == 1) then 
if (maxn > 16) then 
maxn = 16 
k1 = 0 
elseif (maxn > 8) then 
k1 = 16 - maxn 
elseif (maxn > 4) then 
k1 = 8 - maxn 
elseif (maxn > 2) then 
k1 = 4 - maxn 
else 
k1 = 0 
end; 

for i = 1,k1 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
			qx = qx + FIGHTS * 256 * 3;
TableSDD_SetValue("olympictab",i,qname,qx,0); 
end; 
n = maxn - k1; 

elseif (GetMissionV(FIGHT_MODE) > 1) then 
k1 = 0; 
if (GetMissionV(TOTALNUMBER) == GetMissionV(TOTALNUMBER1)) then 
maxn = maxn / 2; 
end; 
n = maxn; 
else 
n = maxn; 
k1 = 0; 
end; 

SetMissionV(TOTALNUMBER1,maxn); 
if (n == maxn) then 
SetMissionV(TOTALNUMBER,n); 
else 
SetMissionV(TOTALNUMBER,maxn - n / 2); 
end; 

for i = 1,n do 
Ptab[i] = i 
end; 

for i = 1,n do 
		x = random(n-i+1);
m = Ptab[x]; 
		Ptab[x] = Ptab[n-i+1];
		qname,qx,qy = TableSDD_GetValue("olympictab",k1+i);
		TableSDD_SetValue("olympictab",k1+i,qname,qx,m);
end; 
end; 

function DisplayMsg() 
for i = 1,16 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
Msg2Player(qname..","..qx..","..qy); 
end; 
end; 

function SortTong() 
qname,qx,qy = TableSDD_GetValue("olympictab",2); 
if (qname == "") then 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
str = " �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i tranh t�i ��n ��y �� to�n b� k�t th�c , bang h�i "..qname.." cu�i c�ng ��t ���c x�y d�ng ��i bi�u ��i t� c�ch , xin/m�i "..qname.." bang ch� mau s�m ��n tr��c khi an c�a ho�ng cung l�y ���c t� c�ch ch�ng . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,9); 
StopMissionTimer(MISSIONID, TIME_NO2); 
-- script viet hoa By http://tranhba.com  CloseMission(MISSIONID); 
else 
maxn = TableSDD_Search("olympictab","") - 1; 
if (maxn > 8) then 
k1 = 16 - maxn 
elseif (maxn > 4) then 
k1 = 8 - maxn 
elseif (maxn > 2) then 
k1 = 4 - maxn 
else 
k1 = 0 
end 
if (k1 > 0) then 
for i = 1,k1 do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,1,0); 
end 
end 
-- script viet hoa By http://tranhba.com  k2 = maxn - 1; 
j = 2; 
		for i = k1+1,maxn do
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
TableSDD_SetValue("olympictab",i,qname,0,j); 
			j = j + 1;
end; 
end; 
end; 
