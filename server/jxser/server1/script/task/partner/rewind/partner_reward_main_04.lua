
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - d� t�c v� s� 
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


PARID_REWIND04_BOSS_01 = 43; -- script viet hoa By http://tranhba.com  l��ng m�o m�o 
PARID_REWIND04_BOSS_02 = 44; -- script viet hoa By http://tranhba.com  l� tinh 
PARID_REWIND04_BOSS_03 = 45; -- script viet hoa By http://tranhba.com  b�i c�ng t� 
PARID_REWIND04_BOSS_04 = 46; -- script viet hoa By http://tranhba.com  ���ng c� 

-- script viet hoa By http://tranhba.com  b�t ��u nhi�m v� l�c ��ch ��i tho�i 
rewindProcess_004_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 

-- script viet hoa By http://tranhba.com  ki�m tra nh� ch�i c�ng ��ng b�n ��ch c�p b�c 
if GetLevel()<100 or PARTNER_GetLevel(partnerindex)<40 then return 4; end; 

if GetRewindTaskState(PARID_TASK_REWIND_004)==nil then -- script viet hoa By http://tranhba.com  kh�ng c� mang ��ng b�n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_004)<=2 then -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh k�ch t�nh thi�n ��ch nhi�m v� 
return 5; 
elseif CheckRewindState(4)~=1 then -- script viet hoa By http://tranhba.com  kh�ng ph� h�p nh�t k� ph�n �o�n �i�u ki�n 
return 6; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)==0 then -- script viet hoa By http://tranhba.com  l�n ��u ti�n b�t ��u l�m 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)>=1 and GetRewindTaskState(PARID_TASK_REWIND_004)<3 then -- script viet hoa By http://tranhba.com  �� b�t ��u l�m 
return 2; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)>=3 then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 or nCondition==3 then 
SelectDescribe({"<npc>{ tr��c khi an } ��ch { ch�u b�u th��ng nh�n �inh l�i } ng�y g�n ��y ��a t�i m�t phong th� . trong th� n�i vi�n kia t��ng � th� lang c�nh tay b�n trong ��ch b�o th�ch gi� tr� li�n th�nh , ch�nh l� ch�n ch�nh v�o l�a kh�ng thay ��i ��ch hi�m th� tr�n b�o thi�n tr� ng�c . h�n n�m �� ��t ���c ng�c ph�i sau , l�y tr�ng kim m�i t�i tr� v� t�c t��ng ng��i trong nh�t ��ng m�t ��ch cao th� �i�u ch� , t�n su�t m�t n�m n�y m�i m�i ra hai vi�n quang nhu�n th� th�u ��ch b�o ch�u . c�i n�y hai vi�n ng�c ch�u , ��u l� b� m�t v� h� V��ng th��ng nh�n mua �i , nghe n�i h�n �n c� � m�t ch� g�i B�ch hoa c�c ��ch ��a ph��ng . ch� �� ta l� nghe n�i qua ��ch , c� m�n �� tr�i qua n�i �� , n�i trong c�c ki�m kh� x�ng th�ng ti�u h�n , t��ng v�n bao ph� , t�t nhi�n c� cao nh�n � . ch� l� nh� v�y chuy�n c�a t�nh ph�t sinh sau n�y , ch� �� c�ng l� v� th�n b� . ta �o�n ch�ng ng��i chuy�n n�y t�t �em c� �i�u thu ho�ch , b�t qu� c�n c�n chu�n b� s�n s�ng a . ��n c�c trong t�m ���c c�i �� g�i v��ng m�t ��ch th��ng nh�n . ", 
" ti�p nh�n nhi�m v� /#rewindProcess_004_Accept:doTaskEntity()", 
" ta suy ngh� th�m m�t ch�t /OnTaskExit", 
}); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng��i ho�n th�nh ta ��a cho ng��i nhi�m v� sao ? ", 
" xin ��a ta �i B�ch hoa c�c �i /#rewindProcess_004_GotoWorld:doTaskEntity()", 
" ho�n th�nh nhi�m v� /#rewindProcess_004_Finish:doTaskEntity()", 
" ta c�n ch�a ho�n th�nh /OnTaskExit" 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> nhi�m v� l�n n�y c�n c�p b�c c�a ng��i � {100 c�p } tr� l�n , h�n n�a ��ng b�n c�a ng��i c�p b�c mu�n � {40 c�p } tr� l�n #", 
" k�t th�c ��i tho�i /OnTaskExit", 
}); 
return 1; 
elseif nCondition==5 then 
SelectDescribe({"<npc> ng��i c�n ch�a ho�n th�nh nhi�m v� n�y k�ch t�nh thi�n nga , kh�ng th� ti�n h�nh tu luy�n nhi�m v� . ", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
elseif nCondition==6 then 
SelectDescribe({"<npc> tu luy�n nhi�m v� m�i ��ng b�n m�i ng�y ch� c� th� l�m ba l�n nga #", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
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


-- script viet hoa By http://tranhba.com  ti�p nh�n nhi�m v� , nhi�m v� ti�n tr�nh v� 1 
rewindProcess_004_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng��i b�y gi� mu�n �i B�ch hoa c�c sao ? ta c� th� ��a ng��i m�t th�nh . ", 
" ��ng v�y , l�m phi�n ng��i /#rewindProcess_004_GotoWorld:doTaskEntity()", 
" �� cho ta n�a chu�n b� m�t ch�t �i /OnTaskExit"}); 
Msg2Player("Ng��i nh�n ���c d� t�c v� s� ��ch ��ng b�n tu luy�n nhi�m v� #"); 
SetRewindTaskState(PARID_TASK_REWIND_004, 1); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 1); 

-- script viet hoa By http://tranhba.com  khi ph� h�p �i�u ki�n sau b�t ��u m�t l�n m�i tu luy�n nhi�m v� x� l� 
SetRewindStart(4); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  truy�n t�ng ��n B�ch hoa c�c ��ch qu� tr�nh 
rewindProcess_004_GotoWorld = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
NewWorld(513,1500,3158); 
SetFightState(1); 
end, 

}); 


-- script viet hoa By http://tranhba.com  ho�n th�nh nhi�m v� , nhi�m v� ti�n tr�nh v� 3 
rewindProcess_004_Finish = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
SelectDescribe({"<npc> h�o d�ng ��ch # ng��i th�t l�y ���c anh h�ng thi�n h� thi�p . nh� th� th� nh�t , ch�ng ta li�n c� th� tham gia anh h�ng thi�n h� s� , ch�n ch�nh v�ch tr�n ng�y ho�ng long kh� chi m� . ch� ��i li�u l�u nh� v�y , th��ng nhi�u ng��i nh� v�y ��ch t�nh m�ng , chung quy l� v� li�u c�n qu�c gia m�t d�p y�n . � c�i lo�n th� n�y trong , m�i ng��i l�u ��ch m�u c�ng qu� nhi�u qu� nhi�u , hy v�ng ��n l�c �� l� m�t k�t th�c �i , c� th� m� �� nam s�n , �ao th��ng nh�p kho , ta long n�m c�ng ��n t�c b�n ngo�i t�m m�t m�nh c� tr�ng , c�ng con ng�a l�m b�n , nh�n lam lam ��ch b�u tr�i b�ch b�ch ��ch ��m m�y , c� nh� v�y n�y t�n sinh . b�y gi� c�ch Anh h�ng h�i c�n c� m�t �o�n th�i gian , ng��i c� th� tr� v� �i tr��c l�m ch�t ngh� ng�i v� h�i ph�c li�u . kh�ng qu� m�y th�ng , ta t� nhi�n s� t�m th�m ng��i , b�o tr�ng #", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
SetRewindTaskState(PARID_TASK_REWIND_004, 3); 

Msg2Player("Ng��i �� ho�n th�nh d� t�c v� s� ��ch tu luy�n nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 7); 

-- script viet hoa By http://tranhba.com  thi�t tr� h�m nay ho�n th�nh d�u hi�u 
SetRewindFinish(4); 

-- script viet hoa By http://tranhba.com  thanh tr� c�ng nhi�m v� c� li�n quan tr�ng th�i 
SetPartnerTask(PARID_REWIND04_BOSS_01, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_02, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_03, 0); 
SetPartnerTask(PARID_REWIND04_BOSS_04, 0); 

return 1; 
else 
SelectDescribe({"<npc> ta giao cho ng��i nhi�m v� ng��i c�n ch�a ho�n th�nh nga , c� g�ng l�n �i . ", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t l��ng m�o m�o ��ch x� l� 
rewindProcess_004_Boss_01 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_01, 1); 
Msg2Player("Ng��i �� gi�t ch�t l��ng m�o m�o #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 2); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t l� tinh ��ch x� l� 
rewindProcess_004_Boss_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_02, 1); 
Msg2Player("Ng��i �� gi�t ch�t l� tinh #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 3); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t b�i c�ng t� ��ch x� l� 
rewindProcess_004_Boss_03 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_03, 1); 
Msg2Player("Ng��i �� gi�t ch�t b�i c�ng t� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 4); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t ���ng c� ��ch x� l� 
rewindProcess_004_Boss_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_04, 1); 
Msg2Player("Ng��i �� gi�t ch�t ���ng c� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 5); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t l�u khi�u kho�t ��ch x� l� 
rewindProcess_004_Boss_05 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPartnerTask(PARID_REWIND04_BOSS_04, 1); 
Msg2Player("Ng��i �� gi�t ch�t l�u khi�u kho�t #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 8); 

return 1; 
end; 
end, 
}); 


-- script viet hoa By http://tranhba.com  c�ng v��ng m�t ��ch ��i tho�i , n�u nh� �i�u ki�n ph� h�p l� nhi�m v� ti�n tr�nh v� 2 
rewindProcess_004_02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 

local nNum_1 = GetPartnerTask(PARID_REWIND04_BOSS_01); 
local nNum_2 = GetPartnerTask(PARID_REWIND04_BOSS_02); 
local nNum_3 = GetPartnerTask(PARID_REWIND04_BOSS_03); 
local nNum_4 = GetPartnerTask(PARID_REWIND04_BOSS_04); 

if nNum_1==1 and nNum_2==1 and nNum_3==1 and nNum_4==1 and GetRewindTaskState(PARID_TASK_REWIND_004)==1 then 
SelectDescribe({"<npc> c�m �n ng��i thay ta gi�i tr� nguy hi�m . n�u l� Ng� gia ng��i c�a , ta ch� n�y c� m�t d�ng �� ��ng b�y cho ng��i . th� lang l� c�a ta b�n t�t , ban ��u h�n d�n d� ta thay m�t v� b�o qu�n , h�m nay ng��i kh�c c�ng �� ch�t , t�m thi�p n�y ta l�u chi v� d�ng , ng��c l�i c� ��i phi�n to�i . ng��i li�n l�y �i �i . ��ng r�i , n�u ng��i l� y�u v� ng��i , ta ��y trong c�c c�n �n c� li�u m�t v� c�u l�c n�i danh thi�n h� ��ch cao th� , b�t qu� h�n gi�i v� �� l�u . ng��i n�u c� th� n�i ��ng h�n , n�i kh�ng ch�ng s� truy�n m�t m�n tuy�t k� d� ng��i �i . ", 
" hay l� tr��c �em ta ��a tr� v� �i /#rewindProcess_004_02_SendMan:doTaskEntity()", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
SetRewindTaskState(PARID_TASK_REWIND_004, 2); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(4, 6); 

return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_004)==2 then 
rewindProcess_004_02_SendMan:doTaskEntity(); 
return 1; 
else 
SelectDescribe({"<npc> b�y gi� c� n�m t�n cao th� �ang �i�n cu�ng t�n c�ng vua ta nh� b�o , ng��i n�u kh�ng c� ph�p ��nh b�i b�n h� , ch�ng ta l� kh�ng ra ���c ��ch . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
end; 
end, 

}); 


rewindProcess_004_02_SendMan = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng��i mu�n r�i kh�i n�i n�y sao ? ", 
" ��ng v�y , xin ��a ta �i th�i /#rewindProcess_004_02_Send:doTaskEntity()", 
" ch� m�t ch�t /OnTaskExit" 
}); 
return 1; 
end, 
}); 



rewindProcess_004_02_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(176,1376,3333); 
SetFightState(0); 
end, 
});
