-- 

Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\global\\general\\thunghiem\\huyenthietlebao.lua");
Include("\\script\\global\\general\\thunghiem\\khongtuoclebao.lua");
Include("\\script\\global\\general\\thunghiem\\matnganlebao.lua");
Include("\\script\\global\\general\\thunghiem\\phudunglebao.lua");
Include("\\script\\global\\general\\thunghiem\\chusalebao.lua");
Include("\\script\\global\\general\\thunghiem\\chungnhulebao.lua");
TAB_OPTION = {
	["V� kh�"] = {
		["Ki�m"] 			= {0,0,0},
		["�ao"] 				= {0,0,1},
		["B�ng"] 			= {0,0,2},
		["Th��ng"] 		= {0,0,3},
		["Ch�y"] 			= {0,0,4},
		["Song �ao"] 	= {0,0,5},
		["Phi Ti�u"] 		= {0,1,0},
		["Phi �ao"] 		= {0,1,1},
		["T� Ti�n"] 		= {0,1,2},
	},
	
	["Y Ph�c"] = {
		["Th�t B�o C� Sa"] 						= {0,2,0},
		["Ch�n V� Th�nh Y"] 					= {0,2,1},
		["Thi�n Nh�n M�t Trang"] 		= {0,2,2},
		["Gi�ng Sa B�o"] 							= {0,2,3},
		["���ng Ngh� Gi�p"] 					= {0,2,4},
		["V�n L�u Quy T�ng Y"] 			= {0,2,5},
		["Tuy�n Long B�o"] 					= {0,2,6},
		["Long Ti�u ��o Y"] 					= {0,2,8},
		["C�u V� B�ch H� Trang"] 		= {0,2,9},
		["Tr�m H��ng Sam"] 					= {0,2,10},
		["T�ch L�ch Kim Ph�ng Gi�p"] 	= {0,2,11},
		["V�n Ch�ng T� T�m Y"] 			= {0,2,12},
		["L�u Ti�n Qu�n"] 						= {0,2,13},
	},
	
	["N�n"] = {
		["T� L� M�o"] 								=	{0,7,0},
		["Ng� L�o Qu�n"] 						=	{0,7,1},
		["Tu La Ph�t K�t"] 						=	{0,7,2},
		["Th�ng Thi�n Ph�t Qu�n"] 		=	{0,7,3},
		["Y�m Nh�t Kh�i"] 						=	{0,7,4},
		["Tr�ch Tinh Ho�n"] 					=	{0,7,5},
		["� T�m M�o"]								=	{0,7,6},
		["Quan �m Ph�t Qu�n"]				=	{0,7,7},
		["�m D��ng V� C�c Qu�n"]		=	{0,7,8},
		["Huy�n T� Di�n Tr�o"]				=	{0,7,9},
		["Long Huy�t ��u Ho�n"]			=	{0,7,10},
		["Long L�n Kh�i"]						=	{0,7,11},
		["Thanh Tinh Thoa"] 					=	{0,7,12},
		["Kim Ph�ng Tri�n S�"] 				=	{0,7,13},
	},
	
	["H� Uy�n"] = {
		["Long Ph�ng Huy�t Ng�c Tr�c"]		=	{0,8,0},
		["Thi�n T�m H� Uy�n"]						=	{0,8,1},
	},
	
	["Th�t l�ng"] = {
		["Thi�n T�m Y�u ��i"]				=	{0,6,0},
		["B�ch Kim Y�u ��i"]					=	{0,6,1},
	},
	
	["Gi�y"] = {
		["C�u Ti�t X��ng V� Ngoa"]		=	{0,5,0},
		["Thi�n T�m Ngoa"]					=	{0,5,1},
		["Kim L� H�i"]								=	{0,5,2},
		["Phi Ph�ng Ngoa"]						=	{0,5,3},
	},
};

function TrangBiTim()
	local tbSay = {"<dec>B�n mu�n nh�n h� tr� n�o?"};
		tinsert(tbSay, "Ph�i �� t�m 6 d�ng/AddEquipPurpleNoParam")
		tinsert(tbSay, "Huy�n Tinh Kho�ng Th�ch/HuyenTinh")
		tinsert(tbSay, "Kho�ng th�ch �� c� thu�c t�nh/KhoangThach2")
		tinsert(tbSay, "Kho�ng th�ch ch�a c� thu�c t�nh/KhoangThach")
		tinsert(tbSay, "Th�y tinh/ThuyTinh")
		tinsert(tbSay, "Ph�c Duy�n/PhucDuyen")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function TrangBiTim2()
	local tbSay = {"<dec>B�n mu�n nh�n h� tr� n�o?"};
		tinsert(tbSay, "Ph�i �� t�m 6 d�ng/AddEquipPurpleNoParam")
		tinsert(tbSay, "Huy�n Tinh Kho�ng Th�ch/HuyenTinh")
		tinsert(tbSay, "Kho�ng th�ch �� c� thu�c t�nh/KhoangThach2")
		tinsert(tbSay, "Kho�ng th�ch ch�a c� thu�c t�nh/KhoangThach")
		--tinsert(tbSay, "Th�y tinh/ThuyTinh")
		--tinsert(tbSay, "Ph�c Duy�n/PhucDuyen")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function KhoangThach2()
	local tbSay = {"<dec>B�n mu�n nh�n h� tr� n�o?"};
		tinsert(tbSay, "Hi�n 1/Hien1")
		tinsert(tbSay, "�n 1/An1")
		tinsert(tbSay, "Hi�n 2/Hien2")
		tinsert(tbSay, "�n 2/An2")
		tinsert(tbSay, "Hi�n 3/Hien3")
		tinsert(tbSay, "�n 3/An3")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function PhucDuyen()
	if (CalcFreeItemCellCount() < 3) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 3 � tr�ng.")
	return end
	
	for nID = 122, 124 do
		AddItem(6,1, nID, 0,0,0)
	end
end

function ThuyTinh()
	if (CalcFreeItemCellCount() < 3) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 3 � tr�ng.")
	return end
	
	for nID = 238, 240 do
		AddItem(4, nID, 1, 0,0,0)
	end
end

function KhoangThach()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 20 � tr�ng.")
	return end
	
	for i = 1, 10 do
		AddItem(6,1,149,1,0,0,0)
		AddItem(6,1,150,1,0,0,0)
		AddItem(6,1,150,1,1,0,0)
		AddItem(6,1,150,1,2,0,0)
		AddItem(6,1,150,1,3,0,0)
		AddItem(6,1,150,1,4,0,0)

		AddItem(6,1,151,1,0,0,0)
		AddItem(6,1,152,1,0,0,0)
		AddItem(6,1,152,1,1,0,0)
		AddItem(6,1,152,1,2,0,0)
		AddItem(6,1,152,1,3,0,0)
		AddItem(6,1,152,1,4,0,0)

		AddItem(6,1,153,1,0,0,0)
		AddItem(6,1,154,1,0,0,0)
		AddItem(6,1,154,1,1,0,0)
		AddItem(6,1,154,1,2,0,0)
		AddItem(6,1,154,1,3,0,0)
		AddItem(6,1,154,1,4,0,0)
	end
end

function HuyenTinh()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 20 � tr�ng.")
	return end
	for i = 1, 10 do
		for k = 1, 10 do
			AddItem(6,1,147,k,0,0,0);
		end
	end
end

function AddEquipPurpleNoParam()
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang c�a b�n kh�ng �� 20 � tr�ng.")
	return end
	local tbEquip = TAB_OPTION;
	local szTitle = "Ng��i mu�n nh�n lo�i n�o?"
	local tbOption = {};
	for x, y in tbEquip do
		tinsert(tbOption, {format("%s", x), EquipPurpleConfirm,{tbEquip[x]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function EquipPurpleConfirm(tbEquip)
	local szTitle = "Ng��i mu�n nh�n lo�i n�o?"
	local tbOption = {};
	for x, y in tbEquip do
		tinsert(tbOption, {format("%s", x), EquipPurpleOK,{tbEquip[x]}})
	end
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function EquipPurpleOK(tbEquip)
	for i = 0, 4 do
		AddQualityItem(2,tbEquip[1], tbEquip[2], tbEquip[3], 10, i, 0, -1,-1,-1,-1,-1,-1)
	end
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "Trang b� �� t�m", TrangBiTim);
-- pEventType:Reg("L�nh b�i T�n Th�", "Trang b� �� t�m", TrangBiTim);