--��Ȫ�� ·�� ���
--��Ȫ�����������޵�
-- By: Dan_Deng(2003-09-03)

Include("\\script\\global\\itemhead.lua")

function main(sel)
	UTask_world19 = GetTask(19)
	if (UTask_world19 == 0) and (GetLevel() >= 2) then 		--�޵���������
		if (GetSex() == 0) then
			W19_rank = "h�u sinh"
		else
			W19_rank = "C� n��ng"
		end
		Talk(2,"W19_get","B�nh Ph�ng:"..W19_rank.."c� th� gi�p t�i h� kh�ng?","Gi�p g� ��y? ")
	elseif (UTask_world19 == 2) and (HaveItem(229) == 0) then
		AddEventItem(229)
		Talk(1,"", 10903)
	elseif (UTask_world19 == 8) and HaveItem(230) then		-- �������
		Talk(1,"", 10904)
		DelItem(230)
		SetTask(19,10)
		AddNote("Mang b�o �ao �� s�a xong v� cho B�nh Ph�ng, ho�n th�nh nhi�m v� ")
		Msg2Player("Mang b�o �ao �� s�a xong v� cho B�nh Ph�ng, ho�n th�nh nhi�m v� ")
		p1,p2,p3,p4,p5,p6 = RndItemProp(6,10)
		if(GetSex() == 0) then
			AddItem(0, 8, 1, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
			Msg2Player("Nh�n ���c Ng�u B� H� Uy�n ")
		else
			AddItem(0, 8, 0, 1, random(0,4), GetLucky(), p1,p2,p3,p4,p5,p6)
			Msg2Player("Nh�n ���c Ng�u B� H� Uy�n ")
		end
		AddRepute(6)
		Msg2Player("Danh v�ng c�a b�n t�ng th�m 6 �i�m ")
	else
		Talk(1,"", 10905)
	end
end;

function W19_get()
	Say(10906 ,2,"Gi�p �� h�n! /W19_get_yes","Kh�ng c�n do d� /W19_get_no")
end

function W19_get_yes()
	SetTask(19,2)
	AddEventItem(229)
	Talk(1,"", 10907)
	AddNote("Ti�p nh�n nhi�m v�: Gi�p B�nh Ph�ng mang �ao �i s�a ")
	Msg2Player("Ti�p nh�n nhi�m v�: Gi�p B�nh Ph�ng mang �ao �i s�a ")
end

function W19_get_no()
end
