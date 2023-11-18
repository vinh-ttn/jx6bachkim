Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function GhepHanhHiepLenh()
	local szTitle = "Ng��i mu�n gh�p c�i g�?";
	local tbOption = {};
		tinsert(tbOption, {"D�ng 1000 HHL ��i l�y B�ch H� L�nh", DoiBachHoLenh})
		tinsert(tbOption, {"D�ng 2000 HHL ��i l�y X�ch L�n L�nh", DoiXichLanLenh})
		tinsert(tbOption, {"D�ng 4000 HHL ��i l�y Minh Ph��ng L�nh", DoiMinhPhuongLenh})
		tinsert(tbOption, {"D�ng 500 HHL ��i l�y T�i Phi Phong (c�p 6)", DoiTuiPhiPhongCap6})
		tinsert(tbOption, {"D�ng 1500 HHL ��i l�y T�i Phi Phong (c�p 7)", DoiTuiPhiPhongCap7})
		tinsert(tbOption, {"D�ng 3000 HHL ��i l�y T�i Phi Phong (c�p 8)", DoiTuiPhiPhongCap8})
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption);
end

function  DoiBachHoLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 1000) then
		Talk(1, "", "B�n kh�ng �� 1000 H�nh Hi�p L�nh �� ��i l�y B�ch H� L�nh.")
	return end;
	
	if (ConsumeEquiproomItem(1000,6,1,2566,-1) == 1) then
		AddItem(6,1,4873,1,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 1000 H�nh Hi�p L�nh l�y 1 B�ch H� L�nh th�nh c�ng!")
	end
end

function  DoiXichLanLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 2000) then
		Talk(1, "", "B�n kh�ng �� 2000 H�nh Hi�p L�nh �� ��i l�y X�ch L�n L�nh.")
	return end;
	
	if (ConsumeEquiproomItem(2000,6,1,2566,-1) == 1) then
		AddItem(6,1,4874,1,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 2000 H�nh Hi�p L�nh l�y 1 X�ch L�n L�nh th�nh c�ng!")
	end
end

function  DoiMinhPhuongLenh()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 4000) then
		Talk(1, "", "B�n kh�ng �� 4000 H�nh Hi�p L�nh �� ��i l�y Minh Ph��ng L�nh.")
	return end;
	
	if (ConsumeEquiproomItem(4000,6,1,2566,-1) == 1) then
		AddItem(6,1,4875,1,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 4000 H�nh Hi�p L�nh l�y 1 Minh Ph��ng L�nh th�nh c�ng!")
	end
end

function  DoiTuiPhiPhongCap6()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 500) then
		Talk(1, "", "B�n kh�ng �� 500 H�nh Hi�p L�nh �� ��i l�y T�i Phi Phong (c�p 6).")
	return end;
	
	if (ConsumeEquiproomItem(500,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,6,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 500 H�nh Hi�p L�nh l�y 1 T�i Phi Phong (c�p 6) th�nh c�ng!")
	end
end

function  DoiTuiPhiPhongCap7()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 1500) then
		Talk(1, "", "B�n kh�ng �� 1500 H�nh Hi�p L�nh �� ��i l�y T�i Phi Phong (c�p 7).")
	return end;
	
	if (ConsumeEquiproomItem(1500,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,7,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 1500 H�nh Hi�p L�nh l�y 1 T�i Phi Phong (c�p 7) th�nh c�ng!")
	end
end

function  DoiTuiPhiPhongCap8()
	if (CalcEquiproomItemCount(6,1,2566,-1) < 3000) then
		Talk(1, "", "B�n kh�ng �� 3000 H�nh Hi�p L�nh �� ��i l�y T�i Phi Phong (c�p 8).")
	return end;
	
	if (ConsumeEquiproomItem(3000,6,1,2566,-1) == 1) then
		AddItem(6,1,4865,8,0,0);
		Msg2Player("Ch�c m�ng b�n �� ��i 3000 H�nh Hi�p L�nh l�y 1 T�i Phi Phong (c�p 8) th�nh c�ng!")
	end
end
--pEventType:Reg("L� Quan", "Ta mu�n ��i H�nh Hi�p L�nh l�y v�t ph�m", GhepHanhHiepLenh);