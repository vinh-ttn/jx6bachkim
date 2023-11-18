IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien3()
		Say("H�y L�a Ch�n Thu�c T�nh",13,
		"T�c �� ��nh Ngo�i C�ng/TocDoDanhHien3",
		"T�ng Sinh L�c/TangSinhLucHien3",
		"T�ng N�i L�c/TangNoiLucHien3",
		"T�ng S�t Th��ng %/TangSatThuongHien3",
		"H�t Sinh L�c/HutSinhLucHien3",
		"H�t N�i L�c/HutNoiLucHien3",
		"C�ng K�ch Ch�nh X�c/ChinhXacHien3",
		"Ph�c H�i Sinh L�c/PhucHoiSinhLucHien3",
		"Th�i Gian Ph�c H�i/PhucHoiHien3",
		"T�c �� Di Chuy�n/DiChuyenHien3",
		"T�ng Kh�ng T�t C�/KhangTatCaHien3",
		"Ph�n ��n C�n Chi�n/PhanDonCanChienHien3",
		"H�y B�/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� FREE_"..FREE_IDX.." � Tr�ng")
	end
end

function TangNoiLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSatThuongHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutNoiLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function ChinhXacHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiSinhLucHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DiChuyenHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function KhangTatCaHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhanDonCanChienHien3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		 tbAwardTemplet:GiveAwardByList({tbProp={6,1,204,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"Chu Sa Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------