Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
function main()
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao D�ch",scripthieuthuocall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua thu�c g�?<color>", tbOpt)
else
	Say("Ha ha! Th�y nhi�u cao th� t� t�p � ��y th�t khi�n ng��i c�m ��ng! Kh�ng gi�u g� ng��i d��c ph�m � ti�m ta l� r� nh�t, mu�n mua th� g�?", 2, "Ta ch� ��n xem!/want2sale", "Kh�ng mua ��u/OnCancel")
end
end

function OnCancel()
end

function want2sale()
	Sale(53)
end