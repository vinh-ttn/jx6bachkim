
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

PARID_MASTER05_TIMES = 68; -- script viet hoa By http://tranhba.com  nh� ch�i m�i ng�y ho�n th�nh tu luy�n nhi�m v� ��m h�t 

-- script viet hoa By http://tranhba.com  cu�i c�ng t��ng th��ng k� n�ng s�ch ��ch ��m t� 
ARY_AWARD_BOOKS = { 

-- script viet hoa By http://tranhba.com  kim h� 
[0] = {{839,"Tr�n ng�c x� tr�i k�nh ","Kim h� ��ng b�n v� th��ng t�m ph�p , c� th� r�t ng�n ch� nh�n ��ch tr�ng ��c th�i gian "}, 
{840,"��i bi nguy�n r�a ","Kim h� ��ng b�n v� th��ng t�m ph�p , c� th� gia t�ng ch� nh�n ��ch ��c ph�ng "}}, 

-- script viet hoa By http://tranhba.com  m�c h� 
[1] = {{841, " luy�n ng�c h� c� ","M�c h� ��ng b�n v� th��ng t�m ph�p , c� th� gia t�ng ch� nh�n ��ch l�i ph�ng "}, 
{842,"Th�c c�t huy�t nh�n ","M�c h� ��ng b�n v� th��ng t�m ph�p , c� th� khi�n cho ch� nh�n mau s�m t� tr�ng th�i h�n m� kh�i ph�c "}}, 

-- script viet hoa By http://tranhba.com  th�y h� 
[2] = {{843,"Ngh�ch chuy�n t�m tr�i qua ","Th�y h� ��ng b�n v� th��ng t�m ph�p , c� th� khi�n cho ch� nh�n t�c �� di ��ng nhanh h�n "}, 
{844,"Huy�n b�ng �m kh� ","Th�y h� ��ng b�n v� th��ng t�m ph�p , c� th� gia t�ng ch� nh�n ��ch l�a ph�ng "}}, 

-- script viet hoa By http://tranhba.com  h�a h� 
[3] = {{845,"Tr�n v� �ch ph�m t�n ","H�a h� ��ng b�n v� th��ng t�m ph�p , c� th� gia t�ng ch� nh�n ��ch ph� ph�ng "}, 
{846, " l�a ph��ng kh� r�n ","H�a h� ��ng b�n v� th��ng t�m ph�p , c� th� khi�n cho ch� nh�n t�c �� di ��ng nhanh h�n "}}, 

-- script viet hoa By http://tranhba.com  th� h� 
[4] = {{847,"Thu�n d��ng v� c�c ","Th� h� ��ng b�n v� th��ng t�m ph�p , c� th� khi�n cho ch� nh�n mau s�m t� ch�m l�i tr�ng th�i kh�i ph�c "}, 
{848,"V�n sinh k�t h�i ","Th� h� ��ng b�n v� th��ng t�m ph�p , c� th� gia t�ng ch� nh�n ��ch b�ng ph�ng "}}, 

} 

-- script viet hoa By http://tranhba.com  ti�n v�o B�ch hoa c�c l�c ��ch ph�n �o�n 
taskProcess_005_01 = inherit(CProcess, { 

checkCondition = function(self) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count(); 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� mang ��ng b�n ho�c l� kh�ng c� cho g�i ��ng b�n l� tr�c ti�p tr� v� 0 
if NpcCount==0 or partnerstate~=1 then return 0; end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n b�n ch� tuy�n nhi�m v� c� hay kh�ng �� ho�n th�nh 
local nState_1 = GetMasterTaskState(PARID_TASK_MASTER_001); 
local nState_2 = GetMasterTaskState(PARID_TASK_MASTER_002); 
local nState_3 = GetMasterTaskState(PARID_TASK_MASTER_003); 
local nState_4 = GetMasterTaskState(PARID_TASK_MASTER_004); 

if nState_1>=5 and nState_2>=6 and nState_3>=5 and nState_4>=3 then 
return 1; 
else 
return 2; 
end; 

end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SetPos(1535, 3021); -- script viet hoa By http://tranhba.com  ��n ��n �i�m th� nh�t 
SetFightState(0); 
return 1; 
elseif nCondition==2 or nCondition==0 then 
Say("Ph�a tr��c m�y m� l��n quanh , ki�m kh� h��ng ti�u . t�a h� kh�ng ph�i l� ng��i b�y gi� c� th� �i ��ch ��a ph��ng . ",0); 
SetPos(1516, 3069); -- script viet hoa By http://tranhba.com  ��n ��n �i�m th� hai 
SetFightState(1); 
return 0; 
end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ��p ��n �i ra ngo�i l�c ��ch �i�m ��ch x� l� 
taskProcess_005_Outside = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SetPos(1516, 3069); -- script viet hoa By http://tranhba.com  ��n ��n �i�m th� hai 
SetFightState(1); 
return 1; 
end, 
}); 

-- script viet hoa By http://tranhba.com  c�ng ki�m ho�ng ��i tho�i 
taskProcess_005_02 = inherit(CProcess, { 

checkCondition = function(self) 
local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count(); 

-- script viet hoa By http://tranhba.com  ki�m tra nh� ch�i c�ng ��ng b�n ��ch c�p b�c 
if GetLevel()<90 or PARTNER_GetLevel(partnerindex)<80 then return 4; end; 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� mang ��ng b�n ho�c l� kh�ng c� cho g�i ��ng b�n l� tr�c ti�p tr� v� 0 
if NpcCount==0 or partnerstate~=1 then return 0; end; 

-- script viet hoa By http://tranhba.com  ph�n �o�n b�n ch� tuy�n nhi�m v� c� hay kh�ng �� ho�n th�nh 
local nState_1 = GetMasterTaskState(PARID_TASK_MASTER_001); 
local nState_2 = GetMasterTaskState(PARID_TASK_MASTER_002); 
local nState_3 = GetMasterTaskState(PARID_TASK_MASTER_003); 
local nState_4 = GetMasterTaskState(PARID_TASK_MASTER_004); 

if nState_1==5 and nState_2==6 and nState_3==5 and nState_4==3 and GetMasterTaskState(PARID_TASK_MASTER_005)==0 then 
return 1; 
elseif GetMasterTaskState(PARID_TASK_MASTER_005)==1 then -- script viet hoa By http://tranhba.com  �� nh�n nhi�m v� 
return 2; 
else 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> ng��i l� th� n�o t�m t�i n�i n�y t�i ? v�a v�o giang h� , mu�n th�i lui ra c�nh nh� v�y kh� kh�n sao ? S� m� ��i n�y h�t th�y h�t th�y ��u b� c�i n�y giang h� �o�t �i li�u , c�n kh�ng th�a m�n sao ? ���c r�i , ch� c�n ng��i kh�ng n�i ra ta ch� �n th�n , ta li�n truy�n cho ng��i kia ti�u ��ng b�n nh�t th�c tuy�t h�c nh� th� n�o ? b�t qu� mu�n h�c S� m� ��ch v� c�ng , kh�ng c� m�t t�t tr� c�t , ch� bi�t t�u h�a nh�p ma , t� thi�u m� ch�t . n�u nh� ng��i nh�t ��nh ph�i l�m cho ti�u ��ng b�n h�c , tr��c h�t mang theo h�n # n�ng # ho�n th�nh { m��i l�m ng�y } ��ch { ��ng b�n tu luy�n nhi�m v� } �i . nh� , m�i ng�y ��ch nhi�m v� ��u ph�i to�n b� ho�n th�nh , kh�ng th� l��i bi�ng . ��n c�ng th�nh ng�y t�i t�m ta n�a , ta li�n �em tuy�t ngh� d�c t�i truy�n cho . ", 
" ti�p nh�n nhi�m v� /#taskProcess_005_03:doTaskEntity()" 
}); 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng��i �� ho�n th�nh m��i l�m ng�y ��ch ��ng b�n tu luy�n nhi�m v� sao ? ", 
" ta �� ho�n th�nh /#taskProcess_005_Finish:doTaskEntity()", 
" t�m th�i c�n kh�ng c� /OnTaskExit"}); 
elseif nCondition==4 then 
SelectDescribe({"<npc> nh� , khi ng��i ��ch ��ng b�n ��n <color=yellow>80<color> c�p l�c l� ���c t�i t�m ta , ta li�n �em tuy�t ngh� d�c t�i truy�n cho . kh�ng th� l��i bi�ng . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
else 
SelectDescribe({"<npc> thi�u ni�n nghe m�a ca tr�n l�u , n�n �� b�t t�nh la tr��ng . tr�ng ni�n nghe m�a kh�ch chu trung , giang kho�t v�n th�p , �o�n nh�n g�i gi� t�y . m� nay nghe m�a t�ng l� h� , t�n �� sao c�ng . bi hoan ly h�p t�ng v� t�nh , m�t ��m nhi�m c�p tr��c �i�m t�ch ��n tr�i s�ng . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
end; 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ti�p thu nhi�m v� , nhi�m v� ti�n tri�n v� 1 
taskProcess_005_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetMasterTaskState(PARID_TASK_MASTER_005, 1); 
Msg2Player("Ng��i b�y gi� c�n mang ��ng b�n c�a ng��i ho�n th�nh 15 ng�y ��ch tu luy�n nhi�m v� #"); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ho�n th�nh nhi�m v� qu� tr�nh 
taskProcess_005_Finish = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER05_TIMES); 
if nNum>=15 then 
SelectDescribe({"<npc> r�t t�t , ng��i �� ho�n th�nh m��i l�m ng�y ��ch ��ng b�n tu luy�n , ��y l� ��a cho ng��i t��ng th��ng #", 
" nh�n l�y t��ng th��ng /#taskProcess_005_AwardSelect:doTaskEntity()" 
}); 
return 1; 
else 
SelectDescribe({"<npc> ng��i c�n ch�a ho�n th�nh m��i l�m ng�y ��ch ��ng b�n tu luy�n nhi�m v� �i # ? ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 1; 
end; 
return 0; 
end, 
}); 


-- script viet hoa By http://tranhba.com  nh�n l�y �n n�p nhi�m v� t��ng th��ng , thi�t tr� nhi�m v� ti�n tr�nh v� 2 
taskProcess_005_AwardSelect = inherit(CProcess, { 
taskEntity = function(self, nCondition) 

local partnerindex,partnerstate = PARTNER_GetCurPartner(); -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count(); 
local nSeries = 0; 

-- script viet hoa By http://tranhba.com  n�u nh� kh�ng c� mang ��ng b�n ho�c l� kh�ng c� cho g�i ��ng b�n l� tr�c ti�p tr� v� nil 
if NpcCount==0 or partnerstate~=1 then 
SelectDescribe({"<npc> ng��i c�n kh�ng c� g�i ra ��ng b�n t�i nga #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 0; 
end; 

nSeries = PARTNER_GetSeries(partnerindex); 

SelectDescribe({"<npc> ta ch� n�y c� hai v�n k� n�ng s�ch th�ch h�p ng��i b�y gi� ��ch ��ng b�n , ng��i mu�n nh�n l�y c�i n�o k� n�ng s�ch t��ng th��ng ��y ? <enter><enter><color=green>".. 
ARY_AWARD_BOOKS[nSeries][1][2].."<color>#"..ARY_AWARD_BOOKS[nSeries][1][3].."<enter><color=green>".. 
ARY_AWARD_BOOKS[nSeries][2][2].."<color>#"..ARY_AWARD_BOOKS[nSeries][2][3].."<enter>", 
" ta ch�n "..ARY_AWARD_BOOKS[nSeries][1][2].."/#taskProcess_005_AwardPayBook("..nSeries..", 1)", 
" ta ch�n "..ARY_AWARD_BOOKS[nSeries][2][2].."/#taskProcess_005_AwardPayBook("..nSeries..", 2)", 
}); 

return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  m�i ng�y sau khi ho�n th�nh m�t m�i th�m ��ch qu� tr�nh 
taskProcess_005_AddTimes = inherit(CProcess, { 

checkCondition = function(self) 
if GetMasterTaskState(PARID_TASK_MASTER_005)==1 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_MASTER05_TIMES); 
if nCondition==1 then 
if nNum<15 then 
				SetPartnerTask(PARID_MASTER05_TIMES, nNum + 1);
return 1; 
elseif nNum==15 then 
Msg2Player("Ng��i �� ho�n th�nh m��i l�m ng�y ��ch ��ng b�n tu luy�n nhi�m v� , ng��i b�y gi� c� th� tr� v� B�ch hoa c�c �i t�m ki�m ho�ng li�u #"); 
return 1; 
end; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  cho ��ng b�n ph�t k� n�ng s�ch ��ch qu� tr�nh , nhi�m v� ti�n tri�n v� 2 
function taskProcess_005_AwardPayBook(nSeries, nBook) 

AddItem(6, 1, ARY_AWARD_BOOKS[nSeries][nBook][1], 1, 0, 0); 

SetMasterTaskState(PARID_TASK_MASTER_005, 2); 
PayMasterAward(5, 1); 

end; 
