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
	Uworld38 = GetByte(GetTask(38),2)
	if (GetFaction() == "shaolin") or (Uworld38 == 127) then
		Say("Tuy n�i v� c�ng b�n ph�i t�ng c��ng s�c kh�e, nh�ng c�ng c� l�c l�m b�nh, n�n c�ng c�n c�c lo�i thu�c men.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Ch��ng m�n c� l�nh, thu�c c�a b�n ph�i ch� b�n cho ��ng m�n")
	end
end
end;

function yes()
Sale(71)
end;

function no()
end;
