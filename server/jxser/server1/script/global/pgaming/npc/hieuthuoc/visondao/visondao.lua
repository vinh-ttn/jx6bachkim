Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include("\\script\\lib\\alonelib.lua");

function main()
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
	Say("<color=green>Hi�u thu�c<color>: Vi S�n ��o l� n�i d� ra kh� v�o. N�u mu�n s�ng l�u h�n tr�n ��, h�y mua m�t �t thu�c c�a ta �i!"..Note("hieuthuoc_visondao"), 2, "Giao d�ch/yes", NOTTRADE)
end
end

function yes()
	Sale(100);
end