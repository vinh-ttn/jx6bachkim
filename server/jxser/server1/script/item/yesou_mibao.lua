-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n in t� n�t b�n Vi�t Nam thu l� ph� b�n - ��o c� : s�t th� b� b�o 
-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##shashou_mibao.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ## t� kh�ng ph�i l� ng� 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2010-05-24 11:40:18 

-- script viet hoa By http://tranhba.com  ====================================================== 

Include("\\script\\lib\\awardtemplet.lua");		-- script viet hoa By http://tranhba.com  ����ģ��
local n_XuanTian_Chui = 6; 

tbItem_Mibao = { 
{szName = " ti�n th�o l� ",tbProp = {6,1,71,1,1,0}, nRate = 15.873},-- script viet hoa By http://tranhba.com ok 
{szName = " t� m�ng l�m ", tbProp = {6,1,2350,1,1,0}, nRate = 0.2},-- script viet hoa By http://tranhba.com ok 
{szName = " huy�n vi�n l�m ", tbProp = {6,1,2351,1,1,0}, nRate = 0.5},-- script viet hoa By http://tranhba.com ok 
{szName = " t� m�ng l�m ", tbProp = {6,1,2350,1,1,0}, nRate = 0.1},-- script viet hoa By http://tranhba.com ok 
{szName = " huy�n vi�n l�m ", tbProp = {6,1,2351,1,1,0}, nRate = 0.1},-- script viet hoa By http://tranhba.com ok 
{szName = " ��i l�c ho�n ", tbProp = {6,0,3,1,1,0}, nRate = 25},-- script viet hoa By http://tranhba.com ok 
{szName = " nhanh ch�ng ho�n ", tbProp = {6,0,6,1,1,0}, nRate = 25},-- script viet hoa By http://tranhba.com ok 
{szName = " khi�u chi�n l� t�i ", tbProp = {6,1,2006,1,1,0}, nRate = 20},-- script viet hoa By http://tranhba.com ok 
{szName = " huy ho�ng qu� ( cao ) ", tbProp = {6,1,906,1,1,0}, nRate = 10, nExpiredTime = 10080},-- script viet hoa By http://tranhba.com ok 
{szName = " ho�ng kim chi qu� ", tbProp = {6,1,907,1,1,0}, nRate = 0.5, nExpiredTime = 10080},-- script viet hoa By http://tranhba.com ok 
{szName = " h�i thi�n t�i t�o c�m nang ", tbProp = {6,1,1781,1,1,0}, nRate = 3, tbParam = {60}}, -- script viet hoa By http://tranhba.com  c�m nang bao h�m 60 c� -- script viet hoa By http://tranhba.com ok 
} 

function main(nItemIdx) 
local n_curcnt = CalcItemCount(3, 6,1,2348,-1); 
if (n_curcnt < %n_XuanTian_Chui) then 
Msg2Player(format("C�n %d %s, c�c h� s� mang s� l��ng kh�ng �� !", %n_XuanTian_Chui,"Huy�n thi�n ch�y ")); 
return 1 
end 
if (CalcFreeItemCellCount() >= 3 and ConsumeItem(3, %n_XuanTian_Chui, 6,1,2348,-1)) then 
tbAwardTemplet:GiveAwardByList(tbItem_Mibao, format("USE %s","D� t�u ��ch b� b�o ")) 
AddStatData("baoxiangxiaohao_kaishashoumibao", 1) -- script viet hoa By http://tranhba.com  s� li�u ch�n �i�m th� nh�t k� 
else 
Msg2Player("T�i b�n trong ch� tr�ng ch�a �� ! "); 
return 1 
end 
end 
