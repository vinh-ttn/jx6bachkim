-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##matchmaker.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2008-01-22 15:11:22 
-- script viet hoa By http://tranhba.com ÿ������n����λ9λ��¼��������λ��¼���ڣ� ��������ֱ��n=n+1
Include("\\script\\event\\valentine2008\\head.lua")
Include("\\script\\event\\valentine2008\\lib\\addaward.lua")
Include("\\script\\lib\\pay.lua")
function IsPickable( nItemIndex, nPlayerIndex ) 
-- script viet hoa By http://tranhba.com  th�i gian 
if not valentine2008_isGetItemPeriod() then 
Msg2Player(format("Ho�t ��ng <color=yellow>%s<color> �� k�t th�c , kh�ng th� ���c c�i g� �� . ",valentine2008_szActName)) 
return 0; 
end 
if check_valentine2008_team() ~= 1 then 
Msg2Player("Ch� c� th� l� m�t nam m�t n� h�p th�nh ��i m�i c� th� c�ng h�n ��i tho�i . ") 
return 0; 
end 
local nTeamSize = GetTeamSize() 
local i 
for i=1, nTeamSize do 
if valentine2008_PlayerDo(GetTeamMember(i), valentine2008_PlayerLimit) == 0 then 
Msg2Team("��i ng� c� ng��i �i�u ki�n kh�ng ph� h�p kh�ng th� l�y ���c �nh tr�ng b�o h�p . ") 
return 0; 
end 
end 
return 1; 
end 

function PickUp( nItemIndex, nPlayerIndex ) 
if( IsMyItem( nItemIndex ) ) then 
local i 
local nCollectExpLimit = GetTask(TSK_valentine2008_CollectExpLimit) 
-- script viet hoa By http://tranhba.com  th�p l�y ng��i l�y ���c 
local tbExp = 
{ 
{nExp = 10000, nRate = 30}, 
{nExp = 40000, nRate = 40}, 
{nExp = 70000, nRate = 30}, 
} 
if nCollectExpLimit < TSKV_valentine2008_CollectExpLimit then 
local nCurSelect = valentine2008_lib_AddAwardByRate(tbExp, valentine2008_szActName) 
			nCollectExpLimit = nCollectExpLimit + tbExp[nCurSelect].nExp
SetTask(TSK_valentine2008_CollectExpLimit, nCollectExpLimit) 
else 
Msg2Player(format("Ng��i ��t ���c �nh tr�ng b�o h�p l�y ���c kinh nghi�m ��t %d , ��n l�n n�y ho�t ��ng th��ng h�n . ", nCollectExpLimit)) 
end 
-- script viet hoa By http://tranhba.com  t�p th� l�y ���c 
local nTeamSize = GetTeamSize() 
for i=1, nTeamSize do 
valentine2008_PlayerDo(GetTeamMember(i), valentine2008_GetYueGuangBaoHe); 
end 
return 0; -- script viet hoa By http://tranhba.com  th� ti�u v�t ph�m 
end 
end 

-- script viet hoa By http://tranhba.com  ng��i kia thi h�nh m�t h�m s� 
function valentine2008_PlayerDo(nPlayerIdx,fun,...) 
local nOldPlayer = PlayerIndex; 
PlayerIndex = nPlayerIdx 
local re = call(fun, arg); 
PlayerIndex = nOldPlayer; 
return re 
end 

-- script viet hoa By http://tranhba.com  ki�m tra c� hay kh�ng 2 ng��i nam n� ��i ng� 

function check_valentine2008_team() 
if (GetTeamSize() == 2) then -- script viet hoa By http://tranhba.com  h�p th�nh ��i # nh�n s� v� 2# 
Player1_ID = GetTeamMember(1) 
Player2_ID = GetTeamMember(2) 
		if ( (valentine2008_PlayerDo(Player1_ID,GetSex) + valentine2008_PlayerDo(Player2_ID,GetSex) ) ~= 1) then -- script viet hoa By http://tranhba.com ��Ů���11 10 00 ���Ϊ1˵�������Զ���
return 0 
end 
return 1 
end 
return 0 
end 
-- script viet hoa By http://tranhba.com  nh�n v�t c� li�n quan h�n ch� �i�u ki�n 
function valentine2008_PlayerLimit() 
local nDate = tonumber(GetLocalDate("%y%m%d")); 
local nMaxCount = GetTask(TSK_valentine2008_CollectMaxLimit) 
local nCollectLimit = GetTask(TSK_valentine2008_CollectLimit) 
-- script viet hoa By http://tranhba.com  c�p b�c 
if (IsCharged() == 0 or GetLevel() < 100) then 

Msg2Team(format("%s kh�ng ph�i l� 100 c�p tr� l�n sung tr� gi� nh� ch�i . ", GetName())) 
return 0; 
end 

-- script viet hoa By http://tranhba.com  l�n nh�t th�p l�y c� ��m 
if(nMaxCount >= TSKV_valentine2008_CollectMaxLimit) then 
Msg2Team(format("%s ��t ���c �nh tr�ng b�o h�p ��t %d c� , �� t�i l�n n�y ho�t ��ng th��ng h�n li�u . ", GetName(), nMaxCount)); 
return 0; 
end 
-- script viet hoa By http://tranhba.com  m�i ng�y th�p l�y c� ��m 

if( nDate ~= floor(nCollectLimit/512) ) then 
nCollectLimit = nDate * 512 
SetTask(TSK_valentine2008_CollectLimit, nCollectLimit) 
end 
if(mod(nCollectLimit, 512) >= TSKV_valentine2008_CollectDayLimit) then 
Msg2Team(format("%s h�m nay ��t ���c �nh tr�ng b�o h�p ��t %d c� , �� t�i th��ng h�n li�u , xin/m�i ng�y mai ti�p t�c �i . ", GetName(), TSKV_valentine2008_CollectDayLimit)); 
return 0; 
end 
return 1 
end 
-- script viet hoa By http://tranhba.com  l�y ���c �nh tr�ng b�o h�p , nhi�m v� thay ��i l��ng thi�t tr� 
function valentine2008_GetYueGuangBaoHe() 
local nMaxCount = GetTask(TSK_valentine2008_CollectMaxLimit) 
local nCollectLimit = GetTask(TSK_valentine2008_CollectLimit) 
local nStackCount = 10 
local tbItemList = 
{ 
{szName=" con b��m tr�m ", tbProp={6, 1, 1667, 1, 0, 0}}, 
{szName=" uy�n ��ng m�t ", tbProp={6, 1, 1666, 1, 0, 0}}, 
} 

	SetTask(TSK_valentine2008_CollectLimit, nCollectLimit+1);-- script viet hoa By http://tranhba.com ����������+1
	nMaxCount = nMaxCount + 1
	SetTask(TSK_valentine2008_CollectMaxLimit, nMaxCount);-- script viet hoa By http://tranhba.com ������+1
Msg2Player(format("T�ng c�ng l�y ���c %d th�ng quang b�o h�p . ", nMaxCount)) 
if mod(nMaxCount, nStackCount) == 0 then 
AddSkillState(703, 1, 1, 18*60*10) 
if GetSex() == 0 then -- script viet hoa By http://tranhba.com  nam 
valentine2008_lib_AddAward(tbItemList[2], valentine2008_szActName) 
else 
valentine2008_lib_AddAward(tbItemList[1], valentine2008_szActName) 
end 
end 
end 
