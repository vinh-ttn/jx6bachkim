Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
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
	Say("<color=green>Hi�u thu�c<color>: Thu�c c�a b�n ti�m to�n l� th� th��ng h�ng, c� b�nh tr� b�nh, kh�ng b�nh c��ng th�n, c� mu�n mua m�t �t kh�ng?"..Note("hieuthuoc_namnhactran"), 2, "Giao d�ch/yes", NOTTRADE);
end
end;

function yes()
	Sale(36);  			
end;

function no()
end;







