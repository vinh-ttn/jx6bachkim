-------------------------------------------------------------------------
-- FileName		:	newaccount.lua
-- Author		:	lailigao
-- CreateTime	:	2005-06-06 22:15:37
-- Desc			:	�����ƹ��ʺ�
-- Include("\\script\\misc\\spreader\\neaccount.lua")
---------------------------------------------------------------------------

Include("\\script\\misc\\spreader\\head.lua")

-- �Ƿ��������ƹ�
function gsp_haveprize_newaccount()
	local nValue = GetExtPoint(GSP_ACCOUNT_EXTPOINT);
	--if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER or nValue == GSP_ACCOUNT_TYPE_SPREADERSYS) then
	if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER) then
		return 1;
	end;
	
	return 0;
end

function gsp_newaccount_gift()
	local nValue = GetExtPoint(GSP_ACCOUNT_EXTPOINT);
	--if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER or nValue == GSP_ACCOUNT_TYPE_SPREADERSYS) then
	if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER) then	
		Say("���ֿ�������<color=red>��ɽ��ʮ��������ռ��籩<color>, ��Ҫ��ȡ���ֿ���������Ʒ��", 3, "�ǵģ���Ҫ��ȡ/gsp_newaccount_gift_core", "��һ������/gs_newaccount_cancel", "�������ֿ�����.../gs_newaccount_about");
	elseif (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER_PAY) then
		Talk(1, "", "���ֿ�������������Ʒ����ȡ��һ���ʺ�ֻ����һ�Ρ�");
	else
		Talk(1, "", "���ֿ������������ʺŲ������ֿ������ʺţ�������ȡ��Ʒ��");
	end
end

-- ����һ
function gsp_newaccount_gift_core()
	local nValue = GetExtPoint(GSP_ACCOUNT_EXTPOINT);
	--if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER or nValue == GSP_ACCOUNT_TYPE_SPREADERSYS) then
	if (nValue == GSP_ACCOUNT_TYPE_NEWPLAYER) then
		AddExtPoint(GSP_ACCOUNT_EXTPOINT, 1); -- �޸���չ������ȡ���	
		
		AddItem(0,10,2,1,random(0,4),0,0); -- ����
		Earn(10000); -- 1w��
		Msg2Player("��������Ӱ���һƥ������1����");
		Talk(1, "", "���ֿ�������������Ӱ���һƥ������1������ף���ڽ�����Ե������п��ֵ���Ϸ");
		return 1;
	end
end

function gs_newaccount_cancel()
end

function gs_newaccount_about()
	Talk(1, "", "���ֿ�����������ʹ��<color=red>��ɽ��ʮ��������ռ��籩<color>���ŵ����ֿ������ʺ�(һ����KS��ͷ)��������ٴ���ȡһ���������̤�����������ĵ�һ����");
end
