
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online t�nh ngh�a giang h� ��ng b�n k�ch t�nh ch�n v�n th�t th� x� l� v�n ki�n - �n n�p nhi�m v� - ti�u phu ��i tho�i ��i tho�i 
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
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua");


function main() 

SelectDescribe({"<npc> tr��c m�t t�i r�t nhi�u k� qu�i v� s� , nh�n l�n l�n �n m�c , kh�ng ph�i l� ta ��i ng��i T�ng s� . ng��i ng��i c�ng c�m tuy�t l��ng ��ch binh kh� , s� l� mu�n t�n c�ng V��ng gia b�o ��ch . cho d� c� thi�n ��i chuy�n , ng��i c�ng t�m th�i tr�nh n� tr�nh n� �i . ", 
" v�y hay l� xin/m�i ng�i ��a ta �i ra ngo�i �i /outworld", 
" k�t th�c ��i tho�i /OnTaskExit" 
}); 
return 

end; 


function outworld() 
NewWorld(176,1376,3333); 
SetFightState(0); 
end;
