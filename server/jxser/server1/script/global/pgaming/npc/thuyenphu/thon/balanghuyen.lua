Include("\\script\\global\\pgaming\\configserver\\configall.lua")

function main(sel)
	Say("C� ��i ta ��u s�ng v�i s�ng n��c! ��ng ��nh h� kh�ng ch� n�o ta kh�ng bi�t! Kh�ch quan mu�n �i ��u?", 2,"�i Thi�n V��ng ��o /yes", "Kh�ng ng�i/no")
end;

---------------------------------------------------------------
function dendiadiemcauca()
local nRanDom = random(1,2)
if nRanDom == 1 then
NewWorld(1009, 1241, 3081)
SetFightState(0)
else
NewWorld(1009, 1566, 2511)
SetFightState(0)
end
end
---------------------------------------------------------------
function yes()
	if (GetLevel() >= 5) then						
		if (GetFaction() == "tianwang") then				
			Say("Huynh �� c�a Thi�n V��ng bang th� �i thuy�n mi�n ph�!", 1, "Xin �a t� /ok1")
		else	
			Say("N�i �� hi�m nguy l�m! N�u kh�ch quan mu�n �i xin cho th�m �t ti�n!", 1, "���c. /ok2")
		end
	else		
		Talk(1,"","Xin l�i! Ng��i ch�a ��n c�p 5, kh�ng �� s�c ng�i thuy�n ��u!")
	end
end;

function no()
end;

function ok1()
NewWorld(59, 1425, 3472)
SetFightState(0)					
end;

function ok2()
if (GetCash() >= 100) then							
	Pay(100)
	NewWorld(59, 1425, 3472)
	SetFightState(0)							
else
	Say("��a ng��i �i c�ng kh�ng v�y gia ��nh ta ch�t ��i �?", 0)		
end
end;
