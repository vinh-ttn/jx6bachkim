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
	Say("Kh�ch quan c�n g�? Hi�n gi� th� ��o h�n lo�n s�ng ���c qua ng�y th�t kh�ng d�, ti�m ta th� g� c�ng r�, mu�n mua th� g�?", getn(Buttons), Buttons);
end
end;


function yes()
Sale(8);  			
end;

function BuyChristmasCard()
	Sale(97);
end


function no()
end;


