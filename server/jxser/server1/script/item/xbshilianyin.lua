-- script viet hoa By http://tranhba.com  th� luy�n b� b�o # ng�n # 
-- script viet hoa By http://tranhba.com  hi�u b�o 2014.2.14 

function main(sel) 
p=random(1,100); 
if(p <= 10)then 
AddItem(6,1,2311,1,0,0,0) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - ng�c lon 
elseif(p >= 50)then 
		Earn(66666+22222*random(0,1))
else 
		Earn(6666+2222*random(0,1))
end 

p=random(1,100); 
if(p <= 5)then 
num=2 
elseif((p > 5)and(p <= 20))then 
num=2 
elseif((p > 20)and(p <= 30))then 
num=2 
elseif((p > 30)and(p <= 50))then 
num=1 
elseif((p > 50)and(p <= 60))then 
num=1 
else 
num=1 
end 

gift(num); 

for i=1,random(1,10) do 
AddItem(6,1,2280,1,0,0,0) -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com  ng�u nhi�n ��a tinh luy�n th�ch 
end 
return 0 
end 

function gift(num) 

for i=1,num do 
p=random(1,14); 
if(p == 1)then -- script viet hoa By http://tranhba.com  huy�n vi�n l�m 
AddItem(6,1,2351,1,0,0,0) 
elseif(p == 2)then -- script viet hoa By http://tranhba.com  th�m ch�y ho�n 
AddItem(6,0,2,1,0,0,0) 
elseif(p == 3)then -- script viet hoa By http://tranhba.com  nhanh ch�ng ho�n 
AddItem(6,0,6,1,0,0,0) 
elseif(p == 4)then -- script viet hoa By http://tranhba.com  tr��ng m�nh ho�n 
AddItem(6,0,1,1,0,0,0) 
elseif(p == 5)then -- script viet hoa By http://tranhba.com  t� h�i ti�u dao �an 
AddItem(6,1,2378,1,0,0,0) 
elseif(p == 6)then -- script viet hoa By http://tranhba.com  ��i l�c ho�n 
AddItem(6,0,3,1,0,0,0) 
elseif(p == 7)then -- script viet hoa By http://tranhba.com  cao nhanh ch�ng ho�n 
AddItem(6,0,4,1,0,0,0) 
elseif(p == 8)then -- script viet hoa By http://tranhba.com  trung h�c �� nh� c�p ho�n 
AddItem(6,0,5,1,0,0,0) 
elseif(p == 9)then -- script viet hoa By http://tranhba.com  huy�n vi�n l�m 
AddItem(6,1,2351,1,0,0,0) 
elseif(p == 10)then -- script viet hoa By http://tranhba.com  b�ng ph�ng ho�n 
AddItem(6,0,7,1,0,0,0) 
elseif(p == 11)then -- script viet hoa By http://tranhba.com  l�i ph�ng ho�n 
AddItem(6,0,8,1,0,0,0) 
elseif(p == 12)then -- script viet hoa By http://tranhba.com  l�a ph�ng ho�n 
AddItem(6,0,9,1,0,0,0) 
elseif(p == 13)then -- script viet hoa By http://tranhba.com  n�m ch�u l�ng kh�ng �an 
AddItem(6,1,2397,1,0,0,0) 
else -- script viet hoa By http://tranhba.com  ��c ph�ng ho�n 
AddItem(6,0,10,1,0,0,0) 
end 
end 

end
