Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function scriptthorenall()
	local tbOpt = {
		{"M� Shop B�n ��",moshopbando},
		{"Mua �� D� T�u",muadodatautr},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function moshopbando()
Sale(183)
end
--------------------------------------------------------------------------------
function muadodatautr()
	local tbOpt = {
		{"��ng � Mua",muadodatautr2},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
end
function muadodatautr2()
if( SubWorldIdx2ID( SubWorld ) == 11 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh�ng �� ng�n 3000 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,2,3,2,127,0)
		Pay(3000)
elseif( SubWorldIdx2ID( SubWorld ) == 78 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh�ng �� ng�n 2700 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,0,3,0,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 1 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh�ng �� ng�n 3000 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,3,3,1,127,0)
		Pay(3000)
elseif( SubWorldIdx2ID( SubWorld ) == 162 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh�ng �� ng�n 2700 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,5,3,1,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 37 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh�ng �� ng�n 2700 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,1,3,4,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 80 ) then
	if GetCash() < 2700 then
		Talk(1,"","Kh�ng �� ng�n 2700 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,5,3,3,127,0)
		Pay(2700)
elseif( SubWorldIdx2ID( SubWorld ) == 176 ) then
	if GetCash() < 3000 then
		Talk(1,"","Kh�ng �� ng�n 3000 l��ng")
		return 1
	end 		
		AddItemEx(0,0,0,0,0,2,3,1,127,0)
		Pay(3000)
else
	Talk(1,"","T�i ��y kh�ng c� b�n g� ng��i c�n ��u")
	return 1
end
end
--------------------------------------------------------------------------------
function no()
end;
