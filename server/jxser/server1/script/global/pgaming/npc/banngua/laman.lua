Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\banngua\\allbanngua.lua")

function main()
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
	Say("Ng�y tr��c Chu M�c V��ng c� 8 con tu�n m� v� ��ch thi�n h�. ���ng th�i x�ng l� 'B�t C�u'. Con ng�a n�y c�a ta l� h�u th� c�a m�t trong 8 con th�n m� ��! C� th� ng�y �i ngh�n d�m! L� m�t con 'th�n m�' kh� m� t�m th�y con th� hai. M�i ng��i h�y ��n xem �i! Gi� cao c�c k�! Mu�n mua th� ��ng ti�c ti�n. N�u kh�ng l�c h�i h�n s� kh�ng k�p!", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
end
end;

function yes()
	Sale(43);  				--�������׿�
end;

function no()
end;
