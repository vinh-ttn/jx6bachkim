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
Say("Ng�a c�a ta ��u l� gi�ng th��ng ��ng mang t� M�ng C� v�! Ng�y �i ng�n d�m kh�ng c�n ngh�! Ai c� duy�n m�i mua ���c", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");
end
end;


function yes()
Sale(47);  			
end;


function no()
end;
