Include("\\script\\tagnewplayer\\tbitemHK.lua");

function dotim()	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"V�t ph�m h� tr�/khoangth",
		"M�t n�/manat",
		"Trang b� b�ch kim/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end
function khoangth()
local tab_Content = {
		"Huy�n tinh/huytin",
		"kho�ng th�ch/kdb",
		"S�t th� gi�n/stg",
		"Th�y tinh/thuyti",
		"Ph�c duy�n/phucd",
		"K�t th�c."
	}
	Say(" Mu�n l�y g� th� click ! ", getn(tab_Content), tab_Content);
end;

function huytin()
AddItem(6,1,147,1,0,0,0) 
AddItem(6,1,147,2,0,0,0) 
AddItem(6,1,147,3,0,0,0) 
AddItem(6,1,147,4,0,0,0) 
AddItem(6,1,147,5,0,0,0) 
AddItem(6,1,147,6,0,0,0) 
AddItem(6,1,147,7,0,0,0) 
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,9,0,0,0) 
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end


function stg()
AddItem(6,1,400,90,1,0,0) 
AddItem(6,1,400,90,2,0,0) 	
AddItem(6,1,400,90,3,0,0) 	
AddItem(6,1,400,90,4,0,0) 		
end

function thuyti()
AddEventItem(239) 
AddEventItem(240) 
AddEventItem(241) 		
end

function phucd()
AddItem(6,1,122,1,0,0,0)
AddItem(6,1,123,1,0,0,0) 
AddItem(6,1,124,1,0,0,0)
end
function bachkim()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end
function manat()	local tab_Content = {
		"M�t n� /hacthan",
		"M�t n� 1/matna1",
		"M�t n� 2/matna2",
		"M�t n� 3/matna3",
		"M�t n� 4/matna4",
		"M�t n� 5/matna5",
		"K�t th�c."
	}
	Say("Ch�n lo�i m�t n�", getn(tab_Content), tab_Content);
end;

function hacthan()
for i=3890,3894 do
AddGoldItem(0, i)
end
end
function matna1()
for i=4493,4523 do
AddGoldItem(0, i)
end
end
function matna2()
for i=4524,4554 do
AddGoldItem(0, i)
end
end
function matna3()
for i=4555,4585 do
AddGoldItem(0, i)
end
end
function matna4()
for i=4586,4616 do
AddGoldItem(0, i)
end
end
function matna5()
for i=4617,4630 do
AddGoldItem(0, i)
end
end
function dohoangkim()
local szTitle = "H� tr�i t�n th� - Test"
local tbOpt =
{
{"Trang B� Ho�ng Kim M�n Ph�i", hoangkimmpfull},
{"Trang B� Thanh C�u", thanhcau},
{"Trang B� V�n L�c", vanloc},
{"Trang B� Th��ng Lang", thuonglang},
{"Trang B� Huy�n Vi�n", huyenvien},
{"Trang B� T� M�ng", tumang},
{"Trang B� Kim �", kimo},
{"Trang B� B�ch H�", bachho},
{"Trang B� X�ch L�n", xichlan},
{"Trang B� Minh Ph��ng", minhphuong},
{"Trang B� ��ng Long", danglong},
{"Trang B� Tinh S��ng", tinhsuong},
{"Th�i ta kh�ng c�n"},
}
CreateNewSayEx(szTitle, tbOpt)
end

function setdoHS(n)
local s = n+10;
for i = n,  s do
AddGoldItem(0,i)
end
end

function tinhsuong()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#settinhsuong(1)",
"Thi�u L�m B�ng/#settinhsuong(2)",
"Thi�u L�m �ao/#settinhsuong(3)",
"Thi�n V��ng Ch�y/#settinhsuong(4)",
"Thi�n V��ng Th��ng/#settinhsuong(5)",
"Thi�n V��ng �ao/#settinhsuong(6)",
"Nga My Ki�m/#settinhsuong(7)",
"Nga My Ch��ng/#settinhsuong(8)",
"Th�y Y�n �ao/#settinhsuong(9)",
"Th�y Y�n Song �ao/#settinhsuong(10)",
"Ng� ��c Ch��ng/#settinhsuong(11)",
"Ng� ��c �ao/#settinhsuong(12)",
"���ng M�n Phi �ao/#settinhsuong(13)",
"���ng M�n N�/#settinhsuong(14)",
"Trang sau/tinhsuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tinhsuong2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#settinhsuong(15)",
"C�i Bang R�ng/#settinhsuong(16)",
"C�i Bang B�ng/#settinhsuong(17)",
"Thi�n Nh�n K�ch/#settinhsuong(18)",
"Thi�n Nh�n �ao/#settinhsuong(19)",
"V� �ang N�i C�ng/#settinhsuong(20)",
"V� �ang Ki�m/#settinhsuong(21)",
"C�n L�n �ao/#settinhsuong(22)",
"C�n L�n Ki�m/#settinhsuong(23)",
"Hoa S�n N�i C�ng/#setdoHS(5619)",
"Hoa S�n Ki�m/#setdoHS(5609)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function settinhsuong(nId)
for i = 5379, 5388 do
AddGoldItem(0,10*nId+i-10)
end
end

function thanhcau()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sethanhcau(1)",
"Thi�u L�m B�ng/#sethanhcau(2)",
"Thi�u L�m �ao/#sethanhcau(3)",
"Thi�n V��ng Ch�y/#sethanhcau(4)",
"Thi�n V��ng Th��ng/#sethanhcau(5)",
"Thi�n V��ng �ao/#sethanhcau(6)",
"Nga My Ki�m/#sethanhcau(7)",
"Nga My Ch��ng/#sethanhcau(8)",
"Th�y Y�n �ao/#sethanhcau(9)",
"Th�y Y�n Song �ao/#sethanhcau(10)",
"Ng� ��c Ch��ng/#sethanhcau(11)",
"Ng� ��c �ao/#sethanhcau(12)",
"���ng M�n Phi �ao/#sethanhcau(13)",
"���ng M�n N�/#sethanhcau(14)",
"Trang sau/thanhcau2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function thanhcau2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sethanhcau(15)",
"C�i Bang R�ng/#sethanhcau(16)",
"C�i Bang B�ng/#sethanhcau(17)",
"Thi�n Nh�n K�ch/#sethanhcau(18)",
"Thi�n Nh�n �ao/#sethanhcau(19)",
"V� �ang N�i C�ng/#sethanhcau(20)",
"V� �ang Ki�m/#sethanhcau(21)",
"C�n L�n �ao/#sethanhcau(22)",
"C�n L�n Ki�m/#sethanhcau(23)",
"Hoa S�n N�i C�ng/#setdoHS(4633)",
"Hoa S�n Ki�m/#setdoHS(4643)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sethanhcau(nId)
for i = 905, 914 do
AddGoldItem(0,10*nId+i-10)
end
end

function vanloc()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sevanloc(1)",
"Thi�u L�m B�ng/#sevanloc(2)",
"Thi�u L�m �ao/#sevanloc(3)",
"Thi�n V��ng Ch�y/#sevanloc(4)",
"Thi�n V��ng Th��ng/#sevanloc(5)",
"Thi�n V��ng �ao/#sevanloc(6)",
"Nga My Ki�m/#sevanloc(7)",
"Nga My Ch��ng/#sevanloc(8)",
"Th�y Y�n �ao/#sevanloc(9)",
"Th�y Y�n Song �ao/#sevanloc(10)",
"Ng� ��c Ch��ng/#sevanloc(11)",
"Ng� ��c �ao/#sevanloc(12)",
"���ng M�n Phi �ao/#sevanloc(13)",
"���ng M�n N�/#sevanloc(14)",
"Trang sau/vanloc2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function vanloc2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sevanloc(15)",
"C�i Bang R�ng/#sevanloc(16)",
"C�i Bang B�ng/#sevanloc(17)",
"Thi�n Nh�n K�ch/#sevanloc(18)",
"Thi�n Nh�n �ao/#sevanloc(19)",
"V� �ang N�i C�ng/#sevanloc(20)",
"V� �ang Ki�m/#sevanloc(21)",
"C�n L�n �ao/#sevanloc(22)",
"C�n L�n Ki�m/#sevanloc(23)",
"Hoa S�n N�i C�ng/#setdoHS(4653)",
"Hoa S�n Ki�m/#setdoHS(4663)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sevanloc(nId)
for i = 1135, 1144 do
AddGoldItem(0,10*nId+i-10)
end
end

function thuonglang()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sethuonglang(1)",
"Thi�u L�m B�ng/#sethuonglang(2)",
"Thi�u L�m �ao/#sethuonglang(3)",
"Thi�n V��ng Ch�y/#sethuonglang(4)",
"Thi�n V��ng Th��ng/#sethuonglang(5)",
"Thi�n V��ng �ao/#sethuonglang(6)",
"Nga My Ki�m/#sethuonglang(7)",
"Nga My Ch��ng/#sethuonglang(8)",
"Th�y Y�n �ao/#sethuonglang(9)",
"Th�y Y�n Song �ao/#sethuonglang(10)",
"Ng� ��c Ch��ng/#sethuonglang(11)",
"Ng� ��c �ao/#sethuonglang(12)",
"���ng M�n Phi �ao/#sethuonglang(13)",
"���ng M�n N�/#sethuonglang(14)",
"Trang sau/thuonglang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function thuonglang2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sethuonglang(15)",
"C�i Bang R�ng/#sethuonglang(16)",
"C�i Bang B�ng/#sethuonglang(17)",
"Thi�n Nh�n K�ch/#sethuonglang(18)",
"Thi�n Nh�n �ao/#sethuonglang(19)",
"V� �ang N�i C�ng/#sethuonglang(20)",
"V� �ang Ki�m/#sethuonglang(21)",
"C�n L�n �ao/#sethuonglang(22)",
"C�n L�n Ki�m/#sethuonglang(23)",
"Hoa S�n N�i C�ng/#setdoHS(4673)",
"Hoa S�n Ki�m/#setdoHS(4683)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sethuonglang(nId)
for i = 1365, 1374 do
AddGoldItem(0,10*nId+i-10)
end
end

function huyenvien()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sehuyenvien(1)",
"Thi�u L�m B�ng/#sehuyenvien(2)",
"Thi�u L�m �ao/#sehuyenvien(3)",
"Thi�n V��ng Ch�y/#sehuyenvien(4)",
"Thi�n V��ng Th��ng/#sehuyenvien(5)",
"Thi�n V��ng �ao/#sehuyenvien(6)",
"Nga My Ki�m/#sehuyenvien(7)",
"Nga My Ch��ng/#sehuyenvien(8)",
"Th�y Y�n �ao/#sehuyenvien(9)",
"Th�y Y�n Song �ao/#sehuyenvien(10)",
"Ng� ��c Ch��ng/#sehuyenvien(11)",
"Ng� ��c �ao/#sehuyenvien(12)",
"���ng M�n Phi �ao/#sehuyenvien(13)",
"���ng M�n N�/#sehuyenvien(14)",
"Trang sau/huyenvien2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function huyenvien2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sehuyenvien(15)",
"C�i Bang R�ng/#sehuyenvien(16)",
"C�i Bang B�ng/#sehuyenvien(17)",
"Thi�n Nh�n K�ch/#sehuyenvien(18)",
"Thi�n Nh�n �ao/#sehuyenvien(19)",
"V� �ang N�i C�ng/#sehuyenvien(20)",
"V� �ang Ki�m/#sehuyenvien(21)",
"C�n L�n �ao/#sehuyenvien(22)",
"C�n L�n Ki�m/#sehuyenvien(23)",
"Hoa S�n N�i C�ng/#setdoHS(4693)",
"Hoa S�n Ki�m/#setdoHS(4703)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sehuyenvien(nId)
for i = 1595, 1604 do
AddGoldItem(0,10*nId+i-10)
end
end

function xichlan()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sexichlan(1)",
"Thi�u L�m B�ng/#sexichlan(2)",
"Thi�u L�m �ao/#sexichlan(3)",
"Thi�n V��ng Ch�y/#sexichlan(4)",
"Thi�n V��ng Th��ng/#sexichlan(5)",
"Thi�n V��ng �ao/#sexichlan(6)",
"Nga My Ki�m/#sexichlan(7)",
"Nga My Ch��ng/#sexichlan(8)",
"Th�y Y�n �ao/#sexichlan(9)",
"Th�y Y�n Song �ao/#sexichlan(10)",
"Ng� ��c Ch��ng/#sexichlan(11)",
"Ng� ��c �ao/#sexichlan(12)",
"���ng M�n Phi �ao/#sexichlan(13)",
"���ng M�n N�/#sexichlan(14)",
"Trang sau/xichlan2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function xichlan2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sexichlan(15)",
"C�i Bang R�ng/#sexichlan(16)",
"C�i Bang B�ng/#sexichlan(17)",
"Thi�n Nh�n K�ch/#sexichlan(18)",
"Thi�n Nh�n �ao/#sexichlan(19)",
"V� �ang N�i C�ng/#sexichlan(20)",
"V� �ang Ki�m/#sexichlan(21)",
"C�n L�n �ao/#sexichlan(22)",
"C�n L�n Ki�m/#sexichlan(23)",
"Hoa S�n N�i C�ng/#setdoHS(4783)",
"Hoa S�n Ki�m/#setdoHS(4773)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sexichlan(nId)
for i = 2515, 2524 do
AddGoldItem(0,10*nId+i-10)
end
end

function minhphuong()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#seminhphuong(1)",
"Thi�u L�m B�ng/#seminhphuong(2)",
"Thi�u L�m �ao/#seminhphuong(3)",
"Thi�n V��ng Ch�y/#seminhphuong(4)",
"Thi�n V��ng Th��ng/#seminhphuong(5)",
"Thi�n V��ng �ao/#seminhphuong(6)",
"Nga My Ki�m/#seminhphuong(7)",
"Nga My Ch��ng/#seminhphuong(8)",
"Th�y Y�n �ao/#seminhphuong(9)",
"Th�y Y�n Song �ao/#seminhphuong(10)",
"Ng� ��c Ch��ng/#seminhphuong(11)",
"Ng� ��c �ao/#seminhphuong(12)",
"���ng M�n Phi �ao/#seminhphuong(13)",
"���ng M�n N�/#seminhphuong(14)",
"Trang sau/minhphuong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function minhphuong2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#seminhphuong(15)",
"C�i Bang R�ng/#seminhphuong(16)",
"C�i Bang B�ng/#seminhphuong(17)",
"Thi�n Nh�n K�ch/#seminhphuong(18)",
"Thi�n Nh�n �ao/#seminhphuong(19)",
"V� �ang N�i C�ng/#seminhphuong(20)",
"V� �ang Ki�m/#seminhphuong(21)",
"C�n L�n �ao/#seminhphuong(22)",
"C�n L�n Ki�m/#seminhphuong(23)",
"Hoa S�n N�i C�ng/#setdoHS(4803)",
"Hoa S�n Ki�m/#setdoHS(4793)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function seminhphuong(nId)
for i = 2745, 2754 do
AddGoldItem(0,10*nId+i-10)
end
end

function danglong()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sedanglong(1)",
"Thi�u L�m B�ng/#sedanglong(2)",
"Thi�u L�m �ao/#sedanglong(3)",
"Thi�n V��ng Ch�y/#sedanglong(4)",
"Thi�n V��ng Th��ng/#sedanglong(5)",
"Thi�n V��ng �ao/#sedanglong(6)",
"Nga My Ki�m/#sedanglong(7)",
"Nga My Ch��ng/#sedanglong(8)",
"Th�y Y�n �ao/#sedanglong(9)",
"Th�y Y�n Song �ao/#sedanglong(10)",
"Ng� ��c Ch��ng/#sedanglong(11)",
"Ng� ��c �ao/#sedanglong(12)",
"���ng M�n Phi �ao/#sedanglong(13)",
"���ng M�n N�/#sedanglong(14)",
"Trang sau/danglong2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function danglong2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sedanglong(15)",
"C�i Bang R�ng/#sedanglong(16)",
"C�i Bang B�ng/#sedanglong(17)",
"Thi�n Nh�n K�ch/#sedanglong(18)",
"Thi�n Nh�n �ao/#sedanglong(19)",
"V� �ang N�i C�ng/#sedanglong(20)",
"V� �ang Ki�m/#sedanglong(21)",
"C�n L�n �ao/#sedanglong(22)",
"C�n L�n Ki�m/#sedanglong(23)",
"Hoa S�n N�i C�ng/#setdoHS(4823)",
"Hoa S�n Ki�m/#setdoHS(4813)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sedanglong(nId)
for i = 2975, 2984 do
AddGoldItem(0,10*nId+i-10)
end
end

function bachho()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sebachho(1)",
"Thi�u L�m B�ng/#sebachho(2)",
"Thi�u L�m �ao/#sebachho(3)",
"Thi�n V��ng Ch�y/#sebachho(4)",
"Thi�n V��ng Th��ng/#sebachho(5)",
"Thi�n V��ng �ao/#sebachho(6)",
"Nga My Ki�m/#sebachho(7)",
"Nga My Ch��ng/#sebachho(8)",
"Th�y Y�n �ao/#sebachho(9)",
"Th�y Y�n Song �ao/#sebachho(10)",
"Ng� ��c Ch��ng/#sebachho(11)",
"Ng� ��c �ao/#sebachho(12)",
"���ng M�n Phi �ao/#sebachho(13)",
"���ng M�n N�/#sebachho(14)",
"Trang sau/bachho2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function bachho2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sebachho(15)",
"C�i Bang R�ng/#sebachho(16)",
"C�i Bang B�ng/#sebachho(17)",
"Thi�n Nh�n K�ch/#sebachho(18)",
"Thi�n Nh�n �ao/#sebachho(19)",
"V� �ang N�i C�ng/#sebachho(20)",
"V� �ang Ki�m/#sebachho(21)",
"C�n L�n �ao/#sebachho(22)",
"C�n L�n Ki�m/#sebachho(23)",
"Hoa S�n N�i C�ng/#setdoHS(4763)",
"Hoa S�n Ki�m/#setdoHS(4753)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sebachho(nId)
for i = 2285, 2294 do
AddGoldItem(0,10*nId+i-10)
end
end
function kimo()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#sekimo(1)",
"Thi�u L�m B�ng/#sekimo(2)",
"Thi�u L�m �ao/#sekimo(3)",
"Thi�n V��ng Ch�y/#sekimo(4)",
"Thi�n V��ng Th��ng/#sekimo(5)",
"Thi�n V��ng �ao/#sekimo(6)",
"Nga My Ki�m/#sekimo(7)",
"Nga My Ch��ng/#sekimo(8)",
"Th�y Y�n �ao/#sekimo(9)",
"Th�y Y�n Song �ao/#sekimo(10)",
"Ng� ��c Ch��ng/#sekimo(11)",
"Ng� ��c �ao/#sekimo(12)",
"���ng M�n Phi �ao/#sekimo(13)",
"���ng M�n N�/#sekimo(14)",
"Trang sau/kimo2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function kimo2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#sekimo(15)",
"C�i Bang R�ng/#sekimo(16)",
"C�i Bang B�ng/#sekimo(17)",
"Thi�n Nh�n K�ch/#sekimo(18)",
"Thi�n Nh�n �ao/#sekimo(19)",
"V� �ang N�i C�ng/#sekimo(20)",
"V� �ang Ki�m/#sekimo(21)",
"C�n L�n �ao/#sekimo(22)",
"C�n L�n Ki�m/#sekimo(23)",
"Hoa S�n N�i C�ng/#setdoHS(4743)",
"Hoa S�n Ki�m/#setdoHS(4733)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end

function sekimo(nId)
for i = 2055, 2064 do
AddGoldItem(0,10*nId+i-10)
end
end

function tumang()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#setumang(1)",
"Thi�u L�m B�ng/#setumang(2)",
"Thi�u L�m �ao/#setumang(3)",
"Thi�n V��ng Ch�y/#setumang(4)",
"Thi�n V��ng Th��ng/#setumang(5)",
"Thi�n V��ng �ao/#setumang(6)",
"Nga My Ki�m/#setumang(7)",
"Nga My Ch��ng/#setumang(8)",
"Th�y Y�n �ao/#setumang(9)",
"Th�y Y�n Song �ao/#setumang(10)",
"Ng� ��c Ch��ng/#setumang(11)",
"Ng� ��c �ao/#setumang(12)",
"���ng M�n Phi �ao/#setumang(13)",
"���ng M�n N�/#setumang(14)",
"Trang sau/tumang2",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function tumang2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#setumang(15)",
"C�i Bang R�ng/#setumang(16)",
"C�i Bang B�ng/#setumang(17)",
"Thi�n Nh�n K�ch/#setumang(18)",
"Thi�n Nh�n �ao/#setumang(19)",
"V� �ang N�i C�ng/#setumang(20)",
"V� �ang Ki�m/#setumang(21)",
"C�n L�n �ao/#setumang(22)",
"C�n L�n Ki�m/#setumang(23)",
"Hoa S�n N�i C�ng/#setdoHS(4723)",
"Hoa S�n Ki�m/#setdoHS(4713)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>,  h�y l�a chon M�n Ph�i", getn(tab_Content), tab_Content);
end
function setumang(nId)
for i = 1825, 1834 do
AddGoldItem(0,10*nId+i-10)
end
end

function cucpham()
	local tab_Content = {
		--"Set Ho�ng Kim M�n Ph�i /sethkmp",
		--"Set Xich L�n /setxl",
		--"Set C�c Ph�m ��ng S�t /cpds",
		"M�t N� GM /matnagm",
		--"Set Minh Ph��ng /setmp",
		--"Set Song Long /setsonglo",
		"Phi Phong /phip",
		"Trang S�c /trangs",
		"Kim �n /kiman",
		"T�ng H�p /tongh",
		"L�y 100 ti?n ��ng /tiendong",
		"L�y 1000v l��ng /tienvan",
		"M�c b�c th�o nguy�n l�nh /macblb",
		"Th�i kh�ng l�y g� n�a h?t."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;

function macblb()
AddItem(6,1,1448,1,0,0)
end
function kiman()
		AddGoldItem(0,3214)
		AddGoldItem(0,3224)
		AddGoldItem(0,3234)
end
function tongh()
		AddGoldItem(0,3506)
		AddGoldItem(0,3530)
		AddGoldItem(0,3541)
		AddGoldItem(0,3880)
		AddGoldItem(0,3881)
		AddGoldItem(0,3882)
		AddGoldItem(0,3883)
		AddGoldItem(0,3884)
		AddGoldItem(0,3885)
		AddGoldItem(0,3886)
		AddGoldItem(0,3887)
		AddGoldItem(0,3888)
end

function phip()
		AddGoldItem(0,3466)
		AddGoldItem(0,3467)
		AddGoldItem(0,3468)
		AddGoldItem(0,3469)
		AddGoldItem(0,3470)
		AddGoldItem(0,3471)
		AddGoldItem(0,3472)
		AddGoldItem(0,3473)
		AddGoldItem(0,3474)
		AddGoldItem(0,3475)
		AddGoldItem(0,3476)
		AddGoldItem(0,3477)
		AddGoldItem(0,3478)
		AddGoldItem(0,3479)
		AddGoldItem(0,3480)
		AddGoldItem(0,3481)
		AddGoldItem(0,3482)
		AddGoldItem(0,3483)
		AddGoldItem(0,3484)
		AddGoldItem(0,3485)
		AddGoldItem(0,3486)
		AddGoldItem(0,3487)
		AddGoldItem(0,3488)
		AddGoldItem(0,3489)
		AddGoldItem(0,3490)
end

function trangs()
		AddGoldItem(0,3507)
		AddGoldItem(0,3508)
		AddGoldItem(0,3509)
		AddGoldItem(0,3510)
		AddGoldItem(0,3511)
		AddGoldItem(0,3512)
		AddGoldItem(0,3513)
		AddGoldItem(0,3514)
		AddGoldItem(0,3515)
		AddGoldItem(0,3516)
		AddGoldItem(0,3517)
		AddGoldItem(0,3518)
		AddGoldItem(0,3519)
		AddGoldItem(0,3520)
end

function matnagm()
--AddItem(0,11,2,1,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,367,0,10,10,10,10,10,10,10,gio,day,month,nam)
AddItem(0,11,0,368,0,10,10,10,10,10,10,10,gio,day,month,nam)
end



function cpds()
AddGoldItem(0,494)
AddGoldItem(0,495)
AddGoldItem(0,496)
AddGoldItem(0,497)
end



function setsonglo()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi?u L�m quy?n/#setsonglo1(1)",
		"Thi?u L�m c�n/#setsonglo1(2)",
		"Thi?u L�m �ao/#setsonglo1(3)",
		"Thi�n V��ng ch�y/#setsonglo1(4)",
		"Thi�n V��ng th��ng/#setsonglo1(5)",
		"Thi�n V��ng �ao/#setsonglo1(6)",
		"Nga My ki?m/#setsonglo1(7)",
		"Nga My ch��ng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Th�y Y�n �ao/#setsonglo1(10)",
		"Th�y Y�n song �ao/#setsonglo1(11)",
		"Ng? ��c ch��ng/#setsonglo1(12)",
		"Ng? ��c �ao/#setsonglo1(13)",
		"Ng? ��c b�a/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#setsonglo1(15)",
		"���ng M�n t� ti�n/#setsonglo1(16)",
		"���ng M�n phi ti�u/#setsonglo1(17)",
		"���ng M�n b�y/#setsonglo1(18)",
		"C�i Bang r�ng/#setsonglo1(19)",
		"C�i Bang b�ng/#setsonglo1(20)",
		"Thi�n Nh�n k?ch/#setsonglo1(21)",
		"Thi�n Nh�n �ao/#setsonglo1(22)",
		"Thi�n Nh�n b�a/#setsonglo1(23)",
		"V� �ang kh? /#setsonglo1(24)",
		"V� �ang ki?m/#setsonglo1(25)",
		"C�n L�n �ao/#setsonglo1(26)",
		"C�n L�n ki?m/#setsonglo1(27)",
		"C�n L�n b�a/#setsonglo1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end


function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi?u L�m quy?n/#sethkmp1(1)",
		"Thi?u L�m c�n/#sethkmp1(2)",
		"Thi?u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki?m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng? ��c ch��ng/#sethkmp1(12)",
		"Ng? ��c �ao/#sethkmp1(13)",
		"Ng? ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k?ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang kh? /#sethkmp1(24)",
		"V� �ang ki?m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki?m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function setxl()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#setxl1(1)",
"Thi�u L�m B�ng/#setxl1(2)",
"Thi�u L�m �ao/#setxl1(3)",
"Thi�n V��ng Ch�y/#setxl1(4)",
"Thi�n V��ng Th��ng/#setxl1(5)",
"Thi�n V��ng �ao/#setxl1(6)",
"Nga My Ki�m/#setxl1(7)",
"Nga My Ch��ng/#setxl1(8)",
"Th�y Y�n �ao/#setxl1(9)",
"Th�y Y�n Song �ao/#setxl1(10)",
"Ng� ��c Ch��ng/#setxl1(11)",
"Ng� ��c �ao/#setxl1(12)",
"���ng M�n Phi �ao/#setxl1(13)",
"���ng M�n N�/#setxl1(14)",
"Trang sau/setxl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#setxl1(15)",
"C�i Bang R�ng/#setxl1(16)",
"C�i Bang B�ng/#setxl1(17)",
"Thi�n Nh�n K�ch/#setxl1(18)",
"Thi�n Nh�n �ao/#setxl1(19)",
"V� �ang N�i C�ng/#setxl1(20)",
"V� �ang Ki�m/#setxl1(21)",
"C�n L�n �ao/#setxl1(22)",
"C�n L�n Ki�m/#setxl1(23)",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end

function setmp()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"Thi�u L�m Quy�n/#setmp1(1)",
"Thi�u L�m B�ng/#setmp1(2)",
"Thi�u L�m �ao/#setmp1(3)",
"Thi�n V��ng Ch�y/#setmp1(4)",
"Thi�n V��ng Th��ng/#setmp1(5)",
"Thi�n V��ng �ao/#setmp1(6)",
"Nga My Ki�m/#setmp1(7)",
"Nga My Ch��ng/#setmp1(8)",
"Th�y Y�n �ao/#setmp1(9)",
"Th�y Y�n Song �ao/#setmp1(10)",
"Ng� ��c Ch��ng/#setmp1(11)",
"Ng� ��c �ao/#setmp1(12)",
"���ng M�n Phi �ao/#setmp1(13)",
"���ng M�n N�/#setmp1(14)",
"Trang sau/setmp2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
"Th�i ta kh�ng c�n/no",
"���ng M�n Phi Ti�u/#setmp1(15)",
"C�i Bang R�ng/#setmp1(16)",
"C�i Bang B�ng/#setmp1(17)",
"Thi�n Nh�n K�ch/#setmp1(18)",
"Thi�n Nh�n �ao/#setmp1(19)",
"V� �ang N�i C�ng/#setmp1(20)",
"V� �ang Ki�m/#setmp1(21)",
"C�n L�n �ao/#setmp1(22)",
"C�n L�n Ki�m/#setmp1(23)",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end

function tienvan()
	Earn(1000000000)	
end;

function tiendong()
	
	AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong




end;
function hoangkimmpfull()
	local strFaction = GetFaction()
	if (tbItemHK[strFaction] == nil) then
		Talk(1, "", "C�c h� v�n ch�a gia nh�p m�n ph�i!");
		return
	end
	local tbOpp = {}
	local str = "<#> Ta cho ph�p ��i hi�p ch�n 1 trong nh�ng trang b� Ho�ng Kim M�n Ph�i ";
	if strFaction=="shaolin" then
	tinsert(tbOpp,"M�ng Long/#AddHoangKim(2,6)")
	tinsert(tbOpp,"T� Kh�ng/#AddHoangKim(12,16)")
	tinsert(tbOpp,"Ph�c Ma /#AddHoangKim(7,11)")
	elseif strFaction=="tianwang" then
	tinsert(tbOpp,"H�m Thi�n/#AddHoangKim(17,21)")
	tinsert(tbOpp,"K� Nghi�p/#AddHoangKim(22,26)")
	tinsert(tbOpp,"Ng� Long/#AddHoangKim(27,31)")
	elseif strFaction=="tangmen" then
	tinsert(tbOpp,"B�ng H�n  /#AddHoangKim(72,76)")
	tinsert(tbOpp,"Thi�n Quang/#AddHoangKim(77,81)")
	tinsert(tbOpp,"S�m Hoang/#AddHoangKim(82,86)")
	tinsert(tbOpp,"��a Ph�ch/#AddHoangKim(87,91)")
	elseif strFaction=="wudu" then
	tinsert(tbOpp,"Minh �o/#AddHoangKim(62,66)")
	tinsert(tbOpp,"U Lung/#AddHoangKim(57,61)")
	tinsert(tbOpp,"Ch� Ph��c/#AddHoangKim(67,71)")
	elseif strFaction=="emei" then
	tinsert(tbOpp,"V� Gian/#AddHoangKim(32,36)")
	tinsert(tbOpp,"V� Ma /#AddHoangKim(37,41)")
	tinsert(tbOpp,"V� Tr�n/#AddHoangKim(42,46)")
	elseif strFaction=="cuiyan" then
	tinsert(tbOpp,"T� Ho�ng/#AddHoangKim(47,51)")
	tinsert(tbOpp,"B�ch H�i  /#AddHoangKim(52,56)")
	elseif strFaction=="gaibang" then
	tinsert(tbOpp,"��ng C�u/#AddHoangKim(92,96)")
	tinsert(tbOpp,"��ch Kh�i  /#AddHoangKim(97,101)")
	elseif strFaction=="tianren" then
	tinsert(tbOpp,"Ma S�t/#AddHoangKim(102,106)")
	tinsert(tbOpp,"Ma Ho�ng /#AddHoangKim(107,111)")
	tinsert(tbOpp,"Ma Th� /#AddHoangKim(112,116)")
	elseif strFaction=="wudang" then
	tinsert(tbOpp,"L�ng Nh�c/#AddHoangKim(117,121)")
	tinsert(tbOpp,"C�p Phong  /#AddHoangKim(122,126)")
	elseif strFaction=="kunlun" then
	tinsert(tbOpp,"S��ng Tinh/#AddHoangKim(127,131)")
	tinsert(tbOpp,"L�i Khung /#AddHoangKim(132,136)")
	tinsert(tbOpp,"V� �o  /#AddHoangKim(137,141)")
	end
	Say( str, getn( tbOpp ), tbOpp )
end

function AddHoangKim(x,y)
	if CalcFreeItemCellCount() < 30 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	for i=(x-1),(y-1) do
			AddGoldItem(0, i);
	end
end