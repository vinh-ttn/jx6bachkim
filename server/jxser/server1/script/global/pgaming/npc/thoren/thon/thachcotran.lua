Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
TIEJIANG_DIALOG = "<dec><npc>C�c lo�i �ao th��ng binh kh� ��y! ��y l� n�i mua v� kh� t�t nh�t � Th�ch C� Tr�n!"

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
	tiejiang_village();
end
end;

function yes()
Sale(25);  			
end;
