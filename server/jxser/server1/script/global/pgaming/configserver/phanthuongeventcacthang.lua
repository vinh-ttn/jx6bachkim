---------------Youtube PGaming---------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
--=========Ti�n v�n v� EXP 3 m�c event===========--
nTienVanMoc1 = 1000000
nTienVanMoc1HienThi = nTienVanMoc1/10000
nKinhNghiemMoc1 = 10000000
nKinhNghiemMoc1HienThi = nKinhNghiemMoc1/1000000

nTienVanMoc2 = 2000000
nTienVanMoc2HienThi = nTienVanMoc2/10000
nKinhNghiemMoc2 = 20000000
nKinhNghiemMoc2HienThi = nKinhNghiemMoc2/1000000

nTienVanMoc3 = 5000000
nTienVanMoc3HienThi = nTienVanMoc3/10000
nKinhNghiemMoc3 = 50000000
nKinhNghiemMoc3HienThi = nKinhNghiemMoc3/1000000
--================================================--

-------------------------------------Th�ng 1----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime1 = "20"..nYear.."0201"
tbBanhChungThuong = {
	[1] = {
		{nExp_tl=1000000},
	},
	[2] = {
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
	},
}

tbBanhChungHaoHan = {
	[1] = {
		{nExp_tl=3000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime1,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
	},
}

tbBanhChungThuongHan = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime1,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime1,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime1},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime1},
	},
}
-------------------------------------Th�ng 2----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."0301"
tbPhongPhaoTieuThuong = {
	[1] = {
		{nExp_tl=10000},
	},
	[2] = {
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}

tbPhongPhaoTrungThuong = {
	[1] = {
		{nExp_tl=300000},
	},
	[2] = {
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}

tbPhongPhaoDaiThuong = {
	[1] = {
		{nExp_tl=500000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime2,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}

tbPhongPhaoTieuDB = {
	[1] = {
		{nExp_tl=1000000},
	},
	[2] = {
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}

tbPhongPhaoTrungDB = {
	[1] = {
		{nExp_tl=3000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime2,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}

tbPhongPhaoDaiDB = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime2,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime2,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime2},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="M�t n� - ��u �ng ��a", tbProp={0, 11, 72, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - Nam S�", tbProp={0, 11, 73, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
		{szName="M�t n� - B�c S�", tbProp={0, 11, 74, 1, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime2},
	},
}
-------------------------------------Th�ng 3----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime3 = "20"..nYear.."0401"
tbBoHoaCuc = {
	[1] = {
		{nExp_tl=2000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime3,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBoHoaHong = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime3,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime3,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime3},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 4----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime4 = "20"..nYear.."0501"
tbLaCoChienThang = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime4,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime4,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime4},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 5----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime5 = "20"..nYear.."0601"
tbBanhChayThuong = {
	[1] = {
		{nExp_tl=2000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime5,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhChayDB = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime5,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime5,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=0.1,nRate=3,nExpiredTime=nTime5},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 6----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime6 = "20"..nYear.."0701"
tbBanhKemNhuY = {
	[1] = {
		{nExp_tl=3000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime6,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhKemCatTuong = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime6,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime6,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime6},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 7----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime7 = "20"..nYear.."0801"
tbThuyTuHoTien = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime7,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime7,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime7},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 8----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime8 = "20"..nYear.."0901"
tbRuongBac = {
	[1] = {
		{nExp_tl=2000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime8,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbHoangKimBaoHap = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime8,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime8,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime8},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 9----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime9 = "20"..nYear.."1001"
tbHuyChuongQuocKhanh = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime9,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime9,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime9},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 10----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime10 = "20"..nYear.."1101"
tbBanhTrungThuThuong = {
	[1] = {
		{nExp_tl=100000},
	},
	[2] = {
		{szName="Huy�n Tinh C�p 1",tbProp={6,1,147,1,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhTrungThuDauXanh = {
	[1] = {
		{nExp_tl=200000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 1",tbProp={6,1,147,1,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhTrungThuNhanTrung = {
	[1] = {
		{nExp_tl=500000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhTrungThuDB = {
	[1] = {
		{nExp_tl=1000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhTrungThuHatSen = {
	[1] = {
		{nExp_tl=2000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
	},
}

tbBanhTrungThuConHeo = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime10,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime10},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 11----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nTime11 = "20"..nYear.."1201"
tbBiKiep = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime11,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime11,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime11},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
-------------------------------------Th�ng 12----------------------------------------------------------------------------------
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime12 = "20"..nYear2.."0101"
tbNguoiTuyetDB = {
	[1] = {
		{nExp_tl=1000000},
	},
	[2] = {
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - �ng gi� noel", tbProp={0, 11, 70, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Thi�n s� gi�ng sinh", tbProp={0, 11, 71, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tu�n L�c", tbProp={0,11,247,0,0,0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tinh Linh", tbProp={0, 11, 248, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
	},
}

tbNguoiTuyetKhanChoangXanhDB = {
	[1] = {
		{nExp_tl=3000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime12,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 3",tbProp={6,1,147,3,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="M�t n� - �ng gi� noel", tbProp={0, 11, 70, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Thi�n s� gi�ng sinh", tbProp={0, 11, 71, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tu�n L�c", tbProp={0,11,247,0,0,0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tinh Linh", tbProp={0, 11, 248, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
	},
}

tbNguoiTuyetKhanChoangDoDB = {
	[1] = {
		{nExp_tl=5000000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=nTime12,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=nTime12,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=nTime12},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="H�t Hoa h�ng",tbProp={6,1,1006,1,0,0},nExpiredTime=nTime12,nCount=1,nRate=0.5},
		{szName="H�t Th�y Tinh",tbProp={6,1,1007,1,0,0},nExpiredTime=nTime12,nCount=1,nRate=0.5},
		{szName="H�t Ho�ng Kim",tbProp={6,1,1008,1,0,0},nExpiredTime=nTime12,nCount=1,nRate=0.5},
		{szName="H�t May M�n",tbProp={6,1,1005,1,0,0},nExpiredTime=nTime12,nCount=1,nRate=0.5},
		{szName="M�t n� - �ng gi� noel", tbProp={0, 11, 70, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Thi�n s� gi�ng sinh", tbProp={0, 11, 71, 0, 0, 0},nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tu�n L�c", tbProp={0,11,405,0,0,0},nQuality = 1,nCount=1,nRate = 30,nExpiredTime=nTime12},
		{szName="M�t n� - Tinh Linh", tbProp={0, 11, 248, 0, 0, 0},nQuality = 1,nCount=1,nRate = 30,nExpiredTime=nTime12},
	},
}
--------------------------------------------------------------------------------------------------------------------------------------------------
--																M�c Event																		--
--------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------Moc 500-------------------------------------------------------------------------------------------------------------------------------------------

function Moc500()
	local nTienMoc1 = nJxb
	local nKinhNghiemMoc1 = nExp_tl
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
	local tbAward = {
		[1] = {
		{szName="Ng�n L��ng",nJxb=nTienVanMoc1,nCount=1},
		{szName="Kinh Nghi�m",nExp_tl=nKinhNghiemMoc1,nCount=1},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=43200,nRate=10},	
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=30},
		{szName="Huy�n Tinh C�p 2",tbProp={6,1,147,2,0,0,0}, tbParam={60},nCount=3,nRate=60},
	},

	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c "..nGioiHanMoc1.."") SetTask(NHANTHUONGMOC1,1)
	AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." "..GetName().." �� Nh�n Th��ng M�c "..nGioiHanMoc1.." Event<color>")
end
--------------------------------------------------------Moc 1000---------------------------------------------------------------------------------------
function Moc1000()
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
	local tbAward = {
	[1] = {
		{szName="Ng�n L��ng",nJxb=nTienVanMoc2,nCount=1},
		{szName="Kinh Nghi�m",nExp_tl=nKinhNghiemMoc2,nCount=1},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=2,nExpiredTime=43200,nRate=10},	
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=30},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=3,nRate=60},
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 1000") SetTask(NHANTHUONGMOC2,1)
	AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." "..GetName().." �� Nh�n Th��ng M�c "..nGioiHanMoc2.." Event<color>")
end
----------------------------------------------------------Moc 2000--------------------------------------------------------------------------------
function Moc1500()
	if (CalcFreeItemCellCount() < 30) then
		Talk(1,"","H�y �� Tr�ng 30 � R�i Nh�n Th��ng")
		return
	end
	local tbAward = {
			[1] = {
		{szName="Ng�n L��ng",nJxb=nTienVanMoc3,nCount=1},
		{szName="Kinh Nghi�m",nExp_tl=nKinhNghiemMoc3,nCount=1},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=5,nExpiredTime=43200,nRate=40},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=3,nRate=25},
		{szName="Huy�n Tinh C�p 5",tbProp={6,1,147,5,0,0,0}, tbParam={60},nCount=3,nRate=5},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=43200,nRate=5},	
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},nCount=1,nRate=5},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=5},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=5},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=5},
		{szName="Chi�u D� Ng�c S� T� ", tbProp={0,10,5,10,0,0},nCount=1,nRate = 1},
		{szName="X�ch Th� ", tbProp={0,10,5,7,0,0},nCount=1,nRate = 1},
		{szName="��ch L� ", tbProp={0,10,5,9,0,0},nCount=1,nRate = 1},
		{szName="� V�n ��p Tuy�t", tbProp={0,10,5,6,0,0},nCount=1,nRate = 1},
		{szName="Tuy�t �nh", tbProp={0,10,5,8,0,0},nCount=1,nRate = 1},
		},
	}
	tbAwardTemplet:GiveAwardByList(tbAward,"Ph�n Th��ng M�c 2000") SetTask(NHANTHUONGMOC3,1)
	AddGlobalNews("<color=green>Ch�c M�ng "..myplayersex().." "..GetName().." �� Nh�n Th��ng M�c "..nGioiHanMoc3.." Event<color>")
end