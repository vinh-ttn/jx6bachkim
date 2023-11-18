-- Create & Modified by pg4i3n
-- B�n ng�a D��ng Ch�u - 205 198
	
-- Nguy�n v�t li�u d�ng �� n�ng c�p chi�n m�
	-- C� t��i - 6,1,4891 :  mua � B� ch� ti�m v�t nu�i D��ng Ch�u 224,193
			-- x�p ch�ng, gi� m�i c�i l� 5 v�n
	-- D�y th�ng 6,1,4892 : mua � B� ch� ti�m v�t nu�i D��ng Ch�u 224,193
			-- x�p ch�ng, gi� m�i c�i l� 5 v�n
	-- B�c ��u thu�n m� thu�t - 6,1,4894 : mua � k� tr�n c�c gi� 50xu
			-- KH�NG x�p ch�ng, gi� 100 ti�n ��ng
	-- V�t ph�m ch�a �i�m t�ch l�y n�ng c�p chi�n m�
		-- B�c ��u th�n m� ��n 6,1,4893 : mua � k� tr�n c�c
		
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\global\\pgaming\\nangcapngua\\lib\\inc.lua")

function pgHorseUpgradeMain()
	local pg_1 = {}
	tinsert(pg_1, "Xin gi�p t�i h� n�ng c�p chi�n m�/pgHorseUpgradeMain_1")
	tinsert(pg_1, "Ta mu�n r�t �i�m t�ch l�y n�ng c�p chi�n m�/pgHorseUpgradeMain_GetPoint")
	tinsert(pg_1, "T�m hi�u nguy�n li�u c�n thi�t �� n�ng c�p chi�n m�/#pgHorseUpgradeMainInfoUpgrade()")
	tinsert(pg_1, "K�t th�c ��i tho�i!/pg.OnCancel")
	return Say("Ng�a "..pg.C(1, "X�ch Th�").." c�a Quan V�n Tr��ng c� m�u �� n�i b�t, "..pg.C(1,"� V�n ��p Tuy�t").." c�a Tr��ng Phi l�i c� m�u �en nh� c�ach� nh�n... l� ��c �i�m n�i ti�ng c�a nh�ng con ng�a qu� th�i c� ��i!", getn(pg_1), pg_1)
end

function pgHorseUpgradeMainInfoUpgrade(pg_1)
	if pg_1 then
		if pg_1 == 1 then
			local _pgTbHORSE = { -- Ng�a c�n n�ng c�p
				-- pg_1_1: ng�a - pg_1_2: Name - pg_1_3: b�c ��u thu�n m� thu�t - pg_1_4: c� t��i - pg_1_5: d�y th�ng - pg_1_6: t� l� th�nh c�ng - pg_1_7: t�ch l�y c�n thi�t - pg_1_8: Task s� l�n n�ng c�p th�t b�i
				{pg_1_1 = {0,10,5,6}, pg_1_2 = "� V�n ��p Tuy�t", pg_1_3 = 1, pg_1_4 = 30, pg_1_5 = 50, pg_1_6 = 10, pg_1_7 = 800, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "X�ch Th�", pg_1_3 = 1, pg_1_4 = 50, pg_1_5 = 100, pg_1_6 = 5, pg_1_7 = 1500, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "Tuy�t �nh", pg_1_3 = 1, pg_1_4 = 60, pg_1_5 = 150, pg_1_6 = 4, pg_1_7 = 1700, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "��ch L�", pg_1_3 = 1, pg_1_4 = 70, pg_1_5 = 200, pg_1_6 = 3, pg_1_7 = 1800, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "Chi�u D� Ng�c S� T�", pg_1_3 = 1, pg_1_4 = 100, pg_1_5 = 250, pg_1_6 = 2, pg_1_7 = 2000, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V�n", pg_1_3 = 1, pg_1_4 = 150, pg_1_5 = 300, pg_1_6 = 1, pg_1_7 = 2500, pg_1_8 = 5947},
				--{pg_1_1 = {0,10,6,10}, pg_1_2 = "B�n Ti�u", pg_1_3 = 8, pg_1_4 = 7, pg_1_5 = 2, pg_1_6 = 10, pg_1_7 = 200, pg_1_8 = 5946},
				--{pg_1_1 = {0,10,34,10}, pg_1_2 = "X�ch Long C�u", pg_1_3 = 12, pg_1_4 = 8, pg_1_5 = 3, pg_1_6 = 10, pg_1_7 = 300, pg_1_8 = 5938},
				--{pg_1_1 = {0,10,35,10}, pg_1_2 = "Si�u Quang", pg_1_3 = 16, pg_1_4 = 10, pg_1_5 = 5, pg_1_6 = 10, pg_1_7 = 400, pg_1_8 = 5937},
			}
			local pg_2 = 0
			local pg_3_G, pg_3_D, pg_3_P, pg_3_L, pg_3_S
			for pg_Loop_1 = 1, getn(_pgTbHORSE) do
				pg_3_G, pg_3_D, pg_3_P, pg_3_L, pg_3_S = GetItemProp(GetGiveItemUnit(1))
				if pg_3_G == 0 and pg_3_D == 10 and pg_3_P == 2 and pg_3_L >= 9 then
					pg_2 = -1
				elseif _pgTbHORSE[pg_Loop_1].pg_1_1[1] == pg_3_G and _pgTbHORSE[pg_Loop_1].pg_1_1[2] == pg_3_D and _pgTbHORSE[pg_Loop_1].pg_1_1[3] == pg_3_P and _pgTbHORSE[pg_Loop_1].pg_1_1[4] == pg_3_L then
					pg_2 = pg_Loop_1
				end
			end
			if pg_2 == 0 then
				return Talk(1,"","C�i n�y kh�ng ph�i chi�n m� ho�c kh�ng th� ti�n h�nh n�ng c�p, xin c�c h� ki�m tra l�i!")
			elseif pg_2 == getn(_pgTbHORSE) then
				return Talk(1,"","L�o phu kh�ng th� n�ng c�p Th�n m� n�y v� �� ��t ��n c�nh gi�i, xin h�y �i t�m v� cao nh�n kh�c!")
			end
			local pg_3
			if pg_2 == -1 then
				pg_2 = 0
				pg_3 = "T�c S��ng"
			else
				pg_3 = _pgTbHORSE[pg_2].pg_1_2
			end
			return Say("Chi�n m�: "..pg.C(1, pg_3)
				.."<enter>N�ng l�n th�n m�: "..pg.C(4, _pgTbHORSE[pg_2+1].pg_1_2)
				.." Y�u c�u:"
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_3.." B�c ��u thu�n m� thu�t")
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_4.." C� t��i")
				.."<enter>"..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_5.." D�y th�ng")
				.."<enter>T� l� th�nh c�ng: "..pg.C(2, _pgTbHORSE[pg_2+1].pg_1_6).."%"
				.."<enter>Ho�c t�ch l�y: "..pg.C(2, GetTask(5953).."/".._pgTbHORSE[pg_2+1].pg_1_7).." �i�m"
				.."<enter>S� l�n th�t b�i: "..pg.C(2, GetTask(_pgTbHORSE[pg_2+1].pg_1_8)).." l�n", 1,
				"Ta bi�t r�i!/pg.OnCancel")
		else
			return Talk(1,"","M�i l�n ch� c� th� t�m hi�u v� 1 lo�i chi�n m�, c�c h� vui l�ng ki�m tra l�i!")
		end
	end
	return GiveItemUI("N�ng C�p Chi�n M�", "��t lo�i chi�n m� m� c�c h� mu�n n�ng c�p v�o ��y!", "pgHorseUpgradeMainInfoUpgrade", "pg.OnCancel", 1);
end

function pgHorseUpgradeMain_GetPoint()
	Say("Hi�n t�i c�c h� �ang c� "..pg.C(1, GetTask(5953)).." �i�m t�ch l�y<enter>M�i l�n r�t ra s� b� m�t "..pg.C(2,"12 �i�m").." ��i l�y v�t ph�m <enter>ch�a 10 �i�m l�u tr�<enter>c�c h� mu�n th�c hi�n thao t�c n�y kh�ng!", 2, "X�c nh�n l�y ra v�t ph�m l�u tr� �i�m/pgHorseUpgradeMain_GetPoint_Ok", "��i ta suy ngh� l�i!/pg.OnCancel")
end

function pgHorseUpgradeMain_GetPoint_Ok()
	if GetTask(5953) >= 12 then
		SetTask(5953, GetTask(5953) - 12)
		AddItem(6,1,4893,1,0,0)
		Msg2Player(pg.C(1, "Nh�n ���c 1 "..pg.C(1,"B�c ��u th�n m� ��n").."!"))
	else
		return Talk(1,"","H�nh nh� �i�m t�ch l�y c�a c�c h� kh�ng �� �� th�c <enter>hi�n thao t�c!")
	end
end

function pgHorseUpgradeMain_1()
	return Talk(1, "pgHorseUpgradeMain_2", "�i�m t�ch l�y n�ng c�p chi�n m�: <color=yellow>"..GetTask(5953).."<color><enter>Khi �� �i�m t�ch l�y s� c� t� l� th�nh c�ng 100%.<enter><color=yellow><bclr=red>Ch� �: C�n ��t ��ng nguy�n li�u theo y�u c�u, n�u d� s� kh�ng tr� l�i ��u nh�.")
end

function pgHorseUpgradeMain_2()
	GiveItemUI("N�ng C�p Chi�n M�", "V�t ph�m c�n thi�t<enter><color=blue>- Chi�n m� c�n n�ng c�p<enter>- B�c ��u thu�n m� thu�t<enter>  S�n Boss Ho�ng Kim c� c� h�i nh�n ���c<enter>- C� t��i<enter>  G�t � M�c B�c Th�o Nguy�n<enter>(154,150),(194,199),(194,150),(155,195)<enter>- D�y th�ng<enter>  Mua � npc n�ng c�p ng�a<enter>- V� c�c nguy�n li�u t�ng may m�n nh�: Ph�c Duy�n, Th�y Tinh", "pgHorseUpgradeMain_3", "pg.OnCancel", 1);
end

function pgHorseUpgradeMain_3(pgCount)
	local _pgTbHORSE = { -- Ng�a c�n n�ng c�p
		-- pg_1_1: ng�a - pg_1_2: Name - pg_1_3: b�c ��u thu�n m� thu�t - pg_1_4: c� t��i - pg_1_5: d�y th�ng - pg_1_6: t� l� th�nh c�ng - pg_1_7: t�ch l�y c�n thi�t - pg_1_8: Task s� l�n n�ng c�p th�t b�i
		{pg_1_1 = {0,10,5,6}, pg_1_2 = "� V�n ��p Tuy�t", pg_1_3 = 1, pg_1_4 = 30, pg_1_5 = 50, pg_1_6 = 10, pg_1_7 = 800, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "X�ch Th�", pg_1_3 = 1, pg_1_4 = 50, pg_1_5 = 100, pg_1_6 = 5, pg_1_7 = 1500, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "Tuy�t �nh", pg_1_3 = 1, pg_1_4 = 60, pg_1_5 = 150, pg_1_6 = 4, pg_1_7 = 1700, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "��ch L�", pg_1_3 = 1, pg_1_4 = 70, pg_1_5 = 200, pg_1_6 = 3, pg_1_7 = 1800, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "Chi�u D� Ng�c S� T�", pg_1_3 = 1, pg_1_4 = 100, pg_1_5 = 250, pg_1_6 = 2, pg_1_7 = 2000, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V�n", pg_1_3 = 1, pg_1_4 = 150, pg_1_5 = 300, pg_1_6 = 1, pg_1_7 = 2500, pg_1_8 = 5947},
				--{pg_1_1 = {0,10,6,10}, pg_1_2 = "B�n Ti�u", pg_1_3 = 8, pg_1_4 = 7, pg_1_5 = 2, pg_1_6 = 10, pg_1_7 = 200, pg_1_8 = 5946},
				--{pg_1_1 = {0,10,34,10}, pg_1_2 = "X�ch Long C�u", pg_1_3 = 12, pg_1_4 = 8, pg_1_5 = 3, pg_1_6 = 10, pg_1_7 = 300, pg_1_8 = 5938},
				--{pg_1_1 = {0,10,35,10}, pg_1_2 = "Si�u Quang", pg_1_3 = 16, pg_1_4 = 10, pg_1_5 = 5, pg_1_6 = 10, pg_1_7 = 400, pg_1_8 = 5937},
	}
	local _pgTbNguyenLieu = { -- Nguy�n li�u
		{{6,1,4894}, "B�c ��u thu�n m� thu�t"},
		{{6,1,4891}, "C� t��i"},
		{{6,1,4892}, "D�y th�ng"},
	}
	local _pgLuck = { -- Nguy�n li�u t�ng may m�n
		{{4,238,1}, "Lam th�y tinh"},
		{{4,239,1}, "T� th�y tinh"},
		{{4,240,1}, "L�c th�y tinh"},
		{{6,1,122}, "Ph�c duy�n ti�u"},
		{{6,1,123}, "Ph�c duy�n trung"},
		{{6,1,124}, "Ph�c duy�n ��i"},
	}
	-- pg_2: Th�ng s� ng�a - pg_3: B�c ��u thu�n m� thu�t - pg_4: C� t��i - pg_5: D�y th�ng 
	-- pg_6: Lam th�y tinh - pg_7: T� th�y tinh - pg_8: L�c th�y tinh - pg_9: Ph�c duy�n ti�u - pg_10: Ph�c duy�n trung - pg_11: Ph�c duy�n ��i - pg_14: Danh s�ch ItemIdx - pg_20: L�u th�g s� Item
	local pg_2, pg_3, pg_4, pg_5, pg_6, pg_7, pg_8, pg_9, pg_10, pg_11, pg_14, pg_20 = {}, 0, 0, 0, 0, 0, 0, 0, 0, 0, {}, {}
	if pgCount < 4 then
		return Talk(1,"","V�t ph�m c�n thi�t �� n�ng c�p chi�n m� g�m: <color=yellow>Chi�n m�, B�c ��u thu�n m� thu�t, C� t��i, D�y th�ng<color>, c�c nguy�n li�u t�ng �� may m�n: <color=blue>Ph�c duy�n, Th�y tinh<color>. Xem ra c�c h� v�n ch�a chu�n b� k�!")
	end
	local pg_13
	local pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS
	for pg_12 = 1, pgCount do
		pg_13 = GetGiveItemUnit(pg_12)
		tinsert(pg_14, pg_13)
		pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS = GetItemProp(pg_13);
		tinsert(pg_20, {pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS, 0, GetItemStackCount(pg_13)})
		if pg_1_nG == 0 and pg_1_nD == 10 then
			if GetItemBindState(pg_13) < 0 then
				return Talk(1,"","Chi�n m� c�a c�c h� �� b� phong t�a ti�m n�ng v� ph�mch�t, kh�ng th� ti�n h�nh thu�n h�a, c�c h� vui l�ng t�m 1 chi�n m� kh�ng b� kh�a m�i c� th� ti�n h�nh <enter>n�ng c�p!")
			end
			tinsert(pg_2, {{pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL}, GetItemName(pg_13)})
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[1][1][3] then
			pg_3 = pg_3 + 1
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[2][1][3] then 
			pg_4 = pg_4 + GetItemStackCount(pg_13)
		elseif pg_1_nG == 6 and pg_1_nP == _pgTbNguyenLieu[3][1][3] then 
			pg_5 = pg_5 + GetItemStackCount(pg_13)
		elseif pg_1_nG == 4 and pg_1_nD == 238 then 
			pg_6 = pg_6 + 1
		elseif pg_1_nG == 4 and pg_1_nD == 239 then 
			pg_7 = pg_7 + 1
		elseif pg_1_nG == 4 and pg_1_nD == 240 then 
			pg_8 = pg_8 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 122 then 
			pg_9 = pg_9 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 123 then 
			pg_10 = pg_10 + 1
		elseif pg_1_nG == 6 and pg_1_nP == 124 then 
			pg_11 = pg_11 + 1
		else
			return Talk(1,"","�� n�ng c�p t�i h� ch� c�n: <color=yellow>Chi�n m�, B�c ��u thu�n m� thu�t, C� t��i, D�y th�ng<color>, v� c�c v�t ph�m t�ng may m�n nh�: <color=blue>Th�y tinh, Ph�c duy�n<color>, c�c h� vui l�ng ki�m tra l�i nguy�n li�u!")
		end
	end
	if not(pg_2[1]) then
		return Talk(1,"","T�i h� kh�ng t�m th�y lo�i chi�n m� m� c�c h� c�n n�ng c�p, vui l�ng ki�m tra l�i!")
	else
		if pg.False(pg_2[1][2]) then
			return Talk(1,"","T�i h� ch�a m�t l�n nh�n th�y lo�i chi�n m� n�y, c�c h� c� ch�c n� l� chi�n m� ch�!")
		end
	end
	if getn(pg_2) > 1 then 
		return Talk(1,"","T�i h� ch� c� n�ng l�c n�ng c�p m�i l�n 1 chi�n m�, c�c h� vui l�ng ch�n 1 chi�n m� m� m�nh c�n n�ng c�p!")
	end
	local pg_15 = 0
	for pg_16 = 1, getn(_pgTbHORSE) do
		if _pgTbHORSE[pg_16].pg_1_1[1] == pg_2[1][1][1] then
			if _pgTbHORSE[pg_16].pg_1_1[2] == pg_2[1][1][2] then
				if _pgTbHORSE[pg_16].pg_1_1[3] == pg_2[1][1][3] then
					if _pgTbHORSE[pg_16].pg_1_1[4] == pg_2[1][1][4] then
						pg_15 = pg_16 + 1
					end
				end
			end
		end
	end
	if pg_15 == 0 then
		if pg_2[1][1][3] ~= 2 or pg_2[1][1][4] < 9 then
			return Talk(1,"","Lo�i chi�n m� c�p th�p nh�t v� �� t� ch�t �� �� th�ng v� thu�n h�a ch� c� th� l� "..pg.C(1, "T�c S��ng th�n m� c�p 9 tr� l�n").." c�n c�c lo�i ng�a kh�c kh�ng �� t� ch�t �� ti�n h�nh thu�n h�a, c�c h� h�y �i t�m cho m�nh 1 T�c S��ng th�n m� tr��c!")
		else
			pg_15 = 1
		end
	end
	if pg_15 > getn(_pgTbHORSE) then
		return Talk(1, "","Hi�n t�i trong quy�n "..pg.C(1, "B�c ��u thu�n m� thu�t").." ch�a c� ghi ch�p n�o v� t� ch�t v� ti�m n�ng c�a th�n m� "..pg.C(4, _pgTbHORSE[getn(_pgTbHORSE)].pg_1_2).." c�, ta e l� kh�ng gi�p ���c g� cho c�c h� r�i!")
	end
	local pg_17 = pg_2[1][2]
	local pg_18 = _pgTbHORSE[pg_15].pg_1_2
	if pg_3 < _pgTbHORSE[pg_15].pg_1_3 then
		return Say("Chi�n m�: "..pg.C(1, pg_17).."<enter>L�n Th�n m�: "..pg.C(4, pg_18).."<enter>Y�u c�u:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." C� t��i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/pg.OnCancel")
	end
	if pg_4 < _pgTbHORSE[pg_15].pg_1_4 then
		return Say("Chi�n m�: "..pg.C(1, pg_17).."<enter>L�n Th�n m�: "..pg.C(4, pg_18).."<enter>Y�u c�u:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." C� t��i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/pg.OnCancel")
	end
	if pg_5 < _pgTbHORSE[pg_15].pg_1_5 then
		return Say("Chi�n m�: "..pg.C(1, pg_17).."<enter>L�n Th�n m�: "..pg.C(4, pg_18).."<enter>Y�u c�u:<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_3.." B�c ��u thu�n m� thu�t").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_4.." C� t��i").."<enter>"..pg.C(2, _pgTbHORSE[pg_15].pg_1_5.." D�y th�ng").."<enter>H�nh nh� c�c h� ch�a chu�n b� k�!", 1,"Ta bi�t r�i, ��i ta thu th�p nguy�n li�u!/pg.OnCancel")
	end
	local pg_19 = ""
	if pg_6 > 0 or pg_7 > 0 or pg_8 > 0 then
		pg_19 = pg_19.." + <color=wood>T.Tinh<color>"
	end
	if pg_9 > 0 or pg_10 > 0 or pg_11 > 0 then
		pg_19 = pg_19.." + <color=wood>P.Duy�n<color>"
	end
	return CreateNewSayEx("<link=image:\\spr\\Ui3\\����װ��\\�ϳ���Ч2.spr><link><color>Chi�n m�: "..pg.C(1, pg_17).."<enter>N�ng c�p l�n th�n m�: "..pg.C(4, pg_18).."<enter>N�ng c�p "..pg_18.." th�t b�i "..GetTask(_pgTbHORSE[pg_15].pg_1_8).." l�n. <enter>T� l� th�nh c�ng: "..pg.C(2, _pgTbHORSE[pg_15].pg_1_6).."% + "..pg.C(2, GetTask(_pgTbHORSE[pg_15].pg_1_8) ).."% = "..(pg.C(2, _pgTbHORSE[pg_15].pg_1_6 + (GetTask(_pgTbHORSE[pg_15].pg_1_8) ))).."%"..pg_19.."<enter>Ho�c T�ch l�y hi�n t�i: "..pg.C(2, GetTask(5953).."/".._pgTbHORSE[pg_15].pg_1_7).."<enter>C�c h� mu�n ti�n h�nh n�ng c�p ch�?",
		{
			{"X�c nh�n n�ng c�p chi�n m�", pgHorseUpgradeMain_4, {pg_20, pg_15, (pg_6 + pg_7 + pg_8), {pg_9, pg_10, pg_11}, pg_17, pg_14}},
			{"��i ta suy ngh� l�i", pg.OnCancel},
		})
end

local pgHorseUpgradeMain_UPGRADE = function(pg_8, pg_11, pg_12, pg_2, pg_9, pg_14)
	-- pg_8: T� l� th�nh c�ng l�n n�ng c�p c� ��nh - pg_11: T� l� th�nh c�ng h� th�ng - pg_12: Tb th�ng s� Item - pg_2: Row_pgTbHORSE - pg_9: t�n ng�a c�n n�g c�p
	local _pgTbHORSE = { -- Ng�a c�n n�ng c�p
		-- pg_1_1: ng�a - pg_1_2: Name - pg_1_3: b�c ��u thu�n m� thu�t - pg_1_4: c� t��i - pg_1_5: d�y th�ng - pg_1_6: t� l� th�nh c�ng - pg_1_7: t�ch l�y c�n thi�t - pg_1_8: Task s� l�n n�ng c�p th�t b�i
		{pg_1_1 = {0,10,5,6}, pg_1_2 = "� V�n ��p Tuy�t", pg_1_3 = 1, pg_1_4 = 30, pg_1_5 = 50, pg_1_6 = 10, pg_1_7 = 800, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "X�ch Th�", pg_1_3 = 1, pg_1_4 = 50, pg_1_5 = 100, pg_1_6 = 5, pg_1_7 = 1500, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "Tuy�t �nh", pg_1_3 = 1, pg_1_4 = 60, pg_1_5 = 150, pg_1_6 = 4, pg_1_7 = 1700, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "��ch L�", pg_1_3 = 1, pg_1_4 = 70, pg_1_5 = 200, pg_1_6 = 3, pg_1_7 = 1800, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "Chi�u D� Ng�c S� T�", pg_1_3 = 1, pg_1_4 = 100, pg_1_5 = 250, pg_1_6 = 2, pg_1_7 = 2000, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V�n", pg_1_3 = 1, pg_1_4 = 150, pg_1_5 = 300, pg_1_6 = 1, pg_1_7 = 2500, pg_1_8 = 5947},
				--{pg_1_1 = {0,10,6,10}, pg_1_2 = "B�n Ti�u", pg_1_3 = 8, pg_1_4 = 7, pg_1_5 = 2, pg_1_6 = 10, pg_1_7 = 200, pg_1_8 = 5946},
				--{pg_1_1 = {0,10,34,10}, pg_1_2 = "X�ch Long C�u", pg_1_3 = 12, pg_1_4 = 8, pg_1_5 = 3, pg_1_6 = 10, pg_1_7 = 300, pg_1_8 = 5938},
				--{pg_1_1 = {0,10,35,10}, pg_1_2 = "Si�u Quang", pg_1_3 = 16, pg_1_4 = 10, pg_1_5 = 5, pg_1_6 = 10, pg_1_7 = 400, pg_1_8 = 5937},
	}
	local pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS
	for pg_15 = 1, getn(pg_14) do
		if IsMyItem(pg_14[pg_15]) ~= 1 then
			return Talk(1, "", "Nguy�n v�t li�u kh�ng c�n trong ng��i c�a ��i hi�p kh�ng th� n�ng c�p, xin ki�m tra l�i h�nh trang!")
		end
		pg_1_nG, pg_1_nD, pg_1_nP, pg_1_nL, pg_1_nS = GetItemProp(pg_14[pg_15])
		if pg_1_nG ~= pg_12[pg_15][1] or pg_1_nP ~= pg_12[pg_15][3] then
			return Talk(1, "", "Nguy�n v�t li�u kh�ng c�n trong ng��i c�a ��i hi�p kh�ng th� n�ng c�p, xin ki�m tra l�i h�nh trang!")
		end
	end
	for pg_21 = 1, getn(pg_14) do
		RemoveItemByIndex(pg_14[pg_21])
	end
	if pg_8 >= pg_11 then
		SetTask(_pgTbHORSE[pg_2].pg_1_8, 0)
		SetTask(5953, 0)
		AddItem(_pgTbHORSE[pg_2].pg_1_1[1], _pgTbHORSE[pg_2].pg_1_1[2], _pgTbHORSE[pg_2].pg_1_1[3], _pgTbHORSE[pg_2].pg_1_1[4], random(0,4), 0)
		Msg2Player(pg.C(2, "N�ng c�p th�nh c�ng chi�n m� <color=white>"..pg_9.."<color> l�n th�n m� <color=orange>".._pgTbHORSE[pg_2].pg_1_2.."<color>, Xin ch�c m�ng!"))
		Talk(1, "", pg.C(2, "N�ng c�p th�nh c�ng chi�n m� <color=white>"..pg_9.."<color> l�n th�n m� <color=orange>".._pgTbHORSE[pg_2].pg_1_2.."<color>, Xin ch�c m�ng!"))
		AddLocalNews("��i hi�p "..pg.C(1, GetName()).." t�i B�n ng�a D��ng Ch�u �� n�ng c�p th�nh c�ng chi�n m� "..pg.C(4, pg_9).." l�n Th�n m� "..pg.C(2, _pgTbHORSE[pg_2].pg_1_2)..", Xin ch�c m�ng!")
		return Msg2SubWorld("��i hi�p "..pg.C(1, GetName()).." t�i B�n ng�a D��ng Ch�u �� n�ng c�p th�nh c�ng chi�n m� "..pg.C(4, pg_9).." l�n Th�n m� "..pg.C(2, _pgTbHORSE[pg_2].pg_1_2)..", Xin ch�c m�ng!")
	else
		SetTask(_pgTbHORSE[pg_2].pg_1_8, GetTask(_pgTbHORSE[pg_2].pg_1_8) + 1)
		SetTask(5953, GetTask(5953) + 5)
		pgHorseUpgradeMain_OnCancle(pg_12, 2)
		Msg2Player("L�n n�ng c�p <color=white>"..pg_9.."<color> l�n th�n m� "..pg.C(1, _pgTbHORSE[pg_2].pg_1_2).." n�y �� th�t b�i, to�n b� s� nguy�n li�u s� b� m�t, xin c�c h� ��ng n�n ch�!")
		return Talk(1,"","L�n n�ng c�p <color=white>"..pg_9.."<color> l�n th�n m� "..pg.C(1, _pgTbHORSE[pg_2].pg_1_2).." n�y �� th�t b�i, to�n b� s� nguy�n li�u s� b� m�t, xin c�c h� ��ng n�n ch�!")
	end
end

local pgHorseUpgradeMain_ONBREAK = function(pg_1)
	-- pgHorseUpgradeMain_OnCancle(pg_1, 1)
	Msg2Player("N�ng c�p ng�a b� gi�n �o�n, xin th� l�i!")
	return Talk(1,"","N�ng c�p ng�a b� gi�n �o�n, xin th� l�i!")
end

function pgHorseUpgradeMain_4(pg_1, pg_2, pg_3, pg_4, pg_9, pg_14)
	-- pg_1{}: Tb th�ng s� Item - pg_2: Row_pgTbHORSE - pg_3: T�ng th�y tinh - pg_4{Ph�c duy�n ti�u, trung, ��i} - pg_5: S� l�n th�t b�i - pg_6: T�ch l�y b�n th�n - pg_7: T�ch l�y c�n thi�t - pg_9: T�n ng�a c�n n�g c�p
	-- pg_8: T�ng t� l� th�nh c�ng
	local _pgTbHORSE = { -- Ng�a c�n n�ng c�p
		-- pg_1_1: ng�a - pg_1_2: Name - pg_1_3: b�c ��u thu�n m� thu�t - pg_1_4: c� t��i - pg_1_5: d�y th�ng - pg_1_6: t� l� th�nh c�ng - pg_1_7: t�ch l�y c�n thi�t - pg_1_8: Task s� l�n n�ng c�p th�t b�i
		{pg_1_1 = {0,10,5,6}, pg_1_2 = "� V�n ��p Tuy�t", pg_1_3 = 1, pg_1_4 = 30, pg_1_5 = 50, pg_1_6 = 10, pg_1_7 = 800, pg_1_8 = 5950},
				{pg_1_1 = {0,10,5,7}, pg_1_2 = "X�ch Th�", pg_1_3 = 1, pg_1_4 = 50, pg_1_5 = 100, pg_1_6 = 5, pg_1_7 = 1500, pg_1_8 = 5949},
				{pg_1_1 = {0,10,5,8}, pg_1_2 = "Tuy�t �nh", pg_1_3 = 1, pg_1_4 = 60, pg_1_5 = 150, pg_1_6 = 4, pg_1_7 = 1700, pg_1_8 = 5951},
				{pg_1_1 = {0,10,5,9}, pg_1_2 = "��ch L�", pg_1_3 = 1, pg_1_4 = 70, pg_1_5 = 200, pg_1_6 = 3, pg_1_7 = 1800, pg_1_8 = 5952},
				{pg_1_1 = {0,10,5,10}, pg_1_2 = "Chi�u D� Ng�c S� T�", pg_1_3 = 1, pg_1_4 = 100, pg_1_5 = 250, pg_1_6 = 2, pg_1_7 = 2000, pg_1_8 = 5948},
				{pg_1_1 = {0,10,8,10}, pg_1_2 = "Phi V�n", pg_1_3 = 1, pg_1_4 = 150, pg_1_5 = 300, pg_1_6 = 1, pg_1_7 = 2500, pg_1_8 = 5947},
				--{pg_1_1 = {0,10,6,10}, pg_1_2 = "B�n Ti�u", pg_1_3 = 8, pg_1_4 = 7, pg_1_5 = 2, pg_1_6 = 10, pg_1_7 = 200, pg_1_8 = 5946},
				--{pg_1_1 = {0,10,34,10}, pg_1_2 = "X�ch Long C�u", pg_1_3 = 12, pg_1_4 = 8, pg_1_5 = 3, pg_1_6 = 10, pg_1_7 = 300, pg_1_8 = 5938},
				--{pg_1_1 = {0,10,35,10}, pg_1_2 = "Si�u Quang", pg_1_3 = 16, pg_1_4 = 10, pg_1_5 = 5, pg_1_6 = 10, pg_1_7 = 400, pg_1_8 = 5937},
	}
	local pg_5, pg_6, pg_7, pg_8 = GetTask(_pgTbHORSE[pg_2].pg_1_8), GetTask(5953), _pgTbHORSE[pg_2].pg_1_7, (_pgTbHORSE[pg_2].pg_1_6 + (GetTask(_pgTbHORSE[pg_2].pg_1_8) ))
	local pg_11 = floor((random(0,100) + random(0,100)) / 2)
	if pg_6 >= pg_7 then
		pg_8 = 100
	else
		pg_8 = pg_8 + floor(pg_3/3) + floor((pg_4[1] + pg_4[2] + pg_4[3])/5)
	end
	tbProgressBar:OpenByConfig(10, %pgHorseUpgradeMain_UPGRADE, {pg_8, pg_11, pg_1, pg_2, pg_9, pg_14}, %pgHorseUpgradeMain_ONBREAK, {pg_1})
end

function pgHorseUpgradeMain_OnCancle(pg_1, pg_2)
	if pg_2 == 1 then
		for pg_3 = 1, getn(pg_1) do
			for pg_5 = 1, pg_1[pg_3][7] do
				AddItem(unpack(pg_1[pg_3]))
			end
		end
		return
	elseif pg_2 == 2 then
		for pg_4 = 1, getn(pg_1) do
			if pg_1[pg_4][1] == 0 and pg_1[pg_4][2] == 10 then
				return AddItem(unpack(pg_1[pg_4]))
			end
		end
	end
end

























