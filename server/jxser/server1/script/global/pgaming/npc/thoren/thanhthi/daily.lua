Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>Ti�m th� r�n c�a ta do nh� h�c v� ch� t�o v� kh� l�p n�n, �ao ki�m c�n th��ng k�ch, m��i t�m lo�i binh kh� �� c�, ��i hi�p mu�n mua lo�i n�o?"

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
	tiejiang_city(TIEJIANG_DIALOG);
end
end;

function yes()
	Sale(16);  				
end;

