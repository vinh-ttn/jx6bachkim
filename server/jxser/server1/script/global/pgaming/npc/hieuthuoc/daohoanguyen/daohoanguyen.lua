Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include("\\script\\lib\\alonelib.lua");

function main(sel)
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao D�ch",scripthieuthuocall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua thu�c g�?<color>", tbOpt)
else
	Say("<color=green>Hi�u thu�c<color>: M��i d�m quanh ��y ch� c� m�i d��c �i�m c�a b�n ti�m th�i! Nh�ng b�o ��m kh�ch quan s� v�a �!"..Note("hieuthuoc_daohoanguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end
end;


function yes()
	Sale(42);  			
end;


function no()
end;







