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
	Say("<color=green>Hi�u thu�c<color>: Tuy n�i n�y l� c�c B�c nh�ng c�ng c� nh�ng lo�i d��c qu� hi�m do thi�n nhi�n ban t�ng, l�n n�y ta ph�i ki�m l�i ch�t ��nh, v� kh�ch quan n�y anh mu�n mua g�?"..Note("hieuthuoc_macbacthaonguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end
end

function yes()
	Sale(100);
end;