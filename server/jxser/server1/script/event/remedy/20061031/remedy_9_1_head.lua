
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online 9-1 kinh nghi�m b�i th��ng ho�t ��ng ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/10/30 PM 11:19 

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

Include("\\script\\event\\remedy\\remedy_head.lua"); 
Include("\\script\\task\\task_addplayerexp.lua"); 

_CRemedy = inherit(CRemedy, { 

payProcess = function(self) 
local nExp = GetLevel() * 10 * 20000; 
tl_addPlayerExp(nExp); 
Msg2Player("Ng�i l�y ���c b�i th��ng kinh nghi�m #<color=yellow>"..nExp.."<color> �i�m #"); 
return 1; 
end, 

}); 

CMyRemedy = new(_CRemedy, 
0, 
61031, 
61106, 
2516, 
50, 
"9 khu 1 d�ng ky duy tr� b�i th��ng kinh nghi�m "); 

function Remedy_20061031_Main() 
Say(" l� quan # ng�i m�u ch�t l�y 10 nguy�t ph�n 9 khu 1 d�ng ky duy tr� b�i th��ng kinh nghi�m sao ? l�n n�y kinh nghi�m b�i th��ng nh�n l�y nh�t k� v� <color=yellow>2006 n�m 10 th�ng 31 ng�y t�i 2006 n�m 11 th�ng 06 ng�y , 50 c�p tr� l�n m�i ng��i h�n d�n m�t l�n <color> . ", 
2, 
" ��ng v�y /Remedy_20061031_Get", 
" kh�ng ���c /onExit"); 
end; 


function Remedy_20061031_Get() 
local nResult = CMyRemedy:payForPlayer(); 
local szErrotMsg = ""; 

if nResult==1 then 
Say(" l� quan # ng�i �� th�nh c�ng nh�n l�y 9 khu 1 d�ng ky duy tr� b�i th��ng kinh nghi�m , lo�i n�y kinh nghi�m l� <color=yellow> th�ng c�p sau v�n �i�p gia <color> ��ch , ch�c ng�i h�m nay c� t�t v�n kh� . ", 0); 
return 1; 
else 
for i=1, getn(nResult) do 
szErrotMsg = szErrotMsg..nResult[i]; 
end; 

Say(" l� quan # th�t xin l�i , ng�i kh�ng c�ch n�o nh�n l�y b�i th��ng kinh nghi�m , nguy�n nh�n c� #<enter>"..szErrotMsg, 0); 
return 0; 
end; 
end; 


function onExit() 
Say(" l� quan # tr�n th� gi�i n�y th�t l� m�t d�ng th��c nu�i tr�m d�ng ng��i a �� t�ng kh�ng ��ch kinh nghi�m c�ng kh�ng mu�n . ", 0); 
end;
