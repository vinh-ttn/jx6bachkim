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
	Uworld37 = GetByte(GetTask(37),2)
	if (GetFaction() == "wudu") or (Uworld37 == 127) then
		Say("Ch�ng ta ��ng qu� quan tr�ng v� nh�ng th� n�y. Trang b� t�i th��ng nh�t ch�nh l� s� �ng ph� linh ho�t.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Gi�o ch� c� l�nh: trang b� c�a m�n ph�i kh�ng ���c b�n cho ng��i ngo�i")
	end
end
end;

function yes()
	Sale(79)
end;

function no()
end;
