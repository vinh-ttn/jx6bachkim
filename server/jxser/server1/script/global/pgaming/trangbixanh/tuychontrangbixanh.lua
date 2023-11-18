Include("\\script\\dailogsys\\dailogsay.lua")
--Include("\\script\\00ff\\funclibex.lua")
tbItem = {
	{"��ng H�ng Li�n",0,4,0,1},
	{"Ng�n H�ng Li�n",0,4,0,2},
	{"Kim H�ng Li�n",0,4,0,3},
	{"B�ch Kim H�ng Li�n",0,4,0,4},
	{"Ng�c Ch�u H�ng Li�n",0,4,0,5},
	{"L�c T�ng Th�ch H�ng Li�n",0,4,0,6},
	{"Th�y Tinh H�ng Li�n ",0,4,0,7},
	{"Kh�ng T��c Th�ch H�ng Li�n",0,4,0,8},
	{"Tr�n Ch�u H�ng Li�n",0,4,0,9},
	{"To�n Th�ch H�ng Li�n",0,4,0,10},
	{"L�c T�ng Th�ch H� Th�n ph� ",0,4,1,1},
	{"San H� H� Th�n ph� ",0,4,1,2},
	{"Mi�u Nh�n H� Th�n ph� ",0,4,1,3},
	{"H� T�nh H� Th�n ph� ",0,4,1,4},
	{"Th�y Tinh H� Th�n ph� ",0,4,1,5},
	{"H� Ph�ch H� Th�n ph� ",0,4,1,6},
	{"B�ch Ph� Th�y H� Th�n ph� ",0,4,1,7},
	{"H�ng Ph� Th�y H� Th�n ph� ",0,4,1,8},
	{"T� Ph� Th�y H� Th�n ph� ",0,4,1,9},
	{"L�c Ph� Th�y H� Th�n ph� ",0,4,1,10},
	
	{"Ho�ng Ng�c Gi�i Ch�",0,3,0,1},
	{"C�m L�m Th�ch Gi�i Ch�",0,3,0,2},
	{"Ph� Dung Th�ch Gi�i Ch�",0,3,0,3},
	{"Ph� Th�y Gi�i Ch�",0,3,0,4},
	{"Th�y L�u Th�ch Gi�i Ch�",0,3,0,5},
	{"T� M�u L�c Gi�i Ch�",0,3,0,6},
	{"H�i Lam B�o Th�ch Gi�i Ch�",0,3,0,7},
	{"H�ng B�o Th�ch Gi�i Ch�",0,3,0,8},
	{"Lam B�o Th�ch Gi�i Ch�",0,3,0,9},
	{"To�n Th�ch Gi�i Ch�",0,3,0,10},


	{"Hu�n Y H��ng Nang",0,9,0,1},
	{"M�t L� H��ng Nang",0,9,0,2},
	{"Nh� H��ng H��ng Nang",0,9,0,3},
	{"Lan Hoa H��ng Nang",0,9,0,4},
	{"H�p Hoan H��ng Nang",0,9,0,5},
	{"T� T� H��ng Nang",0,9,0,6},
	{"Tr�m ��n H��ng Nang",0,9,0,7},
	{"Ti�n X� H��ng Nang",0,9,0,8},
	{"Gi� Nam H��ng Nang",0,9,0,9},
	{"Long Ti�n H��ng Nang",0,9,0,10},
	{"Du Di�n Ng�c B�i ",0,9,1,1},
	{"Kinh B�ch Ng�c B�i ",0,9,1,2},
	{"��o Hoa Ng�c B�i ",0,9,1,3},
	{"Mai Hoa  Ng�c B�i ",0,9,1,4},
	{"Ng� S�c Ng�c B�i ",0,9,1,5},
	{"Thanh Ng�c Ng�c B�i ",0,9,1,6},
	{"B�ch Ng�c Ng�c B�i ",0,9,1,7},
	{"M�c Ng�c Ng�c B�i ",0,9,1,8},
	{"Ho�ng Ng�c Ng�c B�i ",0,9,1,9},
	{"D��ng Chi B�ch Ng�c",0,9,1,10},

}
tbOpItem = {
	{"Sinh l�c",1,99,85,200},
	{"N�i l�c",1,99,89,200},
	{"Th� l�c",1,99,93,200},
	--{"Ph�c h�i sinh l�c",1,99,88,6},
	--{"Ph�c h�i th� l�c",1,99,96,9},
	--{"Kh�ng t�t c�",1,99,114,20},
	{"Kh�ng ��c (Kim)",0,0,101,25},
	{"Kh�ng b�ng (Th�)",0,4,105,25},
	{"Kh�ng h�a (Th�y)",0,2,102,25},
	{"Kh�ng l�i (M�c)",0,1,103,30},
	{"Th�i gian cho�ng (Th�y)",0,2,110,40},
	{"Th�i gian l�m ch�m (H�a)",0,3,106,40},
	{"Th�i gian tr�ng ��c (Th�)",0,4,108,40},
	{"Th�n ph�p (H�a)",0,3,98,20},
	{"S�c m�nh (Kim)",0,0,97,20},
	{"Sinh kh� (Th�y)",0,2,99,20},
}
tbBuyMagic = {
	--{"OptionName",a,b,c,d,e},
	--OptionName : T�n option, t�n n�o c?ng ���c ch� �� hi�n th~ th�i
	--a : 0 - Option �n 1-Option hi�n
	--b : Ng� h�nh, 0-Kim 1-M�c 2-Th�y 3-H�a 4-Th� 99-Kh�ng Ng� h�nh
	--c : ID Option trong magic�ttriblevel ho�c magic�ttriblevel_index
	--d : L� MAGATTRLVL_END trong magic�ttriblevel_index
	--f : 5-Option ch� c� gi�y 2-Ch� c� �o 99-Lo�i g� c?ng c�
	{"T�c �� di chuy�n (Gi�y)",1,99,111,70,{5}}, --Ch� gi�y m�i c�
	{"Ph�n ��n v�t lu (�o)",1,99,117,80,{2}}, --�o
	{"Th�i gian ph�c h�i (�o)",1,99,113,90,{2}}, --ch� �o
	{"Sinh l�c",1,99,85,150,{2,5,6,7,8}},
	{"N�i l�c",1,99,89,160,{2,5,6,7,8}},
	{"Ph�c h�i sinh l�c",1,99,88,180,{2,5,6,7,8}},
	{"Chuy�n haa s�t th��ng th�nh n�i l�c (Kim)",0,0,134,270,{2,5,6,7,8}},
	{"Ph�ng th� v�t lu (H�a)",0,3,104,280,{2,5,6,7,8}},
	{"Kh�ng ��c (Kim)",0,0,101,290,{2,5,6,7,8}},
	{"Kh�ng b�ng (Th�)",0,4,105,300,{2,5,6,7,8}},
	{"Kh�ng h�a (Th�y)",0,2,102,310,{2,5,6,7,8}},
	{"Kh�ng l�i (M�c)",0,1,103,320,{2,5,6,7,8}},
	{"Th�i gian cho�ng (Th�y)",0,2,110,340,{2,5,6,7,8}},
	{"Th�i gian l�m ch�m (H�a)",0,3,106,360,{2,5,6,7,8}},
	{"Th�n ph�p (H�a)",0,3,98,370,{2,5,6,7,8}},
	{"Th�i gian tr�ng ��c (Th�)",0,4,108,380,{2,5,6,7,8}},
}

function TrangBiXanhOf1DongTuyChon()
dofile("script/global/pgaming/trangbixanh/tuychontrangbixanh.lua")
	local tb = {
	"<dec>C�c h� c�n nh�n g�?",
	}
	tinsert(tb,"D�y chuy�n./#Item(4)") 
	tinsert(tb,"Ng�c b�i./#Item(9)")
	tinsert(tb,"Nh�n./#Item(3)")
	--S� 4 hay 9 hay 3 � ��y l� ParticularType c�a D�y chuy�n ng�c b�i hay nh�n xem b�ng tbItem s� hi�u.
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end

function Item(nType)
	if nType ~= 3 then --ko phai nhan
		local tb = {
		"<dec>H�y l�a ch�n gi�i t�nh trang b�",
		}
		tinsert(tb,"Nam./#Item1("..nType..",1)")
		tinsert(tb,"N�./#Item1("..nType..",0)")
		tinsert(tb,"Quay l�i.")
		tinsert(tb,"Tho�t./Quit")
		CreateTaskSay(tb)
	else
		local tb = {
		"<dec>Ch�n l�y lo�i nh�n",
		}
		tinsert(tb,"�� ta ch�n nh�n./#Item1("..nType..",0)")
		tinsert(tb,"Quay l�i.")
		tinsert(tb,"Tho�t./Quit")
		CreateTaskSay(tb)
	end
end
function Item1(nType,nSex) --2 tham s�: Lo�i item(D�y hay nh�n hay ng�c) - Gi�i t�nh
--B��c n�y hi�n l�n c�c lo�i to c�p 1 �On 10 �� l�a ch�n
	local tb = {
	"<dec>H�y l�a ch�n lo�i ng��i c�n.",
	}
	for i=1,getn(tbItem) do
		if tbItem[i][3] == nType then
			if nType ~= 3 then --Kh�ng ph�i l� nh�n
				if tbItem[i][4] == nSex then
					tinsert(tb,tbItem[i][1].."/#Item2("..nType..","..nSex..","..tbItem[i][5]..")")
				end
			else --Nh�n
				tinsert(tb,tbItem[i][1].."/#Item2("..nType..",0,"..tbItem[i][5]..")")
			end
		end
	end
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end
function Item2(nType,nSex,nLevel) --truy?n ���c 3 tham s� l� DC(Ng�c b�i hay nh�n) - Gi�i t�nh - Level
--� b��c n�y cho ch�n H�
	local tb = {
	"<dec>H�y l�a ch�n Ng� h�nh cho trang b�",
	}
	tinsert(tb,"Kim./#Item3("..nType..","..nSex..","..nLevel..",0)")
	tinsert(tb,"M�c./#Item3("..nType..","..nSex..","..nLevel..",1)")
	tinsert(tb,"Th�y./#Item3("..nType..","..nSex..","..nLevel..",2)")
	tinsert(tb,"H�a./#Item3("..nType..","..nSex..","..nLevel..",3)")
	tinsert(tb,"Th�./#Item3("..nType..","..nSex..","..nLevel..",4)")
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end
function Item3(nType,nSex,nLevel,nSeries) --truy?n ���c 4 tham s� Lo�i (Ng�c b�i, d�y chuy�n, nh�n) - Gi�i t�nh - Level - Ng� H�nh
--B��c n�y cho ch�n thu�c t�nh
	local tb = {
	"<dec>H�y l�a ch�n lo�i ng��i c�n.",
	}
	tinsert(tb,"H�y cho ta ch�n thu�c t�nh [Hi�n] c�a trang b�/#Item4("..nType..","..nSex..","..nLevel..","..nSeries..",1)") --hi�n l� 1
	tinsert(tb,"H�y cho ta ch�n thu�c t�nh [�n] c�a trang b�/#Item4("..nType..","..nSex..","..nLevel..","..nSeries..",0)") --�n l� 0
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end

function Item4(nType,nSex,nLevel,nSeries,OptionType) --5 tham s� Lo�i(Ng�c b�i, d�y chuy�n, nh�n) - Gi�i t�nh - Level - Ng� h�nh - V~ trU (D�ng �n hay hi�n)
	--OptionType = 1 : Hi�n
	--OptionType = 0 : �n
	local tb = {
	"<dec>H�y l�a ch�n thu�c t�nh cho trang b�. Sau �a nh�p v�o gi� tr� ��u v� cu�i c�a gi� tr� thu�c t�nh",
	}
	if OptionType == 1 then --t�c l� d�ng hi�n
		for i=1,getn(tbOpItem) do
			if tbOpItem[i][2] == OptionType then --Option hi�n
				tinsert(tb,tbOpItem[i][1].."/#Item5("..nType..","..nSex..","..nLevel..","..nSeries..","..tbOpItem[i][4]..","..tbOpItem[i][5]..","..OptionType..")")
				--tbOpItem[i][4] : ID c�a Option
				--tbOpItem[i][1]: T�n c�a Option
				--tbOpItem[i][5]; gi� tr� max c�a option
			end
		end
	else --L�c n�y OptionType = 0 (D�ng �n)
		for i=1,getn(tbOpItem) do
			if tbOpItem[i][2] == OptionType then --Option �n
				if tbOpItem[i][3] == nSeries then
					tinsert(tb,tbOpItem[i][1].."/#Item5("..nType..","..nSex..","..nLevel..","..nSeries..","..tbOpItem[i][4]..","..tbOpItem[i][5]..","..OptionType..")")
				end
			end
		end
	end
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end
function Item5(nType,nSex,nLevel,nSeries,IDOp,MaxOpValue,OptionT)
	GioiTinh = nSex
	LoaiTrangBi = nType
	Level = nLevel
	Series = nSeries
	ThuocTinh = IDOp
	MaxOp = MaxOpValue
	ViTriThuocTinh = OptionT --D�ng �n hay d�ng hi�n
	local tb = {
	"<dec>H�y nh�p v�o gi� tr� ��u v� gi� tr� cu�i c�a thu�c t�nh m� ng��i mu�n c� tr�n trang b� c�a ng��i. Trang b� nh�n ���c s� c� thu�c t�nh c�n thi�t n�m trong kho�ng gi�a gi� tr� ��u v� gi� tr� cu�i",
	}
	tinsert(tb,"Nh�p gi� tr� ��u v� cu�i./DayChuyen6_GTD")
	tinsert(tb,"Quay l�i.")
	tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
end
function DayChuyen6_GTD()
	AskClientForNumber("DayChuyen6_GTC", 1, MaxOp, "gi� tr� ��u");
end
function DayChuyen6_GTC(ValueGTD)
	GTD = ValueGTD
	AskClientForNumber("DayChuyen7", 1, MaxOp, "gi� tr� cu�i");
end
function DayChuyen7(ValueGTC)
	GTC = ValueGTC
	local IDOption, p1
	if ViTriThuocTinh == 1 then --D�ng hi�n
		while	IDOption~=ThuocTinh or p1> GTC or p1<GTD do
			local Item = AddItem(0,LoaiTrangBi,GioiTinh,Level,Series,100,10)
			IDOption, p1 = GetItemMagicattrib(Item,1) --L�y th�ng tin c�a thu�c t�nh d�ng 1. ID thu�c t�nh v� gi� tr� thu�c t�nh
			--p1 : GUa tr� c�a Option magictype1. VU d� Option l� m�u th� p1 l� bao nhi�u m�u
			if IDOption ~= ThuocTinh or p1> GTC or p1<GTD then
				RemoveItemByIndex(Item)
			end
		end
	else
		while	IDOption~=ThuocTinh or p1> GTC or p1<GTD do
			local Item = AddItem(0,LoaiTrangBi,GioiTinh,Level,Series,100,10)
			IDOption, p1 = GetItemMagicattrib(Item,2) --L�y th�ng tin d�ng 2
			if IDOption ~= ThuocTinh or p1> GTC or p1<GTD then
				RemoveItemByIndex(Item)
			end
		end
	end
end