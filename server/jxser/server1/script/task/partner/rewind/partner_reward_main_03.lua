
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - ch�u b�u th��ng nh�n tu luy�n thi�n 
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

PARID_REWIND_KILLER_01 = 39; -- script viet hoa By http://tranhba.com  nh�t ph�m ���ng th��ng binh 
PARID_REWIND_KILLER_02 = 40; -- script viet hoa By http://tranhba.com  nh�t ph�m ���ng cung binh 
PARID_REWIND_KILLER_03 = 41; -- script viet hoa By http://tranhba.com  nh�t ph�m ���ng �eo �ao t��ng l�nh 
PARID_REWIND_KILLER_04 = 42; -- script viet hoa By http://tranhba.com  v� s� 

GLBID_MASTER_KILLER_NUM = 830; -- script viet hoa By http://tranhba.com  ph�c v� kh� to�n c�c thay ��i l��ng , ghi ch�p nh�t ph�m ���ng Th�ng so�i ��ch c� ra s� l��ng 


-- script viet hoa By http://tranhba.com  b�t ��u nhi�m v� l�c ��ch ��i tho�i 
rewindProcess_003_01 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_003)==nil then -- script viet hoa By http://tranhba.com  kh�ng c� mang ��ng b�n 
return 0; 
elseif GetMasterTaskState(PARID_TASK_MASTER_003)<5 then -- script viet hoa By http://tranhba.com  ch�a ho�n th�nh k�ch t�nh thi�n ��ch nhi�m v� 
return 4; 
elseif CheckRewindState(3)~=1 then -- script viet hoa By http://tranhba.com  kh�ng ph� h�p nh�t k� ph�n �o�n �i�u ki�n 
return 5; 
elseif GetRewindTaskState(PARID_TASK_REWIND_003)==0 then -- script viet hoa By http://tranhba.com  l�n ��u ti�n b�t ��u l�m 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_003)>=1 and GetRewindTaskState(PARID_TASK_REWIND_003)<5 then -- script viet hoa By http://tranhba.com  �� b�t ��u l�m 
return 2; 
elseif GetRewindTaskState(PARID_TASK_REWIND_003)==5 then -- script viet hoa By http://tranhba.com  �� ho�n th�nh 
return 3; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 or nCondition==3 then 
SelectDescribe({"<npc> n�u nh� t�m ���c �inh l�i , c� l� c� th� tra ra ch�t ��u m�i . ng��i mang theo ng�c th�ch �i tr��c khi an t�m b�o kh� trai �inh l�i , n�u nh� h�n kh�ng c� � ��y , t�m �� �� c�a h�n �inh l�i c�ng gi�ng nh� nhau . ", 
" ti�p nh�n nhi�m v� /#rewindProcess_003_Accept:doTaskEntity()", 
" ta suy ngh� th�m m�t ch�t /OnTaskExit", 
}); 
return 1; 
elseif nCondition==2 then 
SelectDescribe({"<npc> ng��i mang theo ng�c th�ch �i tr��c khi an t�m b�o kh� trai �inh l�i , n�u nh� h�n kh�ng c� � ��y , t�m �� �� c�a h�n �inh l�i c�ng gi�ng nh� nhau . ", 
" ho�n th�nh nhi�m v� /#rewindProcess_003_Finish:doTaskEntity()", 
" ta c�n ch�a ho�n th�nh /OnTaskExit", 
}); 
return 1; 
elseif nCondition==4 then 
SelectDescribe({"<npc> ng��i c�n ch�a ho�n th�nh nhi�m v� n�y k�ch t�nh thi�n nga , kh�ng th� ti�n h�nh tu luy�n nhi�m v� . ", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 1; 
elseif nCondition==5 then 
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
rewindProcess_003_Accept = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SetRewindTaskState(PARID_TASK_REWIND_003, 1); 
Msg2Player("Ng��i nh�n ���c ch�u b�u th��ng nh�n ��ng b�n tu luy�n nhi�m v� #"); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(3, 1); 

-- script viet hoa By http://tranhba.com  khi ph� h�p �i�u ki�n sau b�t ��u m�t l�n m�i tu luy�n nhi�m v� x� l� 
SetRewindStart(3); 

return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  ho�n th�nh nhi�m v� , ph�t d� t��ng th��ng , nhi�m v� ti�n tr�nh v� 5 
rewindProcess_003_Finish = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_003)==4 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 then 
SelectDescribe({"<npc> �/d� , b�y gi� �em chuy�n giao cho trong tay ng��i ta l� c�ng ng�y c�ng y�n t�m �i . g�n ��y ta nh�n/xem ngo�i c�a s� l� r�ng , c�m th�y th�i gian tr�i qua r�t nhanh . �t n�m nh� v�y ��ch b�nh s�t , t�a nh� tr�i qua m�t cu�c b�o t�p , n�a quay ��u l�i , c�i g� ��u l� v� �ch ��ch . ng��i tu�i tr� , th� gi�i chung quy s� l� c�c ng��i , c� g�ng l�n �i . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
SetRewindTaskState(PARID_TASK_REWIND_003, 5); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(3, 8); 

-- script viet hoa By http://tranhba.com  thi�t tr� h�m nay ho�n th�nh d�u hi�u 
SetRewindFinish(3); 

-- script viet hoa By http://tranhba.com  thanh tr� c�ng nhi�m v� c� li�n quan tr�ng th�i 
SetPartnerTask(PARID_REWIND_KILLER_01, 0); 
SetPartnerTask(PARID_REWIND_KILLER_02, 0); 
SetPartnerTask(PARID_REWIND_KILLER_03, 0); 
SetPartnerTask(PARID_REWIND_KILLER_04, 0); 

return 1; 
else 
SelectDescribe({"<npc> ta giao cho ng��i nhi�m v� ng��i c�n ch�a ho�n th�nh nga , c� g�ng l�n �i . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 0; 
end; 
end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng �inh l�i ��ch ��i tho�i 
rewindProcess_003_02 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_003)==1 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_003)==2 then 
return 2; 
else 
return 0; 
end 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> vi�n n�y ng�c ch�u , vi�n n�y ng�c ch�u t�i sao s� � trong tay c�a ng��i ? nga , l� Giang Nam ngh�a qu�n th� l�nh long n�m ��ch b� h� sao ? lo�i ng�c n�y ch�t ��ch h�t ch�u t� s� h�n ba m��i n�m qua t�ng c�ng b�n ra b�t qu� m��i vi�n . t�i li�u ��u l� t� huynh tr��ng ta �inh l�i t� Thi�n Tr�c n��c d�n v�o , tr�n qu� v� c�ng . t�nh hu�ng c� th� ta c�ng kh�ng r� r�ng , ng��i n�i ch�t �i th� lang c�nh tay c�a trong t��ng c� m�t vi�n ? ta kh�ng bi�t , th�t kh�ng bi�t . ph��ng di�n n�y chuy�n c�a t�nh , huynh tr��ng t� kh�ng �� cho ta nh�ng tay . v�n l� huynh tr��ng t�y ���c m�t n�m c� th�a , coi l� l�c qu� n�n tr� v� t�i . nh�ng m�y ng�y tr��c ��y t� h� l�nh th��ng tin t�c truy�n ��n , huynh tr��ng �� cho ng��i ta cho tr�i l�i th�t phi�u # t� h� l�nh l�c n�o th�i b�nh qu� ? tri�u ��nh ��i qu�n c�ng t�o b�t b�nh ��ch ngoan t�c , ��i ph��ng m� mi�ng ch�nh l� ba ch�c tri�u l��ng b�c , c�i n�y nh�ng t�i sao l� h�o , nh�ng t�i sao l� h�o a . hi�p s� nguy�n � gi�p �inh m� chuy�n n�y sao ? n�u huynh tr��ng c� th� b�nh an tr� l�i , kia ng�c ch�u ��ch lai long kh� m�ch t� nhi�n r� r�ng . ", 
" ��ng v�y , ta nguy�n � tr� gi�p ng��i �i t� h� l�nh c�u ng��i /#rewindProcess_003_Select01:doTaskEntity()", 
" c�i n�y ��n gi�n , ta gi�p ng��i ra kia ba ch�c tri�u hai ��ch ti�n chu�c �i /#rewindProcess_003_Select02:doTaskEntity()", 
" h�y �� cho ta suy ngh� l�i m�t ch�t /OnTaskExit" 
}); 
return 1; 
elseif nCondition==2 then 
rewindProcess_003_SendMan:doTaskEntity(); 
return 1; 
end; 
return 0; 
end, 


}); 


-- script viet hoa By http://tranhba.com  l�a ch�n th� nh�t ch�n h�ng , �em nhi�m v� ti�n tri�n thi�t th�nh 2 
rewindProcess_003_Select01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ��n t� h� l�nh ng��i �t nh�t ph�i gi�t ch�t { n�m m��i nh�t ph�m ���ng ��ch th��ng binh } , { ba m��i nh�t ph�m ���ng cung binh } , { ba v� nh�t ph�m ���ng ��ch �eo �ao t��ng l�nh } , m�i c� th� ti�n v�o ��n cu�i c�ng ��ch { vi�n v� chi tr�n } . ch� �� c�t gi�u b�n t�n v� ngh� tuy�t lu�n ��ch cao th� , ng��i c�n t�m ra b�n h� t�i , h�n n�a { gi�t ch�t �t nh�t hai } , d�a v�o b�n h� th� c�p , m�i c� th� mang huynh tr��ng ta tr�n ra ���c . huynh tr��ng c�a ta b� b�n h� nh�t � vi�n v� chi tr�n ch� s�u m�t c�i nh� g� nh� trong . ", 
" ta bi�t /#rewindProcess_003_SendMan:doTaskEntity()" 
}); 
SetRewindTaskState(PARID_TASK_REWIND_003, 2); 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
PayRewindAward(3, 2); 

return 1; 
end, 

}); 

-- script viet hoa By http://tranhba.com  truy�n t�ng �i nhi�m v� b�n �� ��ch qu� tr�nh 
rewindProcess_003_SendMan = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> ng��i b�y gi� mu�n �i t� h� l�nh sao ? tr��c khi �i c�n ph�i nhi�u chu�n b� ch�t b�o v� t�nh m�ng ��ch �� nga #", 
" ��ng v�y , xin ��a ta qu� kh� �i /#rewindProcess_003_Send:doTaskEntity()", 
" ta n�a chu�n b� m�t ch�t /OnTaskExit", 
}); 
return 1; 
end, 
}); 


rewindProcess_003_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(515,1639,3162); 
SetFightState(1); 
return 1; 
end, 
}); 


-- script viet hoa By http://tranhba.com  l�a ch�n th� hai ch�n h�ng , ��ng 3000W l��ng b�c 
rewindProcess_003_Select02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
SelectDescribe({"<npc> th�t mu�n gi�p ch�ng ta ra ba ch�c tri�u l��ng b�c sao ? n�u nh� b�n ph� �� nh�n ���c l�n nh� v�y b�t ti�n , cho c� ng�y l�m ��m b�n h� c�ng kh�ng d�m n�a c�t gi�u huynh tr��ng ta li�u . ", 
" ��ng v�y , �i�m n�y ti�u � t� ng��i li�n l�y �i �i /#rewindProcess_003_Select02_01:doTaskEntity()", 
" ta suy ngh� m�t ch�t n�a /OnTaskExit" 
}); 
return 1; 
end, 

}); 


-- script viet hoa By http://tranhba.com  l�a ch�n giao ti�n sau ki�m tra c� hay kh�ng mang ��y �� ti�n , n�u nh� th�nh c�ng kh�u tr� l�i c�a tr�c ti�p �em nhi�m v� ti�n tr�nh thi�t v� 4 
rewindProcess_003_Select02_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
if Pay(30000000)==1 then 
SelectDescribe({"<npc> hi�p s� a hi�p s� a , c�m �n ng��i , �a t� . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
SetRewindTaskState(PARID_TASK_REWIND_003, 4); 
else 
SelectDescribe({"<npc> hi�p s� a , n�u nh� ng��i nh�t th�i h�i l�u c�m kh�ng ra ba ch�c tri�u l��ng b�c l�i c�a v�y hay l� kh�ng c�n l�m phi�n ng��i , ta c�n l� kh�c t�m ng��i kh�c �i #", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
end; 
return 1; 
end; 
}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t nh�t ph�m ���ng th��ng binh l�c ��ch x� l� 
rewindProcess_003_Kill_01 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_REWIND_KILLER_01); 

if GetRewindTaskState(PARID_TASK_REWIND_003)==2 and nNum<50 then 

			Msg2Player("���Ѿ�ɱ����һ��һƷ��ǹ�������ܹ�ɱ����"..(nNum+1).."����");
			SetPartnerTask(PARID_REWIND_KILLER_01, nNum+1);

			if nNum+1>= 50 then
Msg2Player("Ng��i �� gi�t ch�t nhi�u �� ��ch nh�t ph�m ���ng th��ng binh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(3, 3); 

AddOwnExp(CountDoubleMode(2000)); 
AddPartnerExp(CountDoubleMode(500)); 

return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  gi�t ch�t nh�t ph�m ���ng cung binh l�c ��ch x� l� 
rewindProcess_003_Kill_02 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_REWIND_KILLER_02); 

if GetRewindTaskState(PARID_TASK_REWIND_003)==2 and nNum<30 then 

			Msg2Player("���Ѿ�ɱ����һ��һƷ�ù��������ܹ�ɱ����"..(nNum+1).."����");
			SetPartnerTask(PARID_REWIND_KILLER_02, nNum+1);

			if nNum+1>= 30 then
Msg2Player("Ng��i �� gi�t ch�t nhi�u �� ��ch nh�t ph�m ���ng cung binh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(3, 4); 

AddOwnExp(CountDoubleMode(2000)); 
AddPartnerExp(CountDoubleMode(500)); 

return 1; 
end; 
return 0; 
end, 

}); 



-- script viet hoa By http://tranhba.com  gi�t ch�t nh�t ph�m ���ng �eo �ao t��ng l�nh l�c ��ch x� l� 
rewindProcess_003_Kill_03 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_REWIND_KILLER_03); 

if GetRewindTaskState(PARID_TASK_REWIND_003)==2 and nNum<3 then 

			Msg2Player("���Ѿ�ɱ����һ��һƷ�ô������죬���ܹ�ɱ����"..(nNum+1).."����");
			SetPartnerTask(PARID_REWIND_KILLER_03, nNum+1);

			if nNum+1>= 3 then
Msg2Player("Ng��i �� gi�t ch�t nhi�u �� ��ch nh�t ph�m ���ng �eo �ao t��ng l�nh #"); 
end; 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(3, 5); 

AddOwnExp(CountDoubleMode(10000)); 
AddPartnerExp(CountDoubleMode(2000)); 

return 1; 
end; 
return 0; 
end, 

}); 



-- script viet hoa By http://tranhba.com  gi�t ch�t cao c�p v� s� ��ch x� l� 
rewindProcess_003_Kill_04 = inherit(CProcess, { 

taskEntity = function(self, nCondition) 
local nNum = GetPartnerTask(PARID_REWIND_KILLER_04); 

if GetRewindTaskState(PARID_TASK_REWIND_003)==2 and nNum<2 then 

			Msg2Player("���Ѿ�ɱ����һ��һƷ��ͳ˧�����ܹ�ɱ����"..(nNum+1).."����");
			SetPartnerTask(PARID_REWIND_KILLER_04, nNum+1);

			if nNum+1>= 2 then
Msg2Player("Ng��i �� gi�t ch�t nhi�u �� ��ch nh�t ph�m ���ng Th�ng so�i #"); 
end; 

-- script viet hoa By http://tranhba.com  ph�t ra t��ng th��ng 
-- script viet hoa By http://tranhba.com  PayRewindAward(3, 6); 

AddOwnExp(CountDoubleMode(20000)); 
AddPartnerExp(CountDoubleMode(2000)); 

return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  �i�m k�ch c�t �� ��ch qu� tr�nh 
rewindProcess_003_Call = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_003)==2 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 

local killzxboss ={ 
			{1078,95,515,1729,2845,1,"Ӱɷ",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","Ӱɷ"},
			{1078,95,515,1729,2845,1,"����",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","����"},
			{1078,95,515,1729,2845,1,"ǹѻ",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","ǹѻ"},
			{1078,95,515,1729,2845,1,"����",1,"\\script\\task\\partner\\npc\\master_fight_03_004.lua","����"},
} 

if nCondition==1 then 

local i = random(1,4); 
local Tid = SubWorldID2Idx(killzxboss[i][3]); 

-- script viet hoa By http://tranhba.com  n�u nh� c� ra ��ch nh�t ph�m ���ng Th�ng so�i l�n h�n 6 c� , l� s� kh�ng n�a ch� 
if GetGlbValue(GLBID_MASTER_KILLER_NUM)>=6 then return end; 

if (Tid >= 0 ) then 
TabValue4 = killzxboss[i][4] * 32; 
TabValue5 = killzxboss[i][5] * 32; 
local Partner_npcindex = AddNpc(killzxboss[i][1],killzxboss[i][2],Tid,TabValue4,TabValue5,killzxboss[i][6],killzxboss[i][7],killzxboss[i][8]); 
SetNpcScript(Partner_npcindex, killzxboss[i][9]); 

				SetGlbValue(GLBID_MASTER_KILLER_NUM, GetGlbValue(GLBID_MASTER_KILLER_NUM) + 1);

end 

Msg2Player("T� h� l�nh doanh tr�i trung ��ch Th�ng so�i "..killzxboss[i][10].." t��ng qu�n b� ng��i ch�c gi�n , h�n �� xu�t hi�n . "); 
return 1; 
end; 
return 0; 
end, 

}); 


-- script viet hoa By http://tranhba.com  c�ng �inh l�i ��ch ��i tho�i 
rewindProcess_003_03 = inherit(CProcess, { 

checkCondition = function(self) 

local nNum_1 = GetPartnerTask(PARID_REWIND_KILLER_01); 
local nNum_2 = GetPartnerTask(PARID_REWIND_KILLER_02); 
local nNum_3 = GetPartnerTask(PARID_REWIND_KILLER_03); 
local nNum_4 = GetPartnerTask(PARID_REWIND_KILLER_04); 

if GetRewindTaskState(PARID_TASK_REWIND_003)==2 and nNum_1>=50 and nNum_2>=30 and nNum_3>=3 and nNum_4>=2 then 
return 1; 
elseif GetRewindTaskState(PARID_TASK_REWIND_003)==3 then 
return 2; 
else 
return 0; 
end 
end, 

taskEntity = function(self, nCondition) 

if nCondition==1 or nCondition==2 then 
SelectDescribe({"<npc> t� hi�p s� �n c�u m�ng #", 
" r�i �i t� h� l�nh /#rewindProcess_003_03_Send:doTaskEntity()", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
SetRewindTaskState(PARID_TASK_REWIND_003, 3); 
return 1; 
else 
SelectDescribe({"<npc> ai , nh�ng th� n�y ph� �� ��u l� c�ng hung c�c �c h�ng ng��i , hi�p s� kh�ng c�n lo ta , m�nh r�i �i tr��c �i . ", 
" r�i �i t� h� l�nh /#rewindProcess_003_03_Send:doTaskEntity()", 
" k�t th�c ��i tho�i /OnTaskExit"}); 
return 0; 
end; 
return 0; 

end, 

}); 


rewindProcess_003_03_Send = inherit(CProcess, { 
taskEntity = function(self, nCondition) 
NewWorld(176,1376,3333); 
SetFightState(0); 
end, 
}); 


-- script viet hoa By http://tranhba.com  l�n n�a tr� l�i c�ng �inh l�i ��ch ��i tho�i 
rewindProcess_003_04 = inherit(CProcess, { 

checkCondition = function(self) 
if GetRewindTaskState(PARID_TASK_REWIND_003)==3 then 
return 1; 
else 
return 0; 
end; 
end, 

taskEntity = function(self, nCondition) 
if nCondition==1 then 
SelectDescribe({"<npc> c�m t� n�i nhi�u h�n n�a c�ng v� �ch . nghe �� �� n�i , ng��i c�m m�t vi�n ng�c ch�u t�i gi�m ��nh . �� ng��i l�u l�i , kh�ng bao l�u n�a , �inh m� nh�t ��nh gi�p ng��i tra ���c long �i m�ch # ta l�y t�nh m�ng l�m b�o . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
SetRewindTaskState(PARID_TASK_REWIND_003, 4); 
return 1; 
end; 
return 0; 
end, 

}); 
