-------------------------------------------------------------------------
-- FileName		:	templebro8089.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-18 15:09:14
-- Desc			:   ɽ����ؿ��ĵ����ֵ������ű�[80-89��]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\shanshenmiao\\enemy_temrefresh.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --ȡ������
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --���ü�ʱ��
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --���ͬ�������ı��

TEMREFRESH_EXP = tonumber( TabFile_GetCell( "tollprize" ,6 ,"shuachu_exp"))  --С�־���
TEMREFRESH_MAPID= 391  --ɽ����ĵ�ͼid
TEMREFRESH_MESSENGEREXP= tonumber( TabFile_GetCell( "tollprize" ,6 ,"shuachu_jifen"))  --С�־���


function OnDeath()
	local name = GetName()
	local Uworld1215 = nt_getTask(1215)  --boss���ˢ�ֵĴ�ֿ���
	if (  messenger_middletime() == 10 ) then --����ڵ�ͼ�е�ʱ��
		Msg2Player("Xin l�i! "..name.."! B�n �� h�t th�i gian th�c hi�n nhi�m v� T�n s�! Nhi�m v� th�t b�i!.")
		losemessengertask()
	elseif ( Uworld1215 == 0 ) then  --û��ˢ�ֵ�����
		Msg2Player("����һ��Ѿ������˰��ˣ�������ǲ������κν����á�")
		return
	else
		temple_killrefresh()
	end
end