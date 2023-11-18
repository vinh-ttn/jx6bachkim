IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function Hien1()
		Say("H�y L�a Ch�n Thu�c T�nh",13,
		"T�c �� ��nh Ngo�i C�ng/TocDoDanhHien1",
		"T�ng Sinh L�c/TangSinhLucHien1",
		"T�ng N�i L�c/TangNoiLucHien1",
		"T�ng S�t Th��ng %/TangSatThuongHien1",
		"H�t Sinh L�c/HutSinhLucHien1",
		"H�t N�i L�c/HutNoiLucHien1",
		"C�ng K�ch Ch�nh X�c/ChinhXacHien1",
		"Ph�c H�i Sinh L�c/PhucHoiSinhLucHien1",
		"Th�i Gian Ph�c H�i/PhucHoiHien1",
		"T�c �� Di Chuy�n/DiChuyenHien1",
		"T�ng Kh�ng T�t C�/KhangTatCaHien1",
		"Ph�n ��n C�n Chi�n/PhanDonCanChienHien1",
		"H�y B�/No")
		
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TocDoDanhHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={115,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={85,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� FREE_"..FREE_IDX.." � Tr�ng")
	end
end

function TangNoiLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={89,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSatThuongHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={126,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={136,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HutNoiLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={137,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function ChinhXacHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={166,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiSinhLucHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={88,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhucHoiHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={113,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DiChuyenHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={111,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function KhangTatCaHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={114,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function PhanDonCanChienHien1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,200,LEVEL_IDX,0,0,0},nCount=1,tbParam={117,0,0,0,0,0}},"Huy�n Thi�t Kho�ng")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------