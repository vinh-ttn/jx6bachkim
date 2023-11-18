IncludeLib("SETTING"); 
Include("\\script\\missions\\olympic\\head.lua");

function OnTimer() 
timestate = GetMissionV(MS_STATE); 
	V = GetMissionV(MS_NEWSVALUE) + 1;
SetMissionV(MS_NEWSVALUE, V); 


-- script viet hoa By http://tranhba.com  ghi danh giai �o�n 
if (timestate == 5) then 
ReportMemberState(V); 
elseif (timestate == 6) then -- script viet hoa By http://tranhba.com  v�o tr�ng li�u 
ReportEntry(V); 
elseif (timestate == 7) then -- script viet hoa By http://tranhba.com  v�ng chi�n 
ReportBattle(V); 
elseif (timestate == 8) then 
WaitTime(V); -- script viet hoa By http://tranhba.com  chi�n ��u k�t th�c , ch� ��i m�t v�ng 
else 
StopMissionTimer(MISSIONID, TIME_NO2); 
end; 
end; 

function WaitTime(V) 
		n = GetMissionV(MS_LUN) + 1;
SetMissionV(MS_LUN,n); 
		n = n+1;
str = " �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i b�y gi� b�t ��u ti�n v�o th� "..n.." ��i phi�n ��ch tranh t�i v�o tr�ng , xin/m�i ng��i d� thi mau s�m v�o tr�ng . "; 
AddGlobalNews(str); 
-- script viet hoa By http://tranhba.com  SortTong(); 
SetMissionV(MS_STATE,6); 
StopMissionTimer(MISSIONID, TIME_NO2); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_3); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE, 0); 
end; 

function ReportMemberState(V) 
-- script viet hoa By http://tranhba.com  � ghi danh trong l�c , h� th�ng ��nh k� th�ng b�o nh� ch�i tr��c m�t ��ch ghi danh t�nh hu�ng 

if (V == END_TIME) then 
maxn = TableSDD_Search("olympictab",""); 
if (maxn < 2) then 
str = " �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i ghi danh �� ��n gi� , b�i v� v� bang h�i ghi danh c�u xin , v� v�y tranh t�i h�y b� . "; 
AddGlobalCountNews(str); 
CloseMission(MISSIONID); 
elseif (maxn == 2) then 
qname,qx,qy = TableSDD_GetValue("olympictab",1); 
str = " �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i ghi danh �� ��n gi� , b�i v� ch� c� m�t bang h�i "..qname.." ghi danh , v� v�y tr�c ti�p ��t ���c x�y d�ng ��i bi�u ��i t� c�ch , xin/m�i "..qname.." bang ch� mau s�m ��n tr��c khi an c�a ho�ng cung l�y ���c t� c�ch ch�ng . "; 
AddGlobalCountNews(str); 
SetMissionV(MS_STATE,9); 
StopMissionTimer(MISSIONID, TIME_NO2); 
else 
SetMissionV(TOTALNUMBER,maxn-1); 
str = " �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i ghi danh �� ��n gi� , b�y gi� b�t ��u ti�n v�o th� 1 ��i phi�n ��ch tranh t�i v�o tr�ng , xin/m�i ng��i d� thi mau s�m v�o tr�ng . "; 
AddGlobalNews(str); 
SortTong(); 
SetMissionV(MS_STATE,6); 
StopMissionTimer(MISSIONID, TIME_NO2); 
StartMissionTimer(MISSIONID, TIME_NO2, TIMER_3); -- script viet hoa By http://tranhba.com  b�t ��u v�o tr�ng t�nh gi� 
SetMissionV(MS_NEWSVALUE, 0); 
end; 
else 
RestMin = END_TIME - V; 
str =" �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i ghi danh th�i gian c�n c� "..RestMin.." ph�t , xin tr� kh�ng c� ghi danh ��ch bang ph�i bang ch� mau s�m ��n tr��c khi an c�a ho�ng cung ghi danh . "; 
AddGlobalCountNews(str); 
end; 
end; 

function ReportEntry(V) -- script viet hoa By http://tranhba.com  v�o tr�ng th�i gian 
	n = GetMissionV(MS_LUN) + 1;
if (V == GO_TIME) then 
str = " th� "..n.." ��i phi�n �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i v�o tr�ng th�i gian �� ch�n ch� , tranh t�i l�p t�c b�t ��u !"; 
AddGlobalCountNews(str); 
SetMissionV(MS_STATE,7); 
StopMissionTimer(MISSIONID, TIME_NO1); 
else 
if ((GO_TIME - V) == 3) then 
str = " th� "..n.." ��i phi�n �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i v�o tr�ng th�i gian c�n c� cu�i c�ng 1 ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
AddGlobalCountNews(str) 
elseif ((GO_TIME - V) == 15) then 
str = " th� "..n.." ��i phi�n �o v�n d� ch�n cu�c so t�i bang h�i t� c�ch cu�c so t�i v�o tr�ng th�i gian c�n d� l�i 5 ph�t , xin/m�i kh�ng/ch�a v�o tr�ng ng��i mau s�m v�o tr�ng . "; 
AddGlobalCountNews(str) 
end; 
end; 
end; 

function ReportBattle(V) 

end; 
