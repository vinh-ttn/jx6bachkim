Include("\\script\\event\\wulin_2nd\\data.lua") 
-- script viet hoa By http://tranhba.com Role Value-- script viet hoa By http://tranhba.com  
WULIN_TASK_LOGIN = 1570 

WULIN_TB_TIME = { 
register = {open = 03030000, close = 03162400}, -- script viet hoa By http://tranhba.com  x�c nh�n t� c�ch th�i gian 
elector = {open = 03100000, close = 03162400}, -- script viet hoa By http://tranhba.com  c�nh ch�n th�i gian 
leader = {open = 03162400, close = 03232400} -- script viet hoa By http://tranhba.com  phi�u ch�n t�ng l�nh ��i 
} 

function wulin_canInfo2Player() 
nClientID = WULIN_TB_ZONEID[GetGateWayClientID()] 
if (nClientID == nil or nClientID == 0) then 
return 
end 
local curdate = tonumber(date("%m%d%H%M")) 
if (curdate >= WULIN_TB_TIME.register.open and curdate <= WULIN_TB_TIME.register.close) then 
if (GetTask(WULIN_TASK_LOGIN) == 0) then 
if (WULIN_TB_ROLES[nClientID][GetName()]) then 
Msg2Player("� th� hai gi�i ��i h�i v� l�m � n�i tr��c v�o vi tuy�n th� t� c�ch x�c nh�n �� b�t ��u , ng�i c� th� � <color=yellow> tr��c khi an - ��i h�i v� l�m quan vi�n (202,202)<color> ch� x�c nh�n ng�i ��ch t� c�ch . x�c nh�n t� c�ch nh�t k� ch�n ch� <color=yellow>2006 n�m 3 th�ng 17 ng�y s� kh�ng l�c <color> . ") 
else 
SetTask(WULIN_TASK_LOGIN, -1) 
end 
end 
end 
end 

if login_add then login_add(wulin_canInfo2Player, 2) end
