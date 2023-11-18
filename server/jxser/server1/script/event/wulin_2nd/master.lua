Include("\\script\\event\\wulin_2nd\\head.lua") 
IncludeLib("TITLE") 

_wulin_tb_mem = {} 
_wulin_tb_leader = {} 
function main() 
nClientID = wl_GetZone() 
if (nClientID == nil or nClientID == WULIN_TB_DISALLOWZONE[nClientID]) then 
wlls_descript("V�n khu d�ng/u�ng kh�ng thu�c v� th� hai gi�i ��i h�i v� l�m khu d�ng/u�ng ch�n l�a ph�m vi , t��ng t�nh xin g�p quan ph��ng trang web jx.kingsoft.com . ") 
return 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) >= 3) then 
if (getn(_wulin_tb_mem) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while (not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
				_wulin_tb_mem[getn(_wulin_tb_mem) + 1] = rolename
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 4) then 
if (getn(_wulin_tb_leader) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while(not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
local leader_rank = LG_GetLeagueTask(n_lid, WULIN_LGTASK_LEADER) 
if (leader_rank ~= 0) then 
						_wulin_tb_leader[getn(_wulin_tb_leader) + 1] = {rolename, leader_rank}
end 
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
sort(_wulin_tb_leader, ascend) 
end 
end 
end 

local aryszContent = { 
register = { " ta mu�n tu�n tra n�i tr��c v�o vi tuy�n th� danh s�ch /wulin_query", 
" ta mu�n x�c nh�n ta tuy�n th� t� c�ch /wulin_register", 
" ta mu�n tham d� tuy�n th� t� c�ch c�nh ��u /wulin_compete", 
" ta m�u ch�t l�y tuy�n th� ��u h�m /wulin_title",}, 
leader = { " ta mu�n b� phi�u l�a ch�n t�ng l�nh ��i /wulin_leader", 
" ta mu�n tu�n tra ��i h�i tuy�n th� danh s�ch /wulin_queryfinal", 
" ta mu�n l�y tr� v� c�nh ��u t� kim /wulin_giveback", 
" ta m�u ch�t l�y tuy�n th� ��u h�m /wulin_title",}, 
over = { " ta mu�n tu�n tra t�ng l�nh ��i /wulin_queryleader", 
" ta mu�n tu�n tra ��i h�i tuy�n th� danh s�ch /wulin_queryfinal", 
" ta mu�n l�y tr� v� c�nh ��u t� kim /wulin_giveback", 
" ta m�u ch�t l�y tuy�n th� ��u h�m /wulin_title",}, 
common = { " th� hai gi�i ��i h�i v� l�m t� c�ch d� thi d� ch�n tr� gi�p /wulin_helpinfo", 
" h�y b� /OnCancel"} } 
local szMsg = " th� hai gi�i ��i h�i v� l�m s�p b�t ��u , tr��c m�t x� vu tuy�n th� ch�n l�a giai �o�n , m�i ph�c v� kh� s� c� <color=yellow>"..WULIN_MAXMEMBER.." t�n <color> ra tuy�n tuy�n th� . <color=yellow>3 th�ng 3 ng�y ~3 th�ng 16 ng�y <color> , ng��i c� th� � ch� n�y c�a ta x�c nh�n m�nh tuy�n th� t� c�ch ho�c l� tham d� tuy�n th� t� c�ch c�nh ��u . �ang ch�n tay danh s�ch to�n b� x�c ��nh sau <color=yellow>#3 th�ng 17 ng�y ~3 th�ng 23 ng�y #<color> , �em ti�n h�nh tuy�n th� phi�u ch�n t�ng l�nh ��i . c�n k� d� ch�n quy t�c xin g�p quan ph��ng trang web <color=yellow>jx.kingsoft.com<color> . " 
local tbOpp = {} 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
if (WULIN_TB_TIME.register.open <= curdate and WULIN_TB_TIME.register.close >= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 1) then 
for i = 1, getn(aryszContent.register) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.register[i]
end 
elseif (WULIN_TB_TIME.leader.open<= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 3) then 

for i = 1, getn(aryszContent.leader) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.leader[i]
end 
elseif (WULIN_TB_TIME.leader.close <= curdate and gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 4) then 

for i = 1, getn(aryszContent.over) do 
			tbOpp[getn(tbOpp) + 1] = aryszContent.over[i]
end 
end 
for i = 1, getn(aryszContent.common) do 
		tbOpp[getn(tbOpp) + 1] = aryszContent.common[i]
end 
wlls_descript(szMsg, tbOpp) 
end 

function wulin_register() 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
local rolename = GetName() 
local n_gtype = wulin_canregister(rolename) 
if (n_gtype== nil) then 
elseif (n_gtype == 0) then 
wlls_descript("Ng�i kh�ng c� b� n�i tr��c v�o vi t� c�ch , xin/m�i tu�n tra v�o vi tuy�n th� danh s�ch l�y h�ch ��i v�i b�n th�n t� c�ch . t��ng t�nh xin g�p quan ph��ng trang web <color=yellow>jx.kingsoft.com<color> . ") 
else 
local szParam = GetName().." "..GetAccount().." "..tostring(GetLevel()).." "..tostring(GetLastFactionNumber()).." "..tostring(n_gtype) 
-- script viet hoa By http://tranhba.com  th�ng b�o relay , �em b�n th�n gia nh�p chi�n ��i v�i , c�ng nh� log#Name#Account#Level#Faction 
LG_ApplyDoScript(1, "", "", "\\script\\event\\wulin_2nd\\members.lua", "wulin_register", szParam , "", "") 
SetTask(WULIN_TASK_LOGIN, 1) 
WriteLog(date().." Name:"..GetName().."\tAccount:"..GetAccount().."\t x�c nh�n n�i tr��c v�o vi ��i h�i v� l�m tuy�n th� t� c�ch ") 
end 
end 

function wulin_canregister(rolename) 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, rolename))) then 
wlls_descript("T�n c�a ng�i �� � th� hai gi�i ��i h�i v� l�m bi�t hi�u b� th��ng ghi danh , ng�i ch� c�n an t�m l�m chu�n b� , ��i ��i h�i v� l�m ��ch duy m�c ch�nh th�c v�ch tr�n , li�n c� th� ��i tri�n th�n th� , quy�t chi�n v� l�m . ") 
return nil 
elseif (GetLevel()< 90) then 
wlls_descript("��i h�i v� l�m ch�nh l� anh h�ng thi�n h� lu�n ki�m t� v� ��t , b�n ng��i c�p v�n ch�a t�i 90 c�p , th�nh t�u th��ng s� c�n thi�u s�t ch�t h�a h�u , c�n l� tr� v� ti�p t�c nghi�n t�p v� ngh� cho th�a ��ng #") 
return nil 
elseif (GetLastFactionNumber() == -1) then 
wlls_descript("��i h�i v� l�m ch�nh l� anh h�ng thi�n h� lu�n ki�m t� v� ��t , ng��i � ��y th�nh t�u th��ng s� c�n thi�u s�t ch�t h�a h�u , c�n l� tr� v� ti�p t�c nghi�n t�p v� ngh� cho th�a ��ng #") 
return nil 
end 
local n_gtype = wulin_check_player(rolename) 
if (n_gtype == nil) then -- script viet hoa By http://tranhba.com  kh�ng c� � ��y danh s�ch trung 
return 0 
elseif (n_gtype == 6) then -- script viet hoa By http://tranhba.com  th��ng gi�i v� mi�n v� ��ch 
if (GetTask(CP_TASKID_TITLE) ~= 9) then -- script viet hoa By http://tranhba.com  t�n c� th� c�ng th��ng gi�i v� mi�n v� ��ch n�ng t�n , c�ng kh�ng c� �� tham gia th��ng gi�i ��i h�i v� l�m 
return 0 
end 
elseif (GetLevel() < 120) then -- script viet hoa By http://tranhba.com  li�n cu�c so t�i tuy�n th� ��u � ��y 120 c�p th��ng 
return 0 
end 
return n_gtype 
end 

-- script viet hoa By http://tranhba.com  t� kia gi�i v� l�m li�n cu�c so t�i ��t ���c ��ch tuy�n th� t� c�ch 
function wulin_check_player(strRoleName) 
-- script viet hoa By http://tranhba.com  do return WULIN_TB_ROLES[nClientID][strRoleName] end 

for n_gtype, tb_gname in WULIN_TB_HISTORY[nClientID] do 
if n_gtype == 3 then 
for n_ftype, tb_fname in tb_gname do 
for i = 1, getn(tb_fname) do 
if (strRoleName == tb_fname[i]) then 
return n_gtype 
end 
end 
end 
else 
for i = 1, getn(tb_gname) do 
if (strRoleName == tb_gname[i]) then 
return n_gtype 
end 
end 
end 
end 
return nil 
end 

function wulin_query() 
local aryszContent = {"Th� gi�i th�p ��i cao th� # ch�n t�i 2 th�ng 28 ng�y #/#wulin_want2query(1)", 
" l�n th� nh�t v� l�m li�n cu�c so t�i chi hai ng��i cu�c so t�i /#wulin_want2query(2)", 
" th� hai gi�i v� l�m li�n cu�c so t�i chi �an h�ng cu�c so t�i /#wulin_want2query(3)", 
" l�n th� ba v� l�m li�n cu�c so t�i chi th�y tr� cu�c so t�i /#wulin_want2query(4)", 
" l�n th� t� v� l�m li�n cu�c so t�i chi hai ng��i cu�c so t�i /#wulin_want2query(5)", 
" th��ng gi�i ��i h�i v� l�m v� mi�n v� ��ch /#wulin_want2query(6)",} 
local tbOpp = {"Tr� v� /main", 
" h�y b� /OnCancel"} 
for i = 6, 1, -1 do 
if (not FALSE(getn(WULIN_TB_HISTORY[nClientID][i]))) then 
tinsert(tbOpp, 1, aryszContent[i]) 
end 
end 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT) == 0) then 
wlls_descript("<color=red> tr��c m�t c�n kh�ng c� tuy�n th� t�i x�c nh�n t� c�ch , xin/m�i l�a ch�n n�i tr��c v�o vi t� c�ch tuy�n th� lo�i kh�c #<color>", tbOpp) 
else 
wlls_descript("<color=red> tr��c m�t �� c� <color=yellow>"..gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT).." t�n <color> tuy�n th� x�c nh�n t� c�ch , xin/m�i l�a ch�n n�i tr��c v�o vi t� c�ch tuy�n th� lo�i kh�c #<color>", tbOpp) 
end 
end 

function wulin_want2query(nSel) 
if (nSel == 3) then -- script viet hoa By http://tranhba.com  n�u nh� m�n ph�i �an h�ng cu�c so t�i , ��c th� m�t c�i 
wulin_query2faction() 
else 
if (not WULIN_TB_HISTORY[nClientID][nSel] or getn(WULIN_TB_HISTORY[nClientID][nSel]) == 0) then 
wlls_descript("N�n lo�i h�nh v�o vi t� c�ch kh�ng c� n�i tr��c v�o vi tuy�n th� . ","Tr� v� /wulin_query","H�y b� /OnCancel") 
return 
end 
wulin_query2member(WULIN_TB_HISTORY[nClientID][nSel]) 
end 
end 

function wulin_query2faction() 
local tbOpp = {"Thi�u L�m �an h�ng cu�c so t�i /wulin_factmember", 
" Thi�n v��ng �an h�ng cu�c so t�i /wulin_factmember", 
" ���ng m�n �an h�ng cu�c so t�i /wulin_factmember", 
" n�m ��c �an h�ng cu�c so t�i /wulin_factmember", 
" Nga Mi �an h�ng cu�c so t�i /wulin_factmember", 
" th�y kh�i �an h�ng cu�c so t�i /wulin_factmember", 
" C�i Bang �an h�ng cu�c so t�i /wulin_factmember", 
" ng�y nh�n �an h�ng cu�c so t�i /wulin_factmember", 
" V� ���ng �an h�ng cu�c so t�i /wulin_factmember", 
" C�n L�n �an h�ng cu�c so t�i /wulin_factmember", 
" tr� v� /wulin_query", 
" h�y b� /OnCancel"} 
wlls_descript("<color=red> xin/m�i l�a ch�n �an h�ng cu�c so t�i m�n ph�i #<color>", tbOpp) 
end 

function wulin_factmember(nSel) 
	local faction = nSel + 1
local tb_mem = WULIN_TB_HISTORY[nClientID][3][faction] 
if (getn(tb_mem) == 0) then 
wlls_descript("N�n m�n ph�i kh�ng c� tuy�n th� v�o vi . ","Tr� v� /wulin_query2faction","H�y b� /OnCancel") 
return 
end 
wulin_query2member(tb_mem) 
end 


function wulin_query2member(tb_mem) 
local szmsg = "<color=red> tuy�n th� danh s�ch nh� sau #<color>\n" 
for i = 1, getn(tb_mem) do 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, tb_mem[i]))) then 
szmsg = safeshow(szmsg..tb_mem[i]).." <color=red># �� ghi danh #<color>\n" 
else 
szmsg = safeshow(szmsg..tb_mem[i]).."\n" 
end 
end 
wlls_descript(szmsg) 
end 

-- script viet hoa By http://tranhba.com  c�nh ��u tuy�n th� t� c�ch 
function wulin_compete() 
local curdate = tonumber(GetLocalDate("%m%d%H%M")) 
if (WULIN_TB_TIME.elector.open > curdate or WULIN_TB_TIME.elector.close < curdate) then 
wlls_descript("C�nh ��u ��i h�i v� l�m tuy�n th� t� c�ch v�i <color=yellow>2006 n�m 3 th�ng 10 ng�y 0#00~2006 n�m 3 th�ng 16 ng�y 24#00<color># l�y ph�c v� kh� th�i gian l� ch�nh x�c # ti�n h�nh . \n## tham d� c�nh ��u ��ch nh� ch�i c�p b�c kh�ng nh� v�i <color=yellow>90 c�p <color> . m�i t�n nh� ch�i c� th� t� do ��u ch� s� ti�n , m�i l�n l�y <color=yellow>100 v�n <color> v� th�p nh�t ��u ng�n s� ti�n . \n## c�nh ��u th�nh c�ng nh� ch�i , k� ��u ch� s� ti�n �em l�m c�nh ��u t� kim , t� h� th�ng thu l�y # c�nh ��u th�t b�i nh� ch�i , l� c� th� to�n ng�ch l�nh h�i m�nh ��u ch� s� ti�n . ") 
return 
end 

if (wulin_canregister(GetName()) == nil) then 

elseif(not FALSE(wulin_canregister(GetName()))) then 
wlls_descript("Ng�i �� c� b� n�i tr��c v�o vi ��i h�i v� l�m ��ch t� c�ch , ch� c�n � ch� n�y c�a ta x�c nh�n ghi danh l� ���c c� ch�nh th�c tuy�n th� t� c�ch , kh�ng c�n tham d� c�nh ��u . ","Ta mu�n x�c nh�n tuy�n th� t� c�ch /wulin_register","Tr��c h�t �� cho ta suy ngh� m�t ch�t /OnCancel") 
else 
local n_money, rank = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY), LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_RANK) 
local szmsg = "" 
if (n_money ~= 0 and rank == 0) then 
szmsg = " ng�i tr��c m�t ��ch c�nh ��u s� ti�n v� <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , t�m th�i c�n kh�ng c� h�ng , c� th� sau n�y tu�n tra ��ng h�ng . \n##" 
elseif (n_money ~= 0 and rank ~= 0) then 
szmsg = " ng�i tr��c m�t ��ch c�nh ��u s� ti�n v� <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , tr��c m�t h�ng v� th� <color=red>"..rank.."<color> t�n . \n##" 
end 
wlls_descript(szmsg.." v�n khu d�ng/u�ng n�i tr��c v�o vi tuy�n th� c�ng <color=green>"..wl_GetMember().." t�n <color> , �� x�c nh�n v�o vi t� c�ch tuy�n th� danh ng�ch v� <color=green>"..gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_REGCNT).." t�n <color> . \n##<color=yellow> c�nh ��u danh ng�ch <color># v�n khu d�ng/u�ng t�ng c�ng c� <color=red>"..(WULIN_MAXMEMBER-wl_GetMember()).." t�n <color> c� ��nh ��i h�i v� l�m c�nh ��u tuy�n th� danh ng�ch . ��ng th�i , � trong v�ng th�i gian quy ��nh kh�ng c� x�c nh�n ghi danh tham gia ��i h�i v� l�m ��ch # c� v�o vi t� c�ch ��ch # tuy�n th� k� danh ng�ch , �em t� ��ng k� v�o c�nh ��u tuy�n th� danh ng�ch trung , ta s� c�n c� ��u ch� s� ti�n thu�n l�n ch�n l�y nh� ch�i l�y ���c th� hai gi�i ��i h�i v� l�m tuy�n th� t� c�ch . \n##<color=yellow> c�nh ��u quy t�c <color># m�i m�t l�n �t nh�t ��u ch� <color=red>100 v�n <color> , nhi�u nh�t ��u ch� <color=red>5 �c <color> . nh� ch�i nh�ng ti�n h�nh <color=red> nhi�u l�n ��u ch� <color> , ��u ng�n ti�n b�c <color=red> th��ng h�n kh�ng phong ��nh <color> . tham d� c�nh ��u ��ch nh� ch�i c�p b�c kh�ng nh� v�i <color=red>90 c�p <color> . c�nh ��u th�nh c�ng nh� ch�i , k� ��u ch� s� ti�n �em l�m c�nh ��u t� kim , t� h� th�ng thu l�y # c�nh ��u th�t b�i nh� ch�i , l� c� th� to�n ng�ch l�nh h�i m�nh ��u ch� s� ti�n . ","Ta mu�n c�nh ��u tuy�n th� t� c�ch /wulin_want2compete","Ta suy ngh� m�t ch�t tr��c /OnCancel") 
end 
end 

function wulin_want2compete() 
AskClientForNumber("wulin_sure2compete", 1000000, 500000000,"Xin/m�i ��a v�o ��u ch� s� ti�n :"); 
end 

function wulin_sure2compete(nMoney) 
-- script viet hoa By http://tranhba.com  ki�m tra ��u ch� s� ti�n 
if (nMoney < 1000000 or nMoney > 500000000) then 
wlls_descript("M�i l�n c�nh ��u th�p nh�t 100 v�n , cao nh�t kh�ng v��t qua 5 �c , xin x�c nh�n ng��i thua v�o ��ch s� ti�n . ") 
return 
end 
if (mod(nMoney, WULIN_MONEYBASE) ~= 0) then 
wlls_descript("C�nh ��u m�i l�n l�y <color=red>100 v�n <color> v� th�p nh�t ��u ng�n s� ti�n , c�nh ��u s� ti�n c�n v� <color=red>100 v�n <color> ��ch ch�nh s� l�n . xin/m�i l�n n�a c�nh ��u . ") 
return 
end 
wlls_descript("Ng�i ��u ch� ��ch s� ti�n v� <color=red>"..nMoney.." hai <color> , xin x�c nh�n ng�i ��ch s� ti�n ��m . ","Ta x�c nh�n /#wulin_final2compete("..nMoney..")","H�y b� c�nh ��u /OnCancel") 
end 

function wulin_final2compete(nMoney) 
-- script viet hoa By http://tranhba.com  l�n n�a x�c nh�n c�nh ��u t� c�ch 
if (wulin_canregister(GetName()) == nil or wulin_canregister(GetName()) == 1) then 
return 
end 
if (GetCash() >= nMoney) then 
local result, rank = wulin_docompete(GetName(), GetAccount(), nMoney) 
if (result) then 
Pay(nMoney) 
if (rank == 0) then 
wlls_descript("Ng�i th�nh c�ng tham d� l�n n�y c�nh ��u , tr��c m�t c�nh ��u s� ti�n v� <color=red>"..(result * WULIN_MONEYBASE).." hai <color> , t�m th�i c�n kh�ng c� h�ng , xin sau tu�n tra ng�i ��ch tr��c m�t h�ng . ") 
else 
wlls_descript("Ng�i th�nh c�ng tham d� l�n n�y c�nh ��u , tr��c m�t c�nh ��u s� ti�n v� <color=red>"..(result * WULIN_MONEYBASE).." hai <color> , t�m th�i ��ng h�ng v� <color=yellow>"..rank.."<color> t�n , ��ng h�ng c�n kh�ng c� c� m�i , xin sau tr� l�i tu�n tra ng�i ��ch tr��c m�t h�ng . ") 
end 
WriteLog(date().."\tName:"..GetName().."\tAccount:"..GetAccount().."\t c�nh ��u ��i h�i v� l�m tuy�n th� t� c�ch ��u nh�p "..nMoney.." hai , c�ng ��u nh�p "..(result * WULIN_MONEYBASE).." hai . ") 
else-- script viet hoa By http://tranhba.com  th�t b�i 
wlls_descript("C�nh ��u x�y ra v�n �� , xin h�u tr� l�i . ") 
end 
else 
wlls_descript("Ng�i tr�n ng��i gi�ng nh� kh�ng c� mang �� <color=red>"..nMoney.."<color> ng�n l��ng nga , l� th�t mu�n t�i c�nh ��u sao ? c�ng kh�ng n�n khai ta c��i gi�n a # c�n l� mang �� ng�n l��ng tr� l�i �i . ") 
end 
end 

function wulin_docompete(rolename, roleaccount, n_money) 
local n_lid = LG_GetLeagueObj(WULIN_LGTYPE_ELECTOR, rolename) 
if (FALSE(n_lid)) then -- script viet hoa By http://tranhba.com  n�u nh� chi�n ��i c�n ch�a th�nh l�p , b�y gi� khai s�ng 
wulin_creatNewmember(WULIN_LGTYPE_ELECTOR, rolename, roleaccount) 
local n_level = GetLevel() 
local n_faction = GetLastFactionNumber() 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_FACTION, n_faction) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_LEVEL, n_level) 
end 
-- script viet hoa By http://tranhba.com  local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  LG_SetLeagueInfo(nNewLeagueID, WULIN_LGTYPE_ELECTOR, rolename) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
-- script viet hoa By http://tranhba.com  LG_ApplyAddLeague(nNewLeagueID, "", "") 
-- script viet hoa By http://tranhba.com  LG_FreeLeagueObj(nNewLeagueID) 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  gia nh�p chi�n ��i l�y tr��ng m�c 
-- script viet hoa By http://tranhba.com  local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
-- script viet hoa By http://tranhba.com  LGM_SetMemberInfo(nMemberID, roleaccount, 0, WULIN_LGTYPE_ELECTOR, rolename) 
-- script viet hoa By http://tranhba.com  LGM_ApplyAddMember(nMemberID, "", "") 
-- script viet hoa By http://tranhba.com  LGM_FreeMemberObj(nMemberID) 
-- script viet hoa By http://tranhba.com  end 
local pre_money = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_MONEY) 
LG_ApplyAppendLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_MONEY, floor(n_money / WULIN_MONEYBASE)) -- script viet hoa By http://tranhba.com  ��u ch� s� ti�n 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_DATE, tonumber(GetLocalDate("%d%H"))) -- script viet hoa By http://tranhba.com  ��u ch� nh�t k� 
LG_ApplySetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_TIME, tonumber(GetLocalDate("%M%S"))) -- script viet hoa By http://tranhba.com  ��u ch� th�i gian 
	return (pre_money + floor(n_money / WULIN_MONEYBASE)),LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, rolename, WULIN_LGTASK_RANK)
end 

-- script viet hoa By http://tranhba.com  phi�u ch�n t�ng l�nh ��i 
function wulin_leader() 
if (gb_GetTask(WULIN_GB_NAME, WULIN_GBTASK_SWITH) == 3) then 
-- script viet hoa By http://tranhba.com n_lid, rolename 
if (getn(_wulin_tb_mem) == 0) then 
local n_lid = LG_GetFirstLeague(WULIN_LGTYPE_REGISTER) 
while (not FALSE(n_lid)) do 
local rolename = LG_GetLeagueInfo(n_lid) 
				_wulin_tb_mem[getn(_wulin_tb_mem) + 1] = rolename
n_lid = LG_GetNextLeague(WULIN_LGTYPE_REGISTER, n_lid) 
end 
end 
if (not FALSE(wulin_check_canleader())) then 
wlls_descript("<color=yellow> phi�u ch�n t�ng l�nh ��i <color>#2006 n�m 3 th�ng 17 ng�y 0#00~2006 n�m 3 th�ng 23 ng�y 24#00# l�y ph�c v� kh� th�i gian l� ch�nh x�c # trong l�c , �ang x�c ��nh ��ch ��i h�i v� l�m tuy�n th� danh s�ch trung , b� phi�u l�a ch�n ng�i ch� � khu d�ng/u�ng ��ch t�ng l�nh ��i , m�i ng��i gi�i h�n m�t phi�u . ng�i c� th� � ch� n�y c�a ta b� phi�u . ","C�n c� ch� ��nh tuy�n th� b� phi�u /wulin_askforleadername","C�n c� ��i h�i v� l�m tuy�n th� li�t bi�u b� phi�u /#wulin_showmember(0,1)","H�y b� /OnCancel") 
end 
end 
end 

function wulin_check_canleader() 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
wlls_descript("Ng�i kh�ng ph�i l� th� hai gi�i ��i h�i v� l�m tuy�n th� , kh�ng th� tham gia phi�u ch�n t�ng l�nh ��i . ") 
return nil 
elseif (LG_GetLeagueTask(WULIN_LGTYPE_REGISTER, GetName(), WULIN_LGTASK_CANVOTE) ~= 0) then-- script viet hoa By http://tranhba.com  �� ��u qu� phi�u 
wlls_descript("Ng�i �� ��u qu� phi�u , th� kh�ng th� n�a ��i v�i tuy�n th� ti�n h�nh b� phi�u . ") 
return nil 
end 
return 1 
end 

function wulin_askforleadername() 
AskClientForString("wulin_want2leader", "", 1, 16,"Xin/m�i ��a v�o vai tr� t�n "); 
end 

function wulin_showmember(start, pages) 
local tbOpp = {} 
if (getn(_wulin_tb_mem) - start <= 10) then 
for i = 1, getn(_wulin_tb_mem) - start do 
			tbOpp[getn(tbOpp) + 1] = safeshow(_wulin_tb_mem[start + i]).."/#wulin_want2leader(\""..safestr(_wulin_tb_mem[start + i]).."\")"
end 
else 
for i = 1, 10 do 
			tbOpp[getn(tbOpp) + 1] = safeshow(_wulin_tb_mem[start + i]).."/#wulin_want2leader(\""..safestr(_wulin_tb_mem[start + i]).."\")"
end 
		tbOpp[getn(tbOpp) + 1] = "��һҳ/#wulin_showmember("..(start + 10)..","..(pages + 1)..")"
end 
if (pages ~= 1) then 
		tbOpp[getn(tbOpp) + 1] = "��һҳ/#wulin_showmember("..(start - 10)..","..(pages - 1)..")"
end 
	tbOpp[getn(tbOpp) + 1] = "ȡ��/OnCancel"
wlls_descript("Danh s�ch nh� sau , xin/m�i l�a ch�n #<color=red>#"..wulin_getPage(pages).."#<color>", tbOpp) 
end 

function wulin_want2leader(rolename) 
wlls_descript("Ng�i �em s� ��i <color=red>"..safeshow(rolename).."<color> ti�n h�nh b� phi�u sao ? ","Ta x�c nh�n /#wulin_sure2leader(\""..safestr(rolename).."\")","Ta c�n �ang suy ngh� /OnCancel") 
end 

function wulin_sure2leader(rolename) 
if (FALSE(wulin_check_canleader())) then 
return 
end 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, rolename))) then 
wlls_descript("Nh� ch�i <color=red>"..rolename.."<color> kh�ng ph�i l� ��i h�i v� l�m tuy�n th� , kh�ng th� ��i v�i n�n nh� ch�i ti�n h�nh b� phi�u . ") 
return 
end 

	LG_ApplyAppendLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_VOTEDCNT, 1)-- script viet hoa By http://tranhba.com ͶƱ+1
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_DATE, date("%d")) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, rolename, WULIN_LGTASK_TIME, date("%H%M")) 
LG_ApplySetLeagueTask(WULIN_LGTYPE_REGISTER, GetName(), WULIN_LGTASK_CANVOTE, 1)-- script viet hoa By http://tranhba.com  �� b� phi�u 
wlls_descript("Ng�i ��i v�i <color=yellow>"..safeshow(rolename).."<color> ��ch b� phi�u th�nh c�ng #") 
WriteLog(date().." Name:"..GetName().." Account:"..GetAccount().."\t h��ng ["..rolename.."] b� phi�u ch�n t�ng l�nh ��i ") 
end 

function wulin_getPage(page) 
local tb_pagename = { 
[1] = " t� th� nh�t ", 
[2] = " t� th� hai ", 
[3] = " th� ba t� ", 
[4] = " th� t� t� ", 
[5] = " th� n�m t� ", 
[6] = " th� s�u t� ", 
[7] = " th� b�y t� ", 
[8] = " th� t�m t� ", 
[9] = " th� ch�n t� ", 
[10] = " th� m��i t� ", 
[11] = " th� m��i m�t t� ", 
[12] = " th� m��i hai t� ", 
} 
return tb_pagename[page] 
end 

function wulin_queryfinal() 
wulin_showqueryfinal(0,1) 
end 

function wulin_showqueryfinal(start, pages) 
local tbOpp = {} 
local szMsg = " tuy�n th� danh s�ch nh� sau #<color=red>#"..wulin_getPage(pages).."#<color>" 
if (getn(_wulin_tb_mem) - start <= 10) then 
for i = 1, getn(_wulin_tb_mem) - start do 
			szMsg = szMsg.."\n����"..safeshow(_wulin_tb_mem[start + i])
end 
else 
for i = 1, 10 do 
			szMsg = szMsg.."\n����"..safeshow(_wulin_tb_mem[start + i])
-- script viet hoa By http://tranhba.com 			tbOpp[getn(tbOpp) + 1] = _wulin_tb_mem[start + i].."/#wulin_showqueryfinal("..(start + 10)..","..(pages + 1)..")"
end 
		tbOpp[getn(tbOpp) + 1] = "��һҳ/#wulin_showqueryfinal("..(start + 10)..","..(pages + 1)..")"
end 
if (pages ~= 1) then 
		tbOpp[getn(tbOpp) + 1] = "��һҳ/#wulin_showqueryfinal("..(start - 10)..","..(pages - 1)..")"
end 
	tbOpp[getn(tbOpp) + 1] = "ȡ��/OnCancel"
wlls_descript(szMsg, tbOpp) 
end 

function wulin_giveback() 
if (FALSE(wulin_check_cangiveback())) then 
return 
end 
local n_money = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) 
if (n_money > 500) then 
wlls_descript("B�i v� ng�i s� ��u s� ti�n v� <color=red>"..(n_money*WULIN_MONEYBASE).." hai <color> l�n h�n <color=red>5 �c <color> , ta �em ph�n l�n tr� l�i ng�i ��ch t�t c� ��u ch� s� ti�n , m�i l�n tr� l�i s� ti�n th��ng h�n v� <color=red>5 �c <color> . ","Hi�u , xin/m�i tr� l�i cho ta /#wulin_sure2giveback(500)","Ta ch� m�t ch�t tr� l�i nh�n l�y /OnCancel") 
else 
wlls_descript("Ng�i ��ch ��u ch� s� ti�n v� <color=red>"..(n_money*WULIN_MONEYBASE).."<color> hai , b�y gi� thu h�i sao ? ","D�/� , xin/m�i tr� l�i cho ta /#wulin_sure2giveback("..n_money..")","Ta ch� m�t ch�t tr� l�i nh�n l�y /OnCancel") 
end 
end 

function wulin_sure2giveback(n_money) 
if (FALSE(wulin_check_cangiveback())) then 
return 
end 
local curmoney = LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) 
if (n_money > curmoney) then 
return 
end 
LG_ApplyAppendLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY, (-n_money)) 
Earn(n_money * WULIN_MONEYBASE) 
if (n_money == curmoney) then 
wlls_descript("Ng�i ��ch ��u ch� kim <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , �� tr� l�i cho ng�i , xin/m�i nghi�m thu . ") 
else 
wlls_descript("Ng�i ��ch ��u ch� kim <color=red>"..(n_money * WULIN_MONEYBASE).."<color> hai , �� tr� l�i cho ng�i , xin/m�i nghi�m thu . ng�i c�n c� c�n th�a l�i kho�n ng�ch "..((curmoney - n_money) * WULIN_MONEYBASE).." , xin nh� ph�i t�i l�y tr� v� . ") 
end 
WriteLog(date().." Name:"..GetName().." Account:"..GetAccount().." nh�n l�y tr� v� ��u ch� kim "..(n_money*WULIN_MONEYBASE)) 
end 

function wulin_check_cangiveback() 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_ELECTOR, GetName()))) then 
wlls_descript("Ng�i ch�a t�ng c� tham gia ��i h�i v� l�m tuy�n th� t� c�ch ��ch c�nh ��u . ch� c� tham gia c�nh ��u h�n n�a c�nh ��u th�t b�i nh� ch�i m�i c� th� d�n tr� v� to�n ng�ch ��ch ��u ch� s� ti�n . ") 
return nil 
else 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
wlls_descript("Ng�i th�nh c�ng c�nh ��u v� ��i h�i v� l�m tuy�n th� , c�ng kh�ng c�n c�n mu�n tr� c�m tr� v� ��u ch� kim li�u . ") 
return nil 
elseif (LG_GetLeagueTask(WULIN_LGTYPE_ELECTOR, GetName(), WULIN_LGTASK_MONEY) <= 0) then 
wlls_descript("Ng�i �� to�n ng�ch d�n tr� v� ��u ch� kim , kh�ng c� g� c� th� tr� l�i cho ng�i ��ch l�u #") 
return nil 
elseif (GetCash() >= 1000000000) then 
wlls_descript("Ng�i tr�n ng��i mang ��ch ti�n qu� nhi�u , �� ng�a v�n nh�t , ng�i hay l� tr��c �em t�i �eo l�ng ��ch ti�n ch�a l�i ��n l�y �i . ") 
return nil 
end 
end 
return 1 
end 

WULIN_TB_INFO = { 
"######<color=red> ��i h�i v� l�m n�i tr��c t� c�ch x�c nh�n <color>\n## c� b� v�o vi t� c�ch ��ch tuy�n th� , � nh�t ��nh k� h�n <color=yellow>#3 th�ng 3 ng�y ~3 th�ng 16 ng�y #<color> b�n trong , � ch� n�y c�a ta x�c ��nh ghi danh tham gia th� hai gi�i ��i h�i v� l�m , l� c� th� ��t ���c th� hai gi�i ��i h�i v� l�m - tuy�n th� t� c�ch . � trong v�ng th�i gian quy ��nh , ch�a c� x�c ��nh ghi danh tuy�n th� tham gia l� coi l� <color=yellow> t� ��ng b� cu�c <color> , k� danh ng�ch t� ��ng k� v�o c�nh ��u tuy�n th� danh ng�ch trung . \n##<color=yellow> c� c� n�i tr��c v�o vi t� c�ch ��ch tuy�n th� bao g�m #<color>\n## ki�p tr��c gi�i th�p ��i cao th� # ch�n ch� 2006 n�m 2 th�ng 28 ng�y 24#00# . \n## th��ng gi�i ��i h�i v� l�m t�t c� tranh t�i # �o�n th� cu�c so t�i ngo�i tr� # ��ch v� mi�n v� ��ch . \n## c�c gi�i v� l�m li�n cu�c so t�i tr��c 4 t�n # c�n c� c�c khu d�ng/u�ng c�ng d�ng/u�ng ��ch b�t ��ng t�nh hu�ng c� �i�u b�t ��ng #\n<color=red> t��ng t�nh xin g�p quan ph��ng trang web jx.kingsoft.com<color>", 
"######<color=red> ��i h�i v� l�m tuy�n th� t� c�ch c�nh ��u <color>\n## m�i t� ph�c v� kh� c� <color=yellow>"..WULIN_MAXMEMBER.." t�n <color> ��i h�i v� l�m tuy�n th� , tr� �i n�i tr��c v�o vi t� c�ch ��ch tuy�n th� , s� c�n s�t l�i nh�t ��nh c�nh ��u tuy�n th� danh ng�ch , ��ng th�i � trong v�ng th�i gian quy ��nh , ch�a c� x�c ��nh ghi danh tham gia ��i h�i v� l�m ��ch # c� v�o vi t� c�ch ��ch # tuy�n th� l� coi l� t� ��ng b� cu�c , k� danh ng�ch t� ��ng k� v�o c�nh ��u tuy�n th� danh ng�ch trung . \n## c�nh ��u ph��ng ph�p ch�n l�a <color=yellow> th�m ng�n c�nh ��u <color> . m�i t�n nh� ch�i c� th� t� do ��u ch� s� ti�n , nh�ng ch� c� th� tu�n tra m�nh <color=yellow> ��u ch� s� ti�n c�ng v�i ��ng h�ng t�nh hu�ng <color> . � c�nh ��u th�i gian <color=yellow>#3 th�ng 10 ng�y ~3 th�ng 16 ng�y #<color> sau khi k�t th�c , s� c�n c� ��u ch� s� ti�n ��ng h�ng , cho c�ng t��ng �ng tuy�n th� th� hai gi�i ��i h�i v� l�m - tuy�n th� t� c�ch . \n## c�nh ��u th�nh c�ng tuy�n th� , k� ��u ch� s� ti�n �em l�m c�nh ��u t� kim , t� h� th�ng thu l�y # c�nh ��u th�t b�i tuy�n th� , l� c� th� to�n ng�ch d�n tr� v� m�nh ��u ch� kim . m�i l�n nhi�u nh�t lui ph�n cho tuy�n th� ��ch s� ti�n th��ng h�n v� 5 �c . \n## tham d� c�nh ��u ��ch nh� ch�i c�p b�c nh�t ��nh ph�i <color=yellow> kh�ng nh� v�i 90 c�p <color> , h�n n�a x�p v�o qu� m�t <color=yellow> m�n ph�i <color> . �� l�y ���c n�i tr��c v�o vi t� c�ch c�ng ��i h�i v� l�m tuy�n th� t� c�ch ��ch tuy�n th� kh�ng th� tham d� c�nh ��u . ", 
"######<color=red> phi�u ch�n ��i h�i v� l�m t�ng l�nh ��i <color>\n## � ��i h�i v� l�m tuy�n th� t� c�ch x�c ��nh sau n�y , t�t c� tuy�n th� c� th� � ch� n�y c�a ta b� phi�u l�a ch�n v�n khu d�ng/u�ng ��ch t�ng l�nh ��i , l�a ch�n ph��ng ph�p v� <color=yellow> �i�n vi�t t�n ho�c tr�c ti�p nh�m ra tuy�n th� t�n ch�n h�ng <color> , m�i t�n tuy�n th� ch� c� th� <color=yellow> ��u 1 phi�u <color> . b� phi�u th�i gian <color=yellow>#3 th�ng 17 ng�y ~3 th�ng 23 ng�y #<color> ch�n ch� sau , s� phi�u �� nh�t tuy�n th� tr� th�nh n�n khu d�ng/u�ng ��ch <color=yellow> t�ng l�nh ��i <color># t�c ��i h�i v� l�m ph�c v� kh� n�n ph�c v� kh� bang h�i ��ch bang ch� ## s� phi�u th� 2-8 t�n l� v� ��i h�i v� l�m ph�c v� kh� n�n ph�c v� kh� bang h�i ��ch <color=yellow> tr��ng l�o <color> . " 
} 
-- script viet hoa By http://tranhba.com  ��i h�i v� l�m d� ch�n tr� gi�p 
function wulin_helpinfo() 
wlls_descript(WULIN_TB_INFO[1],"��i h�i v� l�m tuy�n th� t� c�ch c�nh ��u /wulin_helpinfo_1","Phi�u ch�n ��i h�i v� l�m t�ng l�nh ��i /wulin_helpinfo_2","C�m �n , ta r� r�ng /OnCancel") 
end 

function wulin_helpinfo_1() 
wlls_descript(WULIN_TB_INFO[2],"��i h�i v� l�m n�i tr��c t� c�ch x�c nh�n /wulin_helpinfo","Phi�u ch�n ��i h�i v� l�m t�ng l�nh ��i /wulin_helpinfo_2","C�m �n , ta r� r�ng /OnCancel") 
end 

function wulin_helpinfo_2() 
wlls_descript(WULIN_TB_INFO[3],"��i h�i v� l�m n�i tr��c t� c�ch x�c nh�n /wulin_helpinfo","��i h�i v� l�m tuy�n th� t� c�ch c�nh ��u /wulin_helpinfo_1","C�m �n , ta r� r�ng /OnCancel") 
end 

function OnCancel() 
end 

-- script viet hoa By http://tranhba.com  tu�n tra t�ng l�nh ��i 
function wulin_queryleader() 
local szMsg = " t�ng l�nh ��i # bang ch� # c�ng ph� l�nh ��i # tr��ng l�o # nh� sau #" 
for i = getn(_wulin_tb_leader), 1, -1 do 
if (_wulin_tb_leader[i][2] == 1) then 
szMsg = szMsg.."\n##"..safeshow(_wulin_tb_leader[i][1]).."<color=red># bang ch� #<color>" 
else 
szMsg = szMsg.."\n##"..safeshow(_wulin_tb_leader[i][1]).."<color=red># tr��ng l�o #<color>" 
end 
end 
wlls_descript(szMsg) 
end 

function wulin_creatNewmember(n_lgtype, pname, paccount) 
-- script viet hoa By http://tranhba.com  khai s�ng chi�n ��i 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
LG_SetLeagueInfo(nNewLeagueID, n_lgtype, pname) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 

-- script viet hoa By http://tranhba.com  gia nh�p chi�n ��i 
-- script viet hoa By http://tranhba.com  �em account l�m th�nh m�t ng��i kh�c chi�n ��i 
-- script viet hoa By http://tranhba.com WULIN_LGTYPE_ACCOUNT 
-- script viet hoa By http://tranhba.com roleaccount 
if (FALSE(LG_GetLeagueObj(WULIN_LGTYPE_ACCOUNT, paccount))) then 
local nNewLeagueID = LG_CreateLeagueObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
LG_SetLeagueInfo(nNewLeagueID, WULIN_LGTYPE_ACCOUNT, paccount) -- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n tin t�c ( lo�i h�nh # t�n ) 
LG_ApplyAddLeague(nNewLeagueID, "", "") 
LG_FreeLeagueObj(nNewLeagueID) 
end 

-- script viet hoa By http://tranhba.com  gia nh�p chi�n ��i l�y tr��ng m�c 
local nMemberID = LGM_CreateMemberObj() -- script viet hoa By http://tranhba.com  sinh th�nh x� �o�n th�nh vi�n s� li�u ��i t��ng ( tr� v� ��i t��ng ID) 
-- script viet hoa By http://tranhba.com  thi�t tr� x� �o�n th�nh vi�n ��ch tin t�c ( vai tr� t�n # ch�c v� # x� �o�n lo�i h�nh # x� �o�n t�n ) 
LGM_SetMemberInfo(nMemberID, pname, 0, WULIN_LGTYPE_ACCOUNT, paccount) 
LGM_ApplyAddMember(nMemberID, "", "") 
LGM_FreeMemberObj(nMemberID) 
end 

function wulin_title() 
wlls_descript("T�t c� ��t ���c th� hai gi�i ��i h�i v� l�m tuy�n th� t� c�ch ��ch nh� ch�i , c� th� nh�n l�y <color=red>� th� hai gi�i ��i h�i v� l�m tuy�n th� �<color> ��ch danh hi�u . n�n danh hi�u k�o d�i th�i gian t�i <color=red>4 th�ng 30 ng�y <color> , ng�i x�c ��nh b�y gi� nh�n l�y sao ? ","Ta m�u ch�t l�y /wulin_sure2title","H�y b� /OnCancel") 
end 

function wulin_sure2title() 
if (not FALSE(LG_GetLeagueObj(WULIN_LGTYPE_REGISTER, GetName()))) then 
Title_AddTitle(99, 2, 4302359); -- script viet hoa By http://tranhba.com  l�y tr� ch�i th�i gian ch�n ch� , th�ng ng�y l�c/khi 
Title_ActiveTitle(99); 
SetTask(1122, 99) 
wlls_descript("Ch�c m�ng ng�i ��t ���c <color=red>� th� hai gi�i ��i h�i v� l�m tuy�n th� danh hi�u �<color> . ") 
else 
wlls_descript("Ng�i b�y gi� kh�ng ph�i l� th� hai gi�i ��i h�i v� l�m tuy�n th� , xin/m�i ng�i th�ng qua x�c nh�n n�i tr��c v�o vi t� c�ch ho�c l� c�nh ��u ��i h�i tuy�n th� l�y ���c tuy�n th� t� c�ch sau tr� l�i nh�n l�y tuy�n th� ��u h�m . ") 
end 
end
