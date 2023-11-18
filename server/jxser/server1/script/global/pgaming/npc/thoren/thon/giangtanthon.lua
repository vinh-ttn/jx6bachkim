Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\thoren\\allthoren.lua")

TIEJIANG_DIALOG = "<dec><npc>Gian h�ng c�a ta binh kh� tinh x�o m� gi� c� l�i v�a ph�i, ��i hi�p h�nh t�u giang h� m� kh�ng c� m�t m�n binh kh� cho v�a tay sao? Mua m�t m�n �i n�o?"

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
	UTask_world45 = GetTask(45)
	Uworld1000 = nt_getTask(1000)	
	if(UTask_world45 == 10) then
		Talk(1,"","Ng��i ��n h�i chi�c n� cho ti�u H� T� �? Ta ch�a ��ng tay t�i! �� c�n thi�t ta c�n ch�a �i t�m.Ta l�i kh�ng th� r�i ti�m. Th� n�y nh�! Ng��i gi�p ta �i t�m ch�c c�y v� da tr�u.C� �� r�i ta s� l�p t�c l�m ngay!")
		SetTask(45, 20)
		AddNote("Th� r�n c�n nguy�n li�u m�i c� th� b�t ��u l�m gi�n n�! B�n gi�p anh ta t�m m�t ch�c v�y v� m�t mi�ng da tr�u.")
		Msg2Player("Th� r�n c�n nguy�n li�u m�i c� th� b�t ��u l�m gi�n n�! B�n gi�p anh ta t�m m�t ch�c v�y v� m�t mi�ng da tr�u.")
	elseif(UTask_world45 == 20) then
		if((HaveItem(177) ==1 ) and (HaveItem(178) == 1)) then	
			Talk(2,"","Sao nhanh th�? ��a ch�c c�y v� da tr�u ��a cho ta! Ta l�m ngay!","�� l�m xong. Thay ta ��a c�y n� cho Ti�u H� T�!")
			DelItem(177)		
			DelItem(178)		
			AddEventItem(176)		
			Msg2Player("���c m�t gi�n n�.")
			AddNote("Th� r�n �� l�m xong gi�n n� nh� b�n �em �i cho H� T�.")
			Msg2Player("Th� r�n �� l�m xong gi�n n� nh� b�n �em �i cho H� T�.")
		else
			tiejiang_village("<dec><npc>Ch� c�n mang ch�c v� da tr�u ��n cho ta th� s� c� ngay c�y n� cho Ti�u H�, ch� c�n ��i m�t l�c l� xong. Ng��i mu�n lo�i v� kh� n�o kh�c kh�ng?")
		end
	else
		tiejiang_village();
	end
end
end;

function yes()
	Sale(22);  			
end;
