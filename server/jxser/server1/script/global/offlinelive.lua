-- script viet hoa By tuanglit  c�n c� nh� ch�i c�p b�c , gia t�ng d�ng h� ��ch kinh nghi�m # kh�u tr� c�ch tuy�n b�y qu�n th�i gian # gia t�ng ph�c duy�n 
-- script viet hoa By tuanglit  kinh nghi�m m�i 5 ph�t gia t�ng m�t l�n # c�ch tuy�n th�i gian m�i trinh gi�m b�t 1 , ph�c duy�n m�t gi� gia t�ng m�t l�n 
IncludeLib("PARTNER"); 
IncludeLib("TONG"); 
Include( "\\script\\global\\fuyuan.lua" );
Include( "\\script\\global\\baijuwanhead.lua" );

-- script viet hoa By tuanglit  2008 gi�ng sinh ho�t ��ng � tuy�n b�y qu�n ��t ���c m�u �� h�p qu� ��ch ��u v�n ki�n 
-- script viet hoa By tuanglit Include("\\script\\item\\shengdan_jieri\\200811\\red_box.lua");

-- script viet hoa By tuanglit  2006 n�m l� qu�c kh�nh ho�t ��ng ��u v�n ki�n 
Include("\\script\\event\\nationalday_2006\\main.lua");


Include("\\script\\event\\funv_jieri\\200903\\tuoguan.lua")

Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");

-- script viet hoa By tuanglit tinhpn 20100805: VLMC 
Include("\\script\\bonusvlmc\\head.lua");

-- script viet hoa By tuanglit tinhpn 20100817: Online Award 
Include("\\script\\bonus_onlinetime\\head.lua")

BAIJU_DOUBLEEXP_TIME = 051008 
-- script viet hoa By tuanglit  ��nh ngh�a ��ch cung b�n ngo�i h�m s� �i�u d�ng ch�n c�a v�n 

-- script viet hoa By tuanglit  l�y ���c ��nh l�c kh� ��ch s� l��ng 
function gettimercount() 
return 4 
end 

-- script viet hoa By tuanglit  l�y ���c ��nh l�c kh� ��ch h�m s� 
function gettimername(index) 
if (index == 0) then 
return "addofflineexp" 
elseif (index == 1) then 
return "reduceofflinetime" 
elseif (index == 2) then 
return "addoofflinefuyuna" 
elseif (index == 3) then 
return "addofflineskillexp" 
end 
return "" 
end 

-- script viet hoa By tuanglit  l�y ���c thi h�nh th�i gian gian c�ch # tr�nh ��m # 
function gettimerinterval(index) 
if (index == 0) then 
return AEXP_INTERVAL -- script viet hoa By tuanglit  th�m kinh nghi�m #5 ph�t 
elseif (index == 1) then 
return 60 * FRAME2TIME -- script viet hoa By tuanglit  gi�m th�i gian # m�i ph�t 
elseif (index == 2) then 
return 60 * 60 * FRAME2TIME -- script viet hoa By tuanglit  d�n ph�c nguy�n #1 gi� 
elseif (index == 3) then 
return AEXP_INTERVAL -- script viet hoa By tuanglit  th�m k� n�ng �� thu�n th�c #5 ph�t 
end 
return AEXP_INTERVAL 
end 

-- script viet hoa By tuanglit  l�y ���c ��nh l�c kh� ch�n h�ng , 0 b�y t� th� 0 chu k� b�t ��u thi h�nh , 1 b�y t� th� 1 chu k� b�t ��u thi h�nh 
function gettimeroption(index) 
if (index == 0) then 
return 1 -- script viet hoa By tuanglit  th�m kinh nghi�m #5 ph�t sau n�y 
elseif (index == 1) then 
return 1 -- script viet hoa By tuanglit  gi�m th�i gian #1 ph�t sau n�y 
elseif (index == 2) then 
return 0 -- script viet hoa By tuanglit  d�n ph�c nguy�n # l�p t�c nh�n l�y 
elseif (index == 3) then 
return 1 -- script viet hoa By tuanglit  th�m k� n�ng �� thu�n th�c #5 ph�t 
end 
return 0 
end 

-- script viet hoa By tuanglit  l�y ���c c�c k� l�c ki�m tra gian c�ch # tr�nh ��m # 
function gettimeoutinterval() 
return 60 * FRAME2TIME -- script viet hoa By tuanglit  c� hay kh�ng c�c k� l�c ��ch ki�m tra gian c�ch th�i gian l� 60s 
end 

function IsTimeValid() 
if IsIPBonus() == 1 then 
IpBonus_Close() 
end; 

-- script viet hoa By tuanglit tinhpn 20100817: Online Award 
if (OnlineAward_StartDate()==1 and OnlineAward_Check_TransferLife() ~= 0) then 
OnlineAward_SummaryOnlineTime() 
end 

if GetSkillState(451) > 0 and GetTask(TSK_Active_x2EXP) ~= 1 then 
RemoveSkillState(451) 
end 
local szHour = date("%H"); 
local nDay = tonumber(date("%y%m%d")) 
local nHour = tonumber(szHour); 
-- script viet hoa By tuanglit  if (nHour >= 18 and nHour < 24) then 
-- script viet hoa By tuanglit  return 0 
-- script viet hoa By tuanglit  else 

-- script viet hoa By tuanglit  return 1 
-- script viet hoa By tuanglit  end 
if (nDay < BAIJU_DOUBLEEXP_TIME) then 
return 2 
else 
return 1 
end 
end; 


-- script viet hoa By tuanglit  k� n�ng r� r�ng ��ch kinh nghi�m c� hay kh�ng g�p ��i 
function skillBaijuEffect() 
local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By tuanglit  l�y ���c gi� 
return 1; 
end; 

-- script viet hoa By tuanglit  c�n c� c�p b�c l�y ���c kinh nghi�m 
function getofflinevalue(nLevel, bPartner) 

local nHour = tonumber(GetLocalDate("%H")); -- script viet hoa By tuanglit  l�y ���c gi� 

nExp = 0; 
	-- script viet hoa By tuanglit  һСʱ�һ����飺e={3.5w+floor[(lv-50)/5]*0.5w}*1.2
if (nLevel == 50) then -- script viet hoa By tuanglit  50 
nExp = 700; -- script viet hoa By tuanglit  m�i ph�t ��t ���c ��ch kinh nghi�m tr� gi� 
elseif (nLevel < 100) then -- script viet hoa By tuanglit  51~99 
		nExp = 700 + floor((nLevel - 50)/5)*100; -- script viet hoa By tuanglit  ÿ���ӻ�õľ���ֵ
else -- script viet hoa By tuanglit  100 c�p c�ng 100 c�p tr� l�n 
		nExp = 1700; -- script viet hoa By tuanglit  ÿ���ӻ�õľ���ֵ[700 + floor((100 - 50)/5)*100]
end 

if (bPartner and nLevel < 50) then 
nExp = 175; -- script viet hoa By tuanglit  n�u nh� l� ��ng b�n , 50 c�p h� ��t ���c kinh nghi�m v� 50 c�p ��t ���c kinh nghi�m 1/4 
end 

if (GetProductRegion() ~= "vn") then 

-- script viet hoa By tuanglit  n�u nh� l� 2006 m�a xu�n l� r�ng s�ng 0 �i�m ��n t�i 6 �i�m 2 l�n 
if isSpringTime()==1 and nHour>=0 and nHour<18 then 
nExp = nExp * 2; 
end; 

if (IsTimeValid() == 2) then 
nExp = nExp * AEXP_FREQ * 12; -- script viet hoa By tuanglit  m�i ng�y 0#00-12#00 b�ch c�u ho�n kinh nghi�m g�p b�i 
else 
nExp = nExp * AEXP_FREQ * 6; -- script viet hoa By tuanglit  (5) ph�t ��t ���c ��ch kinh nghi�m tr� gi� ( hoa ��o ��o kinh nghi�m 6 l�n ) 
end 

else 
nExp = nExp * AEXP_FREQ * 7; -- script viet hoa By tuanglit  (5) ph�t ��t ���c ��ch kinh nghi�m tr� gi� () 
end 
-- script viet hoa By tuanglit  c� hay kh�ng c� ��i c�n �an hi�u qu� , l� c� kinh nghi�m th�m ���c 
if (IsDaHuanDanValid() == 1) then 
-- script viet hoa By tuanglit  cho c�ng ��i c�n �an kinh nghi�m th�m ���c 
return nExp, GetTask(1741) 
end 

return nExp 
end; 

-- script viet hoa By tuanglit  gia t�ng kinh nghi�m 
function addofflineexp() 
if (IsTimeValid() == 0) then 
return 
end 
local nSpecialD = 0; 
if (GetTask(AEXP_TIANXING_TIME_TASKID) > 0) then 
nSpecialD = 5; 
elseif (GetTask(AEXP_SPECIAL_TIME_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 4; 
else 
nSpecialD = 2; 
end 
elseif (GetTask(AEXP_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 2.5; 
else 
nSpecialD = 1.5; 
end 
elseif (GetTask(AEXP_SMALL_TIME_TASKID) > 0) then 
if (GetProductRegion() == "vn" and GetLevel() >= 130) then 
nSpecialD = 1.5; 
else 
nSpecialD = 1; 
end 
else 
nSpecialD = 0.5*0.5; -- script viet hoa By tuanglit  UNDONE by zbl t�i sao mu�n thi�t th�nh 0.25? 
end; 
-- script viet hoa By tuanglit getredbox(nSpecialD); -- script viet hoa By tuanglit  l� gi�ng sinh ho�t ��ng � tuy�n b�y qu�n ��t ���c m�u �� h�p qu� 
tbFunv0903:GetItemByTuoGuan(nSpecialD) 
-- script viet hoa By tuanglit  gia t�ng nh� ch�i kinh nghi�m 
local nPlayerLevel = GetLevel(); 
if (nPlayerLevel >= AEXP_NEEDLEVEL) then 
local nExp, nAddExp = getofflinevalue(nPlayerLevel); 
nExp = floor(nSpecialD * nExp); 
local nEnExp = CalcEnhanceExp(nExp) -- script viet hoa By tuanglit  t�nh to�n kinh nghi�m th�m ���c 
if (GetNpcExpRate() > 100) then 
nEnExp = floor((nEnExp * 100) / GetNpcExpRate()); 
end 
if (nAddExp and nSpecialD ~= 0.5) then 
			nEnExp = nEnExp + nAddExp
end 
AddOwnExp(nEnExp); -- script viet hoa By tuanglit  th�m kinh nghi�m 
end 

-- script viet hoa By tuanglit  gia t�ng ��ng b�n kinh nghi�m 
local nPartnerIdx, bPartnerCallOut = PARTNER_GetCurPartner(); 
if (nPartnerIdx > 0 and bPartnerCallOut == 1) then 
local nPartnerLevel = PARTNER_GetLevel(nPartnerIdx); 
if (nPartnerLevel >= AEXP_NEEDLEVEL_PARTNER) then 
local nExp = 0; 
nExp = getofflinevalue(nPartnerLevel,1); 
nExp = floor(nSpecialD * nExp); 
PARTNER_AddExp(nPartnerIdx, nExp); -- script viet hoa By tuanglit  th�m kinh nghi�m 
end 
end 


end 

-- script viet hoa By tuanglit  nh�ng ch�c n�ng kh�c c�n gia t�ng b�y qu�n kinh nghi�m , vi�t v�o n�y 
function getAddExpValue(nExp) 
return 0 
end; 

-- script viet hoa By tuanglit  gi�m b�t th�i gian 
function reduceofflinetime() 
if (IsTimeValid() == 0) then 
return 
end 
local nInterval = 60 * FRAME2TIME; 
local nAexp_OwnExp_id; 
local nAexp_Skill_id; 

local tbAexpTask_Exp = {AEXP_SMALL_TIME_TASKID, AEXP_TASKID, AEXP_SPECIAL_TIME_TASKID, AEXP_TIANXING_TIME_TASKID}; 
local tbAexpTask_Skill = {AEXP_SMALL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SPECIAL_SKILL_TASKID}; 
for i = 1, getn(tbAexpTask_Exp) do 
if (GetTask(tbAexpTask_Exp[i]) > 0) then 
nAexp_OwnExp_id = tbAexpTask_Exp[i]; 
end 
end 
for i = 1, getn(tbAexpTask_Skill) do 
if (GetTask(tbAexpTask_Skill[i]) > 0) then 
nAexp_Skill_id = tbAexpTask_Skill[i]; 
end; 
end; 

if (GetTask(AEXP_SKILL_ID_TASKID) == 0) then 
nAexp_Skill_id = nil; 
end; 

local arynOfflineTimeTaskID = { nAexp_OwnExp_id, nAexp_Skill_id }; 

for i = 1, getn(arynOfflineTimeTaskID) do 
local nSpareTime = GetTask(arynOfflineTimeTaskID[i]); 
if (nSpareTime < nInterval) then 
nSpareTime = 0; 
else 
nSpareTime = nSpareTime - nInterval; 
end 
SetTask(arynOfflineTimeTaskID[i], nSpareTime); 
end 
reduceAddExpTime(); 
end 
function reduceAddExpTime() 
return 0 
end 

-- script viet hoa By tuanglit  gia t�ng ph�c duy�n 
function addoofflinefuyuna() 
if (IsTimeValid() == 0) then 
return 
end 

nRet = FuYuan_Gain(); 
-- script viet hoa By tuanglit  return nRet 
end 

-- script viet hoa By tuanglit  gia t�ng k� n�ng �� thu�n th�c 
function addofflineskillexp() 
if (IsTimeValid() == 0 or (GetTask(AEXP_SKILL_TIME_TASKID) <= 0 and GetTask(AEXP_SPECIAL_SKILL_TASKID) <= 0 and GetTask(AEXP_SMALL_SKILL_TASKID) <= 0)) then 
return 
end 

local nSpecialD = 1; -- script viet hoa By tuanglit  k� n�ng b�ch c�u 1 l�n 
if (GetTask(AEXP_SPECIAL_SKILL_TASKID) > 0) then -- script viet hoa By tuanglit  ��c hi�u k� n�ng b�ch c�u 2 l�n 
nSpecialD = 2; 
elseif (GetTask(AEXP_SKILL_TIME_TASKID) > 0) then -- script viet hoa By tuanglit  k� n�ng r� r�ng c�u l� 1.5 
nSpecialD = 1.5 
end; 

local nSkillID = GetTask(AEXP_SKILL_ID_TASKID); 
local nSkillLevel = GetCurrentMagicLevel(nSkillID, 0); 
local bUp = 0; 
if (nSkillLevel >= 1 and nSkillLevel <= getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
if (nSkillID >= ARY_120SKILLID[1] and nSkillID <= ARY_120SKILLID[10]) then 
-- script viet hoa By tuanglit  n�u v� 120 k� n�ng , l� treo ky kinh nghi�m v� ��nh tr� gi� 
bUp = AddSkillExp(nSkillID, floor(nSpecialD * AEXP_120SKILL_UPGRADE_EXP), 1); 
else 
local fAddSkillExpPercent = floor(nSpecialD * ARY_UPGRADE_SKILL_EXP_PERCENT[nSkillLevel] * 10000 * skillBaijuEffect()); 
bUp = AddSkillExp(nSkillID, fAddSkillExpPercent, 1, 1); 
end; 
if (bUp == 1 and GetCurrentMagicLevel(nSkillID, 0) > getn(ARY_UPGRADE_SKILL_EXP_PERCENT)) then 
autosetupgradeskill(); 
end 
else 
autosetupgradeskill(); 
end 
end 

function IsDaHuanDanValid() 
if (GetTask(1742) > 0) then 
return 1 
end 
end
