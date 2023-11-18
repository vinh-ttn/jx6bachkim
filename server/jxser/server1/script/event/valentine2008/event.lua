-- �ļ�������event.lua
-- �����ߡ���zhongchaolong
-- ����ʱ�䣺2008-01-23 09:50:53
--���϶Ի�����Ʒ������
Include("\\script\\event\\valentine2008\\head.lua")
Include("\\script\\event\\valentine2008\\lib\\compose.lua")
Include("\\script\\event\\valentine2008\\lib\\addaward.lua")
Include("\\script\\lib\\pay.lua")

function valentine2008_yuelao_main()
	local szTitle = "�������ˣ�ǧ����Եһ��ǣ����ǰ��ע���£�Ī�����Ե�����˽��ֵ��ˣ�<color=red>2008��02��12��ά�޺�2008��02��15��ά��ǰ<color>����ʿֻҪ�ڻ�ɽ�����ɽ�����ɽ������ɽ��֣����л��ῴ���Ϸ򲢻�����˽���Ʒ��"
	local tbOpt = 
	{
		"������1֧������/#valentine2008_Exchange(1,1)",
		"������1��ԧ����/#valentine2008_Exchange(0,1)",
		"������10֧������/#valentine2008_Exchange(1,10)",
		"������10��ԧ����/#valentine2008_Exchange(0,10)",
		"лл���˼ң��ҹ�һ������/no"
	}
	Say(szTitle, getn(tbOpt), tbOpt);
end

function valentine2008_Exchange(nType,nCount)
	local tbItemList = 
	{
		[0] = {szName="ԧ����", tbProp={6, 1, 1666, 1, 0, 0}},
		[1] = {szName="������", tbProp={6, 1, 1667, 1, 0, 0}},
	}
	local tbSex2Word = 
	{
		[0] = "��ʿ",
		[1] = "��Ů"
	}
	local nExp = 99.9
	nExp = floor(nExp * nCount) * 10000
	local nComposeExpLimit = GetTask(TSK_valentine2008_ComposeExpLimit)
	if nType ~= GetSex() then
		Say(format("������˼��ֻ��<color=red>%s<color>����ʹ��<color=red>%s<color>�һ�����", tbSex2Word[nType], tbItemList[nType].szName), 0)
		return 0;
	end
	--ʱ��
	if not valentine2008_isActPeriod() then
		Say(format("�<color=yellow>%s<color>�Ѿ�������лл���Ĳ��롣",valentine2008_szActName), 0)
		return 0;
	end
	--�ȼ�
	if (IsCharged() == 0 or GetLevel() < 100) then
		Say("�㲻��100�����ϵĳ�ֵ��ҡ�", 0)
		return 0;
	end
	if nComposeExpLimit >= TSKV_valentine2008_ComposeExpLimit then
		Say("��ڼ䣬���ʹ�á����������͡�ԧ�����������Ի��5000W���顣", 0)
		return 0;
	end
	
	if nCount ~= 1 and nComposeExpLimit + nExp > TSKV_valentine2008_ComposeExpLimit then
		Say("���ζһ���������ڼ����������ޣ�����ٶһ��ĸ�����", 0)
		return 0;
	end
	
	tbItemList[nType].nCount = nCount
	valentine2008_ComposeClass:Compose({tbItemList[nType]}, 0, valentine2008_ComposeAward, nExp)
end

function valentine2008_ComposeAward(nExp)
	AddOwnExp(nExp)
	SetTask(TSK_valentine2008_ComposeExpLimit, GetTask(TSK_valentine2008_ComposeExpLimit)+nExp);
	WriteLog(format("[%s]\t%s\tName:%s\tAccount:%s\tget exp %d.","2008���˽ںϳ�",
	            GetLocalDate("%Y-%m-%d %H:%M"),GetName(), GetAccount(), nExp ))
end