IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
------------------------------------------
FREE_IDX = 10
LEVEL_IDX = 10


function An3()
		Say("H�y L�a Ch�n Thu�c T�nh",12,
		"Chuy�n H�a S�t Th��ng Th�nh N�i L�c/ChuyenHoaAn3",
		"T�ng Th�n Ph�p/TangThanPhapAn3",
		"T�ng Sinh Kh�/TangSinhKhiAn3",
		"T�ng Kh�ng ��c/TangKhangDocAn3",
		"T�ng Kh�ng H�a/TangKhangHoaAn3",
		"T�ng Kh�ng L�i/TangKhangLoiAn3",
		"T�ng Ph�ng Th�/TangPhongThuAn3",
		"T�ng Kh�ng B�ng/TangKhangBangAn3",
		"Th�i Gian L�m Ch�m/LamChamAn3",
		"Th�i Gian Tr�ng ��c/TrungDocAn3",
		"Th�i Gian Cho�ng/LamChoangAn3",
		"Trang K�/TrangKeAn3",
		"H�y B�/No")
		
end

function TrangKeAn3()
	Say("H�y L�a Ch�n Thu�c T�nhAn3",12,
	"T�ng S�t Th��ng V�t L� ngo�i c�ng/SatThuongNgoaiAn3",
	"T�ng S�t Th��ng V�t L� n�i c�ng/SatThuongNoiAn3",
	"B�ng S�t Ngo�i C�ng/BangSatNgoaiAn3",
	"B�ng S�t N�i C�ng/BangSatNoiAn3",
	"��c S�t Ngo�i C�ng/DocSatNgoaiAn3",
	"��c S�t N�i C�ng/DocSatNoiAn3",
	"H�a S�t Ngo�i C�ng/HoaSatNgoaiAn3",
	"H�a S�t N�i C�ng/HoaSatNoiAn3",
	"L�i S�t Ngo�i C�ng/LoiSatNgoaiAn3",
	"L�i S�t N�i C�ng/LoiSatNoiAn3",
	"Quay L�i/An3",
	"H�y B�/No")
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function SatThuongNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={168,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={122,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={124,0,0,0,0,0}},"Kh�ng T��c Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end




function ChuyenHoaAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={134,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangThanPhapAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={98,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangSinhKhiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={99,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangDocAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={101,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangHoaAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={102,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangLoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={103,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangPhongThuAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={104,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TangKhangBangAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={105,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChamAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={106,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function TrungDocAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={108,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LamChoangAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={110,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function SatThuongDiemAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,0,0,0},nCount=1,tbParam={121,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={123,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function BangSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,2,0,0},nCount=1,tbParam={169,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNgoaiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={125,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function DocSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,1,0,0},nCount=1,tbParam={172,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function HoaSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,3,0,0},nCount=1,tbParam={170,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end

function LoiSatNoiAn3()
	if CalcFreeItemCellCount() >= FREE_IDX then
		tbAwardTemplet:GiveAwardByList({tbProp={6,1,205,LEVEL_IDX,4,0,0},nCount=1,tbParam={171,0,0,0,0,0}},"Chung Nh� Th�ch")
	else
		Talk(1,"","H�nh Trang Kh�ng �� "..FREE_IDX.." � Tr�ng")
	end
end
----------------------------------------------------------------------------------------------------------------------------