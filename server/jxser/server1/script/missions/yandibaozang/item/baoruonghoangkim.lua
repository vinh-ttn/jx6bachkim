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
	if nCount >= 1 then
		--Fix l�i kh�ng m�t ch�a kh�a nh� � khi b� trong r��ng - Modified by DinhHQ -20110812
    		if ConsumeItem(3, 1, 6, 1, 4261, -1) ~= 1 then
    			Msg2Player("C�n c� m�t Ch�a Kh�a Ho�ng Kim m�i m� ���c B�o R��ng")
			return 1
    		end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--�۳���ʹ����
    	local tbAward = 
    	{
		{szName="M�ng Long Ch�nh H�ng T�ng M�o",tbProp={0,1},	nQuality = 1,nRate=1.25},
		{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},	nQuality = 1,nRate=1.25},
		{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},	nQuality = 1,nRate=1.25},				
		{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},	nQuality = 1,nRate=1.25},
		{szName="Ph�c Ma Ph� �� T�ng h�i",tbProp={0,10},	nQuality = 1,nRate=1.25},
		{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},	nQuality = 1,nRate=1.25},	
		{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12},	nQuality = 1,nRate=1.25},
		{szName="T� Kh�ng Nhuy�n B� H� Uy�n",tbProp={0,14},	nQuality = 1,nRate=1.25},	
		{szName="T� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},	nQuality = 1,nRate=1.25},			
		{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},	nQuality = 1,nRate=1.25},
		{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},	nQuality = 1,nRate=1.25},
		{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20},	nQuality = 1,nRate=1.25},
		{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},	nQuality = 1,nRate=1.25},
		{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},	nQuality = 1,nRate=1.25},
		{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},	nQuality = 1,nRate=1.25},		
		{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},	nQuality = 1,nRate=1.25},
		{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},	nQuality = 1,nRate=1.25},
		{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29},	nQuality = 1,nRate=1.25},		
		{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},	nQuality = 1,nRate=1.25},
		{szName="V� Gian C�m V�n H� Uy�n",tbProp={0,34},	nQuality = 1,nRate=1.25},
		{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},	nQuality = 1,nRate=1.25},		
		{szName="V� Ma Ma Ni qu�n",tbProp={0,36},	nQuality = 1,nRate=1.25},
		{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},	nQuality = 1,nRate=1.25},
		{szName="V� Ma H�ng Truy Nhuy�n Th�p h�i",tbProp={0,40},	nQuality = 1,nRate=1.25},		
		{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={0,42},	nQuality = 1,nRate=1.25},
		{szName="T� Ho�ng Tu� T�m Khinh Sa Y	",tbProp={0,47},	nQuality = 1,nRate=1.25},
		{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},	nQuality = 1,nRate=1.25},
		{szName="T� Ho�ng B�ng Tung C�m uy�n",tbProp={0,49},	nQuality = 1,nRate=1.25},		
		{szName="B�ch H�i Ho�n Ch�u V� Li�n	",tbProp={0,52},	nQuality = 1,nRate=1.25},
		{szName="B�ch H�i H�ng Linh Kim Ti ��i	",tbProp={0,53},	nQuality = 1,nRate=1.25},
		{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,53},	nQuality = 1,nRate=1.25},		
		{szName="U Lung X�ch Y�t M�t trang",tbProp={0,57},	nQuality = 1,nRate=1.25},
		{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58},	nQuality = 1,nRate=1.25},
		{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59},	nQuality = 1,nRate=1.25},		
		{szName="U Lung M�c Th� Nhuy�n L�",tbProp={0,60},	nQuality = 1,nRate=1.25},		
		{szName="Minh �o U ��c �m Y",tbProp={0,62},	nQuality = 1,nRate=1.25},
		{szName="Minh �o H� C�t H� uy�n",tbProp={0,64},	nQuality = 1,nRate=1.25},
		{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},	nQuality = 1,nRate=1.25},		
		{szName="Ch� Ph��c Di�t L�i C�nh Ph�",tbProp={0,67},	nQuality = 1,nRate=1.25},
		{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72},	nQuality = 1,nRate=1.25},
		{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},	nQuality = 1,nRate=1.25},
		{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75},	nQuality = 1,nRate=1.25},		
		{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",tbProp={0,77},	nQuality = 1,nRate=1.25},
		{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78},	nQuality = 1,nRate=1.25},
		{szName="Thi�n Quang Song B�o H�n Thi�t Tr�c",tbProp={0,79},	nQuality = 1,nRate=1.25},		
		{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},	nQuality = 1,nRate=1.25},
		{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},	nQuality = 1,nRate=1.25},
		{szName="S�m Hoang Tinh V�n Phi L�",tbProp={0,85},	nQuality = 1,nRate=1.25},		
		{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",tbProp={0,86},	nQuality = 1,nRate=1.25},
		{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},	nQuality = 1,nRate=1.25},		
		{szName="��ng C�u Phi Long ��u ho�n",tbProp={0,91},	nQuality = 1,nRate=1.25},
		{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},	nQuality = 1,nRate=1.25},
		{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},	nQuality = 1,nRate=1.25},
		{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},	nQuality = 1,nRate=1.25},
		{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98},	nQuality = 1,nRate=1.25},
		{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99},	nQuality = 1,nRate=1.25},
		{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},	nQuality = 1,nRate=1.25},
		{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103},	nQuality = 1,nRate=1.25},
		{szName="Ma S�t C� H�a Li�u Thi�n uy�n",tbProp={0,104},	nQuality = 1,nRate=1.25},		
		{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={0,107},	nQuality = 1,nRate=1.25},
		{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i",tbProp={0,108},	nQuality = 1,nRate=1.25},
		{szName="Ma Ho�ng ��ng ��p Ngoa",tbProp={0,110},	nQuality = 1,nRate=1.25},		
		{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},	nQuality = 1,nRate=1.25},
		{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},	nQuality = 1,nRate=1},
		{szName="Ma Th� s�n  H�i Phi H�ng L�",tbProp={0,115},	nQuality = 1,nRate=1.25},		
		{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},	nQuality = 1,nRate=1.25},
		{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},	nQuality = 1,nRate=1.25},
		{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},	nQuality = 1,nRate=1.25},		
		{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},	nQuality = 1,nRate=1.25},
		{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},	nQuality = 1,nRate=1.25},
		{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={0,124},	nQuality = 1,nRate=1.25},		
		{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127},	nQuality = 1,nRate=1.25},
		{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128},	nQuality = 1,nRate=1.25},
		{szName="S��ng Tinh Thi�n Tinh B�ng Tinh th�",tbProp={0,129},	nQuality = 1,nRate=1.25},		
		{szName="L�i Khung Thi�n ��a H� ph�",tbProp={0,132},	nQuality = 1,nRate=1.25},
		{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},	nQuality = 1,nRate=1.25},
		{szName="L�i Khung Linh Ng�c U�n L�i",tbProp={0,134},	nQuality = 1,nRate=1.25},		
		{szName="V� �o B�c Minh ��o qu�n",tbProp={0,136},	nQuality = 1,nRate=1.25},
		{szName="V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={0,139},	nQuality = 1,nRate=1.25},
		{szName="V� �o Tung Phong Tuy�t �nh ngoa",tbProp={0,140},	nQuality = 1,nRate=1.25},		
		{szName="3.000.000 Exp", 
			pFun = function (tbItem, nItemCount, szLogTitle)
				%tbvng_ChestExpAward:ExpAward(200000000, "B�o R��ng Ho�ng Kim")
			end,
			nRate = 0.25,
		},		
    	}
    	
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B�o R��ng Ho�ng Kim"))
    	return
	else
		Msg2Player("C�n c� m�t Ch�a Kh�a Ho�ng Kim m�i m� ���c B�o R��ng")
		return 1
	end
end
