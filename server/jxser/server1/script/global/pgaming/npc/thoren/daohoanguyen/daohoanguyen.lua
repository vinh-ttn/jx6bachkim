Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\equip_system.lua");

function main(sel)
if TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCThoRenAllThanh == 1 and ScriptMuaTBThoRen == 1 then
	local tbOpt = {
		{"Giao D�ch",scriptthorenall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
else
	-- Say("X�a nay anh h�ng ph�i m� t�u, danh ki�m ph�i hi�p s�, m�t c�nh li�u c�ng c� th� �� th��ng ���c ng��i, nh�ng ng��i h�c v� ai l�i kh�ng th�ch c� m�t thanh b�o ki�m s�c b�n ch�? N�u mu�n ch� t�o trang b� Huy�n Tinh ho�c trang b� Ho�ng Kim th� c� th� ��n t�m ta gi� c� ph�i ch�ng th�i!", 3, "Giao d�ch/yes", "ch� t�o/onFoundry", "Nh�n ti�n gh� qua th�i/no");
	Say("<color=green>Th� r�n<color>: X�a nay anh h�ng ph�i m� t�u, danh ki�m ph�i hi�p s�, m�t c�nh li�u c�ng c� th� �� th��ng ���c ng��i, nh�ng ng��i h�c v� ai l�i kh�ng th�ch c� m�t thanh b�o ki�m s�c b�n ch�?"..Note("thoren_daohoanguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end
end;

function yes()
	Sale(40);  			--�������׿�
end;

function no()
end;







