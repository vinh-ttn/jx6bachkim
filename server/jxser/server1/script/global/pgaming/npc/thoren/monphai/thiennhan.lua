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
	Uworld30 = GetByte(GetTask(30),1)
	if (GetFaction() == "tianren") or (Uworld30 == 127) then
		Say("Lo�i v� kh� n�y ��u do th� r�n gi�i nh�t Kim qu�c l�m ra, ��u l� h�ng t�t.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");
	else
		Talk(1,"","Gi�o ch� c� l�nh, v� kh� c�a b�n gi�o ch� b�n cho c�c �� t� trung th�nh.")
	end
end
end;

function yes()
Sale(60)
end;

function no()
end;
