
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - th� l�ng ch�t - t�nh nh�c s� th�i 
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

-- script viet hoa By http://tranhba.com  c�c c�p b�c ��ng b�n k�ch t�nh nhi�m v� th�t th� x� l� v�n ki�n 
Include ("\\script\\task\\partner\\master\\partner_master_main_01.lua");

function main() 

-- script viet hoa By http://tranhba.com  ��ng b�n ch� tuy�n nhi�m v� 
if taskProcess_001_02:doTaskEntity()~=0 then return end; 
if taskProcess_001_02_06:doTaskEntity()~=0 then return end; 
if taskProcess_001_02_08:doTaskEntity()~=0 then return end; 

-- script viet hoa By http://tranhba.com  ��ng b�n ch� tuy�n tu luy�n thi�n 
if rewindProcess_001_02:doTaskEntity()~=0 then return end; 
if rewindProcess_001_02_06:doTaskEntity()~=0 then return end; 
if rewindProcess_001_02_08:doTaskEntity()~=0 then return end; 

SelectDescribe({"<npc> A di �� ph�t , th�n b� kim tuy�n x� ch�t h�ng tai , hy v�ng Ph�t t� ph� h� c�i n�y ng�n n�m linh s�n mi�n di�t tr� m�t cu�c h�o ki�p a . ", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 

end;
