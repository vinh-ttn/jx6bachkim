Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\banngua\\allbanngua.lua")

function main(sel)
if TatNPCBanNguaAllThanh == 1 and ScriptBanNgua ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCBanNguaAllThanh == 1 and ScriptBanNgua == 1 then
	local tbOpt = {
		{"Giao D�ch",scriptbannguaall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua thu�c g�?<color>", tbOpt)
else
Say("Anh h�ng c�n ph�i c� ng�a t�t! Kh�ch quan ch�n m�t con �i!", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");
end
end;


function yes()
Sale(44);  			--�������׿�
end;


function no()
end;






