Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")
function main(sel)
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao D�ch",scripttaphoaall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
else
	local Buttons = store_sel_extend();
	Say("���ng th�y D��ng Ch�u c�a ch�ng ta th�ng ra b�n ng�, l� n�i c� �� h�ng h�a t� Nam t�i B�c, v� th� v�t ph�m ch�ng t�i c� �� ��ng T�y Nam B�c, th� g� c�ng c�, mua m�t �t g� �i?", getn(Buttons), Buttons);
end
end;


function yes()
Sale(5);  		
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;





