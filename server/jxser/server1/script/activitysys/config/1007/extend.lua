------------------------------------------------------------------------------------------------
--Author: NgaVN
--Des: Event Ph� N� Vi�t Nam
--Date: 2011-10-13
------------------------------------------------------------------------------------------------
Include("\\script\\activitysys\\config\\1007\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1007\\variables.lua")

--Ph�n th��ng Kinh nghi�m
local tbUseBTT_AdditionalAward = {
	[50] 		= {szName = "�i�m kinh nghi�m", nExp=5000000},
	[100] 	= {szName = "�i�m kinh nghi�m", nExp=5000000},
	[200] 	= {szName = "�i�m kinh nghi�m", nExp=5000000},
	[300] 	= {szName = "�i�m kinh nghi�m", nExp=10000000},
	[400] 	= {szName = "�i�m kinh nghi�m", nExp=10000000},
	[500] 	= {szName = "�i�m kinh nghi�m", nExp=10000000},
	[600] 	= {szName = "�i�m kinh nghi�m", nExp=15000000},
	[700] 	= {szName = "�i�m kinh nghi�m", nExp=15000000},
	[800] 	= {szName = "�i�m kinh nghi�m", nExp=20000000},
	[900] 	= {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1000] 	= {szName = "�i�m kinh nghi�m", nExp=50000000},
}

--local tbLogUseIceCrystals = {
--	[500] = "NopVatPhamHoangThach500Lan",
--	[1000] = "NopVatPhamHoangThach1000Lan",
--	[1500] = "NopVatPhamHoangThach1500Lan",	
--	[1500] = "NopVatPhamHoangThach2000Lan",		
--}

--Ph�n th��ng Item
local tbUseBTT_ItemAward = {
	[1] = {szName="�� ph� T� M�ng Ph�t Qu�n",				tbProp	= {6,1,2714,1,0,0}, nCount=1,nRate= 1},
	[2] = {szName="�� ph� T� M�ng Kim Kh�i",					tbProp	= {6,1,2715,1,0,0}, nCount=1,nRate=1},
	[3] = {szName = "�� Ph� T� M�ng Y�u ��i", 				tbProp = {6,1,2717,1,0,0}, nCount=1, nRate = 1},	
	[4] = {szName = "�� Ph� T� M�ng H� Uy�n", 				tbProp = {6,1,2718,1,0,0}, nCount=1, nRate = 1},
	[5] = {szName = "�� Ph� T� M�ng B�i", 						tbProp = {6,1,2720,1,0,0}, nCount=1, nRate = 1},
	[6] = {szName = "�� Ph� T� M�ng H�i", 						tbProp = {6,1,2716,1,0,0}, nCount=1, nRate = 1},		
	[7] = {szName = "�� Ph� T� M�ng H�ng Li�n", 			tbProp = {6,1,2719,1,0,0}, nCount=1, nRate = 1},
	[8] = {szName = "�� Ph� T� M�ng Th��ng Gi�i Ch�", 	tbProp = {6,1,2721,1,0,0}, nCount=1, nRate = 0.5},
	[9] = {szName = "�� Ph� T� M�ng H� Gi�i Ch�", 			tbProp = {6,1,2722,1,0,0}, nCount=1, nRate = 0.5},
	[10] = {szName = "�� Ph� T� M�ng Kh� Gi�i", 				tbProp = {6,1,2723,1,0,0}, nCount=1, nRate = 0.5},
	[11] = {szName="T� M�ng L�nh	",									tbProp = {6,1,2350,1,0,0},nCount=1, nRate=0.2},
	[12] = {szName="Huy�n Vi�n L�nh",									tbProp = {6,1,2351,1,0,0},nCount=1, nRate=0.3},
	[13] = {szName="Kim � L�nh", 											tbProp = {6,1,2349,1,0,0}, nCount=1, nRate = 0.01},	
	[14] = {szName="Th��ng Lang L�nh",								tbProp = {6,1,2352,1,0,0},nCount=1,nRate=0.5},
	[15] = {szName="V�n L�c L�nh",										tbProp = {6,1,2353,1,0,0},nCount=1,nRate=1},
	[16] = {szName="Thanh C�u L�nh",									tbProp = {6,1,2369,1,0,0},nCount=1,nRate=1},
	[17] = {szName="Ng� H�nh K� Th�ch",							tbProp = {6,1,2125,1,0,0},nCount=1,nRate=25},
	[18] = {szName="T�ng kim chi�u binh l�nh",					tbProp = {6,1,30083,1,0,0},nCount=1,nRate=3, nExpiredTime=10080},
	[19] = {szName="T�ng Kim Chi�u Binh L� Bao",				tbProp = {6,1,30084,1,0,0},nCount=1,nRate=1, nExpiredTime=10080},
	[20] = {szName="Long Huy�t Ho�n",								tbProp = {6,1,2117,1,0,0},nCount=1,nRate=1},  --20111019
	[21] = {szName="S�t Th� Gi�n l� h�p",							tbProp = {6,1,2339,1,0,0},nCount=1,nRate=2},  --20111019
	[22] = {szName="Ng�c Qu�n",											tbProp = {6,1,2311,1,0,0},nCount=1,nRate=1},
	[23] = {szName="M�nh b�n �� s�n h� x� t�c (1000 m�nh)", tbProp = {6,1,2514,1,0,0}, nCount=1, nRate=3},
	[24] = {szName="M�c B�c Truy�n T�ng L�nh",				tbProp = {6,1,1448,1,0,0},nCount=1,nRate=2},	--20111019
	[25] = {szName="L�nh B�i Vi S�n ��o L� Bao",			tbProp = {6,1,2525,1,1,0},nCount=1,nRate=2},		--20111019   - L�nh B�i Vi S�n ��o L� Bao				
	[26] = {szName="Ng�c Tr�ng Luy�n",							tbProp = {6,1,30104,1,0,0},nCount=1,nRate=0.3},
	[27] = {szName = "Kim Hoa Chi B�o", 							tbProp = {6,1,3002,1,0,0},nCount=1,nRate=0.1},
	[28] = {szName="Ti�n Th�o L� ��c bi�t",						tbProp = {6,1,1181,1,0,0},nCount=1,nRate=6.74},  --20111019
	[29] = {szName="H�i long ch�u",									tbProp = {6,1,2115,1,0,0},nCount=1,nRate=1},		--20111019
	[30] = {szName = "�� Ph� Kim � Kh�i", 							tbProp = {6,1,2982,1,0,0}, nCount=1,nRate=0.05},
	[31] = {szName="�� Ph� Kim � Y",								tbProp = {6,1,2983,1,0,0},nCount=1,nRate = 0.05},
	[32] = {szName="�� Ph� Kim � H�i",								tbProp = {6,1,2984,1,0,0},nCount=1,nRate = 0.01},	
	[33] = {szName="�� Ph� Kim � Y�u ��i",						tbProp = {6,1,2985,1,0,0},nCount=1, nRate = 0.01},
	[34] = {szName="�� Ph� Kim � H� Uy�n",						tbProp = {6,1,2986,1,0,0},nCount=1, nRate = 0.01},
	[35] = {szName="�� Ph� Kim � H�ng Li�n",					tbProp = {6,1,2987,1,0,0},nCount=1, nRate = 0.05},
	[36] = {szName="�� Ph� Kim � B�i",								tbProp = {6,1,2988,1,0,0},nCount=1, nRate = 0.05},
	[37] = {szName="�� Ph� Kim � Th��ng Gi�i",				tbProp = {6,1,2989,1,0,0},nCount=1, nRate = 0.04},
	[38] = {szName="�� Ph� Kim � H� Gi�i",						tbProp = {6,1,2990,1,0,0},nCount=1, nRate = 0.04},
	[39] = {szName="�� Ph� Kim � Kh� Gi�i",						tbProp = {6,1,2991,1,0,0},nCount=1, nRate = 0.04},
	[40] = {szName = "�i�m Kinh Nghi�m", 							nExp=5000000, nRate = 15},
	[41] = {szName = "�i�m Kinh Nghi�m", 							nExp=10000000, nRate = 10},
	[42] = {szName = "�i�m Kinh Nghi�m", 							nExp=20000000, nRate = 2},
	[43] = {szName="H�nh Hi�p L�nh",						        tbProp = {6,1,2566,1,0,0},nCount=1, nRate = 10},   --20111019
	[44] = {szName="Qu� Ho�ng Kim",						            tbProp={6,1,907,1,0,0},nCount=1,nRate=1, nExpiredTime=10080},            --20111019
	[45] = {szName="H�p qu� huy ho�ng",					    	tbProp={6,1,1075,1,0,0},nCount=1, nRate = 2, nExpiredTime=10080},       --20111019
}
	
--Function gi�i h�n n�p Ho�ng Th�ch
function pActivity:HandInHoangThachLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u Ho�ng Th�ch r�i, s� Ho�ng Th�ch n�y xin h�y nh�n l�i.");
		Msg2Player("Ng��i t�ng ta nhi�u Ho�ng Th�ch r�i, s� Ho�ng Th�ch n�y xin h�y nh�n l�i.");
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveHoangThachLimit)
	if (nTaskVal + nCount) > %nHoangThachMaxCount then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� n�p <color=yellow>%d <color>Ho�ng Th�ch n�a.", %nHoangThachMaxCount - nTaskVal))
		return nil
	end
	return 1
end

--Function n�p Ho�ng Th�ch
function pActivity:HandInHoangThach(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=1000000};
	
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveHoangThachLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveHoangThachLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_PNVN", "NopVatPhamHoangThach"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "NopVatPhamHoangThach", "1000000 exp", 1)			
	end
	--Ghi Log	
end


--Function gi�i h�n
function pActivity:UseBTT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseBTTLimit) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m")
		Msg2Player("S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m");
		return nil
	end
	return 1
end

function pActivity:Use_BTT()
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=6000000}
	%tbVNG_BitTask_Lib:addTask(%tbUseBTTLimit, 1)	
	--Ph�n th��ng kinh nghi�m
	tbAwardTemplet:Give(tbExpAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanKinhNghiem"});
	--Ph�n th��ng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}	
	tbAwardTemplet:Give(%tbUseBTT_ItemAward, 1, {"Event_PNVN", "SuDungBangTinhThachNhanVatPham", tbTranslog});
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseBTTLimit);
	--Ph�n th��ng Kinh nghi�m v��t m�c
	if %tbUseBTT_AdditionalAward[nTaskVal] then
		local tbTempAward = %tbUseBTT_AdditionalAward[nTaskVal]
		tbAwardTemplet:Give(tbTempAward, 1, {"Event_PNVN", format("SuDung%dLanBangTinhThach", nTaskVal)})
		%tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, format("SuDung%dLanBangTinhThach", nTaskVal), tbTempAward.nExp.." Exp", 1)
		Msg2Player(format("<color=green>Ch�c m�ng b�n s� d�ng v�t ph�m %s %d l�n, nh�n ���c %d �i�m kinh nghi�m<color>", "B�ng Tinh Th�ch", nTaskVal, tbTempAward.nExp))
	end
end
