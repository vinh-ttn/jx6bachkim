Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
TIEJIANG_DIALOG = "<dec><npc>Vi�c bu�n b�n � ��y r�t thu�n l�i, ��n ngay c� c�c huynh �� c�a Thi�n V��ng Bang th��ng ��n ��y nh� ta ch� t�o binh kh�."..Note("thoren_balanghuyen");

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
	tiejiang_village()
end
end;


function yes()
Sale(37);  			
end;
