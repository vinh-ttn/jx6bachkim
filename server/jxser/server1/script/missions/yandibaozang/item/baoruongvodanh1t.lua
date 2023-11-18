Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 10) then
		Talk(1, "", "<#>Xin h�y s�p x�p l�i h�nh trang �t nh�t c�n tr�ng 10 � r�i h�y m� B�o R��ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 4261, -1)
	if nCount >= 5 then
		--Fix l�i kh�ng m�t ch�a kh�a nh� � khi b� trong r��ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 5, 6, 1, 4261, -1) ~= 1 then
    			Msg2Player("C�n c� 5 Ch�a Kh�a Ho�ng Kim m�i m� ���c B�o R��ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--�۳���ʹ����
    	local tbAward = 
    	{
		{szName="V� Danh Ch� Ho�n",tbProp={0,141},	nQuality = 1,nExpiredTime=10800},
		{szName="V� Danh Gi�i Ch� ",tbProp={0,142},	nQuality = 1,nExpiredTime=10800},
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B�o R��ng Ho�ng Kim"))
    	return
	else
		Msg2Player("C�n c� m�t Ch�a Kh�a Ho�ng Kim m�i m� ���c B�o R��ng")
		return 1
	end
end
