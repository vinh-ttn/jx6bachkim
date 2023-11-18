if (not __TONGRANDOMTASK_H__) then 
__TONGRANDOMTASK_H__ = 1; 

Include([[\script\tong\tong_statistics.lua]]); 

tab_Workshop = {[1] = " binh gi�p ", [2] = " thi�n c�ng ", [3] = " m�t n� ", [4] = " th� luy�n ", [5] = " thi�n � ", [6] = " l� v�t ", [7] = " ho�t ��ng "}; 

TASK_LP_ITEMID = 1744; -- script viet hoa By http://tranhba.com  t�m th�i ghi ch�p l�nh b�i ��ch v�t ph�m ID . 
TASK_LP_COUNT = 1745; -- script viet hoa By http://tranhba.com  ghi ch�p c�n ti�n s�ch ��ch s� l��ng . 
TASK_LP_ZONGGUANIDX = 1746; -- script viet hoa By http://tranhba.com  ghi ch�p l� c�i �� t�ng qu�n . 
TASK_LP_ZONGGUANLEVEL = 1756; -- script viet hoa By http://tranhba.com  ghi ch�p vi�t ti�n s�ch t�ng qu�n c�n c�p b�c . 
TASK_LP_TIMESLIMIT = 2566-- script viet hoa By http://tranhba.com  m�i ng�y ho�n th�nh 100 l�n t�i h�n #byte1# s� l�n #byte2# nh�t k� #byte3# nguy�t ph�n 
-- script viet hoa By http://tranhba.com # t�p ch#h nhi# v? r# pk - Modified by DinhHQ - 20110810 
-- script viet hoa By http://tranhba.com DAILY_MAX_TIMES = 2 -- script viet hoa By http://tranhba.com  s�a ��i m�i ng�y ho�n th�nh nhi�m v� th��ng h�n v� 2 l�n by wangjingjun IB shop �i�u ch�nh 
DAILY_MAX_TIMES = 100 
PER_ASSIGNMENT_PK = 1 -- script viet hoa By http://tranhba.com  m�i nhi�m v� gi�m b�t pk tr� gi� 1 �i�m by wangjingjun IB shop �i�u ch�nh 

TASK_LP_IDX = {1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755};-- script viet hoa By http://tranhba.com  ghi ch�p vi�t ti�n s�ch t�ng qu�n ��ch bang h�i . 

-- script viet hoa By http://tranhba.com  ki�m tra c� ph�i l� hay kh�ng t��ng �ng t�ng qu�n ��ch ��i tho�i 
function rwlp_taskcheck(nTongID, nWorkshopID) 
local nWKSPType = TWS_GetType(nTongID, nWorkshopID); 
if (nWKSPType ~= GetTask(TASK_LP_ZONGGUANIDX)) then -- script viet hoa By http://tranhba.com  t�ng qu�n kh�ng ��ng 
return 2; 
end 
if (0 == rwlp_mapcheck()) then -- script viet hoa By http://tranhba.com  � c�ng c�ng bang h�i b�n �� 
return 0; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  c�ng c�c ��i t�ng qu�n ��ch ��i tho�i 
function rwlp_dedaojianshu(nTongID, nWorkshopID) 
local nCount = rwlp_getjuanshucount(); 
local szLevel = "<color=yellow>"..GetTask(TASK_LP_ZONGGUANLEVEL).." c�p <color>"; 
local szZGName = "<color=yellow>"..tab_Workshop[GetTask(TASK_LP_ZONGGUANIDX)].." ph��ng t�ng qu�n <color>"; 
if (nCount >= GetTask(TASK_LP_COUNT)) then -- script viet hoa By http://tranhba.com  n�u nh� nhi�m v� �� ho�n th�nh , tr�c ti�p tr� v� 
Say("Ng��i �� g�p nh�t <color=yellow>"..nCount.."<color> c� ti�n s�ch , �� v�y l� �� r�i . nhanh �i v� giao cho ��t gi�p thi�n � ph��ng t�ng qu�n �i . ", 0) 
return 
end; 
if (rwlp_tongcheck() == 0) then 
Say("B�n bang tr��ng l�o �� cho ng��i vi�t qu� ti�n s�ch , ng��i r�i ��n ch� gi�p th� m�t ch�t �i . ", 0); 
Msg2Player("N�n bang h�i tr��ng l�o �� tr� gi�p qu� ng��i . ng��i c�ng thu ���c <color=yellow>"..nCount.." phong <color> ti�n s�ch , ng��i t�ng c�ng mu�n thu t�p <color=yellow>"..GetTask(TASK_LP_COUNT).." phong <color> ti�n s�ch "); 
return 
end; 

if (rwlp_workshopcheck() == 0) then 
Say(" l�o phu c�ng ��t gi�p "..szZGName.." l�m c� giao t�nh , ch�ng qua l� v�n t�ng qu�n qu�n h�t ��ch x��ng kh�ng �� "..szLevel.." , ng��i ��n nh�ng kh�c bang h�i �i xem m�t ch�t �i . ng��i c�ng mu�n thu t�p ��ch <color=yellow>"..GetTask(TASK_LP_COUNT).." phong <color> ti�n s�ch , tr��c m�t ng��i �� g�p nh�t <color=yellow>"..rwlp_getjuanshucount().."<color> phong . ", 0); 
Msg2Player("N�n bang h�i ��ch "..szZGName.." kh�ng �� "..szLevel.." , kh�ng th� cho ng��i ti�n s�ch . "); 
return 0; 
end; 

add_a_juanshu(); 
Say("Nghe n�i ��t gi�p <color=yellow>"..tab_Workshop[GetTask(TASK_LP_ZONGGUANIDX)].."<color> t�ng qu�n �ang v� �i thi thi�u h�t ti�n s�ch m� t�m �u , l�o phu c�ng kinh th�nh quan vi�n c� m�t �t lui t�i , �em c�i n�y phong <color=yellow> ti�n s�ch <color> d�n �i tin t��ng s� c� m�t �t tr� gi�p . ", 0); 
	Msg2Player("�����˵�<color=yellow>"..(nCount + 1).."��<color>���飬���ܹ�Ҫ�ռ�<color=yellow>"..GetTask(TASK_LP_COUNT).."��<color>����");
end; 

tab_MapforAll = {586, 587, 688, 589, 590, 591, 592, 593, 594, 595, 596, 597}; 
-- script viet hoa By http://tranhba.com  ki�m tr�c c� hay kh�ng � c�ng c�ng bang h�i b�n �� 
function rwlp_mapcheck() 
local ww = GetWorldPos(); 
if (ww <= 597) then 
return 0 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  xem m�t ch�t c� hay kh�ng v� �� d�n tr�i qua bang h�i 
function rwlp_tongcheck() 
if (0 == rwlp_mapcheck()) then 
return 0; 
end; 
ww = GetWorldPos() 
for i = 1, getn(TASK_LP_IDX) do 
if (ww == GetTask(TASK_LP_IDX[i]) ) then 
return 0 
end; 
end; 
return 1; 
end; 

-- script viet hoa By http://tranhba.com  ki�m tra x��ng ��ch c�p b�c l� hay kh�ng h�p c�ch 
function rwlp_workshopcheck() 
local ww = GetWorldPos(); 
local tab_work = {}; -- script viet hoa By http://tranhba.com  ph� h�p c�p b�c �i�u ki�n ��ch x��ng s� t�i �� 
tab_work = get_tongmap_list(GetTask(TASK_LP_ZONGGUANIDX), GetTask(TASK_LP_ZONGGUANLEVEL)); 
for i = 1, getn(tab_work) do 
if (ww == tab_work[i]) then 
return 1; 
end; 
end; 
return 0; 
end; 

function add_a_juanshu() 
local nCount = rwlp_getjuanshucount(); 
if (nCount == 9) then 
Say("Ng��i �� t�m ���c 9 phong ti�n s�ch . c� th� tr� v� �i ��ng nhi�m v� . ", 0); 
return 0; 
end; 
ww = GetWorldPos(); 
	nt_SetTask(TASK_LP_IDX[nCount + 1], ww);
return 1; 
end; 

function rwlp_getjuanshucount() 
for i = 1, getn(TASK_LP_IDX) do 
if (0 == GetTask(TASK_LP_IDX[i]) ) then 
return i - 1; 
end; 
end; 
return 9; 
end; 

function rwlp_cleartask() 
for i = 1, getn(TASK_LP_IDX) do 
nt_SetTask(TASK_LP_IDX[i], 0); 
end; 
nt_SetTask(TASK_LP_ZONGGUANLEVEL, 0); 
nt_SetTask(TASK_LP_COUNT, 0); 
nt_SetTask(TASK_LP_ZONGGUANIDX, 0); 
end; 

function nt_SetTask(nTaskID, nTaskValue) 
if (nTaskID <= 0) then 
return 
end; 
SetTask(nTaskID, nTaskValue); 
SyncTaskValue(nTaskID); 
end; 

function OnCancel() 

end; 

end; -- script viet hoa By http://tranhba.com // end of __TONGRANDOMTASK_H__
