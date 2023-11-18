Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scriptbannguaall()
	local tbOpt = {
		{"M� Shop B�n ��",moshopbando},
		{"Mua Ng�a",muangua},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muangua()
	local tbOpt = {
		{"��ng � Mua",muangua2},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
end
function muangua2()
if( SubWorldIdx2ID( SubWorld ) == 11 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t H�ng M� C�p 1./#HongMa(1)") 
tinsert(tb,"Li�t H�ng M� C�p 2./#HongMa(2)") 
tinsert(tb,"H�ng M� C�p 3./#HongMa(3)") 
tinsert(tb,"H�ng M� C�p 4./#HongMa(4)") 
tinsert(tb,"H�ng Ly C�p 5./#HongMa(5)") 
tinsert(tb,"H�ng Ly C�p 6./#HongMa(6)") 
tinsert(tb,"��i Uy�n H�n Huy�t M� 7./#HongMa(7)") 
tinsert(tb,"��i Uy�n H�n Huy�t M� 8./#HongMa(8)") 
tinsert(tb,"X�ch K� 9./#HongMa(9)") 
tinsert(tb,"X�ch K� 10./#HongMa(10)") 
tinsert(tb,"Tho�t./Quit")
	CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 78 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t H�c M� C�p 1./#HacMa(1)") 
tinsert(tb,"Li�t H�c M� C�p 2./#HacMa(2)") 
tinsert(tb,"H�c M� C�p 3./#HacMa(3)") 
tinsert(tb,"H�c M� C�p 4./#HacMa(4)") 
tinsert(tb,"H�c K� C�p 5./#HacMa(5)") 
tinsert(tb,"H�c K� C�p 6./#HacMa(6)") 
tinsert(tb,"��i Uy�n H�c M� 7./#HacMa(7)") 
tinsert(tb,"��i Uy�n H�c M� 8./#HacMa(8)") 
tinsert(tb,"� Ch�y 9./#HacMa(9)") 
tinsert(tb,"� Ch�y 10./#HacMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 1 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t B�ch M� C�p 1./#BachMa(1)") 
tinsert(tb,"Li�t B�ch M� C�p 2./#BachMa(2)") 
tinsert(tb,"B�ch M� C�p 3./#BachMa(3)") 
tinsert(tb,"B�ch M� C�p 4./#BachMa(4)") 
tinsert(tb,"Ng�c Hoa Th�ng C�p 5./#BachMa(5)") 
tinsert(tb,"Ng�c Hoa Th�ng C�p 6./#BachMa(6)") 
tinsert(tb,"��i Uy�n B�ch M� 7./#BachMa(7)") 
tinsert(tb,"��i Uy�n B�ch M� 8./#BachMa(8)") 
tinsert(tb,"T�c S��ng 9./#BachMa(9)") 
tinsert(tb,"T�c S��ng 10./#BachMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 162 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t H�c M� C�p 1./#HacMa(1)") 
tinsert(tb,"Li�t H�c M� C�p 2./#HacMa(2)") 
tinsert(tb,"H�c M� C�p 3./#HacMa(3)") 
tinsert(tb,"H�c M� C�p 4./#HacMa(4)") 
tinsert(tb,"H�c K� C�p 5./#HacMa(5)") 
tinsert(tb,"H�c K� C�p 6./#HacMa(6)") 
tinsert(tb,"��i Uy�n H�c M� 7./#HacMa(7)") 
tinsert(tb,"��i Uy�n H�c M� 8./#HacMa(8)") 
tinsert(tb,"� Ch�y 9./#HacMa(9)") 
tinsert(tb,"� Ch�y 10./#HacMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 37 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t B�ch M� C�p 1./#BachMa(1)") 
tinsert(tb,"Li�t B�ch M� C�p 2./#BachMa(2)") 
tinsert(tb,"B�ch M� C�p 3./#BachMa(3)") 
tinsert(tb,"B�ch M� C�p 4./#BachMa(4)") 
tinsert(tb,"Ng�c Hoa Th�ng C�p 5./#BachMa(5)") 
tinsert(tb,"Ng�c Hoa Th�ng C�p 6./#BachMa(6)") 
tinsert(tb,"��i Uy�n B�ch M� 7./#BachMa(7)") 
tinsert(tb,"��i Uy�n B�ch M� 8./#BachMa(8)") 
tinsert(tb,"T�c S��ng 9./#BachMa(9)") 
tinsert(tb,"T�c S��ng 10./#BachMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 80 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t Thanh M� C�p 1./#ThanhMa(1)") 
tinsert(tb,"Li�t Thanh M� C�p 2./#ThanhMa(2)") 
tinsert(tb,"Thanh Th�ng C�p 3./#ThanhMa(3)") 
tinsert(tb,"Thanh Th�ng C�p 4./#ThanhMa(4)") 
tinsert(tb,"T� L�u C�p 5./#ThanhMa(5)") 
tinsert(tb,"T� L�u C�p 6./#ThanhMa(6)") 
tinsert(tb,"��i Uy�n Thanh M� 7./#ThanhMa(7)") 
tinsert(tb,"��i Uy�n Thanh M� 8./#ThanhMa(8)") 
tinsert(tb,"Hoa L�u 9./#ThanhMa(9)") 
tinsert(tb,"Hoa L�u 10./#ThanhMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
elseif( SubWorldIdx2ID( SubWorld ) == 176 ) then
	local tb = {
		"Ng��i mu�n mua g�?",
	}
tinsert(tb,"Li�t Thanh M� C�p 1./#HoangMa(1)") 
tinsert(tb,"Li�t Thanh M� C�p 2./#HoangMa(2)") 
tinsert(tb,"Thanh Th�ng C�p 3./#HoangMa(3)") 
tinsert(tb,"Thanh Th�ng C�p 4./#HoangMa(4)") 
tinsert(tb,"T� L�u C�p 5./#HoangMa(5)") 
tinsert(tb,"T� L�u C�p 6./#HoangMa(6)") 
tinsert(tb,"��i Uy�n Thanh M� 7./#HoangMa(7)") 
tinsert(tb,"��i Uy�n Thanh M� 8./#HoangMa(8)") 
tinsert(tb,"Hoa L�u 9./#HoangMa(9)") 
tinsert(tb,"Hoa L�u 10./#HoangMa(10)") 
tinsert(tb,"Tho�t./Quit")
CreateTaskSay(tb)
else
	Talk(1,"","T�i ��y kh�ng c� b�n g� ng��i c�n ��u")
	return 1
end
end
--------------------------------------------------------------------------------
function HoangMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh�ng �� ng�n "..nGia.." l��ng")
		return 1
	end 		
		AddItem(0,10,0,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function ThanhMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh�ng �� ng�n "..nGia.." l��ng")
		return 1
	end 		
		AddItem(0,10,1,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function BachMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh�ng �� ng�n "..nGia.." l��ng")
		return 1
	end 		
		AddItem(0,10,2,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function HacMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh�ng �� ng�n "..nGia.." l��ng")
		return 1
	end 		
		AddItem(0,10,3,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function HongMa(nNum)
if nNum == 1 or nNum == 2 then nGia = 5000
elseif nNum == 3 or nNum == 4 then nGia = 10000
elseif nNum == 5 or nNum == 6 then nGia = 20000
elseif nNum == 7 or nNum == 8 then nGia = 50000
elseif nNum == 9 or nNum == 10 then nGia = 100000
end
	if GetCash() < nGia then
		Talk(1,"","Kh�ng �� ng�n "..nGia.." l��ng")
		return 1
	end 		
		AddItem(0,10,4,nNum,0,0)
		Pay(nGia)
end
--------------------------------------------------------------------------------
function no()
end;
