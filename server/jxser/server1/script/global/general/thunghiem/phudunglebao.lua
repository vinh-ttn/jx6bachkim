IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10

function An2()
		Say("H�y L�a Ch�n Thu�c T�nh",12,
		"Chuy�n H�a S�t Th��ng Th�nh N�i L�c/ChuyenHoaAn2",
		"T�ng Th�n Ph�p/TangThanPhapAn2",
		"T�ng Sinh Kh�/TangSinhKhiAn2",
		"T�ng Kh�ng ��c/TangKhangDocAn2",
		"T�ng Kh�ng H�a/TangKhangHoaAn2",
		"T�ng Kh�ng L�i/TangKhangLoiAn2",
		"T�ng Ph�ng Th�/TangPhongThuAn2",
		"T�ng Kh�ng B�ng/TangKhangBangAn2",
		"Th�i Gian L�m Ch�m/LamChamAn2",
		"Th�i Gian Tr�ng ��c/TrungDocAn2",
		"Th�i Gian Cho�ng/LamChoangAn2",
		"Trang K�/TrangKeAn2",
		"H�y B�/No")
		
end

function TrangKeAn2()
	Say("H�y L�a Ch�n Thu�c T�nh",12,
	"T�ng S�t Th��ng V�t L� ngo�i c�ng/SatThuongNgoaiAn2",
	"T�ng S�t Th��ng V�t L� n�i c�ng/SatThuongNoiAn2",
	"B�ng S�t Ngo�i C�ng/BangSatNgoaiAn2",
	"B�ng S�t N�i C�ng/BangSatNoiAn2",
	"��c S�t Ngo�i C�ng/DocSatNgoaiAn2",
	"��c S�t N�i C�ng/DocSatNoiAn2",
	"H�a S�t Ngo�i C�ng/HoaSatNgoaiAn2",
	"H�a S�t N�i C�ng/HoaSatNoiAn2",
	"L�i S�t Ngo�i C�ng/LoiSatNgoaiAn2",
	"L�i S�t N�i C�ng/LoiSatNoiAn2",
	"Quay L�i/An2",
	"H�y B�/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end


function ChuyenHoaAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangThanPhapAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhKhiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangDocAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangHoaAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangLoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangPhongThuAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangBangAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChamAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TrungDocAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChoangAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongDiemAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,2,2,0},nCount=1,tbParam={169,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNgoaiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNoiAn2()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,203,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Ph� Dung Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------