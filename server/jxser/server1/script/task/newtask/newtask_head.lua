-------------------------------------------------------------------------
-- FileName		:	newtask_head.lua
-- Author		:	lailigao
-- CreateTime	:	2004-12-27 21:42:55
--	Desc		��	������ϵͳ��������
--					�����淶��nt_xxx (newtask)
-------------------------------------------------------------------------

--Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\task_award_extend.lua")		--�����н�������չ�ű�

-- DescribͼƬ����
DescLink_NieShiChen = "<#><link=image[147,167]:\\spr\\npcres\\enemy\\enemy154\\enemy154_pst.spr>Nhi�p Th� Tr�n:<link>";
TSKID_KILLTASKID =		1082;	-- ���ܵ��ĸ�����
TSKID_KILLERDATE =		1192;	--������ʱ������
TSKID_KILLERMAXCOUNT =	1193;	--ÿ��ɱ�˴���
TSKID_KILLTASKID_SPE =	1793;	-- �Ƿ���ܸ߼�ɱ������	-- �շѰ治��
TSKID_KILLERDATE_SPE =	1794;	--�Ӹ߼�ɱ������ʱ�����ںʹ���	-- �շѰ治��

KILLER_MAXCOUNT		= 8;	--ÿ��ɱ������8��


-- ����а��Ӫ����
NT_Camp_Zheng 	= 0
NT_Camp_Zhong 	= 1
NT_Camp_Xie 	= 2
----------------�������Ͷ��� end -------------------

----------------������������ start-------------------
-- ��������״̬
function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) -- ͬ�����ͻ���
end

-- ��ȡ����״̬
function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

-- ��ȡ��ҵ������С�а��Ӫ
-- 0 - �� 1 - �У�2 - а
function nt_getCamp()
	local lastFaction = GetLastFactionNumber();
	if (lastFaction == 0) or (lastFaction == 4) or (lastFaction == 6) or (lastFaction == 8) then
		return NT_Camp_Zheng; -- ����
	elseif  (lastFaction == 1) or (lastFaction == 2) or (lastFaction == 5) or (lastFaction == 9) then
		return NT_Camp_Zhong; --����
	elseif  (lastFaction == 3) or (lastFaction == 7) then
		return NT_Camp_Xie; --а��
	end
end
----------------������������ start-------------------
function AddGoldItem(index)
	if (index == 184) then
		AddItem(0,9,2,1,0,0,0)
	elseif (index == 178) then
		AddItem(0,7,14,1,0,0,0)
	elseif (index == 181) then
		AddItem(0,3,2,1,0,0,0)
	elseif (index == 182) then
		AddItem(0,6,2,1,0,0,0)
	elseif (index == 183) then
		AddItem(0,8,2,1,0,0,0)
	elseif (index == 179) then
		AddItem(0,2,29,1,0,0,0)
	elseif (index == 180) then
		AddItem(0,4,2,1,0,0,0)
	elseif (index == 185) then
		AddItem(0,5,4,1,0,0,0)
	elseif (index == 177) then
		AddItem(0,3,1,1,0,0,0)
	elseif (index == 168) then
	elseif (index == 169) then
	elseif (index == 170) then
	elseif (index == 171) then
	elseif (index == 172) then
	elseif (index == 173) then
	elseif (index == 174) then
	elseif (index == 175) then
	elseif (index == 176) then
	end
end;