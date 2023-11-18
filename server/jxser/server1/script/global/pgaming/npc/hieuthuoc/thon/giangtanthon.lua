Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")

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
	UTask_world21 = GetTask(49);
	Uworld1000 = nt_getTask(1000)	
	if ((UTask_world21 == 1) and (HaveItem(179) == 0)) then
		Say("Ng� L�o Th�i nh� ng��i ��n mua thu�c �? Ta �� chu�n b� s�n cho ng��i 10 vi�n Xuy�n B�i ho�n, t�ng c�ng 200 l��ng. Nh�n v�i L�o th�i h�y gi� g�n s�c kh�e!",3,"Mua Xuy�n B�i ho�n/buy","Mua m�t �t thu�c kh�c/yes","Kh�ng mua ��u/no")
	else
		Say("Ng��i �� �n 5 c�c t�p l��ng, kh�ng ph�t h�a nh�c ��u m�i l�! Ch� ta tuy nh� nh�ng tuy�t ��i kh�ng thi�u th� g�! Ng��i c� mu�n mua �t thu�c kh�ng?", 3, "Giao d�ch/yes", "Ta ��n nh�n nhi�m v� S� nh�p/yboss","Kh�ng giao d�ch/no");
	end
end
end;

function buy()
	if(GetCash() >= 200)then
		Pay(200)
		AddEventItem(179)
		Msg2Player("Ng��i ���c m��i vi�n Xuy�n B�i ho�n")
		AddNote("Mua ���c Xuy�n B�i ho�n")
	else
		Talk(1,"","Thu�c c�a ng��i ta gi� l�i ��y, ��i c� �� ti�n r�i h�y quay l�i l�y thu�c!")
	end
end;

function yes()
	Sale(85);  						
end;

function no()
end;
