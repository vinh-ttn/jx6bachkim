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
	-- Say("<color=green>Th� r�n<color>: C� tr�m d�m g�n ��y ai kh�ng bi�t ��n ��i danh c�a ta, t� �ao, ki�m, c�n, th��ng, k�ch, m��i t�m m�n v� kh� ta ��u c� ��, kh�ch quan mu�n mua m�n n�o? C�n mu�n ch� t�o Trang b� Huy�n Tinh hay trang b� Ho�ng Kim ��u ph�i ��n t�m ta, nh�t ��nh gi� c� ph�i ch�ng!"..Note("thoren_macbacthaonguyen"), 3, "Giao d�ch/yes", "Ch� t�o/OnFoundry", "Nh�n ti�n gh� qua th�i/no");
	Say("<color=green>Th� r�n<color>: C� tr�m d�m g�n ��y ai kh�ng bi�t ��n ��i danh c�a ta, t� �ao, ki�m, c�n, th��ng, k�ch, m��i t�m m�n v� kh� ta ��u c� ��, kh�ch quan mu�n mua m�n n�o?"..Note("thoren_macbacthaonguyen"), 2, "Giao d�ch/yes", NOTTRADE);
end
end

function yes()
	Sale(13);  				
end;
