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
		{szName="[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i",tbProp={0,769},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n",tbProp={0,771},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i",tbProp={0,776},	nQuality = 1,nRate=5},				
		{szName="[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�",tbProp={0,793},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch",tbProp={0,796},	nQuality = 1,nRate=0.2},
		{szName="[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i",tbProp={0,801},	nQuality = 1,nRate=5},	
		{szName="[H�n ch� th�i gian] V� Tr�n T�nh �nh L�u T�",tbProp={0,808},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",tbProp={0,811},	nQuality = 1,nRate=5},	
		{szName="[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",tbProp={0,816},	nQuality = 1,nRate=5},			
		{szName="[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u",tbProp={0,829},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] Ch� Ph�c Tr�ng C�t Ng�c B�i",tbProp={0,834},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L�  Ngoa",tbProp={0,843},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] ��a Ph�ch Phong H�n Th�c Y�u",tbProp={0,854},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i",tbProp={0,855},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n",tbProp={0,868},	nQuality = 1,nRate=5},		
		{szName="[H�n ch� th�i gian] Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",tbProp={0,874},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i",tbProp={0,876},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n",tbProp={0,881},	nQuality = 1,nRate=5},		
		{szName="[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n",tbProp={0,888},	nQuality = 1,nRate=5},
		{szName="[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n",tbProp={0,891},	nQuality = 1,nRate=5},	
		{szName="[H�n ch� th�i gian] V� Hoan Th�i Uy�n Ch�n V� Li�n",tbProp={0,891},	nQuality = 1,nRate=5},			
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B�o R��ng Ho�ng Kim"))
    	return
	else
		Msg2Player("C�n c� 5 Ch�a Kh�a Ho�ng Kim m�i m� ���c B�o R��ng")
		return 1
	end
end
