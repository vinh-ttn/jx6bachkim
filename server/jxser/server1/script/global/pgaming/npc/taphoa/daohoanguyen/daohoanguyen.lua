Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")
Include("\\script\\lib\\alonelib.lua");

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
	Say("<color=green>T�p h�a<color>: Ti�m tuy nh� nh�ng th� g� c�ng c�! Kh�ch quan mu�n mua g�?"..Note("taphoa_daohoanguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end
end;

function yes()
	Sale(41);  			--�������׿�
end;

function no()
end;







