Include("\\script\\dailogsys\\dailogsay.lua")

EQUIP_TUMANG = {
	[0] = {
		["Thi�u L�m Quy�n"] 					= 		{1825, 1834},
		["Thi�u L�m B�ng"] 					= 		{1835, 1844},
		["Thi�u L�m �ao"] 						=		 	{1845, 1854},
	},
	[1] = {
		["Thi�n V��ng Ch�y"] 				= 		{1855, 1864},
		["Thi�n V��ng Th��ng"] 			= 		{1865, 1874},
		["Thi�n V��ng �ao"] 					=			{1875, 1884},
	},
	[4] = {
		["Nga My Ki�m"] 						= 		{1885, 1894},
		["Nga My Ch��ng"] 					= 		{1895, 1904},
	},
	[5] = {
		["Th�y Y�n �ao"] 						= 		{1905, 1914},
		["Th�y Y�n Song �ao"] 				= 		{1915, 1924},
	},
	[3] = {
		["Ng� ��c Ch��ng"] 					= 		{1925, 1934},
		["Ng� ��c �ao"] 							= 		{1935, 1944},
	},
	[2] = {
		["���ng M�n Phi �ao"] 			= 		{1945, 1954},
		["���ng M�n T� Ti�n"] 			= 		{1955, 1964},
		["���ng M�n Phi Ti�u"] 			=			{1965, 1974},
	},
	[6] = {
		["C�i Bang Ch��ng"] 					= 		{1975, 1984},
		["C�i Bang C�n"] 						= 		{1985, 1994},
	},
	[7] = {
		["Thi�n Nh�n K�ch"] 					= 		{1995, 2004},
		["Thi�n Nh�n �ao"] 					= 		{2005, 2014},
	},
	[8] = {
		["V� �ang Quy�n"] 					= 		{2015, 2024},
		["V� �ang Ki�m"] 						= 		{2025, 2034},
	},
	[9] = {
		["C�n L�n �ao"] 							= 		{2035, 2044},
		["C�n L�n Ki�m"] 						= 		{2045, 2054},
	},
	[10] = {
		["Hoa S�n Kh� T�ng"] 				= 		{4713, 4722},
		["Hoa S�n Ki�m T�ng"] 				= 		{4723, 473},
	},
};

function main(nItemIndex)
	local  nFaction = GetLastFactionNumber();
	if not (EQUIP_TUMANG[nFaction]) then
		Talk(1, "", "M�n ph�i c�a b�n ch�a c� trong danh s�ch.")
	return 1 end
	AddEquipGoldConfirm(nItemIndex, EQUIP_TUMANG[nFaction],-2)
return 1; end;

function AddEquipGoldSpecical(nTableEquip)
	if (CalcFreeItemCellCount() < 50) then
		Talk(1, "", "H�nh trang kh�ng �� 50 � tr�ng �� nh�n.")
	return 1; end;
	
	local n_Faction = GetLastFactionNumber();
	if (n_Faction < 0) then
		Talk(1, "", "B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n trang b� n�y")
	return 1; end;
	
	local szTitle = "<dec><npc>B�n mu�n nh�n trang b� c�a m�n ph�i n�o?";
	local tbOption = {};
	local tb_Equip = nTableEquip;
	local tb_Faction = TAB_EQUIP_FACTION;
	for i = 0, getn(tb_Equip) do
		tinsert(tbOption, {format("Trang b� ph�i %s", tb_Faction[i]), AddEquipGoldConfirm, {tb_Equip[i]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldConfirm(nItemIndex,tb_EquipFaction, nBindState)
	nBindState = nBindState or 0;
	if (CalcFreeItemCellCount() < 50) then
		Talk(1, "", "H�nh trang kh�ng �� 50 � tr�ng �� nh�n.")
	return 1; end;
	local tb_Equip = tb_EquipFaction;
	local tb_Faction = TAB_EQUIP_FACTION;
	local tbOption = {};
	local szTitle = "<dec><npc>M�i b�n ch�n ���ng t�n c�ng c� b�n?";
	for x, y in tb_Equip do
		tinsert(tbOption, {format("%s", x), AddEquipGoldSpecicalKind, {nItemIndex,tb_Equip[x], nBindState}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldSpecicalKind(nItemIndex,tb_EquipKind, nBindState)
	for nID = tb_EquipKind[1], tb_EquipKind[2] do
		local nGold = AddGoldItem(0, nID);
		if (nBindState ~= 0) then
			SetItemBindState(nGold, nBindState);
		end
	end
	
	RemoveItemByIndex(nItemIndex);
end
