IncludeLib("PARTNER")

function OnDeath(nLastDamageIdx)
		--int nPartnerIdx,_ = PARTNER_GetCurPartner()
		PARTNER_AddEmotionDegree(nPartnerIdx, -1)
		Msg2Player("��ng h�nh c�a b�n �� h�n m�!")
end