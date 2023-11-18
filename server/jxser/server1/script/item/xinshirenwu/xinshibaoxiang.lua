Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function GetDesc(nItem)
	return ""
end

function main(nItem)
	if (CalcFreeItemCellCount() < 1) then
		Talk(1, "", "<#>Xin h�y s�p x�p l�i h�nh trang �t nh�t c�n tr�ng 1 � r�i h�y m� B�o R��ng")
		return 1
	end
	local nCount = CalcItemCount(3, 6, 1, 2744, -1)
	if nCount >= 1 then
		--Fix l�i kh�ng m�t ch�a kh�a nh� � khi b� trong r��ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 2744, -1) ~= 1 then
    			Msg2Player("C�n c� m�t Ch�a Kh�a Nh� Y m�i m� ���c B�o R��ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--�۳���ʹ����
    	local tbAward = 
    	{
    		{szName = "�� Ph� T� M�ng Kh�i", tbProp = {6, 1,2714,1,0,0}, nRate = 0.03},
		{szName = "�� Ph� T� M�ng Y", tbProp = {6, 1,2715,1,0,0}, nRate = 0.03},
		{szName = "�� Ph� T� M�ng Y�u ��i", tbProp = {6, 1,2717,1,0,0}, nRate = 0.03},
		{szName = "�� Ph� T� M�ng H� Uy�n", tbProp = {6, 1,2718,1,0,0}, nRate = 0.07},
		{szName = "�� Ph� T� M�ng H�ng Li�n", tbProp = {6, 1,2719,1,0,0}, nRate = 0.02},
		{szName = "�� Ph� T� M�ng B�i", tbProp = {6, 1,2720,1,0,0}, nRate = 0.07},
		{szName = "�� Ph� T� M�ng H�i", tbProp = {6, 1,2716,1,0,0}, nRate = 0.07},
		{szName = "�� Ph� T� M�ng Th��ng Gi�i Ch�", tbProp = {6, 1,2721,1,0,0}, nRate = 0.01},
		{szName = "�� Ph� T� M�ng H� Gi�i Ch�", tbProp = {6, 1,2722,1,0,0}, nRate = 0.01},
		{szName = "�� Ph� T� M�ng Kh� Gi�i", tbProp = {6, 1,2723,1,0,0}, nRate = 0.01},
		{szName = "T� M�ng L�nh", tbProp = {6, 1,2350,1,0,0}, nRate = 0.01},
		{szName = "Huy�n Vi�n L�nh", tbProp = {6, 1,2351,1,0,0}, nRate = 0.2},
		{szName="3.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(3000000, "T�n S� B�o R��ng")
			end,
			nRate = 63.34,
		},
		{szName="5.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(5000000, "T�n S� B�o R��ng")
			end,
			nRate = 30,
		},
		{szName="8.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(8000000, "T�n S� B�o R��ng")
			end,
			nRate = 5,
		},
		{szName="12.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(12000000, "T�n S� B�o R��ng")
			end,
			nRate = 1,
		},
		{szName = "Thi�n B�o Kh� L�nh", tbProp = {6, 1,2813,1,0,0}, nRate = 0.1},
    	}
    	
--    	local tbAward2 = {
--    		{szName = "������ͼ��", tbProp = {6, 1, 2714 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "������ͼ��", tbProp={6,1,2715,1,0,0}, nRate = 0.17,},--
--    		{szName = "����ѥͼ��", tbProp = {6, 1, 2716 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "��������ͼ��", tbProp = {6, 1, 2717 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "��������ͼ��", tbProp = {6, 1, 2718 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "��������ͼ��", tbProp = {6, 1, 2719 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "������ͼ��", tbProp = {6, 1, 2720 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "�����Ͻ�ͼ��", tbProp = {6, 1, 2721 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "�����½�ͼ��", tbProp = {6, 1, 2722 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "��������ͼ��", tbProp = {6, 1, 2723 , 1, 0 ,0}, nRate = 0.17,},--
--    		{szName = "�Ͼ���ʯ", tbProp = {6, 1, 30040 , 1, 0 ,0}, nRate = 20,},
--    		{szName = "����ʯ", tbProp = {6, 1, 2280 , 1, 0 ,0}, nRate = 20,},
--    		{szName = "������Ԫ��", tbProp = {6, 1, 2735 , 1, 0 ,0}, nRate = 0.5,},
--    		{szName = "����������", tbProp = {6, 1, 2734 , 1, 0 ,0}, nRate = 0.5,},
--    		{szName = "���Ѫ����С��", tbProp = {6, 1, 2583 , 1, 0 ,0}, nCount = 10, nRate = 27.3,},
--    		{szName = "���Ѫ�����У�", tbProp = {6, 1, 2582 , 1, 0 ,0}, nCount = 10, nRate = 20,},
--    		{szName = "���Ѫ������", tbProp = {6, 1, 2581 , 1, 0 ,0}, nCount = 10, nRate = 10,},
--    	}
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "T�n S� B�o R��ng"))
    	return
	else
		Msg2Player("C�n c� m�t Ch�a Kh�a Nh� Y m�i m� ���c B�o R��ng")
		return 1
	end
end
