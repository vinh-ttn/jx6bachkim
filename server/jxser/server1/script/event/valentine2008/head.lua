TSK_valentine2008_CollectLimit		= 1962;
TSK_valentine2008_CollectMaxLimit	= 1963;
TSK_valentine2008_ComposeExpLimit	= 1964
TSK_valentine2008_CollectExpLimit	= 1965
TSKV_valentine2008_CollectDayLimit	= 300; --��ڼ䣬ÿ��ʰȡ�¹ⱦ����Ŀ
TSKV_valentine2008_CollectMaxLimit	= 500; --��ڼ����ʰȡ�¹ⱦ����Ŀ
TSKV_valentine2008_ComposeExpLimit	= 50000000 --��ڼ䣬���ʹ�á����������͡�ԧ�����������Ի��5000W����
TSKV_valentine2008_CollectExpLimit	= 20000000 --��ڼ䣬ÿ��ͨ��ʰȡ ���������ˡ���õľ������2000w���顣
valentine2008_Date_S = 080212;
valentine2008_Date_E = 080229; --1.	��������ԧ������ʹ�ý�ֹ�ڵ�2008��2��29��24��00��
valentine2008_GetItemDate_E = 080215
valentine2008_szActName = "2008�����˽�"
--2008��02��12��ά�޺�2008��02�£�5��ά��ǰ
function valentine2008_isActPeriod()
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	return nDate >= valentine2008_Date_S and nDate <= valentine2008_Date_E
end

function valentine2008_isGetItemPeriod()
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	return nDate >= valentine2008_Date_S and nDate <= valentine2008_GetItemDate_E
end