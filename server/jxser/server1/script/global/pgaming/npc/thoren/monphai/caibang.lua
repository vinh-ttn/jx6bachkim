Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao D�ch",scriptthorenall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
else
	Uworld30 = GetByte(GetTask(30),2)
	if (GetFaction() == "gaibang") or (Uworld30 == 127) then
		Say("�� c�u B�ng c�a b�n bang �� vang danh thi�n h�. T�t c� c�c lo�i binh kh� c�n, roi, d�y� � d�y ��u c� ��y �� c� ", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Bang ch� c� l�nh: Binh kh� c�a b�n m�n kh�ng ���c b�n cho ng��i ngo�i")
	end
end
end

function yes()
	Sale(72)
end;

function no()
end;
