
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - kh�ng x� nh�n b� m�t 
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
IncludeLib("PARTNER") 

-- script viet hoa By http://tranhba.com  ��ng b�n k�ch t�nh nhi�m v� ��u v�n ki�n 
Include ("\\script\\task\\partner\\task_head.lua");

ID_PARTASK_PASSED = 1262; 

BIT_PASSED_001 = 1; 
BIT_PASSED_002 = 2; 
BIT_PASSED_003 = 3; 

BIT_PASSED_STATE = 5; -- script viet hoa By http://tranhba.com  ghi ch�p c� hay kh�ng m� ra tin/th� khi�n cho nhi�m v� giam kh�ng 

-- script viet hoa By http://tranhba.com  b�t ��u nhi�m v� l�c ��ch ��i tho�i 
taskProcess_002_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 

-- script viet hoa By http://tranhba.com  ki�m tra nh� ch�i c�ng ��ng b�n ��ch c�p b�c 
if GetLevel()<80 or PARTNER_GetLevel(partnerindex)<20 then return 4; end; 

if GetMasterTaskState(PARID_TASK_MASTER_002)==nil then -- script viet hoa By http://tranhba.com  kh�ng c� mang ��ng b�n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==0 then -- script viet hoa By http://tranhba.com  l�n ��u ti�n b�t ��u l�m 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)>=1 and GetMasterTaskState(PARID_TASK_MASTER_002)<=5 then -- script viet hoa By http://tranhba.com  �� b�t ��u l�m 
return 2; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)>=6 then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 

-- script viet hoa By http://tranhba.com  b�t ��u nhi�m v� l�c ��ch ��i tho�i 
local strMain = { 
"<npc> tr��c tr�n t� nam nh�c tr�n t�nh nh�c s� th�i b� th��ng tr�i qua �i�u l� �� t� t� kh� h�n , n�ng s� b�t l�i ��ch con r�n kia tr�n ��u c� ng�n l�a d�u hi�u , thi�n h� nhi�u nh� v�y lo�i d� x� , duy ch� Mi�u C��ng kh�ng x� nh�n m�i c� th� nu�i ra m�t ��nh ph� tr� ng�n l�a v�n ��ch x� v��ng . ng��i h�n �i { ��i L� } nh�n m�t ch�t , c� l� s� c� �i�u ph�t hi�n . nghe n�i { th�nh ��i L� b�n trong ��ch tr� b�c s� } ��i v�i nh�ng th� n�y kh�ng x� ch� ��c ��ch ng��i r�t l� hi�u r� , ng��i c� th� t�m h�n gi�p m�t tay �i�u tra , b�t qu� b�y gi� �n n�p l�n ��m kia th� l�c l�m vi�c �c ��c , ch�nh ng��i ph�i nhi�u th�m c�n th�n . ", 
" ti�p nh�n nhi�m v� /#taskProcess_002_Accept:doTaskEntity()", 
" ta suy ngh� th�m m�t ch�t /OnTaskExit", 
} 

local strMain_01 = { 
"<npc> tr��c tr�n t� nam nh�c tr�n t�nh nh�c s� th�i b� th��ng tr�i qua �i�u l� �� t� t� kh� h�n , n�ng s� b�t l�i ��ch con r�n kia tr�n ��u c� ng�n l�a d�u hi�u , thi�n h� nhi�u nh� v�y lo�i d� x� , duy ch� Mi�u C��ng kh�ng x� nh�n m�i c� th� nu�i ra m�t ��nh ph� tr� ng�n l�a v�n ��ch x� v��ng . ng��i h�n �i { ��i L� } nh�n m�t ch�t , c� l� s� c� �i�u ph�t hi�n . nghe n�i { th�nh ��i L� b�n trong ��ch tr� b�c s� } ��i v�i nh�ng th� n�y kh�ng x� ch� ��c ��ch ng��i r�t l� hi�u r� , ng��i c� th� t�m h�n gi�p m�t tay �i�u tra , b�t qu� b�y gi� �n n�p l�n ��m kia th� l�c l�m vi�c �c ��c , ch�nh ng��i ph�i nhi�u th�m c�n th�n . ", 
" ta �� ho�n th�nh nhi�m v� /#taskProcess_002_Pay:doTaskEntity()", 
" ta c�n ch�a ho�n th�nh /OnTaskExit" 
} 

local strMain_02 = { 
"<npc> ng��i � ��y l�n nhi�m v� trung bi�u hi�n r�t t�t , kh� c�c ng��i #", 
" k�t th�c ��i tho�i /OnTaskExit", 
} 

if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
elseif nCondition==2 then 
SelectDescribe(strMain_01); 
return 1; 
elseif nCondition==3 then 
SelectDescribe(strMain_02); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhi�m v� l�n n�y c�n c�p b�c c�a ng��i � {80 c�p } tr� l�n , h�n n�a ��ng b�n c�a ng��i c�p b�c mu�n � {20 c�p } tr� l�n #", 
" k�t th�c ��i tho�i /OnTaskExit", 
}); 
return 1; 
elseif nCondition==0 then 
SelectDescribe({"<npc> ng��i c�n kh�ng c� cho g�i ra ��ng b�n , ta kh�ng c�ch n�o cho ng��i ch� ��nh nhi�m v� #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 

end, 

}); 

-- script viet hoa By http://tranhba.com  ti�p nh�n nhi�m v� l�c ��ch x� l� , nhi�m v� ti�n tri�n v� 1 
taskProcess_002_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 1); 
Msg2Player("Ng��i nh�n ���c kh�ng x� nh�n b� m�t ��ch ��ng b�n k�ch t�nh nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayMasterAward(2, 1); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ��ng nhi�m v� l�c ��ch x� l� 
taskProcess_002_Pay = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)>=5 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==nil then 
return 2; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({ 
"<npc> �/d� , n�u l� nh� v�y , nh� v�y ng��i t�m th�i ngh� ng�i �i . l�m kh� li�u c��i �� , �t n�m nh� v�y li�u , h�n c�n nh� nh�ng th� kia chuy�n nh� . nga , c��i �� l� ng��i � ��y ��i L� nh�n th�y v� kia tr� b�c s� , h�n nguy�n lai l� V�n Qu� m�t d�y l�m ng��i ta nghe ti�ng t�ng ��m ��ch ��c h�nh ��o t�c , t�n c� th� c�m t�i ch� ti�u nhi ��m kh�c , a a . ", 
" nh�n l�y t��ng th��ng /#taskProcess_002_PayAward:doTaskEntity()" 
}); 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng��i c�n kh�ng c� cho g�i ra l�m nhi�m v� n�y ��ng b�n nga #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
else 
SelectDescribe({ 
"<npc> ng��i c�n ch�a ho�n th�nh ta ��a cho ng��i nhi�m v� �i ? ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  nh�n l�y nhi�m v� t��ng th��ng , nhi�m v� ti�n tri�n v� 6 
taskProcess_002_PayAward = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 6); 
Msg2Player("Ng��i �� ho�n th�nh kh�ng x� nh�n b� m�t ��ch nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayMasterAward(2, 5); 

return 1; 
end; 
}); 


-- script viet hoa By http://tranhba.com  c�ng tr� b�c s� ��ch ��i tho�i 
taskProcess_002_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local strMain = { 
"<npc> ng�i l� long Ng� gia ph�i t�i sao ? d�/� , ch�ng ta ��i L� mi�u trong t�c , c� ch�t gia t�c qu� th�t c� nu�i x� ��ch truy�n th�ng . b�t qu� tr�n tr�n c� ng�n l�a d�u hi�u ��ch ng��c l�i kh�ng c� nghe n�i qua , �� l� , �� l� t� t�ng quy c� trong c�m ch� ��ch b� l�a chi m�t a . l�n tr��c c� ng�n l�a v�n r�n ��c hi�n th�n ��i L� ��ch th�i �i�m , trong th�nh n�i l�n tr�ng tr�m n�m kh� g�p ��ch ki�n h�n , l�n �� ch�t bao nhi�u ng��i a . h� , coi ch�ng tai v�ch m�ch r�ng , ch�ng ta trong nh� n�i . ".. 
" v�t n�y ��c r�t , t� r�t , b�n h� mi�u t�c nh�n m�nh l� gan t� tr��c ��n gi� li�n ��i , c�ng kh�ng d�m n�i ��ch . h�m nay n�u l� Ng� gia ��ch ph�n ph� , ta kh�ng th� kh�ng l�m . n�m �� l�o nh�n gia �ng ta �� c�u c� nh� c�a ta t�nh m�ng . c�n ph�i l� l�m , t�i h� c�i m�ng n�y c�ng li�n ��p ti�n v�o . ta gi�p ng��i tra kh�ng c� v�n �� , b�t qu� ta n�i n�y vi�t { ba phong th� } , theo th� t� l� cho ta v� con c�ng qu� qu�n ��ch cha m� gi� . ch� c�n b�n h� b�nh an , ta c�ng li�n kh�ng c� canh c�nh . ng��i ch� c�n ��n { c�c th�nh ph� } t�m { d�ch tr�m quan vi�n } , th�ng qua ��a ��n t�n nhi�m v� , chia ra t� { phong chi k� } , { mi�u s�n th�n } , { thi�n b�o kho } c�i n�y ba ch� ��a ph��ng �em tin/th� ��a ��t nh� ta ti�u s� t�i ��ch d�ch quan ch� , tr� v� n�a t�m ta l� t�t r�i . ng��i �i �i , ta c�n c�n l�m ch�t chu�n b� , xem ra nh�ng n�m n�y � ��i L� ��nh r�t xu�ng ��ch quan h� c�ng ph�i d�ng t�i l�c . ", 
" k�t th�c ��i tho�i /#taskProcess_002_03:doTaskEntity()", 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng tr� b�c s� ��i tho�i sau ��ch thay ��i l��ng x� l� , nhi�m v� ti�n tri�n v� 2 
taskProcess_002_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 2); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayMasterAward(2, 2); 

end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng d�ch quan ��ch ��i tho�i 
taskProcess_002_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==2 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==3 then 
return 2 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==4 then 
return 3 
elseif GetMasterTaskState(PARID_TASK_MASTER_002)==nil then 
return 4; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nCondition==1 then 
SelectDescribe({"<npc> nga , nguy�n lai l� long n�m tay c�a h� . nh�ng n�m n�y h�n gi�p �� tri�u ��nh ch�ng c� ngo�i ��ch , l� l�p c�ng l�n ng��i . ���c r�i , l�p t�c t� ta ch� n�y �em tin/th� chia ra t� phong chi k� , mi�u s�n th�n c�ng thi�n b�o kho c�i n�y ba ch� b�n �� ��a qua . ", 
" k�t th�c ��i tho�i /#taskProcess_002_05:doTaskEntity()" 
}); 
return 1; 
elseif nCondition==2 then 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
SelectDescribe({"<npc> d�/� , ng��i �� �em tr� b�c s� cho ng��i nh� ��ch ba phong th� c�ng ��a ��n , l�p t�c tr� l�i t�m h�n �i . tr�n tr�ng . ", 
" k�t th�c ��i tho�i /#taskProcess_002_10:doTaskEntity()" 
}); 
else 
SelectDescribe({"<npc> ng��i c�n kh�ng c� �em kia ba phong th� ��a ��n sao ? c� g�ng l�n �i #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
end; 

return 1; 
elseif nCondition==3 then 
SelectDescribe({"<npc> d�/� , ng��i �� �em tr� b�c s� cho ng��i nh� ��ch ba phong th� c�ng ��a ��n , l�p t�c tr� l�i t�m h�n �i . tr�n tr�ng . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> t�a h� ng��i c�n kh�ng c� cho g�i ra ��ng b�n nga #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 

}); 

-- script viet hoa By http://tranhba.com  c�ng d�ch quan ��i tho�i sau khi k�t th�c , nhi�m v� ti�n tri�n v� 3 
taskProcess_002_05 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 3); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i , b�t ��u giam kh�ng tin/th� khi�n cho nhi�m v� ho�n th�nh t�nh hu�ng 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE, 1) 
); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  ��a ho�n tin/th� c�ng d�ch quan ��ch ��i tho�i k�t th�c , s�a ��i nhi�m v� ti�n tr�nh v� #4 
taskProcess_002_10 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 4); 
Msg2Player("Ng��i �� ho�n th�nh ��a tin nhi�m v� , c� th� tr� v� �i t�m tr� b�c s� li�u #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayMasterAward(2, 3); 

-- script viet hoa By http://tranhba.com  thi�t tr� tr�ng th�i , k�t th�c giam kh�ng tin/th� khi�n cho nhi�m v� ho�n th�nh t�nh hu�ng 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE, 0) 
); 

-- script viet hoa By http://tranhba.com  thanh kh�ng tr��c ��ch nhi�m v� tr�ng th�i 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001, 0) 
); 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002, 0) 
); 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003, 0) 
); 
return 1; 
end, 
}); 



-- script viet hoa By http://tranhba.com  phong chi k� nhi�m v� ho�n th�nh 
taskProcess_002_06 = inherit(CProcess, { 

checkCondition = function(self) 

local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nCondition==1 then 
Msg2Player("Ng��i �� ho�n th�nh tr� b�c s� ��a cho ng��i phong chi k� ��a tin nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  thi�t tr� con s� v� 1 , b�y t� �� ho�n th�nh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001, 1) 
); 
SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng��i �� ho�n th�nh t�t c� tin/th� khi�n cho nhi�m v� , xin/m�i cho g�i ra ��ng b�n h��ng ��i L� ��ch d�ch quan ��ng nhi�m v� �i #<color>"); 
end; 

end; 
end, 

}); 

-- script viet hoa By http://tranhba.com  mi�u s�n th�n nhi�m v� ho�n th�nh 
taskProcess_002_07 = inherit(CProcess, { 

checkCondition = function(self) 
local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
Msg2Player("Ng��i �� ho�n th�nh tr� b�c s� ��a cho ng��i mi�u s�n th�n ��a tin nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  thi�t tr� con s� v� 1 , b�y t� �� ho�n th�nh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002, 1) 
); 
SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng��i �� ho�n th�nh t�t c� tin/th� khi�n cho nhi�m v� , xin/m�i cho g�i ra ��ng b�n h��ng ��i L� ��ch d�ch quan ��ng nhi�m v� �i #<color>"); 
end; 

end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  thi�n b�o kho nhi�m v� ho�n th�nh 
taskProcess_002_08 = inherit(CProcess, { 

checkCondition = function(self) 

local nState = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_STATE); 
local nBit = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nState==1 and nBit==0 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
Msg2Player("Ng��i �� ho�n th�nh tr� b�c s� ��a cho ng��i thi�n b�o kho ��a tin nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  thi�t tr� con s� v� 1 , b�y t� �� ho�n th�nh 
SetTask(ID_PARTASK_PASSED, 
SetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003, 1) 
); 

SyncTaskValue(ID_PARTASK_PASSED); 

local nPassed_1 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_001); 
local nPassed_2 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_002); 
local nPassed_3 = GetBit(GetTask(ID_PARTASK_PASSED), BIT_PASSED_003); 

if nPassed_1>=1 and nPassed_2>=1 and nPassed_3>=1 then 
Msg2Player("<color=yellow> ng��i �� ho�n th�nh t�t c� tin/th� khi�n cho nhi�m v� , xin/m�i cho g�i ra ��ng b�n h��ng ��i L� ��ch d�ch quan ��ng nhi�m v� �i #<color>"); 
end; 

end; 
end, 

}); 

-- script viet hoa By http://tranhba.com  tr� l�i tr� b�c s� ch� ��ch ��i tho�i 
taskProcess_002_11 = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_002)==4 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local strMain = { 
"<npc> ai , ng��i tr� l�i k�o . ho khan m�t c�i , c�i lo�i �� r�n ��c l� th�nh nam Cao gia tr�n Cao th� nh�t t�c nu�i . ta m�y ng�y tr��c ��y li�u ch�t �i t�m hi�u , ph�t hi�n n�i �� v�n l� d�ng d�p t��i t�t thanh th�y ��ch r�ng tr�c ��u �� kh� h�c c�ng ng�c . mao tr�c sinh m�nh l�c nh�t ��ng ng�nh , c�ng kh�ng ch�ng c� n�i r�n ��c , xem ra b�n h� s�c d��ng ��ch s� l��ng to l�n �� v��t qua t��ng t��ng c�a ta . ta t� m�t ng��i b�n n�i �� bi�t ���c , tr��c tr�n t� Cao gia mua �i b� l�a chi m�t ng��i c�a c�ng tri�u ��nh c� r�t l�n qua c�t . tri�u ��nh d� nhi�n s� kh�ng h�i m�nh d�n ch�ng , nh� v�y c�i n�y n�p � trong tri�u ��nh ��ch th� l�c c� t�m chi kh�ng th� d� ���c li�n c� th� th�y ra ��u m�i . c� th� l� ng��i n�o mua �i t�i h� kh�ng c� tra ���c , b�t qu� c� �i�u n�y ��u m�i , tin t��ng l�y Ng� gia tay c�a �o�n , ��nh c� th� tra ���c �i ra . ng��i �i mau , �i mau # Cao th� �� bi�t c� ng��i �ang �i�u tra chuy�n n�y , trong th�nh g�n nh�t nhi�u h�n r�t nhi�u trang ph�c k� d� ng��i , n�u kh�ng th�t s�m ra kh�i th�nh , s� r�ng g�p nguy hi�m . t�i h�m nay c�a th�nh ��ng tr��c ng��i nh�t ��nh ph�i r�i �i # g�p ���c Ng� gia , h�t th�y li�n an to�n . ", 
" k�t th�c ��i tho�i /#taskProcess_002_12:doTaskEntity()", 
} 
if nCondition==1 then 
SelectDescribe(strMain); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng tr� b�c s� ��ch ��i tho�i k�t th�c , s�a ��i nhi�m v� ti�n tr�nh v� #5 
taskProcess_002_12 = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_002, 5); 
Msg2Player("Ng��i �� ho�n th�nh tr� b�c s� ��ch nhi�m v� , ng��i c� th� tr� v� �i g�p long n�m #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayMasterAward(2, 4); 

return 1; 
end, 
}); 
