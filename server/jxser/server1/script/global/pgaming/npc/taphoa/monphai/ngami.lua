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
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("Qu�n �o gi�y n�n n�y l� do c�c t� mu�i c�a b�n m�n l�m ra. R�t th�ch h�p cho t� mu�i Nga Mi ph�i", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Ch��ng m�n c� l�nh: trang b� m�n ph�i ch� b�n cho t� mu�i ��ng m�n!")
	end
end
end

function yes()
Sale(52)
end;

function no()
end;
