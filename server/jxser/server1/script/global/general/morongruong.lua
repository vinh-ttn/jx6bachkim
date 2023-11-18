
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function MoRongRuong()
	local tbSay = {"B�n mu�n m� r�ng r��ng, tr��c h�t ph�i c� ti�n. Ng��i c� mang theo ti�n kh�ng?"};
	if (CheckStoreBoxState(1) == 0) then
		tinsert(tbSay, "M� r�ng r��ng 1 [20 xu]/#MoRongRuongConfirm(1)")
	elseif (CheckStoreBoxState(1) == 1) and (CheckStoreBoxState(2) == 0) then
		tinsert(tbSay, "M� r�ng r��ng 2 [40 xu]/#MoRongRuongConfirm(2)")
	elseif (CheckStoreBoxState(2) == 1) and (CheckStoreBoxState(3) == 0) and (CheckStoreBoxState(1) == 1) then
		tinsert(tbSay, "M� r�ng r��ng 3 [60]/#MoRongRuongConfirm(3)")
	else
		Talk(1, "", "B�n �� m� r�ng h�t r��ng r�i, kh�ng th� m� r�ng r��ng th�m ���c n�a.")
		return
	end
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function MoRongRuongConfirm(nRoom)
	if (nRoom == 1) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 20) then
			Talk(1, "", "Qu� kh�ch kh�ng mang �� <color=red>20 Ti�n ��ng<color>, kh�ng th� ti�n h�nh m� r�ng r��ng.")
		return end
		ConsumeEquiproomItem(20, 4,417,1,-1);
		OpenStoreBox(1);
		Msg2Player("B�n �� m� r�ng r��ng 1 th�nh c�ng!")
	elseif (nRoom == 2) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 40) then
			Talk(1, "", "Qu� kh�ch kh�ng mang �� <color=red>40 Ti�n ��ng<color>, kh�ng th� ti�n h�nh m� r�ng r��ng.")
		return end
		ConsumeEquiproomItem(40, 4,417,1,-1);
		OpenStoreBox(2);
		Msg2Player("B�n �� m� r�ng r��ng 2 th�nh c�ng!")
	elseif (nRoom == 3) then
		if (CalcEquiproomItemCount(4,417,1,-1) < 60) then
			Talk(1, "", "Qu� kh�ch kh�ng mang �� <color=red>60 Ti�n ��ng<color>, kh�ng th� ti�n h�nh m� r�ng r��ng.")
		return end
		ConsumeEquiproomItem(60, 4,417,1,-1);
		OpenStoreBox(3);
		Msg2Player("B�n �� m� r�ng r��ng 3 th�nh c�ng!")
	end
end

--pEventType:Reg("L� Quan", "M� r�ng r��ng", MoRongRuong);