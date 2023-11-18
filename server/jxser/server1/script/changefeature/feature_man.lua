Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\changefeature\\equip_tryon.lua")
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")
tbFeatureNpc = {}

function tbFeatureNpc:SelectType()
	local szTitle = "Xin h�y ch�n v� tr�"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.DailogMenu, {value, 1}})
	end
	
	tinsert(tbOpt, {"Tr� l�i", self.Dialog, {self}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end
	
function tbFeatureNpc:Dialog()
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Tr�n ng��i c�c h� kh�ng c� Ti�n ��ng, ch�c c�c h� �ang tr�u ch�c ta ph�i kh�ng?")
	return 1
	end
	local szTitle = "Ng�i c� mu�n thay ��i ngo�i trang kh�ng?"
	local tbOpt = 
	{
		{"Xem v� thay ��i ngo�i h�nh trang b�", self.SelectType, {self}},
		--{"Thay ��i ngo�i h�nh trang b� �ng � nh�t cho trang b�", self.InjectToItem, {self}},
		{"Tr� v� ngo�i h�nh ban ��u", self.RestoreItem, {self}},
		{"X�a hi�u �ng hi�n t�i", RestoreOwnFeature},
		--{"L�m th� n�o �� thay ��i ngo�i h�nh trang b�",  self.Explain, {self}},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:Dialog2()
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Tr�n ng��i c�c h� kh�ng c� Ti�n ��ng, ch�c c�c h� �ang tr�u ch�c ta ph�i kh�ng?")
	return 1
	end
	local szTitle = "Ng�i c� mu�n thay ��i ngo�i trang kh�ng?"
	local tbOpt = 
	{
		{"Xem v� thay ��i ngo�i h�nh trang b�", self.SelectType, {self}},
		--{"Thay ��i ngo�i h�nh trang b� �ng � nh�t cho trang b�", self.InjectToItem, {self}},
		{"Tr� v� ngo�i h�nh ban ��u", self.RestoreItem, {self}},
		{"X�a hi�u �ng hi�n t�i", RestoreOwnFeature},
		--{"L�m th� n�o �� thay ��i ngo�i h�nh trang b�",  self.Explain, {self}},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)

end

function tbFeatureNpc:Explain()
	local szTitle = "B�n ti�m c� th� t�o ra 'ngo�i h�nh trang b�' theo nh� � mu�n, thu th�p �� nguy�n li�u c�n thi�t nh� tinh luy�n th�ch v� trang b� c�n thay ��i �em ��n cho l�o phu th� ta s� gi�p ng��i thay ��i ngo�i h�nh trang b� nh� � mu�n. N�n nh� ta ch� gi�p ng��i thay ��i ngo�i h�nh trang b� m� kh�ng thay ��i �� m�nh y�u c�a trang b� ��u nh�."
	local tbOpt = 
	{
		{"Tr� l�i", self.Dialog, {self}},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:InjectToItem()
	local szTitle = "Xin h�y ch�n v� tr�"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.AskFeatureNo, {value}})
	end
	
	tinsert(tbOpt, {"Tr� l�i", self.Dialog, {self}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end

function tbFeatureNpc:RestoreItem()
	local szTitle = "Xin h�y ch�n v� tr� c�a trang b� hi�n t�i"
	
	
	local tbOpt = {}
	
	for key , value in tbEquipTryOn.tbTemplate do
		tinsert(tbOpt, {key, value.GiveEquip2, {value}})
	end
	
	tinsert(tbOpt, {"Tr� l�i", self.Dialog, {self}})
	tinsert(tbOpt, {"K�t th�c ��i tho�i"})
	
	CreateNewSayEx(szTitle, tbOpt)
end

function main()
	dofile("script/global/pgaming/item/lunglinhhap.lua")
if GetSex() == 1 then
	 tbFeatureNpc:Dialog2()
	 else
	 tbFeatureNpc:Dialog()	 
end
return 1
end
------------------------------
function xemtruocngoaitrangnu()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"N�n", nonnu},	
		{"�o", aonu},
		--{"V� Kh�", vukhi},	
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nonnu()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"1. Th�ch Ni M�o", thichnico},
		{"2. Thi�n Thanh M�o", thienthanhmao},
		{"3. X�ch �nh ph�t Qu�n", xichphatquan},
		{"4. B�Tr�", botro},
		{"5. Th� C�t Tr�m", thucottram},
		{"Trang K�", trangkenonnu2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thichnico()
local szTitle =  NONNU_001.."Lo�i m� c�c ni c� th��ng ��i.."
		local tbOpt =
	{
		{"Tr� v�",nonnu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thienthanhmao()
local szTitle =  NONNU_002.."Lo�i m� m�u xanh c�a Ph�t gia, thanh tho�t cao qu�."
		local tbOpt =
	{
		{"Tr� v�",nonnu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function xichphatquan()
local szTitle =  NONNU_003.."Lo�i m� cao c�p c�a Ph�t gia, d�ng trong nh�ng l�c nghi�m trang."
		local tbOpt =
	{
		{"Tr� v�",nonnu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function botro()
local szTitle =  NONNU_004.."Lo�i m� b�o h� ���c tinh ch� t� nh�ng lo�i da th�, ca kh� n�ng t�n c�ng v� ph�ng ng� r�t t�t."
		local tbOpt =
	{
		{"Tr� v�",nonnu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thucottram()
local szTitle =  NONNU_005.."Lo�i Tr�m l�m b�ng x��ng th�."
		local tbOpt =
	{
		{"Tr� v�",nonnu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu2()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"6. Huy�n T� Di�n Tr�o", huyentedienmao},
		{"7. Th� Thi�t ��u Ho�n", thietthietdauhoan},
		{"8. K� V� Thoa", kevuthoa},
		{"9. Long Huy�t ��u ho�n", longhuyetdauhoan},
		{"10. Vi�n M�o", vienmao},
		{"Trang Tru�c", nonnu},
		{"Trang K�", trangkenonnu3},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function huyentedienmao()
local szTitle =  NONNU_006.."Lo�i m� ph�ng h� th��ng ��ng b�ng da t� gi�c, c�c k� qu� hiOm."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thietthietdauhoan()
local szTitle =  NONNU_007.."Lo�i m� b�o h� tinh ch� t� th�p, kh� n�ng ph�ng ng� r�t cao."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kevuthoa()
local szTitle =  NONNU_008.."Lo�i thoa ���c l�m to �u�i chim, r�t n� t�nh."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function longhuyetdauhoan()
local szTitle =  NONNU_009.."Lo�i m� b�o h� tinh ch� t� v�ng c�c k� quu hi�m."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function vienmao()
local szTitle =  NONNU_010.."M�t lo�i m� th�ng th��ng."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu3()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"11. Song Ph�ng Tri�u Thi�n Qu�n", phongtrieuthienquan},
		{"12. Long L�n Kh�i", longlankhoi},
		{"13. B� M�o", bomao},
		{"14. L�u Ly Thoa", luulythoa},
		{"15. Thanh Tinh Thoa", thanhtinhthoa},
		{"Trang Tru�c", trangkenonnu2},
		{"Trang K�", trangkenonnu4},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function phongtrieuthienquan()
local szTitle =  NONNU_011.."Lo�i m� b�o h� tinh ch� t� v�ng, tr�m kUn c� ��u."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function longlankhoi()
local szTitle =  NONNU_012.."Kh�i ph�t ra h�o quang nh� r�ng l�n u�n l��n, V�a nh�n �� bi�t ngay l� m�t ph�m v�t c�c k� quu hi�m."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bomao()
local szTitle =  NONNU_013.."Lo�i m� th�ng th��ng."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function luulythoa()
local szTitle =  NONNU_014.."Thoa l�m to ng�c L�u Ly, c�c k� quu hi�m."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhtinhthoa()
local szTitle =  NONNU_015.."Thoa ca kh�m th�y tinh xanh, �nh s�ng huy�n �o, c�c k� quu hi�m"
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenonnu4()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"16. Ho�ng B� Ph�t ��i", hoangbophatdai},
		{"17. Thanh L�u Ly Ph�t Xoa", thanhluulyphatxoa},
		{"18. Kim Ph�ng Tri�n S�", kimphongtriensy},
		{"Trang Tru�c", trangkenonnu3},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function hoangbophatdai()
local szTitle =  NONNU_016.."M�t lo�i �ai th�t th�ng th��ng."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu4},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhluulyphatxoa()
local szTitle =  NONNU_017.."Lo�i tr�m c�i b�ng L�u Ly pha l�n nhi�u lo�i b�o th�ch."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu4},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kimphongtriensy()
local szTitle =  NONNU_018.."Lo�i kh�i gi�p ca h�nh d�ng nh� ��u chim ph�ng, ch� d�nh cho t��ng l�nh."
		local tbOpt =
	{
		{"Tr� v�",trangkenonnu4},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function aonu()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"1. Sa Ni ph�c", saniphuc},
		{"2. Nguy�n B�ch c� sa", nguyenbachcasanu},
		{"3. Th�t B�o c� sa", thatbaocasanu},
		{"4. Linh X� y", linhxay},
		{"5. H� B� y", hobiy},
		{"Trang K�", trangkeaonu2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function saniphuc()
local szTitle =  AONU_001.."T�ng y d�nh cho c�c ti�u Sa Di voa nh�p m�n"
		local tbOpt =
	{
		{"Tr� v�",aonu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyenbachcasanu()
local szTitle =  AONU_002.."C�n g�i l� Th�t �i�u y, y ph�c c�a c�c t�ng nh�n ch�c v� cao"
		local tbOpt =
	{
		{"Tr� v�",aonu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thatbaocasanu()
local szTitle =  AONU_003.."L� Ph�t m�n chi b�o, do Ph�t T� t�ng cho ���ng Tam T�ng khi �i th�nh kinh"
		local tbOpt =
	{
		{"Tr� v�",aonu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function linhxay()
local szTitle =  AONU_004.."Gi�ng nh� kho�t tr�n ng��i m�t t�m da r�n, c� ��ng c�c k� linh ho�t"
		local tbOpt =
	{
		{"Tr� v�",aonu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function hobiy()
local szTitle =  AONU_005.."May b�ng da h�, m�c v�o kh� l�c t�ng l�n, c�c k� hi�m th�y."
		local tbOpt =
	{
		{"Tr� v�",aonu},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkeaonu2()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"6. C�u V� B�ch H� trang", bachhotrang},
		{"7. C�m Sam", camsam},
		{"8. Thanh La sam", thanhlasam},
		{"9. Tr�m H��ng sam", tramhuongsam},
		{"10. Kh�m Thi�t n� gi�p", kiemthietnugiap},
		{"Trang Tr��c", aonu},
		{"Trang K�", trangkeaonu3},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bachhotrang()
local szTitle =  AONU_006.."���c may to �u�i c�a 9 con H� Ly tinh, m�c v�o n�ng l�c v� song"
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function camsam()
local szTitle =  AONU_007.."Y ph�c ���c ch� t� nh�ng lo�i v�i th�ng th��ng."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thanhlasam()
local szTitle =  AONU_008.."B�n ngo�i l� �o nh�ng b�n trong l� gi�p, kh� n�ng ph�ng ng� r�t t�t"
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tramhuongsam()
local szTitle =  AONU_009.."Trong �o lu�n ph�ng ph�t m�i tr�m h��ng, nh� ti�n n� gi�ng tr�n."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiemthietnugiap()
local szTitle =  AONU_010.."�o gi�p th�ng th��ng c�a n� gi�i."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkeaonu3()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"11. X�ch Nh�n gi�p", xichnhangiap},
		{"12. T�ch L�ch Kim Ph�ng gi�p", tichlichkimphonggiap},
		{"13. Ph� Ma y", phapmay},
		{"14. B�ch �i�p qu�n", dichdichquan},
		{"15. Nguy�t Hoa qu�n", nguyethoaquan},
		{"16. L�u Ti�n Qu�n", luutienquan},
		{"Trang Tr��c", trangkeaonu2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function xichnhangiap()
local szTitle =  AONU_011.."�o gi�p ���c k�t b�ng l�ng Nh�n ��, n� t�nh th��ng hay d�ng."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tichlichkimphonggiap()
local szTitle =  AONU_012.."H� gi�p c�a M�c Qu� Anh, theo truy?n thuyOt l� do Th�nh M�u ban t�ng."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phapmay()
local szTitle =  AONU_013.."L� lo�i �o ���c l�m to v� c�y Ma th�."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function dichdichquan()
local szTitle =  AONU_014.."L� lo�i th��ng ph�c c�a n� gi�i."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyethoaquan()
local szTitle =  AONU_015.."Lo�i qu�n ph�t ra �nh s�ng k� �o nh� �nh s�ng tr�ng."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function luutienquan()
local szTitle =  AONU_016.."Truy�n thuy�t n�i r�ng ��y l� do Tri�u Phi YOn th�i H�n t� tay l�m ra, m�c v�o nh� �ang du ti�n."
		local tbOpt =
	{
		{"Tr� v�",trangkeaonu3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

----------------------------


function xemtruocngoaitrangnam()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"N�n", nonnam},	
		{"�o", aonam},
		--{"V� Kh�", vukhi},	
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function vukhi()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"1. Ki�m", kiem1},
		{"2. Tr�y", truy1},
		{"3. �ao", dao1},
		{"4. Th��ng", thuong1},
		{"5. B�ng", kiem2},
		{"6. V� Kh� ���ng M�n", duongmon2},
		{"Trang K�", trangkevukhi},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiem1()
local szTitle =  VUKHI_001.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function truy1()
local szTitle =  VUKHI_002.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function dao1()
local szTitle =  VUKHI_003.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thuong1()
local szTitle =  VUKHI_004.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function kiem2()
local szTitle =  VUKHI_005.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function duongmon2()
local szTitle =  VUKHI_006.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",vukhi},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

----------------------------------------------------
function nonnam()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"1. Sa Di Gi�i C�", sadigioico},
		{"2. Ph� Dung M�o", phudungmao},
		{"3. T� L� m�o", tulaomao},
		{"4. Tr�c L�p", triclap},
		{"5. Nh�n B� Di�n Tr�o", nhanbidientrao},
		{"Trang K�", trangkenon},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function sadigioico()
local szTitle =  NONNAM_001.."�ai c�a c�c ti�u Sa Di th��ng �eo."
		local tbOpt =
	{
		{"Tr� v�",nonnam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phudungmao()
local szTitle =  NONNAM_002.."C�c T�ng L� trung ��ng th��ng �eo, l�m b�ng th� l�a th��ng ��ng."
		local tbOpt =
	{
		{"Tr� v�",nonnam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tulaomao()
local szTitle =  NONNAM_003.."C�c T�ng L� th��ng ��ng th��ng �eo, tr�n ca �n Ph�t, ���ng T�ng th��ng �eo na"
		local tbOpt =
	{
		{"Tr� v�",nonnam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function triclap()
local szTitle =  NONNAM_004.."Lo�i m� th��ng th�y � v�ng Giang Nam."
		local tbOpt =
	{
		{"Tr� v�",nonnam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nhanbidientrao()
local szTitle =  NONNAM_005.."Nghe nai sau khi gi�t ng��i th� l�t da l�m �o, o�n kh� cu�n cu�n."
		local tbOpt =
	{
		{"Tr� v�",nonnam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"6. Tu La Ph�t k�t", tulaphatket},
		{"7. Phi Y�n Qu�n", phiyenquan},
		{"8. Anh L�c Qu�n", anhlucquan},
		{"9. Th�ng Thi�n Ph�t Qu�n", thongthienphatquan},
		{"10. Thi�t Kh�i", thietkhoi},
		{"Trang Tr��c", nonnam},
		{"Trang K�", trangkenon2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tulaphatket()
local szTitle =  NONNAM_006.."L� m�t di v�t tr�n th� gian, s�t kh� t�a ra ng�n ng�t."
		local tbOpt =
	{
		{"Tr� v�",trangkenon},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phiyenquan()
local szTitle =  NONNAM_007.."Lo�i m� r�t ��p, danh s� �a d�ng."
		local tbOpt =
	{
		{"Tr� v�",trangkenon},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function anhlucquan()
local szTitle =  NONNAM_008.."Lo�i m� r�t ��p, ���c kh�m b�ng c� Anh L�c, c�c v�n nh�n Nho s� th��ng th�ch ��i"
		local tbOpt =
	{
		{"Tr� v�",trangkenon},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thongthienphatquan()
local szTitle =  NONNAM_009.."L� lo�i m� cao qu�, ch� ca Ho�ng Th��ng m�i ���c ��i"
		local tbOpt =
	{
		{"Tr� v�",trangkenon},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thietkhoi()
local szTitle =  NONNAM_010.."Lo�i kh�i l�m b�ng tinh th�p th��ng ��ng."
		local tbOpt =
	{
		{"Tr� v�",trangkenon},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon2()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"11. Ng�n Kh�i", ngankhoi},
		{"12. Y�m Nh�t kh�i", yemnhatkhoi},
		{"13. Ph� B� C�n", phabocan},
		{"14. Song T�ng L�u Ly Ho�n", songtangluulyhoan},
		{"15. Tr�ch Tinh ho�n", trichtinhhoan},
		{"Trang Tr��c", trangkenon},
		{"Trang K�", trangkenon3},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function ngankhoi()
local szTitle =  NONNAM_011.."Lo�i kh�i b�ng b�c nguy�n ch�t."
		local tbOpt =
	{
		{"Tr� v�",trangkenon2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function yemnhatkhoi()
local szTitle =  NONNAM_012.."Lo�i kh�i gi�p b�ng v�ng, kh� n�ng ph�ng ng� r�t cao."
		local tbOpt =
	{
		{"Tr� v�",trangkenon2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function phabocan()
local szTitle =  NONNAM_013.."Lo�i kh�n nh�ng ng��i an m�y th��ng qu�n tr�n ��u, r�t r�ch n�t."
		local tbOpt =
	{
		{"Tr� v�",trangkenon2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function songtangluulyhoan()
local szTitle =  NONNAM_014.."Lo�i v�ng �eo ca kh�m nhi�u ng�c L�u Ly, ca hai l�p."
		local tbOpt =
	{
		{"Tr� v�",trangkenon2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trichtinhhoan()
local szTitle =  NONNAM_015.."Lo�i v�ng �eo ca kh�m nhi�u ng�c L�u Ly, b�o v�t c�a C�i Bang."
		local tbOpt =
	{
		{"Tr� v�",trangkenon2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function trangkenon3()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"16. B� C�n", bocan},
		{"17. Chu Kh�i Qu�n", chukhoiquan},
		{"18. � T�m M�o", otammao},
		{"Trang Tr��c", trangkenon2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function bocan()
local szTitle =  NONNAM_016.."Lo�i kh�n th��ng ��i c�a nh�ng ng��i b�nh d�n."
		local tbOpt =
	{
		{"Tr� v�",trangkenon3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function chukhoiquan()
local szTitle =  NONNAM_017.."Lo�i m? d�t b�ng t� th��ng ph�m, ki�u d�ng r�t ��p."
		local tbOpt =
	{
		{"Tr� v�",trangkenon3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function otammao()
local szTitle =  NONNAM_018.."Lo�i m� d�t b�ng t� � T�m th��ng ph�m, phong c�ch quu ph�i."
		local tbOpt =
	{
		{"Tr� v�",trangkenon3},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

--------------------------------------------------------------------


function aonam()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"1. Sa Di Ph�c", sadiphuc},
		{"2. Nguy�n B�ch C� Sa", nguyenbachcasa},
		{"3. Th�t B�o C� Sa", thatbaocasa},
		{"4. C�n y", cony},
		{"5. Ng� Nh�n y", nhany},
		{"Trang K�", trangke},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end
	

function sadiphuc()
local szTitle =  AONAM_001.."T�ng y d�nh cho c�c ti�u Sa Di v�o nh�p m�n"
		local tbOpt =
	{
		{"Tr� v�",aonam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nguyenbachcasa()
local szTitle =  AONAM_002.."C�n g�i l� Th�t �i�u y, y ph�c c�a c�c t�ng nh�n ch�c v� cao"
		local tbOpt =
	{
		{"Tr� v�",aonam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thatbaocasa()
local szTitle =  AONAM_003.."L� Ph�t m�n chi b�o, do Ph�t T� t�ng cho ���ng Tam T�ng khi �i th�nh kinh"
		local tbOpt =
	{
		{"Tr� v�",aonam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function cony()
local szTitle =  AONAM_004.."�o d�nh cho c�c s�t th� c�p th�p nh�t �n gi�u th�n ph�n"
		local tbOpt =
	{
		{"Tr� v�",aonam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function nhany()
local szTitle =  AONAM_005.."Trang b� cho c�c s�t th� c�p cao."
		local tbOpt =
	{
		{"Tr� v�",aonam},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function trangke()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"6. Thi�n Nh�n M�t Trang", thiennhanmattrang},
		{"7. Th� B� tr��ng b�o", thobotruongbao},
		{"8. Ng�n T� B�o", ngantambao},
		{"9. Gi�ng Sa B�o", giangsabao},
		{"10. T�a T� gi�p", toatugiap},
		{"Trang Tr��c", xemtruocngoaitrang},
		{"Trang K�", trangke2},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thiennhanmattrang()
local szTitle =  AONAM_006.."T�p trung s�t kh� v� bi�n, g�p th�n gi�t th�n, g�p Ph�t gi�t Ph�t."
		local tbOpt =
	{
		{"Tr� v�",trangke},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function thobotruongbao()
local szTitle =  AONAM_007.."Do c�c lo�i v�i th� d�t th�nh"
		local tbOpt =
	{
		{"Tr� v�",trangke},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function ngantambao()
local szTitle =  AONAM_008.."D�ng T�m t� ph�i h�p v�i Ng�n t� ch� th�nh, c� kh� n�ng ph�ng ng� c�c t�t."
		local tbOpt =
	{
		{"Tr� v�",trangke},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function giangsabao()
local szTitle =  AONAM_009.."D�ng Gi�ng Sa ch� th�nh, d�ng cho c�c b�c �� v��ng, cao qu� kh� t�."
		local tbOpt =
	{
		{"Tr� v�",trangke},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function toatugiap()
local szTitle =  AONAM_010.."Trang b� cho nh�n s� t�t trong qu�n ��i, s�c ph�ng ng� k�m."
		local tbOpt =
	{
		{"Tr� v�",trangke},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end


function trangke2()
local szTitle =  "Thay ��i ngo�i trang gi�p c�c nh�n s� tr� n�n xinh ��p h�n, c�c b�n c� mu�n th� kh�ng n�o ? "
		local tbOpt =
	{
		{"11. S�n V�n T� gi�p", sonvantugiap},
		{"12. ���ng Ngh� gi�p", duongnghegiap},
		{"13. Lan B� y", lanbony},
		{"14. �o v�i th�", aovaitho},
		{"15. Huy�n Ho�ng �o�n gi�p", huyenhoangdoangiap},
		{"16. Tuy�n Long b�o", tuyenlongbao},
		{"Trang Tr��c", trangke},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function sonvantugiap()
local szTitle =  AONAM_011.."L� m�t m�nh �o gi�p. gi�a l�i, hai b�n l�m, c�ng d�ng ch�ng t�n."
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function duongnghegiap()
local szTitle =  AONAM_012.."truy�n thi�t ��y l� h� th�n b�o gi�p c�a L� �n H�u, l� h� ph�p c�c ph�m"
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function lanbony()
local szTitle =  AONAM_013.."l� th� v�i b�ng v� c�y, ch� m�c nh�ng l�c b�nh th��ng"
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function aovaitho()
local szTitle =  AONAM_014.."�o v�i th� s�, kh�ng ca t�n g�i"
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function huyenhoangdoangiap()
local szTitle =  AONAM_015.."B�n ngo�i l� �o, b�n trong th�c ch�t l� m�t �o gi�p, s�c ph�ng ng� c� h�n."
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end

function tuyenlongbao()
local szTitle =  AONAM_016.."Ph�i hao s�c c�a 100 ng��i th� r�n l�m trong m��i n�m"
		local tbOpt =
	{
		{"Tr� v�",trangke2},		
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	
	return 1				
end
-------------------------


--nId = pEventType:Reg("Ch��ng ��ng Cung N�", "Thay ��i Ngo�i Trang", tbFeatureNpc.Dialog,{tbFeatureNpc})
--pEventType:Reg("Ch��ng ��ng Cung N�", "Thay ��i Ngo�i Trang", platina_main);