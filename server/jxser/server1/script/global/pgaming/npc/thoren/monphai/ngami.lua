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
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("�� t� b�n ph�i ��u l� n� nhi m�m y�u, v� th� �a s� c�c lo�i binh �ao ��u nh� nh�ng linh ho�t", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Ch��ng m�n c� l�nh: binh kh� m�n ph�i ch� b�n cho t� mu�i ��ng m�n!")
	end
end
end;

function yes()
Sale(51)
end;

function no()
end;
