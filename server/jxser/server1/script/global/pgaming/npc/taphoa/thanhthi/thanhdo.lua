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
	UTask_em = GetTask(1);
	UTask_tm = GetTask(2);
	if (UTask_em == 30*256+50) then 		
		Say("��i g� n��ng c�n n�ng h�i v�a m�i l�y trong b�p. 50 l��ng b�c m�t c�i, c� mu�n l�y kh�ng?", 3, "Ta mu�n mua m�t c�i ��i g�. /chicken", "Ta mu�n mua h�ng h�a kh�c /yes", "Kh�ng giao d�ch/no")
	elseif ((UTask_em == 40*256+50) and (GetByte(GetTask(29),1) == 1)) then		
		Say("C� lo�i tr�m b�c ki�u m�i nh�t, ��t h�ng l�m, ch� c� 200 l��ng b�c, r� l�m sao, mua m�t c�y nh�!", 3, "Mua Ng�n Tr�m /hairpin", "Mua h�ng ho� kh�c /yes", "Kh�ng giao d�ch/no")
	elseif (UTask_tm == 10*256+40) then		
		Say("Chi�c nh�n m� n�o n�y r�t ��p, 500 l��ng b�c m�t chi�c. Kh�ng mua s� h�i h�n!", 3, "Mua nh�n M� n�o. /ring", "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		local Buttons = store_sel_extend();
		Say("� ��y ta b�n �� ch�ng lo�i h�ng h�a,xin h�y ch�n l�a, xem c� g� d�ng ���c kh�ng?", getn(Buttons), Buttons);
	end
end
end;

function chicken()
	if (GetCash() >= 50) then
		Pay(50)
		AddEventItem(119)
		Msg2Player("Mua ���c ��i g�. ")
		AddNote("Mua ���c ��i g� � ti�m t�p ho� Th�nh �� ")
	else
		Say("C� �� ti�n r�i h�y ��n mua �i, h�y xem nh�ng m�n h�ng kh�c tr��c �i.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;

function hairpin()
	if (GetCash() >= 200) then
		Pay(200)
		AddEventItem(63)
		Msg2Player("Mua ���c Ng�n Tr�m ")
		AddNote("Mua ���c Ng�n Tr�m � ti�m t�p h�a Th�nh �� ")
	else
		Say("C� �� ti�n r�i h�y ��n mua �i, h�y xem nh�ng m�n h�ng kh�c tr��c �i.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;


function ring()
	if (GetCash() >= 500) then
		Pay(500)
		AddEventItem(165)
		Msg2Player("Mua ���c chi�c nh�n M� n�o ")
		AddNote("Mua ���c chi�c nh�n M� n�o � ti�m t�p ho� Th�nh �� ")
	else
		Say("C� �� ti�n r�i h�y ��n mua �i, h�y xem nh�ng m�n h�ng kh�c tr��c �i.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")		
	end
end;

function yes()
Sale(14);  		
end;

function BuyChristmasCard()
	Sale(97);
end

function no()
end;
