Include("\\script\\activitysys\\config\\1003\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\1003\\variables.lua")

local tbUseTTHT_AdditionalAward = {
	[20] = {szName = "�i�m kinh nghi�m", nExp=2000000},
	[40] = {szName = "�i�m kinh nghi�m", nExp=4000000},
	[60] = {szName = "�i�m kinh nghi�m", nExp=6000000},
	[80] = {szName = "�i�m kinh nghi�m", nExp=8000000},
	[100] = {szName = "�i�m kinh nghi�m", nExp=10000000},
	[200] = {szName = "�i�m kinh nghi�m", nExp=12000000},
	[300] = {szName = "�i�m kinh nghi�m", nExp=14000000},
	[400] = {szName = "�i�m kinh nghi�m", nExp=16000000},
	[500] = {szName = "�i�m kinh nghi�m", nExp=18000000},
	[600] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[700] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[800] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[900] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[1000] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[1100] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1200] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1300] = {szName = "�i�m kinh nghi�m", nExp=25000000},
}

local tbUseTTHT_ItemAward = {
	{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=26.35},
	{szName="�� Ph� T� M�ng Kh�i",tbProp={6,1,2714,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng Y",tbProp={6,1,2715,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng Y�u ��i",tbProp={6,1,2717,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H� Uy�n",tbProp={6,1,2718,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng B�i",tbProp={6,1,2720,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H�i",tbProp={6,1,2716,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H�ng Li�n",tbProp={6,1,2719,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1,nRate=0.15},
	{szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1,nRate=0.15},
	{szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1,nRate=0.15},
	{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.1,nExpiredTime=43200},
	{szName="T� M�ng L�nh",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.1},
	{szName="H�n Nguy�n Linh L�",tbProp={6,1,2312,1,0,0},nCount=1,nRate=0.4},
	{szName="Th�n H�nh Ph�",tbProp={6,1,1266,1,0,0},nCount=1,nRate=0.1,nExpiredTime=43200},
	{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="B�c ��u truy�n c�ng thu�t",tbProp={6,1,1672,1,0,0},nCount=1,nRate=0.3},
	{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=3},
	{szName="Thi�n tinh b�ch c�u ho�n",tbProp={6,1,2183,1,0,0},nCount=1,nRate=0.3,nExpiredTime=20160},
	{szName="B�ch C�u Ho�n ��c bi�t",tbProp={6,1,1157,1,0,0},nCount=1,nRate=0.3,nExpiredTime=20160},
	{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nCount=1,nRate=0.5,nExpiredTime=20160},
	{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=5,nExpiredTime=43200},
	{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=5,nExpiredTime=43200},
	{szName="H�i long ch�u",tbProp={6,1,2115,1,0,0},nCount=1,nRate=0.5,nExpiredTime=20160},
	{szName="Vi�m �� L�nh",tbProp={6,1,1617,1,0,0},nCount=1,nRate=0.5,nExpiredTime=20160},
	{szName="T�ng Kim Chi�u Binh L� Bao",tbProp={6,1,30084,1,0,0},nCount=1,nRate=0.5,nExpiredTime=20160},
	{szName = "�i�m Kinh Nghi�m", nExp=25000000,nRate=1},
	{szName = "�i�m Kinh Nghi�m", nExp=20000000,nRate=2},
	{szName = "�i�m Kinh Nghi�m", nExp=15000000,nRate=3},
	{szName = "�i�m Kinh Nghi�m", nExp=10000000,nRate=10},
	{szName = "�i�m Kinh Nghi�m", nExp=6000000,nRate=25},
	{szName="D� Dung B� Thu�t",tbProp={6,1,2951,1,0,0},nCount=1,nRate=0.5,nExpiredTime=20160},
	{szName="K�ch C�ng Tr� L�c Ho�n",tbProp={6,1,2952,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="�m D��ng Ho�t Huy�t ��n",tbProp={6,1,2953,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Ho�n H�n ��n",tbProp={6,1,2837,1,0,0},nCount=1,nRate=5},
	{szName="Ti�u Di�u T�n",tbProp={6,1,2831,1,0,0},nCount=1,nRate=5},
}

function pActivity:InitNpc()
	local tbNpcPos = {
		[1] = 
		{
			{176,1441,3277},			
		},		
	}
	local tbNpc = {
		[1] = {
			szName = "M�c Ki�u Li�n", 
			nLevel = 95,
			nNpcId = 342,
			nIsboss = 0,
			szScriptPath = "\\script\\activitysys\\npcdailog.lua",
			},		
	}
	for i=1,getn(tbNpc) do
		for j = 1, getn(tbNpcPos[i]) do
			local nMapId, nPosX, nPosY = unpack(tbNpcPos[i][j])
			basemission_CallNpc(tbNpc[i], nMapId, nPosX * 32, nPosY * 32)	
		end
	end
end

function pActivity:GiveRedRoseBud(nCount)
	local tbAward = {szName="C�u Ti�n Ng� Y�n",tbProp={6,1,30128,1,0,0},nCount=1,nExpiredTime=%nItemExpiredTime}
	for i = 1, nCount do
		--ph�n th��ng kinh nghi�m
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseBudLimit) ~= 1 then
			%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseBudLimit, 1)
			tbAwardTemplet:Give({szName = "�i�m kinh nghi�m", nExp=1000000}, 1, {"EventVuLanBaoHieu", "DoiNuHoaHongDoNhanKinhNghiem"})
		end		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "DoiNuHoaHongDoNhanVatPham"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "Doi1NuHoaHongDo", "1 C�u Ti�n Ng� Y�n", 1)
	end
end

function pActivity:CheckGiveRedRoseLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u hoa r�i, s� hoa n�y xin h�y nh�n l�i.")
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveRedRoseLimit)
	if (nTaskVal + nCount) > %nRedRoseMaxCount then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� t�ng <color=yellow>%d <color>Hoa H�ng �� n�a.", %nRedRoseMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveRedRose(nCount)
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=500000}
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangHoaHongDo"})		
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangHoaHongDo", "500000 �i�m kinh nghi�m", 1)
	end
end

function pActivity:TTHT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseTTHTLimit) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m")
		return nil
	end
	return 1
end

function pActivity:Use_TTHT()
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=5000000}
	%tbVNG_BitTask_Lib:addTask(%tbUseTTHTLimit, 1)	
	tbAwardTemplet:Give(tbExpAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanKinhNghiem"})
	--Ph�n th��ng item
	local tbTranslog = {strFolder = %strTranLogFolder, nPromID = %nPromotionID, nResult = 1}
	tbAwardTemplet:Give(%tbUseTTHT_ItemAward, 1, {"EventVuLanBaoHieu", "SuDungThuyTuuHoTienNhanVatPham", tbTranslog})
	--ph�n th��ng khi s� d�ng v�t ph�m ��t m�c
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbUseTTHTLimit)
		if %tbUseTTHT_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbUseTTHT_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"EventVuLanBaoHieu", format("SuDung%dlanVatPhamThuyTuuHoTien", nTaskVal)})
		end
end

function pActivity:GiveCuuTienLimit(nCount)
	local nTaskVal = PlayerFunLib:GetTaskDailyCount(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY)
	if not nTaskVal then
		return nil
	end
	if (nTaskVal + nCount) > %nGive_Cuu_Tien_Daily_Max_Count then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� t�ng <color=yellow>%d <color>C�u Ti�n Ng� Y�n n�a.", %nGive_Cuu_Tien_Daily_Max_Count - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveCuuTien(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=1000000}
	PlayerFunLib:AddTaskDaily(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY, nCount)
	for i = 1, nCount do		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangCuuTienNguYen"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangCuuTienNguYen", "1000000 �i�m kinh nghi�m", 1)
	end
	return 1
end