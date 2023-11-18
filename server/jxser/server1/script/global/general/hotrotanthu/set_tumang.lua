Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")

function SetTuMang()
	local nFaction = GetLastFactionNumber();
	SetTuMangConfirm(EQUIP_TUMANG[nFaction])
end

function SetTuMangConfirm(tb_EquipFaction)
	local tb_Equip = tb_EquipFaction;
	local tb_Faction = TAB_EQUIP_FACTION;
	local tbOption = {};
	local szTitle = "<dec>M�i b�n ch�n ���ng t�n c�ng c� b�n?";
	for x, y in tb_Equip do
		tinsert(tbOption, {format("%s", x), SetTuMangSure, {tb_Equip[x]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function SetTuMangSure(tb_EquipKind)
	for nID = tb_EquipKind[1], tb_EquipKind[2] do
		local nGoldIdx = AddGoldItem(0, nID)
		SetItemBindState(nGoldIdx, -2)
	end
end