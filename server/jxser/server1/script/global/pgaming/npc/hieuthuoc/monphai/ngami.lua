Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
Include ("\\script\\event\\springfestival08\\allbrother\\findnpctask.lua")
function main(sel)
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
	if allbrother_0801_CheckIsDialog(208) == 1 then
		allbrother_0801_FindNpcTaskDialog(208)
		return 0;
	end
	Uworld36 = GetByte(GetTask(36),1)
	if (GetFaction() == "emei") or (Uworld36 == 127) then
		Say("th�o d��c tr�n n�i Nga Mi r�t nhi�u, �� t� b�n ph�i d�ng nh�ng lo�i th�o d��c n�y �� l�m ra nhi�u th�n d��c tr� th��ng. ", 2, "Giao d�ch/yes", "Kh�ng giao d�ch/no")
	else
		Talk(1,"","Ch��ng m�n c� l�nh: D��c ph�m m�n ph�i ch� b�n cho t� mu�i ��ng m�n!")
	end
end
end;

function yes()
Sale(53)
end;

function no()
end;
