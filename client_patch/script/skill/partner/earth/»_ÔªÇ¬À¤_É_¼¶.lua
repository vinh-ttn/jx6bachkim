IncludeLib("PARTNER");
function OnLevelUp(uplevel,nPartnerIdx)
	local partnerlevel = PARTNER_GetLevel(nPartnerIdx);
	local requirlevel = 1 + (uplevel - 1) * 1;
	if(partnerlevel < requirlevel) then
		Msg2Player("<color=yellow>�㵱ǰͬ���<color=blue>����ԪǬ����<color>�����������Ѵ�100%������Ҫͬ��<color=blue>"..requirlevel.."<color>����������");
		return	
	end
	PARTNER_AddSkill(nPartnerIdx,1,578,uplevel);
	Msg2Player("<color=yellow>�㵱ǰͬ���<color=blue>����ԪǬ����<color>�����������Ѵ�100%������Ϊ<color=blue>"..uplevel.."<color>��");
end