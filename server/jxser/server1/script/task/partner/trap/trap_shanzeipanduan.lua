-- script viet hoa By http://tranhba.com  s�n t�c ��ng chi�n ��u thi�t ��i �i�m 

function main(sel) 
if ( GetFightState() == 1 ) then -- script viet hoa By http://tranhba.com  nh� ch�i x� vu tr�ng th�i chi�n ��u 
SetPos(1823,3184); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m � kh�ng ph�i l� chi�n ��u khu v�c 
SetFightState(0); -- script viet hoa By http://tranhba.com  chuy�n ��i v� kh�ng ph�i l� tr�ng th�i chi�n ��u 
else 
SetPos(1826,3178); -- script viet hoa By http://tranhba.com  thi�t tr� �i ra Trap �i�m , m�c ��ch �i�m �ang chi�n ��u khu v�c 
SetFightState(1); -- script viet hoa By http://tranhba.com  chuy�n ��i v� tr�ng th�i chi�n ��u 
end; 
end;
