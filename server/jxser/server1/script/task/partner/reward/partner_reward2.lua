-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  FileName : partner_reward.lua 
-- script viet hoa By http://tranhba.com  Author : xiaoyang 
-- script viet hoa By http://tranhba.com  CreateTime : 2005-07-14 14:43:15 
-- script viet hoa By http://tranhba.com  Desc : ��ng b�n tu luy�n nhi�m v� ch�n v�n 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
IncludeLib( "FILESYS" ); 
IncludeLib("PARTNER") 
IncludeLib("TITLE") -- script viet hoa By http://tranhba.com  gia t�ng danh hi�u ��u v�n ki�n 
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua") -- script viet hoa By http://tranhba.com ���ӻԻ�֮ҹ˫���
Include("\\script\\task\\newtask\\newtask_head.lua")
TabFile_Load( "\\settings\\task\\partner\\reward\\reward_allprize.txt" , "rewardprize");	 -- script viet hoa By http://tranhba.com ���ͬ�������ı��
Include([[\script\tong\tong_award_head.lua]]);-- script viet hoa By http://tranhba.com  bang h�i chu m�c ti�u �� c�ng hi�n by ch� s�n 
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua");
TITLETIME = 30 * 24 * 60 * 60 * 18 * 36 -- script viet hoa By http://tranhba.com  danh hi�u k� n�ng ��ch thi h�nh th�i gian 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 1: ��ng b�n tu luy�n nhi�m v� trung x�c ph�t quy�n tr�c ch�n c�a v�n thao t�c ,RewardTaskId v� truy�n v�o ��ch tu luy�n nhi�m v� bi�n s� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com 0-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function reward_startreward2(RewardTaskId,RewardTaskLevel) 

local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truy�n cho tr�nh t� m�y t�nh ti�n ��ch nhi�m v� thay ��i l��ng , ghi ch�p nh� ch�i tr��c m�t gi�t ch�t bao nhi�u con qu�i v�t . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� bi�n s� ��ch nhi�m v� thay ��i l��ng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� ti�n h�nh nh�t k� ��ch nhi�m v� thay ��i l��ng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i t��ng th��ng kinh nghi�m nhi�m v� thay ��i l��ng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ng b�n kinh nghi�m t��ng th��ng ��ch nhi�m v� thay ��i l��ng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ng�y �� �� ho�n th�nh nhi�m v� s� l�n ��ch nhi�m v� thay ��i l��ng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t nh�t k� 

if ( Uworld1237 ~= 0 ) then 
Msg2Player("Xin/m�i tr��c ho�n th�nh ng��i �� nh�n ���c ��ch tu luy�n nhi�m v� , n�a m� ra m�i quy�n tr�c �i . ") 
return 1 
elseif ( Uworld1238 == 0 ) then -- script viet hoa By http://tranhba.com  b�t ��u ng�y �� th� nh�t tu luy�n nhi�m v� 
Msg2Player("Hoan ngh�nh ng��i b�t ��u h�m nay th� nh�t tu luy�n nhi�m v� , xin/m�i c� g�ng l�n . ") 
nt_setTask(1238,NowDate) 
elseif ( Uworld1238 ~= 0 ) and ( Uworld1238 ~= NowDate ) then -- script viet hoa By http://tranhba.com  tu luy�n nhi�m v� nh�t k� �� s�a ��i 
Msg2Player("Ng��i tu luy�n nhi�m v� �� ti�n v�o to�n m�t ng�y m�i . qu� kh� l�m tu luy�n nhi�m v� v� lu�n kh�ng c� l�m ho�n ho�c l� kh�ng c� ��ng , ��u ��a b� h�y b� . ") 
reward_cleartaskvalue() 
return 1 
elseif ( Uworld1238 == NowDate ) then -- script viet hoa By http://tranhba.com  tu luy�n nhi�m v� th�i k� ph� h�p y�u c�u 
if ( Uworld1241 >= 10 ) then -- script viet hoa By http://tranhba.com  tu luy�n nhi�m v� s� l�n �� ��t t�i th��ng h�n 
Msg2Player("Ng�i v�o h�m nay l�m tu luy�n nhi�m v� s� l�n �� ��t ��n th��ng h�n , xin/m�i k�p th�i giao ph� nhi�m v� cho tr��ng ca m�n nh�n . ng�y mai s� ti�p t�c c� g�ng , c�m �n . ") 
return 1 
end 
end 

if ( reward_beckon(RewardTaskLevel) ~= 10 ) then -- script viet hoa By http://tranhba.com  ph�n �o�n nh� ch�i c�ng ��ng b�n t��ng quan thao t�c , tr� v� tr� gi� l� 10 l�c b�y t� c� sai l�m 
return 1 
end 
reward_justdoit(RewardTaskId) -- script viet hoa By http://tranhba.com  kh�i ��ng quy�n tr�c th��ng n�n nhi�m v� 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ph�n �o�n ��ng b�n c� hay kh�ng ph� h�p tr��c m�t ti�p nh�n v� ��ch y�u c�u -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_beckon(RewardTaskLevel) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count() 

if ( NpcCount == 0 ) then 
Msg2Player("Ng��i tr��c m�t kh�ng c� ��ng b�n , l�m g� tu luy�n nhi�m v� ? �i t�m tr��ng ca c�a m�n nh�n , sau �� t� h�n n�i �� ��n v�n trung tr�n , t� ki�m ho�ng �� t� ch� d�n ng��i ��ng b�n tr��c . ") 
return 1 
elseif ( partnerstate == 0 ) then 
Msg2Player("Ng��i ch� c� tri�u ho�n ra ��ng b�n c�a ng��i , m�i c� th� mang h�n ti�n h�nh ��ng b�n tu luy�n nhi�m v� . ") 
return 1 
	elseif ( PARTNER_GetLevel(partnerindex)+10 < RewardTaskLevel ) then
Msg2Player("Th�t xin l�i , nhi�m v� n�y ��i v�i ng��i b�y gi� ��ch ��ng b�n m� n�i v� c�ng kh� kh�n , xin/m�i tr��c l�m ch�t c�p th�p tu luy�n nhi�m v� . ") 
return 1 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 1 ) then 
Msg2Player("Ng��i tr��c m�t ��ng b�n c�n c� tu luy�n nhi�m v� kh�ng c� l�m ho�n , xin/m�i tr��c d�n h�n l�m xong t��ng quan nhi�m v� , c�m �n . ") 
return 1 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) then -- script viet hoa By http://tranhba.com  h�m nay �� l�m tu luy�n nhi�m v� s� l�n kh�ng v� 0 
local j = 0 
for i =1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) ~= 0 ) then 
Msg2Player("Ng��i �� c� ��ng b�n �ang l�m tu luy�n nhi�m v� , �ang kh�ng c� ��ng nhi�m v� tr��c nh�ng kh�c ��ng b�n l� kh�ng th� l�m tu luy�n nhi�m v� . c�m �n . ") 
				j = j+1
end 
end 

if ( j == 0 ) then 
return 10 
else 
return 1 
end 

else 
return 10 
end 

end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  kh�i ��ng quy�n tr�c nhi�m v� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_justdoit(RewardTaskId) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 

if ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) or ( PARTNER_GetTaskValue(partnerindex, 2) == 2 ) then 
PARTNER_SetTaskValue(partnerindex,2,1) -- script viet hoa By http://tranhba.com  thi�t tr� tr��c m�t s� mang ��ng b�n v� tu luy�n nhi�m v� kh�i ��ng tr�ng th�i 
else 
Msg2Player("Ng��i tr��c m�t ��ng b�n c�n c� tu luy�n nhi�m v� kh�ng c� l�m ho�n , c�m �n . ") 
return 1 
end 

nt_setTask(1237,RewardTaskId) -- script viet hoa By http://tranhba.com  �em tr��c m�t nh�n ���c nhi�m v� bi�n s� t�n tr� ��ng l�n 
AddPlayerEvent(RewardTaskId) -- script viet hoa By http://tranhba.com  kh�i ��ng n�n quy�n tr�c ��i t��ng gi�t tr�ch nhi�m v� 
Msg2Player("Ng�i �� thu�n l�i kh�i ��ng nhi�m v� . xin/m�i v�o h�m nay b�n trong ho�n th�nh . ") 

end 



-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -2: gi�t tr�ch nhi�m v� ho�n th�nh l�c �i�u d�ng ch�n c�a v�n thao t�c -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_killfinish(nPlayerIdx, nTaskID ,EventID) 
oldPlayerIndex = PlayerIndex 
PlayerIndex = nPlayerIdx 

local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truy�n cho tr�nh t� m�y t�nh ti�n ��ch nhi�m v� thay ��i l��ng , ghi ch�p nh� ch�i tr��c m�t gi�t ch�t bao nhi�u con qu�i v�t . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� bi�n s� ��ch nhi�m v� thay ��i l��ng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� ti�n h�nh nh�t k� ��ch nhi�m v� thay ��i l��ng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i t��ng th��ng kinh nghi�m nhi�m v� thay ��i l��ng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ng b�n kinh nghi�m t��ng th��ng ��ch nhi�m v� thay ��i l��ng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ng�y �� �� ho�n th�nh nhi�m v� s� l�n ��ch nhi�m v� thay ��i l��ng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t nh�t k� 
local NpcCount = PARTNER_Count() 

if ( Uworld1238 ~= NowDate ) then 
Msg2Player("Th�t xin l�i , ng��i tr��c m�t ��ch tu luy�n nhi�m v� �� v��t qua quy ��nh nh�t k� , t�t c� nhi�m v� �em b� thanh tr� t� h�m nay coi l� kh�i . ") 
reward_cleartaskvalue() 
elseif ( NpcCount == 0 ) then 
Msg2Player("Th�t xin l�i , ng��i m�t ��ng b�n ��u kh�ng c� , c�n th� n�o ti�p t�c tu luy�n nhi�m v� ��y ? nhi�m v� c�a ng��i th�t b�i . ") 
reward_cleartaskvalue() 
else 
local w = 0 
for i =1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) == 1 ) then 
PARTNER_SetTaskValue(i,2,2) 
				w = w+1
end 
end 

if ( w == 0 ) then 
Msg2Player("Th�t xin l�i , ��ng b�n c�a ng��i trung kh�ng c� ng��i n�o �ang l�m tu luy�n nhi�m v� , n�n nhi�m v� �� b� h�y b� . ") 
reward_cleartaskvalue() 
else 
			nt_setTask(1241,Uworld1241+1)
tongaward_partner_xiulian()-- script viet hoa By http://tranhba.com  bang h�i chu m�c ti�u �� c�ng hi�n by ch� s�n 
if ( nt_getTask(1241) == nt_getTask(1246) ) then -- script viet hoa By http://tranhba.com 1246 v� cho ph�p nh� ch�i m�i ng�y l�m tu luy�n nhi�m v� s� l�n 
Msg2Player("Ng�i ng�y �� ��ch nhi�m v� ho�n th�nh s� l�n �� ��t "..nt_getTask(1246).." l�n , xin/m�i k�p th�i �i tr��ng ca m�n nh�n ch� ��i t��ng th��ng . ") 
end 
local prize_peopleexp = tonumber( TabFile_GetCell( "rewardprize" ,EventID - 4 , 2 )) -- script viet hoa By http://tranhba.com  ��t ���c nh� ch�i n�n ph�i ��ch kinh nghi�m 
local prize_partnerexp = tonumber( TabFile_GetCell( "rewardprize" ,EventID - 4 , 3 )) -- script viet hoa By http://tranhba.com  ��t ���c ��ng b�n n�n ph�i ��ch kinh nghi�m 
			local prize_parameter  = nt_getTask(1241)*0.1+1
prize_partnerexp = prize_partnerexp*prize_parameter 

prize_peopleexp = prize_peopleexp * greatnight_huang_event(5) 
prize_partnerexp = prize_partnerexp * greatnight_huang_event(5) 

			nt_setTask(1239,Uworld1239+prize_peopleexp)                                       -- script viet hoa By http://tranhba.com ����ҽ��Ӧ��þ���ӵ�������
			nt_setTask(1240,Uworld1240+prize_partnerexp)                                      -- script viet hoa By http://tranhba.com ��ͬ����Ӧ��þ���ӵ�������
nt_setTask(1237,0) -- script viet hoa By http://tranhba.com  �em ghi ch�p nhi�m v� bi�n s� ��ch thay ��i l��ng thanh kh�ng 
Msg2Player("Ch�c m�ng # ng�i �� ho�n th�nh tr��c m�t ��ch ��ng b�n tu luy�n nhi�m v� . ") 
local x = nt_getTask(1246) - nt_getTask(1241) 
Msg2Player("Ng�i h�m nay c�n c� th� ho�n th�nh "..x.." l�n ��ng b�n tu luy�n nhi�m v� . ") 
end 
end 
PlayerIndex = oldPlayerIndex 
end 


-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -3# ��ng ��ng b�n tu luy�n nhi�m v� ch�n v�n -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 

function reward_givetask2() 
local Uworld1236 = nt_getTask(1236) -- script viet hoa By http://tranhba.com  truy�n cho tr�nh t� m�y t�nh ti�n ��ch nhi�m v� thay ��i l��ng , ghi ch�p nh� ch�i tr��c m�t gi�t ch�t bao nhi�u con qu�i v�t . 
local Uworld1237 = nt_getTask(1237) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� bi�n s� ��ch nhi�m v� thay ��i l��ng 
local Uworld1238 = nt_getTask(1238) -- script viet hoa By http://tranhba.com  ghi ch�p tu luy�n nhi�m v� ti�n h�nh nh�t k� ��ch nhi�m v� thay ��i l��ng 
local Uworld1239 = nt_getTask(1239) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i t��ng th��ng kinh nghi�m nhi�m v� thay ��i l��ng 
local Uworld1240 = nt_getTask(1240) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��ng b�n kinh nghi�m t��ng th��ng ��ch nhi�m v� thay ��i l��ng 
local Uworld1241 = nt_getTask(1241) -- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ng�y �� �� ho�n th�nh nhi�m v� s� l�n ��ch nhi�m v� thay ��i l��ng 
local NowDate = tonumber(date("%y%m%d")) -- script viet hoa By http://tranhba.com  ��t ���c tr��c m�t nh�t k� 

local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count() 

if ( Uworld1238 ~= NowDate ) then -- script viet hoa By http://tranhba.com  th�i gian kh�ng h�p 
Msg2Player("Th�t xin l�i , ng��i tr��c m�t ��ch tu luy�n nhi�m v� �� v��t qua quy ��nh nh�t k� , t�t c� nhi�m v� �em b� thanh tr� t� h�m nay coi l� kh�i . ") 
reward_cleartaskvalue() 
elseif ( Uworld1241 == 0 ) then -- script viet hoa By http://tranhba.com  s� l�n v� v� �ch 
Msg2Player("Ng��i h�m nay c�n ch�a ho�n th�nh tu luy�n nhi�m v� , xin ti�p t�c c� g�ng . ") 
elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0 ) then 
Msg2Player("C�i n�y ��ng b�n c�ng kh�ng ph�i l� ng��i mang theo �i l�m tu luy�n nhi�m v� c�i �� ��ng b�n , xin/m�i �em ch�nh x�c ��ng b�n cho g�i ra t�i . ") 
elseif ( NpcCount == 0 ) then 
Msg2Player("Ng��i tr��c m�t kh�ng c� ��ng b�n , nh�n l�y kh�ng ���c t��ng th��ng nga . ") 
elseif ( partnerstate == 0 ) then 
Msg2Player("Ng��i tr��c m�t kh�ng c� cho g�i ra ��ng b�n t�i , nh�n l�y kh�ng ���c t��ng th��ng nga . ") 
elseif ( nt_getTask(1239) ~= 0 ) and ( nt_getTask(1240) ~= 0 ) then 
if ( PARTNER_GetTaskValue(partnerindex, 2) ~= 0 ) then 
PARTNER_AddExp(partnerindex,Uworld1240 ,1) 
AddOwnExp(Uworld1239) 
nt_setTask(1239,0) 
nt_setTask(1240,0) 
Msg2Player("Ng�i c�ng ng�i ��ch ��ng b�n �� thu ���c h�m nay b�n trong ho�n th�nh ��ng b�n tu luy�n nhi�m v� t��ng th��ng . ") 
else 
Msg2Player("Th�t xin l�i , ng�i mang ��ch v� n�y ��ng b�n c�ng kh�ng c� nh�n ��ng b�n tu luy�n nhi�m v� . ") 
end 

if ( PARTNER_GetTaskValue(partnerindex, 2) == 2 ) and ( nt_getTask(1237) == 0 ) then -- script viet hoa By http://tranhba.com  khi nh� ch�i v� nhi�m v� b�t ��u tr�ng th�i , m� 1237 l�i �� b� nhi�m v� ho�n th�nh tr�ng th�i h�m s� thanh kh�ng l�c 
if ( nt_getTask(1241) == 10 ) then 
local Uworld1242 = nt_getTask(1242) 
				nt_setTask(1242,Uworld1242+1)
taskProcess_005_AddTimes:doTaskEntity(); 
end 
PARTNER_SetTaskValue(partnerindex,2,0) 
if ( nt_getTask(1242) == 30 ) and ( GetBit(GetTask(1269),4) == 0 ) then 
nt_setTask(1245,5) 
nt_setTask(1246,20) 
Msg2Player("Ch�c m�ng ng��i thu ���c long th�n chi ki�m danh hi�u # m�i ng�y tu luy�n nhi�m v� cho ph�p ho�n th�nh s� l�n gia t�ng ��n 20 l�n #") 
Title_AddTitle(80, 1, TITLETIME); 
Title_ActiveTitle( 80 ); 
nt_setTask(1269,SetBit(GetTask(1269),4,1)) 
reward_cleartaskvalue() 
end 
end 
else 
Msg2Player("�i ra �i ra , kh�ng mu�n qu�y r�i #") 
end 

end 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  thanh tr� t�t c� qu� l�c ��ch nhi�m v� thay ��i l��ng tr� s� -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
function reward_cleartaskvalue() 
nt_setTask(1237,0) 
nt_setTask(1238,0) 
nt_setTask(1239,0) 
nt_setTask(1240,0) 
nt_setTask(1241,0) 
local partnerindex,partnerstate = PARTNER_GetCurPartner() -- script viet hoa By http://tranhba.com  ��t ���c cho g�i ra ��ng b�n ��ch index, ��ng b�n tr�ng th�i v� g�i ra ho�c v� kh�ng g�i ra 
local NpcCount = PARTNER_Count() 
if ( NpcCount ~= 0 ) then 
for i=1,NpcCount do 
if ( PARTNER_GetTaskValue(i,2) ~= 0 ) then 
PARTNER_SetTaskValue(i,2,0) 
end 
end 
end 
end 
