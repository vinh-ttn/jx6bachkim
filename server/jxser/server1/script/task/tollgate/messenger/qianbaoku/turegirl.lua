-------------------------------------------------------------------------
-- FileName		:	enemy_turegirl.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-20 10:16:14
-- Desc			:   ǧ����ؿ��ı�����Ů�ű�
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\lib_messenger.lua") --��������ж�
Include("\\script\\task\\tollgate\\killbosshead.lua") --���ö���ͷ���ͷ�ļ�
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");

function main()
	if ( GetSex() == 0 ) then
		Describe(DescLink_BeiKunShaoNv..": Anh h�ng cu�i c�ng c�ng xu�t hi�n. Ta b� b�n Th� H� Gi� b�t c�c, xin h�y c�u ta!",2,"���ng nhi�n l� ���c! Theo ta!/offcouseido","Kh�ng ���c! Ta c�n chuy�n kh�c ph�i l�m!/no")
	else
		Describe(DescLink_BeiKunShaoNv..": Anh h�ng cu�i c�ng c�ng xu�t hi�n. Ta b� b�n Th� H� Gi� b�t c�c, xin h�y c�u ta!",2,"���ng nhi�n l� ���c! Theo ta!/offcouseido","Kh�ng ���c! Ta c�n chuy�n kh�c ph�i l�m!/no")
	end
end

function offcouseido()
	local Uworld1214 = nt_getTask(1214)
	local Npcindex = GetLastDiagNpc()
	nt_setTask(1214,Uworld1214+1)   --���ñ�����Ů����
	Msg2Player("B�n �� c�u ���c m�t thi�u n� b� b�n Th� H� Gi� giam gi�, n�u an to�n h� t�ng c� ta ra kh�i �i, b�n s� nh�n ���c ph�n th��ng x�ng ��ng.")
	SetTask2Team(tbBirthday0905.tbTask.tsk_msg_curtsk,tbBirthday0905.tbTask.tsk_msg_needcount, 6);
	tongaward_message(30);	--by Сɽ�������Ŀ�깱�׶ȣ�ÿ����Ů3000�㣩
	DelNpc(Npcindex)
end

function no()
end
