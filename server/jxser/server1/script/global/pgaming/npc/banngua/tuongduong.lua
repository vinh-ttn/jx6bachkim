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
Say("Cho d� l� Thi�n L� M� c�ng c�n ph�i ch�n l�a m�i ���c. Ti�c r�ng ��i c� nhi�u k� nh�n b� ngo�i m� ch�n l�a. Th�t gi� b�t ph�n, th� phi b�t minh, th�t ��ng bu�n c��i!", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no");
end
end;


function yes()
Sale(46);  			--�������׿�
end;


function no()
end;

