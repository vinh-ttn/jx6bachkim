IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function An1()
	Say("H�y L�a Ch�n Thu�c T�nh",12,
		"Chuy�n H�a S�t Th��ng Th�nh N�i L�c/ChuyenHoaAn1",
		"T�ng Th�n Ph�p/TangThanPhapAn1",
		"T�ng Sinh Kh�/TangSinhKhiAn1",
		"T�ng Kh�ng ��c/TangKhangDocAn1",
		"T�ng Kh�ng H�a/TangKhangHoaAn1",
		"T�ng Kh�ng L�i/TangKhangLoiAn1",
		"T�ng Ph�ng Th�/TangPhongThuAn1",
		"T�ng Kh�ng B�ng/TangKhangBangAn1",
		"Th�i Gian L�m Ch�m/LamChamAn1",
		"Th�i Gian Tr�ng ��c/TrungDocAn1",
		"Th�i Gian Cho�ng/LamChoangAn1",
		"Trang K�/TrangKeAn1",
		"H�y B�/No")
		
end

function TrangKeAn1()
	Say("H�y L�a Ch�n Thu�c T�nh",12,
	"T�ng S�t Th��ng V�t L� ngo�i c�ng/SatThuongNgoaiAn1",
	"T�ng S�t Th��ng V�t L� n�i c�ng/SatThuongNoiAn1",
	"B�ng S�t Ngo�i C�ng/BangSatNgoaiAn1",
	"B�ng S�t N�i C�ng/BangSatNoiAn1",
	"��c S�t Ngo�i C�ng/DocSatNgoaiAn1",
	"��c S�t N�i C�ng/DocSatNoiAn1",
	"H�a S�t Ngo�i C�ng/HoaSatNgoaiAn1",
	"H�a S�t N�i C�ng/HoaSatNoiAn1",
	"L�i S�t Ngo�i C�ng/LoiSatNgoaiAn1",
	"L�i S�t N�i C�ng/LoiSatNoiAn1",
	"Quay L�i/An1",
	"H�y B�/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end


function ChuyenHoaAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangThanPhapAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhKhiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangDocAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangHoaAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangLoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangPhongThuAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangBangAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChamAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TrungDocAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChoangAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongDiemAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,2,0,0},nCount=1,tbParam={169,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNgoaiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNoiAn1()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,201,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------