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
Say("Ng��i h�nh t�u giang h� ��u c�n ph�i c� m�t con ng�a t�t, con ng�a c�a ta tuy kh�ng ph�i l� danh c�u nh�ng s�c ch�u ��ng c�a n� th�t kinh ng��i, t�nh n� l�i �n ho�, m� gi� ti�n c�ng kh�ng ��t l�m.", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");
end
end;


function yes()
Sale(49);  			
end;


function no()
end;