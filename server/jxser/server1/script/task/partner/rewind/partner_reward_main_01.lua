
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n tu luy�n thi�n ch�n v�n th�t th� x� l� v�n ki�n - th� l�ng ch�t 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2005/09/09 PM 11:19 

-- script viet hoa By http://tranhba.com  ch� c� h�n v� n�ng hai ng��i 
-- script viet hoa By http://tranhba.com  b�n h� y�u nhau 
-- script viet hoa By http://tranhba.com  n�ng nh� 
-- script viet hoa By http://tranhba.com  tay c�a h�n vu�t ve � da c�a n�ng th��ng ��ch �n t�nh 
-- script viet hoa By http://tranhba.com  h�n h�n gi�ng nh� �i�u b�y � tr�n tr�i x�t qua 
-- script viet hoa By http://tranhba.com  h�n � th�n th� n�ng b�n trong b�o l� c�ng ph�ng t�ng 
-- script viet hoa By http://tranhba.com  h�n ng� th�i �i�m ��ch d�ng v� tr�n ��y thu�n ch�n 
-- script viet hoa By http://tranhba.com  n�ng nh� , s�ng s�m n�ng t�nh l�i ��ch m�t kh�c , h�n � b�n c�nh n�ng 
-- script viet hoa By http://tranhba.com  n�ng tr�n tr�n m�t , nh�n �nh r�ng ��ng xuy�n th�u qua r�m c�a s� t�ng �i�m t�ng �i�m chi�u v�o 
-- script viet hoa By http://tranhba.com  trong l�ng c�a n�ng b�i v� h�nh ph�c m� �au ��n 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  ��ng b�n h� th�ng ��u v�n ki�n 
IncludeLib("PARTNER"); 

-- script viet hoa By http://tranhba.com  ��ng b�n k�ch t�nh nhi�m v� ��u v�n ki�n 
Include ("\\script\\task\\partner\\task_head.lua");

ID_PARMASTER_TALK_01 = 1256; -- script viet hoa By http://tranhba.com  c� hay kh�ng m� ra c�ng nam nh�c tr�n ��ch c� d�n ��i tho�i ��ch ch�t m� 

PARID_REWIND_ITEM_001 = 33; -- script viet hoa By http://tranhba.com  ��a ho�ng c� 
PARID_REWIND_ITEM_002 = 34; -- script viet hoa By http://tranhba.com  ph� l� 
PARID_REWIND_ITEM_003 = 35; -- script viet hoa By http://tranhba.com  b�n tr�i c�i ch�a kh�a 
PARID_REWIND_ITEM_004 = 36; -- script viet hoa By http://tranhba.com  nhu�m gi�p c�t 
PARID_REWIND_ITEM_005 = 37; -- script viet hoa By http://tranhba.com  b�n ph�i c�i ch�a kh�a 

PARID_REWIND_WAITTIME = 38; -- script viet hoa By http://tranhba.com  5 ph�t ch� ��i th�i gian 


rewindProcess_001 = inherit(CProcess, { 

checkCondition = function(self) 
return 1; 
end, 

taskEntity = function(self, nCondition) 

local strMain = { 
"<npc> g�n ��y , m�n h� �� t� n�i cho ta bi�t m�t m�n chuy�n k� qu�i . tr��c ��y kh�ng l�u , nam nh�c tr�n tr�n t�i m�t ng�ch c� ��m thanh , b�i mang h�p s�t ��ch gi� nua ph�m nh�n , ng��i n�y �nh m�t qu�c th��c , nh�n qua t��ng m�o phi ph�m . cho n�n ch�ng ta gi�u gi�m � nam nh�c trong kh�ch s�n ��ch cao th� ��i v�i h�n c� nhi�u chi�u c� . c� m�t l�i m�a ch�t th�m ��ch ban ��m , l�o nh�n ch�t th�n s�c ho�ng s� t�m ���c ng��i �� t� kia , n�i ra m�t li�n quan t�i t�ng b�o �� m�nh v�n ��ch l�n lao b� m�t . th� ra l� v� l�o nh�n n�y l�i l� ���ng tri�u Binh b� Th� lang , b�i v� l�c ch� ch�ng l�i kim qu�c , b� l�u ��i Nam C��ng th� b�n . k� qu�i h�n ch�nh l� , ng�y th� hai s�ng s�m th� lang ��i nh�n ch�t v� t�t b�o t� # li�n l�c g�n nh�t tr�n giang h� tin ��n ��ch v� l�m kh�ch s�n � giang h� nghi�m ph�t anh h�ng d�n , ��c ��nh n�m sau tri�u t�p anh h�ng thi�n h� c�i ra c�ng ng�y ho�ng long kh� t��ng quan t�ng b�o �� b� m�t chuy�n n�y , ta c�m th�y sau l�ng c� l� c� c� l�n lao �m m�u . m�t t� nho nh� kim n� thu phong ti�n , th�nh giang h� anh h�ng ng��i ng��i mu�n ph�i sau mau b�o b�i . c�n ch�n ch�nh truy�n l�u giang h� ��ch , t�a h� ch� c� th�p ��i m�n ph�i ch��ng m�n nh�n trong tay m��i t� , kh�c m��i tr��ng anh h�ng d�n c�ng kh�ng bi�t tung t�ch . ta tin t��ng th� lang ��ch ch�t c�ng chi c� li�n quan , mu�n m�i ng��i t�m ra s� h� trong �� . h�a gi�i Trung Nguy�n v� l�m ��ch m�t cu�c h�o ki�p #", 
" k�ch t�nh thi�n [ nh�m v�o ch�a t�ng l�m n�n nhi�m v� ��ng b�n ]/#rewindProcess_001_01:doTaskEntity()", 
" tu luy�n thi�n [ nh�m v�o �� �� l�m n�n nhi�m v� ��ng b�n ]/#rewindProcess_001_02:doTaskEntity()", 
" ta ��u kh�ng mu�n nh�n , tr� ch�t tr� l�i �i /OnTaskExit" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 

end, 

}); 


-- script viet hoa By http://tranhba.com  l�a ch�n th� lang ch�t k�ch t�nh thi�n [ nh�m v�o ch�a t�ng l�m n�n nhi�m v� ��ng b�n ] 
rewindProcess_001_01 = inherit(CProcess, { 

checkCondition = function(self) 

if GetRewindTaskState(PARID_TASK_REWIND_001)==nil then -- script viet hoa By http://tranhba.com  kh�ng c� CALL ��ng b�n �i ra tr� v� 0 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_001)<=4 then -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh k�ch t�nh thi�n ��ch nhi�m v� 
return 4; 
elseif CheckRewindState(1)~=1 then -- script viet hoa By http://tranhba.com  kh�ng ph� h�p nh�t k� ph�n �o�n �i�u ki�n 
return 5; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)>=1 and GetRewindTaskState(PARID_TASK_REWIND_001)<5 then -- script viet hoa By http://tranhba.com  �� b�t ��u nhi�m v� tr� v� 1 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==5 then -- script viet hoa By http://tranhba.com  �� ho�n th�nh qu� nhi�m v� tr� v� 2 
return 2; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==0 then -- script viet hoa By http://tranhba.com  cho t�i b�y gi� ch�a t�ng l�m nhi�m v� n�y tr� v� 3 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 

-- script viet hoa By http://tranhba.com  b�t ��u nhi�m v� l�c ��ch ��i tho�i 
local strMain = { 
"<npc> ng��i nh�ng t� nam nh�c tr� tay �i�u tra , tr�n d�n c�a n�n bi�t m�t �t tin t�c . ", 
" ta nguy�n � ti�p nh�n nhi�m v� /#rewindProcess_001_Accept:doTaskEntity()", 
" cho ta suy ngh� l�i m�t ch�t �i /OnTaskExit" 
} 

-- script viet hoa By http://tranhba.com  ch�a ho�n th�nh nhi�m v� ��ch ��i tho�i 
local strMain_01 = { 
"<npc> ng��i v�n ch�a ho�n th�nh nhi�m v� �i ? xin/m�i b�t ch�c th�i gian �i #", 
" k�t th�c ��i tho�i /OnTaskExit", 
} 

-- script viet hoa By http://tranhba.com  �� ho�n th�nh nhi�m v� ��i tho�i 
local strMain_02 = { 
"<npc> ng��i �� ho�n th�nh qu� n�y nhi�m v� nga , ", 
" k�t th�c ��i tho�i /OnTaskExit", 
} 

if nCondition==1 then 
if GetRewindTaskState(PARID_TASK_REWIND_001)==4 then 
rewindProcess_001_Pay:doTaskEntity(); 
else 
SelectDescribe(strMain_01); 
end; 
return 1; 
elseif nCondition==3 or nCondition==2 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> ng��i c�n ch�a ho�n th�nh nhi�m v� n�y k�ch t�nh thi�n nga , kh�ng th� ti�n h�nh tu luy�n nhi�m v� . ", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
elseif nCondition==0 then 
SelectDescribe({"<npc> ng��i c�n kh�ng c� mang l�m nhi�m v� n�y ��ng b�n t�i nga #", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
elseif nCondition==5 then 
SelectDescribe({"<npc> tu luy�n nhi�m v� m�i ��ng b�n m�i ng�y ch� c� th� l�m ba l�n nga #", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
end; 

return 0; 

end, 

}); 


-- script viet hoa By http://tranhba.com  th� lang ch�t k�ch t�nh nhi�m v� ti�p nh�n nhi�m v� , nhi�m v� ti�n �� v� 1 
rewindProcess_001_Accept = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho tin t�c c�ng ph�t d� b��c ��u ti�n ��ch t��ng th��ng 
taskEntity = function(self, nCondition) 

if nCondition==1 then 
SetTask(ID_PARMASTER_TALK_01, 1); -- script viet hoa By http://tranhba.com  thi�t tr� ��i tho�i t�m th�i thay ��i l��ng 
Msg2Player("Ng��i ��n nh�n th� lang ch�t ��ch tu luy�n nhi�m v� #"); 
SetRewindTaskState(PARID_TASK_REWIND_001, 1); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 1); 

-- script viet hoa By http://tranhba.com  thanh tr� c�ng nhi�m v� c� li�n quan tr�ng th�i 
SetPartnerTask(PARID_REWIND_ITEM_001, 0); 
SetPartnerTask(PARID_REWIND_ITEM_002, 0); 
SetPartnerTask(PARID_REWIND_ITEM_003, 0); 
SetPartnerTask(PARID_REWIND_ITEM_004, 0); 
SetPartnerTask(PARID_REWIND_ITEM_005, 0); 

-- script viet hoa By http://tranhba.com  khi ph� h�p �i�u ki�n sau b�t ��u m�t l�n m�i tu luy�n nhi�m v� x� l� 
SetRewindStart(1); 

return 1; 
end; 
return 0; 
end, 

}); 

-- script viet hoa By http://tranhba.com  th� lang ch�t k�ch t�nh nhi�m v� ��ng nhi�m v� 
rewindProcess_001_Pay = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==4 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==nil then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

strMain = { 
"<npc> t�nh nh�c c�ng b� ��c phi�u g�y th��ng t�ch sao ? g�n ��y ta ph�i �i c�c n�i �i�u tra anh h�ng d�n tung t�ch ��ch cao th� r�i r�t ng� h�i , c�ng nhau kh�ng chi�n ��ch l�o huynh �� , l�i b� m�nh ng��i g�y th��ng t�ch , ai �� kh�ng n�i nh�ng th� n�y , n�i n�y l� ng��i n�n ���c t��ng th��ng , tr� ch�t th�i �i�m t�i t�m ta n�a �i . ta c�n an t�nh m�t ch�t . ", 
" nh�n l�y t��ng th��ng /#rewindProcess_001_PayAward:doTaskEntity()" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng��i c�n kh�ng c� mang l�m nhi�m v� n�y ��ng b�n t�i nga #", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  th� l�ng ch�t ph�t c�ng t��ng th��ng , nhi�m v� ti�n tr�nh v� 5 
rewindProcess_001_PayAward = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho tin t�c c�ng ph�t t��ng th��ng 
taskEntity = function(self, nCondition) 
Msg2Player("Ng��i �� ho�n th�nh th� lang ch�t ��ch tu luy�n nhi�m v� #"); 
SetRewindTaskState(PARID_TASK_REWIND_001, 5); 
SetTask(ID_PARMASTER_TALK_01, 0); -- script viet hoa By http://tranhba.com  thanh kh�ng c�ng th�n d�n ��i tho�i ��ch thay ��i l��ng 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 8); 

-- script viet hoa By http://tranhba.com  thi�t tr� h�m nay ho�n th�nh d�u hi�u 
SetRewindFinish(1); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  th� lang ch�t k�ch t�nh nhi�m v� h�y b� nhi�m v� 
rewindProcess_001_Cancel = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho h�y b� nhi�m v� �� k� 
taskEntity = function(self, nCondition) 
Say("Ng��i nh�t ��nh ph�i h�y b� th� lang ch�t ��ch k�ch t�nh nhi�m v� sao ? ",2, 
" ��ng v�y , ta qu� m�t m�i /#rewindProcess_001_Cancel_Confirm:doTaskEntity()", 
" �� cho ta suy ngh� th�m m�t ch�t /OnTaskExit"); 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  th� lang ch�t k�ch t�nh nhi�m v� h�y b� nhi�m v� x�c nh�n 
rewindProcess_001_Cancel_Confirm = inherit(CProcess, { 

-- script viet hoa By http://tranhba.com  cho h�y b� nhi�m v� �� k� 
taskEntity = function(self, nCondition) 
SetTask(ID_PARMASTER_TALK_01, 0); -- script viet hoa By http://tranhba.com  thanh kh�ng c�ng th�n d�n ��i tho�i ��ch thay ��i l��ng 
Msg2Player("Ng��i �� h�y b� th� lang ch�t ��ch k�ch t�nh nhi�m v� #"); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng t�nh nh�c s� th�i ch� ��i tho�i , nhi�m v� ti�n tri�n v� 2 
rewindProcess_001_02 = inherit(CProcess, { 

checkCondition = function(self) 
-- script viet hoa By http://tranhba.com  nhi�m v� ti�n tri�n v� 1 , h�n n�a �� t� th�n d�n ch� ��t ���c tin t�c , m�i c� th� th�ng qua 
if GetRewindTaskState(PARID_TASK_REWIND_001)==1 and GetTask(ID_PARMASTER_TALK_01)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> th� ch� , ng��i r�t c�c v�n ph�i t�i k�o . b�n ni s�ng s�m n�i l�n m�t qu� , qu� gi�ng nh� th�nh t��ng , l� c�t �i�m . c� l� c�i n�y n�m nh�c m�t trong ��ch linh s�n , c� th� mi�n tr� m�t cu�c huy�t quang tai ��ng . th� lang ch�t b�i m�t lo�i v� c�ng k� qu�i �m . h�n n�a tr�n tr�n kh�ng ch� m�t ng��i m�c b�nh n�ng m� ch�t . c�i lo�i �� �m l� do m�t lo�i r�ng r�m kim tuy�n x� ��a t�i , n� th��ng th��ng � n�a ��m ��ch th�i �i�m t� l��ng m�c th��ng leo xu�ng , len l�n �ang ng� c�n ng��i ��ch ��u , b�i v� t�c che ��y , cho n�n kh�ng nh�n ra d�u v�t . ��ng ti�c n� v� c�ng gi�o ho�t , b�n ni kh�ng c� c�ch n�o b�t ���c . lo�i n�y x� tuy�t kh�ng ph�i nam nh�c tr�n t�t c� , ta ho�i nghi l� c� ng��i ch� �i�m . cho n�n c�n t�m ���c c� th� �em { kim tuy�n x� } hu�n ra ngo�i { ��a ho�ng c� } , { ph� l� } c�ng { nhu�m gi�p c�y } . nh�ng th� �� n�y c�ng sinh v�i ph�a b�c ��ch s�n t�c ��ng . n�i �� hung hi�m v�n ph�n , m�t lo�i v� l�m cao th� �i v�o , c�ng c� �i v� tr� v� , ng��i nguy�n � �i kh�ng ? ", 
" ��ng v�y , ta �� chu�n b� xong /#rewindProcess_001_02_Accept:doTaskEntity()", 
" kh�ng , ta c�n c�n chu�n b� m�t ch�t /OnTaskExit" 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truy�n t�ng �i nhi�m v� b�n �� ��ng l� nh�n 
rewindProcess_001_02_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> s�n t�c b�n trong ��ng m�nh ph� t� t�p , � th�n b� s�n t�c tr�n ng��i c� d�u ��a ho�ng c� , t�c b� t� tr�n ng��i c�t gi�u ph� l� . ng��i c�n c�c l�y n�m m��i bu�i c�y . sau �� �i ��ng ph�a tr�n chia ra gi�t ch�t tr�ng ch�ng c�i ch�a kh�a ��ch s�n t�c T� tr�i ch� c�ng s�n t�c b�n ph�i tr�i ch� , l�y ���c hai c�y c�i ch�a kh�a sau �� �i b�n �� trung ��ng ��ch tr�n nh�c chi c�a , hoa khai kh�a ng��i m� ra n� . t� s�n t�c v��ng trong tay �o�t ��n duy nh�t m�t chi nhu�m gi�p c�t . nh� v�y m�i c� th� th�nh c�ng ch� bi�n th�nh d��c li�u , r� r�ng sao ? n�u nh� r� r�ng tho�i , b�n ni c�i n�y ��a ng��i l�n n�i . ", 
" r� r�ng , ��a ta �i cho /#rewindProcess_001_02_01:doTaskEntity()", 
" ta n�a chu�n b� m�t ch�t /OnTaskExit" 
} 
SetRewindTaskState(PARID_TASK_REWIND_001, 2); 
SelectDescribe(strMain); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 2); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truy�n �i nhi�m v� s� t�i �� ��ch qu� tr�nh 
rewindProcess_001_02_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
NewWorld(514, 1552, 3308); 
SetFightState(1); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t th�n b� s�n t�c ��ch x� l� qu� tr�nh 
rewindProcess_001_02_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  c� 1/2 ��ch x�c su�t l�y ���c ��a ho�ng c� , v� th��ng h�n 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_001); 

if nCondition==1 and nItemNum<50 then 

SetPartnerTask(PARID_REWIND_ITEM_001, 
								 nItemNum + 1);

			Msg2Player("��õ���һ��ػƲݣ������ڹ��� "..(nItemNum + 1).." �꣡");

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(1, 3); 

AddOwnExp(CountDoubleMode(1000)); 
AddPartnerExp(CountDoubleMode(200)); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t t�c b� t� ��ch x� l� qu� tr�nh 
rewindProcess_001_02_03 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  c� 1/2 ��ch x�c su�t l�y ���c ph� l� , v� th��ng h�n 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_002); 

if nCondition==1 and nItemNum<50 then 

SetPartnerTask(PARID_REWIND_ITEM_002, 
								 nItemNum + 1);

			Msg2Player("��õ���һ���Ҷ�������ڹ��� "..(nItemNum + 1).." ���Ҷ��");

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(1, 4); 

AddOwnExp(CountDoubleMode(1000)); 
AddPartnerExp(CountDoubleMode(200)); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t b�n ph�i tr�i ch� l�y ���c m�t c�i ch�a kh�a 
rewindProcess_001_02_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  l�y ���c m�t c�i ch�a kh�a 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_003); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_003, 
								 nItemNum + 1);

Msg2Player("Ng��i l�y ���c m�t thanh b�n ph�i h�nh tr�ng khuy�t tr�ng ��ch c�i ch�a kh�a #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 5); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t T� tr�i ch� l�y ���c m�t c�i ch�a kh�a 
rewindProcess_001_02_05 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  l�y ���c m�t c�i ch�a kh�a 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_005, 
								 nItemNum + 1);

Msg2Player("Ng��i l�y ���c m�t thanh b�n tr�i h�nh tr�ng khuy�t tr�ng ��ch c�i ch�a kh�a #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 5); 

return 1; 
end; 
return 0; 
end 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t s�n t�c v��ng l�y ���c nhu�m gi�p c�t 
rewindProcess_001_02_KillBoss = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_001)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

-- script viet hoa By http://tranhba.com  l�y ���c nhu�m gi�p c�t 
taskEntity = function(self, nCondition) 

local nItemNum = GetPartnerTask(PARID_REWIND_ITEM_004); 

if nCondition==1 then 

if nItemNum>=1 then return 0; end; 

SetPartnerTask(PARID_REWIND_ITEM_004, 
								 nItemNum + 1);

Msg2Player("Ng��i l�y ���c m�t c�y nhu�m gi�p c�t #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 6); 

return 1; 
end; 
return 0; 
end 

}); 



-- script viet hoa By http://tranhba.com  c�ng m� kh�a ng��i m�t ��ch ��i tho�i 
rewindProcess_001_02_UnLock = inherit(CProcess, { 
checkCondition = function(self) 

local nKey_1 = GetPartnerTask(PARID_REWIND_ITEM_003); 
local nKey_2 = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nKey_1==nil or nKey_2==nil then return end; 

if nKey_1>=1 and nKey_2>=1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> tr�n tay ng��i c�m ��ch c�i ch�a kh�a ch�nh l� th�c l�c ng��i ��ch b�ng ch�ng , ta ��y s� ��a ng��i �i v�o ti�p nh�n khi�u chi�n �i #", 
" h�o , xin ��a ta v�o �i th�i /#rewindProcess_001_02_Inside:doTaskEntity()", 
" ta n�a chu�n b� m�t ch�t /OnTaskExit" 
}); 
else 
SelectDescribe({"<npc> ch� ng��i t� ch�ng hai v� tr�i ch� trong b�t ���c hai n�a c�i ch�a kh�a sau t�i t�m ta n�a �i #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  truy�n t�ng �i v�o qu� tr�nh 
rewindProcess_001_02_Inside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1816,3227); 
SetFightState(1); 
return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  c�ng m� kh�a ng��i hai ��ch ��i tho�i 
rewindProcess_001_02_SendMan = inherit(CProcess, { 

checkCondition = function(self) 
return 1; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> ng��i b�y gi� mu�n �i ra ngo�i li�u sao ? ", 
" xin ��a ta �i ra ngo�i �i /#rewindProcess_001_02_Outside:doTaskEntity()", 
" ch� m�t ch�t /OnTaskExit", 
}); 
end; 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  truy�n t�ng �i ra ngo�i ��ch qu� tr�nh 
rewindProcess_001_02_Outside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1794,3193); 
SetFightState(0); 
return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  tr� l�i c�ng t�nh nh�c s� th�i ch� ��i tho�i 
rewindProcess_001_02_06 = inherit(CProcess, { 
checkCondition = function(self) 

local nTaskState = GetRewindTaskState(PARID_TASK_REWIND_001); 
local nItem_01 = GetPartnerTask(PARID_REWIND_ITEM_001); 
local nItem_02 = GetPartnerTask(PARID_REWIND_ITEM_002); 
local nItem_03 = GetPartnerTask(PARID_REWIND_ITEM_003); 
local nItem_04 = GetPartnerTask(PARID_REWIND_ITEM_004); 
local nItem_05 = GetPartnerTask(PARID_REWIND_ITEM_005); 

if nTaskState==2 and nItem_01>=50 and nItem_02>=50 and nItem_04>=1 then 
return 1; 
elseif nTaskState==2 then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<npc> A di �� ph�t , th� ch� chuy�n n�y huy�t quang doanh con m�t , li�u t�i l� b�i v� li�u b�n ni l�i/v�a nhi�u t�o h� m�y phen s�t nghi�t , t�i qu� t�i qu� . nh� v�y lo�n th� , d�n b�t li�u sanh , n�u l� c� th� l�y s�t ��nh th� �o�n c�u d�n v�i n��c l�a , s� �� cho b�n ni tr��c xu�ng ch�n t�ng a t� ��a ng�c �i . d��c li�u ��u �� t� b� , th� ch� th� { qu� th��ng ch�t th�i gian tr� l�i } , b�n ni tr��c chu�n b� hu�n ra r�n ��c chuy�n c�a t�nh li�u . ", 
" k�t th�c ��i tho�i /#rewindProcess_001_02_07:doTaskEntity()" 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
rewindProcess_001_02_Accept:doTaskEntity(); 
return 1; 
end; 
return 0; 
end 

}); 

-- script viet hoa By http://tranhba.com  b�t ��u n�m ph�t thay ��i l��ng ch�a ��ng , nhi�m v� ti�n tri�n v� 3 
rewindProcess_001_02_07 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetPartnerTask(PARID_REWIND_WAITTIME, GetGameTime()); 
SetRewindTaskState(PARID_TASK_REWIND_001, 3); 
return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  n�m ph�t sau tr� v� ��i tho�i , n�u nh� ph� h�p �i�u ki�n l� nhi�m v� ti�n tri�n v� 4 
rewindProcess_001_02_08 = inherit(CProcess, { 

checkCondition = function(self) 
-- script viet hoa By http://tranhba.com  ��c ch�ng tr�i qua 5 ph�t , c�ng kh�ng ph�i l� ch�nh x�c h� th�ng th�i gian 
if GetRewindTaskState(PARID_TASK_REWIND_001)==3 and GetGameTime() - GetPartnerTask(PARID_REWIND_WAITTIME) >= 350 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_001)==3 then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
strMain = { 
"<color=green> t�nh nh�c s� th�i <color># qu� nhi�n , qu� nhi�n l� con r�n kia , ��nh ��u c� ng�n l�a ��ch l�c �n . ch� c� Mi�u C��ng �� c� �m kh� #", 
" m�i v�a m�t qu� m�u b�c tr�ng th�p phi�u xoay tr�n ��nh t�i , t�c �� nhanh ��n gi�n b�t kh� t� ngh� . b�y gi� t�nh nh�c s� th�i ch� ph�i �� b� ��nh th�u , c�n b�n kh�ng c�ch n�o n�i chuy�n . ng��i v� tr��c { long n�m } ch� n�p nhi�m v� �i , tr� ch�t h�i l�i n�ng . " 
} 

if nCondition==1 then 
SetRewindTaskState(PARID_TASK_REWIND_001, 4); 
TalkEx("", strMain); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(1, 7); 

return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> n�u ��c lo�i chuy�n nh� v�y tu ph�i v�n ph�n c�n th�n , th� ch� ch� v�i , c�n l� ch� ch�c l�t �i #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 

}); 
