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
	Uworld36 = GetByte(GetTask(36),2)
	if (GetFaction() == "cuiyan") or (Uworld36 == 127) then
		Say("Trang b� c�ng nhi�u d��c li�u qu� th� c�ng c� �ch", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","M�n ch� c� l�nh, D��c li�u c�a b�n m�n ch� d�nh cho t� mu�i ��ng m�n.")
	end
end
end;

function yes()
Sale(68)
end;

function no()
end;
