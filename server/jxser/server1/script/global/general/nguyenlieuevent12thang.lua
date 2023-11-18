-------------------------------------------------------------------------------------
-- 
-------------------------------------------------------------------------------------
IL("TITLE");
IncludeLib("ITEM");
IncludeLib("TIMER");
IncludeLib("FILESYS");
IncludeLib("SETTING");
Include("\\script\\lib\\common.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

-----------------------------------------------------------------------------------------------------------------------------------------------------
--Nguy�n li�u event																	--
-----------------------------------------------------------------------------------------------------------------------------------------------------

function NguyenLieuEvent()
	local szTitle = format("M�i GM <color=red>%s<color> l�a ch�n nguy�n li�u:", GetName());
	local nMonth = tonumber(date("%m"));
	local tbOption = {}
	if nMonth==1 then
		tinsert(tbOption, {"Nh�n t�i m�ng xu�n", TuiMungXuan})
		tinsert(tbOption, {"Nh�n b� nguy�n li�u gh�p b�nh ch�ng 6 m�n", BoNguyenLieuBanhChung})
		tinsert(tbOption, {"Nh�n Ph�c L�c Th�", PhucLocTho})
	end
	if nMonth==2 then
		tinsert(tbOption, {"Nh�n bao l� x�", BaoLiXi})
		tinsert(tbOption, {"Nh�n ph�o ti�u - trung - ��i", BoPhao})
		tinsert(tbOption, {"Nh�n phong ph�o ti�u - trung - ��i th��ng", BoPhongPhaoThuong})
		tinsert(tbOption, {"Nh�n phong ph�o ti�u - trung - ��i ��c bi�t", BoPhongPhaoDacBiet})
	end
	if nMonth==3 then
		tinsert(tbOption, {"Nh�n c�nh hoa h�ng - c�nh hoa c�c", CanhHoaHongCuc})
		tinsert(tbOption, {"Nh�n b� hoa h�ng - b� hoa c�c", BoHoaHongCuc})
	end
	if nMonth==4 then
		tinsert(tbOption, {"Nh�n h�p qu� may m�n", HopQuaMayManT4})
		tinsert(tbOption, {"Nh�n 4 m�nh l� c�", ManhCoChienThang})
		tinsert(tbOption, {"Nh�n l� c� chi�n th�ng", LaCoChienThang})
	end
	if nMonth==5 then
		tinsert(tbOption, {"Nh�n t�i h�ng h�a", TuiHangHoa})
		tinsert(tbOption, {"Nh�n nguy�n li�u l�m b�nh", NguyenLieuLamBanh})
		tinsert(tbOption, {"Nh�n 3 lo�i b�nh chay", BanhChay})
	end
	if nMonth==6 then
		tinsert(tbOption, {"Nh�n t�i ��i h� thu", TuiDaiHyThu})
		tinsert(tbOption, {"Nh�n b� ch� M�ng - VLTK - 3 - Tu�i v� ��i H� L� Bao", BoChuSinhNhatVL})
		tinsert(tbOption, {"Nh�n b�nh kem Nh� � v� c�t t��ng", BanhKemNhuYCatTuong})
	end
	if nMonth==7 then
		tinsert(tbOption, {"Nh�n b� nguy�n li�u gh�p 4 lo�i", BoNguyenLieuVuLan})
		tinsert(tbOption, {"Nh�n th�y t�u h� ti�n", ThuyTuuHoTien})
	end
	if nMonth==8 then
		tinsert(tbOption, {"Nh�n b� nguy�n li�u gh�p 2 lo�i", BoNguyenLieuBaoRuong})
		tinsert(tbOption, {"Nh�n r��ng v�ng - r��ng b�c", RuongVangBac})
	end
	if nMonth==9 then
		tinsert(tbOption, {"Nh�n ng�i sao chi�n th�ng", NgoiSaoChienThang})
		tinsert(tbOption, {"Nh�n qu� qu�c kh�nh", QuaQuocKhanh})
		tinsert(tbOption, {"Nh�n huy ch��ng qu�c kh�nh", HuyChuongQuocKhanh})
	end
	if nMonth==10 then
		tinsert(tbOption, {"Nh�n nguy�n li�u l�ng ��n 8 lo�i", NguyenLieuLongDen})
		tinsert(tbOption, {"Nh�n l�ng ��n th��ng 6 lo�i", LongDenThuong})
		tinsert(tbOption, {"Nh�n l�ng ��n ��c bi� 6 lo�i", LongDenDacBiet})
		tinsert(tbOption, {"Nh�n b�nh trung thu c�c lo�i 6 lo�i", BanhTrungThu})
	end
	if nMonth==11 then
		tinsert(tbOption, {"Nh�n h�p qu� ng�y nh� gi�o vi�t nam", HopQuaNhaGiao})
		tinsert(tbOption, {"Nh�n b� ch� T�n - S� - Tr�ng - ��o", TonSuTrongDao})
		tinsert(tbOption, {"Nh�n b� ki�p gia truy�n", BiKiepGiaTruyen})
	end
	if nMonth==12 then
		tinsert(tbOption, {"Nh�n h�p qu� gi�ng sinh", HopQuaGiangSinh})
		tinsert(tbOption, {"Nh�n nguy�n li�u l�m ng��i tuy�t 7 lo�i", NguyenLieuLamNguoiTuyet})
		tinsert(tbOption, {"Nh�n ng��i tuy�t th��ng 3 lo�i", NguoiTuyetThuong})
		tinsert(tbOption, {"Nh�n ng��i ��c bi�t 3 lo�i", NguoiTuyetDacBiet})
	end
		tinsert(tbOption, {"��ng."})
	CreateNewSayEx(szTitle..INFORMATION_DEVELOPER, tbOption)
end
-----------------Th�ng 1------------------------
function TuiMungXuan()
	AskClientForNumber("TuiMungXuan2",0,1999,"Nh�p S� L��ng:") 
end
function TuiMungXuan2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1652,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoNguyenLieuBanhChung()
	AskClientForNumber("BoNguyenLieuBanhChung2",0,1999,"Nh�p S� L��ng:") 
end
function BoNguyenLieuBanhChung2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1653,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1654,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1655,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1656,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1660,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1661,1,0,0},nCount = num,nExpiredTime=nTime}, "test", 1);
end
function PhucLocTho()
	AskClientForNumber("PhucLocTho2",0,1999,"Nh�p S� L��ng:") 
end
function PhucLocTho2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1657,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1658,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1659,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 2------------------------
function BaoLiXi()
	AskClientForNumber("BaoLiXi2",0,1999,"Nh�p S� L��ng:") 
end
function BaoLiXi2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1350,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhao()
	AskClientForNumber("BoPhao2",0,1999,"Nh�p S� L��ng:") 
end
function BoPhao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1351,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1352,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1353,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhongPhaoThuong()
	AskClientForNumber("BoPhongPhaoThuong2",0,1999,"Nh�p S� L��ng:") 
end
function BoPhongPhaoThuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1357,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1358,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1359,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoPhongPhaoDacBiet()
	AskClientForNumber("BoPhongPhaoDacBiet2",0,1999,"Nh�p S� L��ng:") 
end
function BoPhongPhaoDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0301"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1354,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1355,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1356,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 3------------------------
function CanhHoaHongCuc()
	AskClientForNumber("CanhHoaHongCuc2",0,1999,"Nh�p S� L��ng:") 
end
function CanhHoaHongCuc2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0401"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1679,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1680,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoHoaHongCuc()
	AskClientForNumber("BoHoaHongCuc2",0,1999,"Nh�p S� L��ng:") 
end
function BoHoaHongCuc2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0401"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1681,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1682,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 4------------------------
function HopQuaMayManT4()
	AskClientForNumber("HopQuaMayManT42",0,1999,"Nh�p S� L��ng:") 
end
function HopQuaMayManT42(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1734,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function ManhCoChienThang()
	AskClientForNumber("ManhCoChienThang2",0,1999,"Nh�p S� L��ng:") 
end
function ManhCoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1735,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1736,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1737,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1738,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LaCoChienThang()
	AskClientForNumber("LaCoChienThang2",0,1999,"Nh�p S� L��ng:") 
end
function LaCoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0501"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1739,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 5------------------------
function TuiHangHoa()
	AskClientForNumber("TuiHangHoa2",0,1999,"Nh�p S� L��ng:") 
end
function TuiHangHoa2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1393,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguyenLieuLamBanh()
	AskClientForNumber("NguyenLieuLamBanh2",0,1999,"Nh�p S� L��ng:") 
end
function NguyenLieuLamBanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1394,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhChay()
	AskClientForNumber("BanhChay2",0,1999,"Nh�p S� L��ng:") 
end
function BanhChay2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0601"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1397,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1396,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1395,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 6------------------------
function TuiDaiHyThu()
	AskClientForNumber("TuiDaiHyThu2",0,1999,"Nh�p S� L��ng:") 
end
function TuiDaiHyThu2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1750,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BoChuSinhNhatVL()
	AskClientForNumber("BoChuSinhNhatVL2",0,1999,"Nh�p S� L��ng:") 
end
function BoChuSinhNhatVL2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1752,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1753,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1754,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1755,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1760,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhKemNhuYCatTuong()
	AskClientForNumber("BanhKemNhuYCatTuong2",0,1999,"Nh�p S� L��ng:") 
end
function BanhKemNhuYCatTuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1761,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1762,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 7------------------------
function BoNguyenLieuVuLan()
	AskClientForNumber("BoNguyenLieuVuLan2",0,1999,"Nh�p S� L��ng:") 
end
function BoNguyenLieuVuLan2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0801"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30131,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30132,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30129,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30128,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function ThuyTuuHoTien()
	AskClientForNumber("ThuyTuuHoTien2",0,1999,"Nh�p S� L��ng:") 
end
function ThuyTuuHoTien2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0801"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,30130,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 8------------------------
function BoNguyenLieuBaoRuong()
	AskClientForNumber("BoNguyenLieuBaoRuong2",0,1999,"Nh�p S� L��ng:") 
end
function BoNguyenLieuBaoRuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,196,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1376,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function RuongVangBac()
	AskClientForNumber("RuongVangBac2",0,1999,"Nh�p S� L��ng:") 
end
function RuongVangBac2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1378,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1377,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 9------------------------
function NgoiSaoChienThang()
	AskClientForNumber("NgoiSaoChienThang2",0,1999,"Nh�p S� L��ng:") 
end
function NgoiSaoChienThang2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1494,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function QuaQuocKhanh()
	AskClientForNumber("QuaQuocKhanh2",0,1999,"Nh�p S� L��ng:") 
end
function QuaQuocKhanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1495,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function HuyChuongQuocKhanh()
	AskClientForNumber("HuyChuongQuocKhanh2",0,1999,"Nh�p S� L��ng:") 
end
function HuyChuongQuocKhanh2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1496,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 10------------------------
function NguyenLieuLongDen()
	AskClientForNumber("NguyenLieuLongDen2",0,1999,"Nh�p S� L��ng:") 
end
function NguyenLieuLongDen2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1221,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1222,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1223,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1224,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1225,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1226,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1227,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1228,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LongDenThuong()
	AskClientForNumber("LongDenThuong2",0,1999,"Nh�p S� L��ng:") 
end
function LongDenThuong2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1241,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1242,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1243,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1244,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1245,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1246,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function LongDenDacBiet()
	AskClientForNumber("LongDenDacBiet2",0,1999,"Nh�p S� L��ng:") 
end
function LongDenDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1229,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1230,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1231,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1232,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1233,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1234,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BanhTrungThu()
	AskClientForNumber("BanhTrungThu2",0,1999,"Nh�p S� L��ng:") 
end
function BanhTrungThu2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1235,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1236,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1237,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1238,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1239,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1240,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 11------------------------
function HopQuaNhaGiao()
	AskClientForNumber("HopQuaNhaGiao2",0,1999,"Nh�p S� L��ng:") 
end
function HopQuaNhaGiao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1598,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function TonSuTrongDao()
	AskClientForNumber("TonSuTrongDao2",0,1999,"Nh�p S� L��ng:") 
end
function TonSuTrongDao2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1599,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1600,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1601,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1602,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,0,20,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function BiKiepGiaTruyen()
	AskClientForNumber("BiKiepGiaTruyen2",0,1999,"Nh�p S� L��ng:") 
end
function BiKiepGiaTruyen2(num)
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1201"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1603,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
-----------------Th�ng 12------------------------
function HopQuaGiangSinh()
	AskClientForNumber("HopQuaGiangSinh2",0,1999,"Nh�p S� L��ng:") 
end
function HopQuaGiangSinh2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1311,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguyenLieuLamNguoiTuyet()
	AskClientForNumber("NguyenLieuLamNguoiTuyet2",0,1999,"Nh�p S� L��ng:") 
end
function NguyenLieuLamNguoiTuyet2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1312,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1313,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1314,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1315,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1316,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1317,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1318,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguoiTuyetThuong()
	AskClientForNumber("NguoiTuyetThuong2",0,1999,"Nh�p S� L��ng:") 
end
function NguoiTuyetThuong2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1324,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1322,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1323,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end
function NguoiTuyetDacBiet()
	AskClientForNumber("NguoiTuyetDacBiet2",0,1999,"Nh�p S� L��ng:") 
end
function NguoiTuyetDacBiet2(num)
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1321,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1319,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1320,1,0,0},nCount = num, nExpiredTime=nTime}, "test", 1);
end