--ʱ����ƹ���
--��2008��09��05����2008��10��05��24��
zhongqiu0808_StartTime	= 180905
zhongqiu0808_EndTime	= 181005
zhongqiu0808_liheEndTime = 181005
zhongqiu0808_ItemEndTime = 181031
zhongqiu0808_ZhanGongStartTime = 180905
zhongqiu0808_ZhanGongEndTime = 181005

function zhongqiu0808_IsActDate()
	local nDate = tonumber(GetLocalDate("%y%m%d"))
	if nDate >= zhongqiu0808_StartTime and nDate <= zhongqiu0808_EndTime then
		return 1
	end
	return nil
end