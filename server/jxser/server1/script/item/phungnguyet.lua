-- script viet hoa By http://tranhba.com Create by mengfan 2004-9-14 
-- script viet hoa By http://tranhba.com  ph�ng th�ng qu� dong 
-- script viet hoa By http://tranhba.com  t�c d�ng # trung cu�i thu c�p b�nh Trung thu m�t trong , t�c d�ng c�ng v� l�m b� t�ch , 80 c�p tr� l�n nh� ch�i s� d�ng , gia t�ng m�t ch�t v� c�ng k� n�ng �i�m . 
-- script viet hoa By http://tranhba.com  ��t ���c �i�u ki�n # t�p t� ��t ���c v�t n�y ph�m c�n thi�t ��ch t�t c� m�t ch� ��c nh�t . 
-- script viet hoa By http://tranhba.com  h�n ch� n�i r� # n�n v�t ph�m y�u c�u nh�n v�t c�p b�c 80 c�p l�c s� d�ng h�u hi�u , m�i ng��i nhi�u nh�t s� d�ng 2 l�n . 
-- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng 700 th�p 4 v� b�y t� s� d�ng n�n v�t ph�m ��ch s� l�n 

function main(sel) 
times = GetTask(700) 
str={ 
"<#> B�n c�n th� m�t mi�ng nh�ng kh�ng c� t�c d�ng!", 
"<#> B�n c� �n b�nh m� c�m th�y kh�ng c� ch�t bi�n chuy�n g� ", 
"<#> B�nh ngon h�o h�ng �� gi�p b�n t�ng c��ng kinh m�ch. N�i c�ng th�m h�u. Xin ch�c m�ng! ", 
"<#> M�i ng��i ch� �n ���c 2 c�i b�nh n�y ng��i ��ng tham lam qu�! " 
} 
if(times > 1) then -- script viet hoa By http://tranhba.com  s� d�ng s� l�n �� ��t t�i th��ng h�n 
Msg2Player(str[4]) 
return 1 
elseif (GetLevel() < 80) then -- script viet hoa By http://tranhba.com  c�p b�c �t h�n 80 
Msg2Player(str[2]) 
return 1 
else 
AddMagicPoint(1) -- script viet hoa By http://tranhba.com  t��ng th��ng 1 �i�m k� n�ng �i�m 
time=date("%m%d%H%M%S") 
name=GetName() 
WriteLog("Nh� ch�i "..name.." � "..time.." �n h�t m�t ph�ng th�ng qu� dong b�nh Trung thu ") 
		SetTask(700,times+1)
Msg2Player(str[3]) 
return 0 
end 
end
