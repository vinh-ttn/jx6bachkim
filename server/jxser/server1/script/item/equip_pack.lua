
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online IB ph�c v� kh� ng� h�nh trang b� l� t�i ch�n b�n v�n m�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/10/26 PM 11:51 

-- script viet hoa By http://tranhba.com  t�u nh� c�ng n�ng c��i cho t�i b�y gi� ��u kh�ng ph�i l� ��i bi�u vui v� , 
-- script viet hoa By http://tranhba.com  n�ng kh�c th�t th�t c�ng kh�ng c� b�t k� � v� . 
-- script viet hoa By http://tranhba.com  n�ng n�i , t�t l�m . 
-- script viet hoa By http://tranhba.com  ch�ng ta n�i m�t h�i tho�i �i . 
-- script viet hoa By http://tranhba.com  c�m qu�n c�ng �o l�t , v� c�ng tr�m t�nh ��a t�ng c�i t�ng c�i m�c v�o . 
-- script viet hoa By http://tranhba.com  th�i �� c� r� r�ng sinh s� , ph�ng ph�t mu�n lui tr� v� th� gi�i c�a n�ng trong �i . 

-- script viet hoa By http://tranhba.com  ====================================================== 

aryFiveEquip = { 

[1267]={"Th�p ki�m ", 0,0,0,10}, 
[1268]={"Gi� l�n �ao ", 0,0,1,10}, 
[1269]={"Kim c� ca t�ng ", 0,0,2,10}, 
[1270]={"X� tr�i k�ch ", 0,0,3,10}, 
[1271]={"X� tr�i ch�y ", 0,0,4,10}, 
[1272]={"B� v��ng phi�u ", 0,1,0,10}, 
[1273]={"B� th�ng �ao ", 0,1,1,10}, 
[1274]={"Kh�ng t��c linh ", 0,1,2,10}, 
[1275]={" long ph��ng huy�t ng�c tr�c ", 0,8,0,10}, 
[1276]={"Thi�n t�m h� c� tay ", 0,8,1,10}, 
[1277]={"Th�ng thi�n ph�t quan ", 0,7,3,10}, 
[1278]={"Gi�u ng�y kh�i ", 0,7,4,10}, 
[1279]={"Huy�n t� m�t n� ", 0,7,9,10}, 
[1280]={"Thanh tinh sai ", 0,7,12,10}, 
[1281]={"Thi�n t�m �ai l�ng ", 0,6,0,10}, 
[1282]={"B�ch kim �ai l�ng ", 0,6,1,10}, 
[1283]={"Thi�n t�m ngoa ", 0,5,1,10}, 
[1284]={"Bay ph��ng ngoa ", 0,5,3,10}, 

}; 


function main(nIndex) 
local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex); 
local i=0; 
if aryFiveEquip[nParticular] then 
for i=0,4 do 
AddItem(aryFiveEquip[nParticular][2], 
aryFiveEquip[nParticular][3], 
aryFiveEquip[nParticular][4], 
aryFiveEquip[nParticular][5], 
i, 
0,0); 
end; 
Msg2Player("Ng�i l�y ���c m�t b� ng� h�nh ��ch <color=yellow>"..aryFiveEquip[nParticular][1].."<color>#"); 
WriteLog("[ ng� h�nh trang b� nhi�m v� l� t�i ]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."[ tr��ng m�c #"..GetAccount().."][ vai tr� #"..GetName().."] m� ra m�t "..aryFiveEquip[nParticular][1].." l� t�i . "); 
else 
Say("Ng��i mua l� m�t kh�ng c� hi�u qu� ��ch ng� h�nh l� t�i #", 0); 
return 1; 
end; 
return 0; 
end; 
