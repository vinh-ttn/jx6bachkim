Include("\\script\\global\\timerhead.lua")
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
	UTask_world38 = GetTask(66)
	if (UTask_world38 == 1) then	
  		Say("�ng n�i Ti�u Lan l� kh�ch quen, �ng ta c�n thu�c X� H��ng H� C�t Cao, 750 l��ng 1 l�, n�u c� 2 lo�i nguy�n li�u X� H��ng v� H� c�t, ta s� b�c thu�c mi�n ph� cho.", 4, "Mua tr�c ti�p/buy", "T�m nguy�n li�u/source", "Mua lo�i thu�c kh�c/yes","�� ta suy ngh� l�i!/no")
	elseif (UTask_world38==2) then
		if (HaveItem(185) == 1) and (HaveItem(142) == 1) then
			if (GetTimerId() > 0) then		
				Talk(1,"","Ng��i �ang mang nhi�m v� c�p b�ch nh� th�, m� c�n ch�y lung tung �?")
				return
			end
			SetTimer(0.5 * CTime * FramePerSec, 6)								
			Talk(2, "", "�ng ch�! Ta �� t�m ���c H� c�t v� X� h��ng.", "Hai lo�i d��c li�u n�y ��u c�, n�a gi� sau ng��i quay l�i l�y!")
			SetTask(66,3)
			DelItem(185)
			DelItem(142)
			AddNote("Sau khi t�m �� nguy�n li�u ph�i ��i n�a ti�ng sau m�i ch� ���c thu�c.")
			Msg2Player("Sau khi t�m �� nguy�n li�u ph�i ��i n�a ti�ng sau m�i ch� ���c thu�c.")
		else
  			Say("N�u ng��i c� th� t�m ���c 2 nguy�n li�u X� h��ng v� H� c�t, ta s� b�c thu�c mi�n ph� cho ng��i.", 3, "mua tr�c ti�p X� H��ng H� C�t Cao!/buy","Giao d�ch/yes", "Kh�ng giao d�ch/no")
		end
	elseif (UTask_world38 == 3) then				
		i = GetRestSec(6)
		if (i > 0) then
			Say("<#> Th�i gian ch�a ��, thu�c ch�a l�m xong ���c, ng��i ph�i ch� ��i th�m."..i.."<#> gi�y.", 3, "Ta kh�ng mu�n ��i n�a, �� mua tr�c ti�p cho r�i!/buy","Ta mu�n giao d�ch/yes", "V�y th�i �i/no")
		else
			StopTimer()						
			W66_getitem()
		end
	elseif (UTask_world38 == 4) then		
		W66_getitem()
	else
		Say("Ng��i �� �n 5 c�c t�p l��ng, kh�ng ph�t h�a nh�c ��u m�i l�! Ch� ta tuy nh� nh�ng tuy�t ��i kh�ng thi�u th� g�! Ng��i c� mu�n mua �t thu�c kh�ng?", 3, "Giao d�ch/yes","Ta ��n nh�n nhi�m v� S� nh�p/yboss", "Kh�ng giao d�ch/no")
	end
end
end;

function buy()
  	if (GetCash() < 750) then
  		Talk(1,"","Kh�ng c� ti�n th� kh�ng th� mua thu�c.")
  	else
  		Pay(750)
  		AddEventItem(186)
  		Msg2Player("C� ���c X� H��ng H� C�t Cao.")
  		SetTask(66,5)
  		AddNote("Mua ���c X� H��ng H� C�t Cao.")
  		Msg2Player("Mua ���c X� H��ng H� C�t Cao.")
		if (GetTimerId() == 6) then			
			StopTimer()
		end
  	end
end

function source()
SetTask(66,2)
AddNote("C�n hai lo�i nguy�n li�u l� X� H��ng v� H� C�t �� ch� thu�c.")
end

function W66_getitem()
	AddEventItem(186)
	Msg2Player("Nh�n ���c X� H��ng H� C�t Cao.")
	SetTask(66,5)
	AddNote("Nh�n ���c X� H��ng H� C�t Cao.")
end

function yes()
Sale(91);   		
end;

function no()
end;
