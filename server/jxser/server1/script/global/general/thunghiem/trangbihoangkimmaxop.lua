Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

HOANGKIMMONPHAIMAXOP = {
	[0] = {
		["Thi�u L�m (quy�n)"] 				= 		{905, 909},
		["Thi�u L�m (c�n)"] 					= 		{910, 914},
		["Thi�u L�m (�ao)"] 					= 		{915, 919},
	},
	
	[1] = {
		["Thi�n V��ng (ch�y)"] 			=	 		{920, 924},
		["Thi�n V��ng (th��ng)"]	 		=			{925, 929},
		["Thi�n V��ng (�ao)"] 				= 		{930, 934},
	},
	
	[2] = {
		["���ng M�n (phi �ao)"] 			= 		{975, 979},
		["���ng M�n (t� ti�n"] 				= 		{980, 984},
		["���ng M�n (phi ti�u)"] 			= 		{985, 989},
		["���ng M�n (b�y)"] 					= 		{990, 994},
	},
	
	[3] = {
		["Ng� ��c (ch��ng)"] 				= 		{960, 964},
		["Ng� ��c (�ao)"] 						= 		{965, 969},
		["Ng� ��c (b�a)"] 						= 		{970, 974},
	},
	
	[4] = {
		["Nga My (ki�m)"] 						= 		{935, 939},
		["Nga My (ch��ng)"]	 				= 		{940, 944},
		["Nga My (h� tr�)"] 					= 		{945, 949},
	},
	
	[5] = {
		["Th�y Y�n (�ao)"] 						= 		{950, 954},
		["Th�y Y�n (song �ao)"] 			= 		{955, 959},
	},
	
	[6] = {
		["C�i Bang (ch��ng)"] 				= 		{995, 999},
		["C�i Bang (b�ng)"] 					= 		{1000, 1004},
	},
	
	[7] = {
		["Thi�n Nh�n (k�ch)"] 				= 		{1005, 1009},
		["Thi�n Nh�n (�ao)"] 					= 		{1010, 1014},
		["Thi�n Nh�n (b�a)"] 					= 		{1015, 1019},
	},
	
	[8] = {
		["V� �ang (quy�n)"] 					= 		{1020, 1024},
		["V� �ang (ki�m)"] 					= 		{1025, 1029},
	},
	
	[9] = {
		["C�n L�n (�ao)"] 						= 		{1030, 1034},
		["C�n L�n (s�t)"] 						= 		{1035, 1039},
		["C�n L�n (b�a)"] 						= 		{1040, 1044},
	},
};

EQUIP_FACTION = {
	[0] = "Thi�u L�m",
	[1] = "Thi�n V��ng",
	[2] = "���ng M�n",
	[3] = "Ng� ��c",
	[4] = "Nga My",
	[5] = "Th�y Y�n",
	[6] = "C�i Bang",
	[7] = "Thi�n Nh�n",
	[8] = "V� �ang",
	[9] = "C�n L�n",
};

function TRANGBIHOANGKIMMAX()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang kh�ng �� 20 � tr�ng �� nh�n.")
	return end
	local szTitle = "<dec>B�n mu�n nh�n trang b� c�a m�n ph�i n�o?";
	local tbOption = {}
		tinsert(tbOption, {"Trang b� ho�ng kim m�n ph�i", AddEquipGoldBaseMaxOp})
		tinsert(tbOption, {"Tr�n Bang Chi B�o", TBCBMPMAX})
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

----------------------Nh�n Tr�n Bang Chi B�o-------------------------------------------------------------
function TBCBMPMAX()
local szTitle = "Xin ch�o <color=red>"..GetName().."<color>"
local tbOpt =
	{
		{"Thi�u L�m",CBTLMAX},
		{"Thi�n V��ng",CBTVMAX},
		{"Nga My",CBNMMAX},
		{"Th�y Y�n",CBTYMAX},
		{"Ng� ��c",CBNDMAX},
		{"���ng M�n",CBDMMAX},
		{"C�i Bang",CBCBMAX},
		{"Thi�n Nh�n",CBTNMAX},
		{"V� �ang",CBVDMAX},
		{"C�n L�n",CBCLMAX},
		{"Tr� L�i",TrangBi},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function CBTLMAX()
for i = 1045,1047 do
AddGoldItem(0,i)
end
end

function CBTVMAX()
AddGoldItem(0,1048)
end

function CBNMMAX()
for i = 1049,1051 do
AddGoldItem(0,i)
end
end

function CBTYMAX()
AddGoldItem(0,1052)
AddGoldItem(0,1053)
end

function CBNDMAX()
AddGoldItem(0,1054)
AddGoldItem(0,1055)
end

function CBDMMAX()
AddGoldItem(0,1056)
AddGoldItem(0,1057)
end

function CBCBMAX()
AddGoldItem(0,1058)
end

function CBTNMAX()
for i = 1059,1061 do
AddGoldItem(0,i)
end
end

function CBVDMAX()
AddGoldItem(0,1062)
AddGoldItem(0,1063)
end

function CBCLMAX()
for i = 1064,1066 do
AddGoldItem(0,i)
end
end

--------------------------------------------------------------------------------------------------------

function AddEquipGoldOtherConfirm(tbKind)
	for nID = tbKind[1], tbKind[2] do
		AddGoldItem(0, nID)
	end
end

function AddEquipGoldBaseMaxOp()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang kh�ng �� 20 � tr�ng �� nh�n.")
	return end
	
	local n_Faction = GetLastFactionNumber();
	if (n_Faction < 0) then
		Talk(1, "", "B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n trang b� n�y")
	return end
	
	if (n_Faction > 9) then
		Talk(1, "", "Hi�n t�i ch�a c� trang b� ho�ng kim m�n ph�i n�o n�o cho <color=red>Hoa S�n ph�i<color> c�!")
	return end
	
	local szTitle = "<dec>B�n mu�n nh�n trang b� c�a m�n ph�i n�o?";
	local tbOption = {};
	local tb_Equip = HOANGKIMMONPHAIMAXOP;
	local tb_Faction = EQUIP_FACTION;
	for i = 0, (getn(tb_Equip)-0) do
		tinsert(tbOption, {format("Trang b� ph�i %s", tb_Faction[i]), AddEquipGoldConfirm2, {tb_Equip[i]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldConfirm2(tb_EquipFaction)
	local tb_Equip = tb_EquipFaction;
	local tb_Faction = EQUIP_FACTION;
	local tbOption = {};
	local szTitle = "<dec>M�i b�n ch�n ���ng t�n c�ng c� b�n?";
	for x, y in tb_Equip do
		tinsert(tbOption, {format("%s", x), AddEquipGoldSpecicalKind2, {tb_Equip[x]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function AddEquipGoldSpecicalKind2(tb_EquipKind)
	for nID = tb_EquipKind[1], tb_EquipKind[2] do
		local nIndex = AddGoldItem(0, nID)
	end
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "Trang b� ho�ng kim", TRANGBIHOANGKIM2);
-- pEventType:Reg("L�nh b�i T�n Th�", "Trang b� ho�ng kim", TRANGBIHOANGKIM2);