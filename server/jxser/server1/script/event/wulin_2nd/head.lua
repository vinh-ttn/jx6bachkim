-- script viet hoa By http://tranhba.com  tuy�n th� danh s�ch 
IL("LEAGUE") 
Include("\\script\\event\\wulin_2nd\\data.lua") 
Include("\\script\\lib\\gb_taskfuncs.lua") 
Include("\\script\\lib\\common.lua") 

CP_TASKID_TITLE = 1085 
WULIN_TASK_LOGIN = 1570 
-- script viet hoa By http://tranhba.com Const Value-- script viet hoa By http://tranhba.com  
WULIN_LGTYPE_REGISTER = 7 
WULIN_LGTYPE_ELECTOR = 8 
WULIN_LGTYPE_ACCOUNT = 9 
WULIN_FILE_MEMBERS_REGISTER = "relay_log\\wulin_2nd\\register.log" 
WULIN_FILE_MEMBERS_ALL = "relay_log\\wulin_2nd\\wulin_finalmember.log" 
WULIN_FILE_TONGMASTER = "relay_log\\wulin_2nd\\wulin_tongmaster.log" 
WULIN_MAXMEMBER = 100 -- script viet hoa By http://tranhba.com  m�i t� ph�c v� kh� c�ng 100 t�n tuy�n th� 
WULIN_MAXLEADER = 8 -- script viet hoa By http://tranhba.com  bang ch� c�ng tr��ng l�o 
WULIN_GB_NAME = " th� hai gi�i ��i h�i v� l�m " 
WULIN_MONEYBASE = 1000000 
WULIN_TB_TIME = { 
register = {open = 03030000, close = 03162400}, -- script viet hoa By http://tranhba.com  x�c nh�n t� c�ch th�i gian 
elector = {open = 03100000, close = 03162400}, -- script viet hoa By http://tranhba.com  c�nh ch�n th�i gian 
leader = {open = 03162400, close = 03232400} -- script viet hoa By http://tranhba.com  phi�u ch�n t�ng l�nh ��i 
} 

-- script viet hoa By http://tranhba.com LG Value-- script viet hoa By http://tranhba.com ELECTOR -- script viet hoa By http://tranhba.com  c�nh ��u ��ch t��ng quan tin t�c 
WULIN_LGTASK_MONEY = 1 -- script viet hoa By http://tranhba.com  ��u ch� s� ti�n 
WULIN_LGTASK_RANK = 3 -- script viet hoa By http://tranhba.com  tr��c m�t ��ng h�ng 
WULIN_LGTASK_DATE = 4 -- script viet hoa By http://tranhba.com  ��u ch� nh�t k� 
WULIN_LGTASK_TIME = 5 -- script viet hoa By http://tranhba.com  ��u ch� th�i gian 

-- script viet hoa By http://tranhba.com LG Value-- script viet hoa By http://tranhba.com REGISTER 
WULIN_LGTASK_VOTEDCNT = 1 
WULIN_LGTASK_CANVOTE = 2 
WULIN_LGTASK_LEADER = 3 
WULIN_LGTASK_DATE = 4 -- script viet hoa By http://tranhba.com  ��u ch� nh�t k� 
WULIN_LGTASK_TIME = 5 -- script viet hoa By http://tranhba.com  ��u ch� th�i gian 
WULIN_LGTASK_FACTION = 6 -- script viet hoa By http://tranhba.com  m�n ph�i Number 
WULIN_LGTASK_LEVEL = 7 -- script viet hoa By http://tranhba.com  c�p b�c 

-- script viet hoa By http://tranhba.com GB Value-- script viet hoa By http://tranhba.com  
WULIN_GBTASK_SWITH = 1 -- script viet hoa By http://tranhba.com  thi h�nh qu� tr�nh 0 kh�ng b�t ��u , 1 b�t ��u ghi danh c�ng c�nh ��u , 2 ghi danh k�t th�c c� th� b�t ��u ch�n l�y c�nh ��u th�nh c�ng tuy�n th� , 3 ��i h�i v� l�m tuy�n th� danh s�ch �� x�c ��nh c� th� b�t ��u ch�n l�nh ��i 
WULIN_GBTASK_REGCNT = 2 -- script viet hoa By http://tranhba.com  n�i tr��c v�o ch�n �� ghi danh nh�n s� 

-- script viet hoa By http://tranhba.com  l�y ���c ��i tho�i Npc t�n 
function wulin_npcname() 
return " ��i h�i v� l�m quan vi�n " 
end 

-- script viet hoa By http://tranhba.com Describe ��i tho�i 
function wlls_descript(str, ...) 
str = "<link=image[0,1]:\\spr\\npcres\\passerby\\passerby092\\passerby092_st.spr>"..wulin_npcname().."<link>\n##"..str 
if (type(arg[1]) == "table") then 
arg = arg[1] 
end 
if (getn(arg) <= 0) then 
Describe(str, 1,"K�t th�c ��i tho�i /OnCancel") 
else 
Describe(str, getn(arg), arg) 
end 
end 

-- script viet hoa By http://tranhba.com  n�u v� nil ho�c 0 , tr� v� 1 , n�u kh�ng tr� v� 0 
function FALSE(nValue) 
if (nValue == nil or nValue == 0 or nValue == "") then 
return 1 
else 
return nil 
end 
end 

-- script viet hoa By http://tranhba.com  ��t ���c khu d�ng/u�ng ID 
function wl_GetZone() 
return WULIN_TB_ZONEID[GetGateWayClientID()] 
end 

function wl_GetMember() 
return WULIN_TB_ROLES[GetGateWayClientID()].n 
end 

function ascend(tb_lg1, tb_lg2)-- script viet hoa By http://tranhba.com jiang 
if (tb_lg1[2] == tb_lg2[2]) then 
if (tb_lg1[3] == nil) then 
return nil 
else 
return (tb_lg1[3] < tb_lg2[3]) 
end 
else 
return (tb_lg1[2] > tb_lg2[2]) 
end 
end
