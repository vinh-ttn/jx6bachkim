Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
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
		Say("�� ��n Long M�n tr�n n�y th� n�n mua �t th��ng d��c �� ph�ng tr�i gi� tr� tr�i!", 3, "Giao d�ch/yes","Ta ��n nh�n nhi�m v� S� nh�p/yboss", "Kh�ng giao d�ch/no")
end
end;

function yes()
	Sale(85);  		
end;

function no()
end;
