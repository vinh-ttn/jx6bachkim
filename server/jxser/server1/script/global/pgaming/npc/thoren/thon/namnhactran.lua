Include("\\script\\lib\\alonelib.lua");
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
	Say("<color=green>Th� r�n<color>: Ng��i trong giang h� sao kh�ng c� c�y ki�m b�n m�nh ���c? � ��y ch�ng ta c� �� c�c lo�i binh kh� t�t nh�t, anh t� t� ch�n."..Note("thoren_namnhactran"), 2, "Giao d�ch/yes", NOTTRADE);
end
end;

function yes()
	Sale(34);  			
end






