Include("\\script\\global\\login_head.lua")

function offlive_login() 
SetTask(2534,0) 
end 

-- script viet hoa By tuanglit  c�ng th�m m�t if ph�n �o�n , c� th� tr�nh kh�i th�m t�i ch�n v�n l�c ��ch b�o l�i # th�t ra th� , cho d� b�o l�i c�ng s� kh�ng ph�t sinh sai l�m # 
if login_add then login_add(offlive_login, 0) end 
