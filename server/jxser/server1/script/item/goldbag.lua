Include("\\script\\global\\login_head.lua")
function main(nItemIdx)
dofile("script/item/goldbag.lua")
local nDate = tonumber(GetLocalDate("%d"))
if ( GetTask(DAY) ~= nDate ) then
		SetTask(DAY, nDate);
		SetTask(352,0);
	if (GetTask(352) <= 10) then
local k = random(1,120)
SetTask(352,GetTask(352) + 1)
		if (k <= 6) then 
	AddStackItem(1,4,417,1,1,0,0,0)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>Ti�n ��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  Ti�n ��ng")
		elseif (k >= 53) and (k <= 54) then
	Earn(1000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold> 1000 L��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  1000 L��ng")
		elseif (k >= 113) then
		local x = random(1,12)
			if x == 2 then
 	Earn(10000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>1 V�n L��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  1 V�n L��ng")
			elseif x == 4 then
	Earn(100000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>10 V�n L��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  10 V�n L��ng")
			elseif x == 6 then
	Earn(1000000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>100 V�n L��ng<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c  100 V�n L��ng")
			elseif (x == 1) or (x == 7) or (x == 8) then
	AddOwnExp(10000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=green>10000 Kinh Nghi�m<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 10000 Kinh Nghi�m")
			elseif (x == 9) or (x == 10) or (x == 11) then
	AddOwnExp(100000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=pink>100.000 Kinh Nghi�m<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 100.000 Kinh Nghi�m")
			elseif (x == 3) or (x == 12) then
	AddOwnExp(200000)	
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>100.000 Kinh Nghi�m<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 200.000 Kinh Nghi�m")
			else
	AddOwnExp(1000000)
	AddGlobalNews("��i hi�p <color=green>"..GetName().."<color> m� t�i Ho�ng Kim , may m�n nh�n ���c <color=gold>1.000.000 �i�m Kinh Nghi�m<color> !")
	Msg2Player("M� c�m nang Ho�ng Kim, nh�n ���c 1.000.000 �i�m Kinh Nghi�m")
			end
		elseif (k >=63) and (k <= 112) then
	local m = random (5,45)
	n = GetLevel()
	AddOwnExp(n*m*30)
		else
	local m = random (5,45)
	n = GetLevel()
	Earn(n*m*5)
		end
	else
	Talk(1,"","<color=green>H�m nay �� m� �� 10 C�m nang Ho�ng Kim r�i, ng�y mai h�y m� ti�p<color>")
	end
end
end 