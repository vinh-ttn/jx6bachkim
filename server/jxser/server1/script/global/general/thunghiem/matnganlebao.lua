IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien2()
		Say("H�y L�a Ch�n Thu�c T�nh",13,
		"T�c �� ��nh Ngo�i C�ng/TocDoDanhHien2",
		"T�ng Sinh L�c/TangSinhLucHien2",
		"T�ng N�i L�c/TangNoiLucHien2",
		"T�ng S�t Th��ng %/TangSatThuongHien2",
		"H�t Sinh L�c/HutSinhLucHien2",
		"H�t N�i L�c/HutNoiLucHien2",
		"C�ng K�ch Ch�nh X�c/ChinhXacHien2",
		"Ph�c H�i Sinh L�c/PhucHoiSinhLucHien2",
		"Th�i Gian Ph�c H�i/PhucHoiHien2",
		"T�c �� Di Chuy�n/DiChuyenHien2",
		"T�ng Kh�ng T�t C�/KhangTatCaHien2",
		"Ph�n ��n C�n Chi�n/PhanDonCanChienHien2",
		"H�y B�/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� FREE_"..FREE_IDX.." � Tr�ng")
	end
end

function TangNoiLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSatThuongHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutNoiLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function ChinhXacHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiSinhLucHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DiChuyenHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function KhangTatCaHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhanDonCanChienHien2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,202,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"M�t Ng�n Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------