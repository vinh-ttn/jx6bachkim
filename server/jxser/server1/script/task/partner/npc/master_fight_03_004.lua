
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - ch�u b�u th��ng nh�n - cao c�p v� s� 
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
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");

function OnDeath() 

-- script viet hoa By http://tranhba.com  tr��c m�t ��ch s� l��ng -1 
SetGlbValue(GLBID_MASTER_KILLER_NUM, GetGlbValue(GLBID_MASTER_KILLER_NUM) - 1); 

DoTeamProcess(funDeath); 

end; 


function funDeath() 
-- script viet hoa By http://tranhba.com  k�ch t�nh thi�n 
if taskProcess_003_Kill_04:doTaskEntity(1)~=0 then return end; 

-- script viet hoa By http://tranhba.com  tu luy�n thi�n 
if rewindProcess_003_Kill_04:doTaskEntity(1)~=0 then return end; 
end;
