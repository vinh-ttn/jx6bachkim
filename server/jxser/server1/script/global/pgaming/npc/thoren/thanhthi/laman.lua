Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>Gian h�ng th� r�n n�y l� do �ng t� ta truy�n l�i, t�i L�m An n�y kh�ng ng��i n�o kh�ng bi�t, xin h�i ��i hi�p mu�n mua m�n �� n�o?";
function main()
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
	tiejiang_city(TIEJIANG_DIALOG..Note("thoren_laman"));
end
end;


function yes()
	Sale(1);
end;

