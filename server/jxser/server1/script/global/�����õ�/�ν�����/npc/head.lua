
function talk_yulongtie()
	Say("C�i n�y l� ng�c long trang cho c�c v� anh h�ng h�o ki�t ��ch thi�p m�i, kh�ng ph�i ai c�ng c� th� l�y ���c n�?",
		2,
		"Ta s� d�ng nh�c v��ng h�n chi th�ch �� ��i l�y/get_yulongtie",
		"K�t th�c/Cancel")
end

-- ��������֮ʯ��ȡ����Ӣ����
function get_yulongtie()
	if (CalcEquiproomItemCount(4, 507, 1, -1) < 1) then
		Say("Ng��i kh�ng c� nh�c v��ng h�n chi th�ch , ti�p t�c �i luy�n t�p , sau �� t�i n�i n�y?")
	else
		Say("Ng��i x�c ��nh s� d�ng nh�c v��ng h�n chi th�ch ��i ng�c long anh h�ng thi�p ti�n v�o ki�m m� m� cung sao?",
			2,
			"Mu�n/exchange_yulongtie",
			"K�t th�c/Cancel")	
	end
end

-- function exchange_yulongtie()
	-- if (CalcFreeItemCellCount() == 0) then
		-- Say("H�nh trang kh�ng �� ch� tr�ng.")
	-- elseif (CalcEquiproomItemCount(4, 507, 1, -1) >= 1 and 
		-- ConsumeEquiproomItem(1, 4, 507, 1, -1) == 1) then
		-- AddItem(6, 1, 2622, 1, 0, 0)
		-- Msg2Player("Ng��i ��t ���c m�t ng�c long anh h�ng thi�p.")
	-- end
-- end
