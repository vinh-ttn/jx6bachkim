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
	--Say("Mu�n s�ng ���c tr�n T�y S�n T� �h, kh�ng c� binh kh� l�i h�i c�a ta e r�ng ng��i ch�u nhi�u thi�t th�i ��. Ng��i c� mu�n mua g� kh�ng? C�n mu�n ch� t�o Trang b� Huy�n Tinh ho�c trang b� Ho�ng Kim th� c� ��n t�m ta gi� c� ph�i ch�ng th�i!", 3, "Giao d�ch/yes", "ch� t�o/onFoundry", "Nh�n ti�n gh� qua th�i/no")
	Say("<color=green>Th� r�n<color>: Mu�n s�ng ���c tr�n Vi S�n ��o �h, kh�ng c� binh kh� l�i h�i c�a ta e r�ng ng��i ch�u nhi�u thi�t th�i ��. Ng��i c� mu�n mua g� kh�ng?"..Note("thoren_visondao"), 2, "Giao d�ch/yes", NOTTRADE);
end
end

function yes()
	Sale(13);  				
end;
