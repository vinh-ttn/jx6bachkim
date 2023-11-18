IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function main() 

-- script viet hoa By http://tranhba.com  thi�t tr� tr� v� �i�m 
x,y,z = GetWorldPos(); 
SetTask(300, x); 
SetTask(301, y); 
SetTask(302, z); 

idx = SubWorldID2Idx(MapTab); 
if (idx == -1) then 
ErrorMsg(3) 
return 
end; 

OldSubWorld = SubWorld; 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 
fs = GetMissionS(FACTIONS); 

if (ms_state == 0) then 
Say("Th�ng l�nh c�m v� # b�y gi� kh�ng c� b�t k� tranh t�i , ng��i c�n kh�i ��ng tranh t�i sao ? ", 4,"Kh�i ��ng tranh t�i m�t m�nh ��u ��ng h�ng v� cu�c so t�i /StartReady","Kh�i ��ng bang h�i t� c�ch cu�c so t�i /StartTong","Tra x�t th��ng c�p m�t �o�n ��ch tranh t�i k�t qu� /Result","Kh�ng c�n /OnCancel"); 
elseif (ms_state == 1) then 
Say("Th�ng l�nh c�m v� # n�i n�y l� ��ng m�n ph�i cao th� ��ng h�ng v� cu�c so t�i ��ch cu�c so t�i tr�ng , b�y gi� �ang c� h�nh "..fs.." ��ng h�ng v� tranh t�i , c�c h� l� hay kh�ng c� h�ng th� tham gia ? ", 3,"H�o nha , ta tham gia /OnRegister","��ng h�ng v� cu�c so t�i ��ch quy t�c l� c�i g� ? /OnHelp","Ta n�a chu�n b� m�t ch�t /OnCancel"); 
elseif (ms_state == 2) then 
OnReady(); -- script viet hoa By http://tranhba.com  chu�n b� v�o tr�ng 
elseif (ms_state == 3) then 
ErrorMsg(1) 
elseif (ms_state == 4) then 
Result() 
elseif (ms_state == 5) then 
Say("Th�ng l�nh c�m v� # n�i n�y �ang c� h�nh �o v�n d� ch�n cu�c so t�i chi bang h�i t� c�ch cu�c so t�i , ��t gi�p c� hay kh�ng c� h�ng th� tham gia ? ", 4,"H�o nha , ta tham gia /OnRegister1","So t�i quy t�c l� c�i g� ? /OnHelp1","Tu�n tra m�t c�i c� nh�ng bang ph�i b�o danh /LookRegister","Ta n�a chu�n b� m�t ch�t /OnCancel"); 
elseif (ms_state == 6) then 
OnEntry() -- script viet hoa By http://tranhba.com  bang h�i v�o tr�ng 
elseif (ms_state == 7) then 
ErrorMsg(1) -- script viet hoa By http://tranhba.com  bang h�i v�ng chi�n 
elseif (ms_state == 8) then 
TongWait() -- script viet hoa By http://tranhba.com  bang h�i bang h�i v�ng k� ti�p 
elseif (ms_state == 9) then 
EndTong() -- script viet hoa By http://tranhba.com  bang h�i k�t th�c 
else 
ErrorMsg(3) 
end; 
SubWorld = OldSubWorld; 
end; 

function LookRegister() 
str = " bang h�i t� c�ch cu�c so t�i �� ghi danh ��ch danh s�ch nh� sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
str = str.." "..qname 
end; 
Say(str,0); 
end; 

function EndTong() 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
if (GetTong() == qname) and (GetName() == GetTongMaster()) then 
SetTask(OLYMPICFLAG,30); 
Say("Ng��i �� l�y ���c l�nh ��i ��ch t� c�ch , c�n nh�n l�y nh�ng ��i vi�n kh�c ��ch v�o tr�ng kho�n sao ? ",0); 
CloseMission(MISSIONID); 
else 
Say("Bang h�i "..qname.." �� l�y ���c l�nh ��i ��ch t� c�ch . ",0) 
end; 
end; 

function StartTong() 
OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab); 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 

if (ms_state == 0) then 
OpenMission(MISSIONID); 

str = " b�y gi� �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i b�t ��u ghi danh , hoan ngh�nh t�t c� bang h�i ��ch bang ch� t�i tr��c tr��c khi an c�a ho�ng cung ghi danh d� thi , ti�n ghi danh 100 v�n . "; 
AddGlobalNews(str); 
SetMissionV(MS_STATE,5); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_5); -- script viet hoa By http://tranhba.com  b�t ��u ghi danh t�nh gi� 
end; 

SubWorld = OldSubWorld; 
end; 

function TongWait() 
str = " bang h�i t� c�ch cu�c so t�i ti�n v�o v�ng k� ti�p tranh t�i danh s�ch nh� sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ��i phi�n v� �ch <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
end; 

function Result() 
if (GetMissionV(FIGHT_MODE) == 0) then 
maxn = TableSDD_Search("olympictab",""); 
maxn = maxn - 1; 
if (maxn > 16) then 
maxn = 16 
end; 
str = " hi�n giai �o�n ��ng h�ng v� cu�c so t�i tr��c "..maxn.." t�n t�ch ph�n nh� sau #<enter><enter>"; 
else 
str = " hi�n giai �o�n cu�c thi v�ng lo�i ti�n v�o h� ��i phi�n tranh t�i danh s�ch c�ng t�ch ph�n nh� sau #<enter><enter>"; 
maxn = GetMissionV(TOTALNUMBER1); 
end; 
if (maxn < 2) then 
str = " b�y gi� c�n kh�ng c� b�t k� so t�i t�ch ph�n . " 
else 
-- script viet hoa By http://tranhba.com  Msg2Player("maxn="..maxn); 

for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
px = floor(qx / 256); 
px = mod(px,256); 
if (qy == 0) then 
px = px - FIGHTS * 3 
str = str.." th� "..i.." t�n #"..qname.."#"..px.." ph�n , ��i phi�n v� �ch <enter>" 
else 
str = str.." th� "..i.." t�n #"..qname.."#"..px.." ph�n <enter>" 
end; 
end; 
m = TableSDD_Search("olympictab","") - 1; 
if (GetMissionV(FIGHT_MODE) ~= 0) and (maxn < m) then 
			for i = maxn+1,m do
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
px = floor(qx / 256); 
px = mod(px,256); 
str = str.." th� "..i.." t�n #"..qname.."#"..px.." ph�n , k�t th�c <enter>" 
end; 
end; 
end; 
Say(str,0); 
end; 

function OnHelp1() 
Talk(7, "","Th�ng l�nh c�m v� # �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i l� v� tham gia to�n khu to�n d�ng/u�ng s� c� h�nh ��ch ��i h�nh tranh t�i m� v�o ���c d� ch�n cu�c so t�i , d� ch�n cu�c so t�i th�ng qua bang h�i ��ch h�nh th�c th�ng nh�t tham gia . ","Th�ng l�nh c�m v� # mu�n tham gia d� ch�n cu�c so t�i , ��u ti�n t�i ta b�n n�y ti�n h�nh ghi danh , ti�n ghi danh v� 100 v�n . ghi danh h�n ng�ch v� nhi�u nh�t 16 c� bang h�i , ghi danh ch�n ch� �� ��n gi� bu�i tr�a 12 �i�m k�t th�c . ","Th�ng l�nh c�m v� # m�i bang h�i cho ph�p c� 16 ng��i tham gia tranh t�i , nh�ng l� v�o gi�p th�i gian nh�t ��nh ph�i m�n 1 ng�y tr� l�n . ","Th�ng l�nh c�m v� # ghi danh sau khi k�t th�c , t�c b�t ��u tranh t�i v�o tr�ng th�i gian , v�o tr�ng th�i gian l� 5 ph�t , ��i v�o tr�ng chu�n b� th�i gian sau khi k�t th�c , tranh t�i li�n ch�nh th�c b�t ��u . " ,"Th�ng l�nh c�m v� # tranh t�i th�i gian l� 10 ph�t , �p d�ng ��o th�i ch� , tranh t�i th�i gian sau khi k�t th�c nh�n song ph��ng c�n d� l�i nh�n s� bao nhi�u ph�n ��nh th�ng b�i . th�ng ph��ng ti�n v�o v�ng k� ti�p tranh t�i . ","Th�ng l�nh c�m v� # kh�c , n�u nh� tranh t�i giai �o�n trung b�t k� th�i kh�c m�t ph��ng r�i tuy�n ho�c l� tr� v� th�nh t�c x� v� t� vong #","Th�ng l�nh c�m v� # tranh t�i cu�i c�ng th� th�ng bang h�i bang ch� �em l�m l�nh ��i kh�c n�a ch�n l�a 29 t�n nh�ng kh�c b�t k� ��i vi�n mang th�p ��i cao th� c�p k� h�n �an h�ng tranh t�i tr��c 4 t�n ��i bi�u v�n d�ng/u�ng tham gia to�n khu to�n d�ng/u�ng ��ch �o v�n h�i . "); 
end; 

function OnHelp() 
Talk(6, "","Th�ng l�nh c�m v� # ��ng h�ng v� cu�c so t�i l� v� t�t c� 81 c�p tr� l�n ��ng m�n ph�i ��ch v� l�m nh�n s� c� h�nh ��i h�nh m�t m�nh ��u so t�i ��a ph��ng , ��ng h�ng v� cu�c so t�i t�ng c�ng c� h�nh 10 ��i phi�n , � m�i m�t v�ng trung h� th�ng �em ng�u nhi�n ph�n ph�i ��i th� . ","Th�ng l�nh c�m v� # mu�n ti�n h�nh ��ng h�ng v� cu�c so t�i , ��u ti�n t�i ta b�n n�y ti�n h�nh ghi danh , ti�n ghi danh v� 100 v�n . ghi danh ch�n ch� �� ��n gi� bu�i tr�a 12 �i�m k�t th�c . ","Th�ng l�nh c�m v� # ghi danh sau khi k�t th�c , t�c b�t ��u tranh t�i v�o tr�ng th�i gian , v�o tr�ng th�i gian l� 5 ph�t , ��i v�o tr�ng chu�n b� th�i gian sau khi k�t th�c , tranh t�i li�n ch�nh th�c b�t ��u . " ,"Th�ng l�nh c�m v� # so t�i th�i gian l� 10 ph�t , n�u nh� � 10 ph�t b�n trong song ph��ng ch�a ph�n th�ng b�i , l� x� v� ngang tay . ","Th�ng l�nh c�m v� # kh�c , n�u nh� tranh t�i giai �o�n trung b�t k� th�i kh�c m�t ph��ng r�i tuy�n ho�c l� tr� v� th�nh t�c x� v� th�t b�i #","Th�ng l�nh c�m v� # tranh t�i k� ph�n quy t�c # th�ng ph��ng ��c 3 ph�n , b�/cha/ch�u ph��ng ��c 0 ph�n , b�nh c�c c�c ph�i 1 ph�n . ��i 10 ��i phi�n tranh t�i to�n b� sau khi k�t th�c �em cho ra t�ng ��ng h�ng . "); 
end; 


function StartReady() 
OldSubWorld = SubWorld; 
idx = SubWorldID2Idx(MapTab); 
SubWorld = idx; 
ms_state = GetMissionV(MS_STATE); 

if (GetLevel() > 80) and (GetLastFactionNumber() ~= -1) and (ms_state == 0) then 
OpenMission(MISSIONID); 
n = GetLastFactionNumber(); 
		str1 = FACTIONTAB[n+1];
SetMissionV(FACTIONS,n); 
SetMissionS(FACTIONS,str1); 

str = " b�y gi� "..str1.." ��ng h�ng v� cu�c so t�i b�t ��u ghi danh , hoan ngh�nh t�t c� 81 c�p tr� l�n "..str1.." cao th� t�i tr��c tr��c khi an c�a ho�ng cung ghi danh d� thi , ti�n ghi danh 100 v�n . "; 
AddGlobalNews(str); 
end; 

SubWorld = OldSubWorld; 
end; 

function OnRegister() 

OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(MapTab); 
factionx = GetMissionV(FACTIONS); 
r = GetMissionV(OL_KEY); 
SubWorld = OldSubWorld; 

if (GetLevel() < 81) or (GetLastFactionNumber() ~= factionx) then 
ErrorMsg(5) 
return 
end; 

if GetTask(TASKFLAG) == r then 
ErrorMsg(4) 
return 
end; 

n = TableSDD_Search("olympictab",""); 
if (n == 0) or (n > MAX_MEMBER_COUNT) then 
ErrorMsg(7) 
return 
end; 

if GetCash() < 1000000 then 
ErrorMsg(2) 
return 
end; 

Pay(1000000); 
SetTask(TASKFLAG,r); 
SetTask(SCORE,0); 
SetTask(OLYMPICFLAG,0); 
x = GetName(); 
TableSDD_SetValue("olympictab",n,x,0,0) 

SubWorld = OldSubWorld; 
Msg2Player("Ng��i �� b�o danh tranh t�i , xin/m�i ki�n nh�n ch� v�o tr�ng th�ng b�o . "); 
Say("Th�ng l�nh c�m v� # ng��i �� b�o danh tranh t�i , xin/m�i ki�n nh�n ch� v�o tr�ng th�ng b�o . ",0); 
end; 



function OnRegister1() -- script viet hoa By http://tranhba.com  bang h�i ghi danh 
if (GetName() ~= GetTongMaster()) then 
ErrorMsg(9) 
return 
end 

OldSubWorld = SubWorld; 

-- script viet hoa By http://tranhba.com  if GetTask(TASKFLAG) == r then 
-- script viet hoa By http://tranhba.com  ErrorMsg(4) 
-- script viet hoa By http://tranhba.com  return 
-- script viet hoa By http://tranhba.com  end; 

tname,tt = GetTong(); 
if (TableSDD_Search("olympictab",tname) ~= 0) then 
ErrorMsg(4) 
return 
end; 

n = TableSDD_Search("olympictab",""); 
if (n == 0) or (n > 16) then 
ErrorMsg(7) 
return 
end; 

if GetCash() < 1000000 then 
ErrorMsg(2) 
return 
end; 

Pay(1000000); 
TableSDD_SetValue("olympictab",n,tname,0,0) 

SubWorld = OldSubWorld; 
Msg2Player("Ng��i bang h�i �� b�o danh tranh t�i , xin/m�i ki�n nh�n ch� v�o tr�ng th�ng b�o . "); 
Say("Th�ng l�nh c�m v� # ng��i bang h�i �� b�o danh tranh t�i , xin/m�i ki�n nh�n ch� v�o tr�ng th�ng b�o . ",0); 
end; 

function OnReady() 

OldSubWorld = SubWorld; 
SubWorld = SubWorldID2Idx(MapTab); 
r = GetMissionV(OL_KEY); 
SubWorld = OldSubWorld 

if GetTask(TASKFLAG) == r then 
OnJoin() 
else 
ErrorMsg(8) 
end; 
end; 

function OnEntry() -- script viet hoa By http://tranhba.com  bang h�i v�o tr�ng 

tname,tt = GetTong(); 
n = TableSDD_Search("olympictab",tname) 
if (n == 0) then 
str = " ng��i bang h�i kh�ng c� ghi danh d� thi ho�c l� �� b� ��o th�i , b�y gi� bang h�i t� c�ch cu�c so t�i d� thi danh s�ch nh� sau #<enter><enter>"; 
maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ��i phi�n v� �ch <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
return 
end 

ny,n1,n2 = TableSDD_GetValue("olympictab",n) 
if (n2 == 0) then 
str = " ng��i bang h�i v�n ��i phi�n tranh t�i ��i phi�n v� �ch , b�y gi� bang h�i t� c�ch cu�c so t�i d� thi danh s�ch nh� sau #<enter><enter>"; 

maxn = TableSDD_Search("olympictab","") - 1; 
for i = 1,maxn do 
qname,qx,qy = TableSDD_GetValue("olympictab",i); 
if (qy == 0) then 
str = str.." "..qname.."# ��i phi�n v� �ch <enter>" 
elseif (mod(qy,2) == 0) then 
str = str.." "..qname.." VS" 
else 
str = str.." "..qname.."<enter>" 
end; 
end; 
Say(str,0); 
return 
end; 

if (GetJoinTongTime() < JOINTONGTIME) then 
ErrorMsg(12) 
return 
end; 

SetTask(300, 334); 
SetTask(301, 1480); 
SetTask(302, 3048); 
SetTask(AREAID,n2); 
	n3 = floor(n2/2) + 212;
NewWorld(n3,1633,3292); 
end; 


function ErrorMsg(ErrorId) 
-- script viet hoa By http://tranhba.com  Msg2Player("ErrorId="..ErrorID) 
if (ErrorId == 1) then 
Say("Th�ng l�nh c�m v� # b�y gi� tranh t�i �ang ti�n h�nh trung , kh�ng th� v�o tr�ng . ",0) 
elseif (ErrorId == 2) then 
Say("Th�ng l�nh c�m v� # tr�n ng��i ng��i mang ng�n l��ng kh�ng �� . ",0) 
elseif (ErrorId == 3) then 
Say("Th�ng l�nh c�m v� # ghi danh x�y ra v�n �� , xin/m�i c�ng quan ph��ng li�n l�c #",0); 
elseif (ErrorId == 4) then 
Say("Th�ng l�nh c�m v� # ng��i �� b�o danh tranh t�i , xin/m�i ki�n nh�n ch� v�o tr�ng th�ng b�o . ", 0); 
elseif (ErrorId == 5) then 
Say("Th�ng l�nh c�m v� # m�n ph�i c�a ng��i kh�ng ph� h�p y�u c�u ho�c l� c�p b�c kh�ng �� 81 c�p . ",0); 
elseif (ErrorId == 6) then 
Say("Th�ng l�nh c�m v� # b�y gi� v�ng k� ti�p tranh t�i l�p t�c s� ph�i b�t ��u , xin ch� ch�c l�t . ",0); 
elseif (ErrorId == 7) then 
Say("Th�ng l�nh c�m v� # th�t xin l�i , ghi danh danh ng�ch �� ��y . ",0); 
elseif (ErrorId == 8) then 
Say("Th�ng l�nh c�m v� # ng��i kh�ng c� ghi danh tranh t�i , v� v�y kh�ng th� v�o n�i so t�i . ",0); 
elseif (ErrorId == 9) then 
Say("Th�ng l�nh c�m v� # bang h�i tranh t�i ph�i l� bang ch� m�i c� th� ghi danh . ",0); 
elseif (ErrorId == 10) then 
Say("Th�ng l�nh c�m v� # ng��i bang h�i kh�ng c� ghi danh tham gia tranh t�i . ",0) 
elseif (ErrorId == 11) then 
Say("Th�ng l�nh c�m v� # ng��i bang h�i v�n ��i phi�n tranh t�i ��i phi�n v� �ch . ",0) 
elseif (ErrorId == 12) then 
Say("Th�ng l�nh c�m v� # ng��i gia nh�p bang h�i ��ch th�i gian kh�ng �� 1 ng�y , kh�ng th� tham gia tranh t�i . ",0) 
elseif (ErrorId == 13) then 
Say("Th�ng l�nh c�m v� # ng��i v�n ��i phi�n tranh t�i ��i phi�n v� �ch ho�c �� b� tranh t�i ��o th�i . ",0) 
else 

end; 
return 
end; 


function OnJoin() 
idx = SubWorldID2Idx(MapTab); 

OldSubWorld = SubWorld; 
SubWorld = idx; 

-- script viet hoa By http://tranhba.com  DisplayMsg(); 

nx = GetName(); 
n = TableSDD_Search("olympictab",nx); 
if n ~= 0 then 
ny,n1,n2 = TableSDD_GetValue("olympictab",n) 
if (n2 == 0) then 
ErrorMsg(13) 
else 
if (n1 > 65536) then 
SetTask(OLYMPICFLAG,1); 
Msg2Player("Ch�c m�ng ng��i , ng��i �� l�y ���c tham gia to�n khu to�n d�ng/u�ng �o v�n h�i so t�i t� c�ch . ",0) 
end 
JoinCamp(n2) 
end 
else 
ErrorMsg(3) 
end; 
SubWorld=OldSubWorld; 
end; 


function OnCancel() 
end; 
