Include("\\script\\activitysys\\config\\1000\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")

local nYellowDaisyMaxCount = 1000

local tbGiveDaisyTaskInfo =
{
	nTaskID = 2712,
	nStartBit = 1,
	nBitCount = 12,
	nMaxValue = 1000
}
local tbGourdUseTaskInfo =
{
	nTaskID = 2712,
	nStartBit = 13,
	nBitCount = 12,
	nMaxValue = 1000
}
--local tbSteelHeartWineUseTaskInfo =
--{
--	nTaskID = 2712,
--	nStartBit = 25,
--	nBitCount = 6,
--	nMaxValue = 5
--}
local tbGiveDaisy_AdditionalAward = {
	[500] = {szName = "�i�m kinh nghi�m", nExp=5000000},
	[1000] = {szName = "�i�m kinh nghi�m", nExp=10000000},
}
local tbUseGourd_AdditionalAward = {
	[50] = {szName = "�i�m kinh nghi�m", nExp=3000000},
	[100] = {szName = "�i�m kinh nghi�m", nExp=6000000},
	[200] = {szName = "�i�m kinh nghi�m", nExp=8000000},
	[300] = {szName = "�i�m kinh nghi�m", nExp=10000000},
	[400] = {szName = "�i�m kinh nghi�m", nExp=12000000},
	[500] = {szName = "�i�m kinh nghi�m", nExp=14000000},
	[600] = {szName = "�i�m kinh nghi�m", nExp=16000000},
	[700] = {szName = "�i�m kinh nghi�m", nExp=18000000},
	[800] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[900] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[1000] = {szName = "�i�m kinh nghi�m", nExp=30000000},
}
local tbUseWine_ExpAward = {
	[1] = {szName = "�i�m kinh nghi�m", nExp=2000000},
	[2] = {szName = "�i�m kinh nghi�m", nExp=3000000},
	[3] = {szName = "�i�m kinh nghi�m", nExp=4000000},
	[4] = {szName = "�i�m kinh nghi�m", nExp=5000000},
	[5] = {szName = "�i�m kinh nghi�m", nExp=6000000},
	[6] = {szName = "�i�m kinh nghi�m", nExp=6000000},
	[7] = {szName = "�i�m kinh nghi�m", nExp=7000000},
	[8] = {szName = "�i�m kinh nghi�m", nExp=8000000},
	[9] = {szName = "�i�m kinh nghi�m", nExp=9000000},
	[10] = {szName = "�i�m kinh nghi�m", nExp=10000000},
}

local tbUseWine_ItemAward = {
	{szName="�� Ph� T� M�ng H�ng Li�n",tbProp={6,1,2719,1,0,0},nCount=1,nRate=1},
	{szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1,nRate=1},
	{szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1,nRate=1},
	{szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1,nRate=0.5},
	{szName="T� M�ng L�nh",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.5},
	{szName="Phi phong Kinh L�i (D�ch chuy�n t�c th�i)",tbProp={0,3470},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Kinh L�i (X�c su�t h�a gi�i s�t th��ng)",tbProp={0,3471},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Kinh L�i ( Tr�ng k�ch )",tbProp={0,3472},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,3210},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,3220},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=20160,},
	{szName = "S� d�ng Thi�t T�m t�u kh�ng may m�n",
		pFun = function (nItemCount, szLogTitle)
			Msg2Player("L�n n�y kh�ng may m�n, ta ph�i th� th�m l�n n�a")
		end,
		nRate = 93.5,
	}
}
local tbUseGourd_ItemAward = {
	{szName="�� Ph� T� M�ng Kh�i",tbProp={6,1,2714,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng Y",tbProp={6,1,2715,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng Y�u ��i",tbProp={6,1,2717,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H� Uy�n",tbProp={6,1,2718,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng B�i",tbProp={6,1,2720,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H�i",tbProp={6,1,2716,1,0,0},nCount=1,nRate=0.3},
	{szName="�� Ph� T� M�ng H�ng Li�n",tbProp={6,1,2719,1,0,0},nCount=1,nRate=0.1},
	{szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1,nRate=0.1},
	{szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1,nRate=0.1},
	{szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1,nRate=0.1},
	{szName="Huy�n Vi�n L�nh",tbProp={6,1,2351,1,0,0},nCount=1,nRate=0.3},
	{szName="T� M�ng L�nh",tbProp={6,1,2350,1,0,0},nCount=1,nRate=0.1},
	{szName="L�nh B�i Th�y T�c",tbProp={6,1,2745,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Qu� Ho�ng Kim",tbProp={6,1,907,1,0,0},nCount=1,nRate=1, nExpiredTime = 10080},
	{szName="S�t Th� Gi�n l� h�p",tbProp={6,1,2339,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="M�c B�c Truy�n T�ng L�nh",tbProp={6,1,1448,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="H�i long ch�u",tbProp={6,1,2115,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Huy�n Thi�n C�m Nang",tbProp={6,1,2355,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Long Huy�t Ho�n",tbProp={6,1,2117,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
	{szName="Ng�c Qu�n",tbProp={6,1,2311,1,0,0},nCount=1,nRate=1},
	{szName="H�n Nguy�n Linh L�",tbProp={6,1,2312,1,0,0},nCount=1,nRate=1},
	{szName="H�ng bao Sum v�y",tbProp={6,1,2104,1,0,0},nCount=1,nRate=0.1},
	{szName="H�ng bao An khang",tbProp={6,1,2105,1,0,0},nCount=1,nRate=0.1},
	{szName="Ng� H�nh K� Th�ch",tbProp={6,1,2125,1,0,0},nCount=1,nRate=41.6},
	{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=10,nExpiredTime=20160},
	{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=10,nExpiredTime=20160},
	{szName="Ng�c Tr�ng Luy�n",tbProp={6,1,30104,1,0,0},nCount=1,nRate=0.5},
	{szName="Phi phong L�ng V�n",tbProp={0,3465},nCount=1,nRate=0.4,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Tuy�t Th�",tbProp={0,3466},nCount=1,nRate=0.3,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong c�p Ph� Qu�n ( d�ch chuy�n t�c th�i )",tbProp={0,3467},nCount=1,nRate=0.2,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Ngao tuy�t (D�ch chuy�n t�c th�i)",tbProp={0,3468},nCount=1,nRate=0.1,nQuality = 1,nExpiredTime=20160,},
	{szName="Phi phong Ng�o Tuy�t (X�c su�t h�a gi�i s�t th��ng)",tbProp={0,3469},nCount=1,nRate=0.1,nQuality = 1,nExpiredTime=20160,},
	{szName = "�i�m Kinh Nghi�m", nExp=7000000, nRate = 25},
}

function pActivity:VngCheckWeeklyTaskCount(nTaskID, nValue, strComparison, strFailMessage)
	local nResult = dostring("return "..%VngTaskWeekly:GetWeeklyCount(nTaskID)..strComparison..nValue)
	if not nResult then
		Talk(1, "", strFailMessage)
		return nil
	end
	return 1
end

function pActivity:VngAddWeeklyTaskCount(nTaskID, nValue)
	%VngTaskWeekly:AddWeeklyCount(nTaskID, nValue)
end

function pActivity:VngGiveDaisyLimit(nCount)
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveDaisyTaskInfo) == 1 then
		Talk(1, "", "Ng��i t�ng ta nhi�u hoa r�i, s� hoa n�y xin h�y nh�n l�i.")
		return nil
	end
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveDaisyTaskInfo)
	if (nTaskVal + nCount) > %nYellowDaisyMaxCount then
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� c� th� t�ng <color=yellow>%d <color>hoa c�c n�a.", %nYellowDaisyMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:VngGiveDaisy(nCount)
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=1000000}
	for i = 1, nCount do
		%tbVNG_BitTask_Lib:addTask(%tbGiveDaisyTaskInfo, 1)
		tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "NopHoaCucVang"})
		
		--ph�n th��ng th�m khi n�p �� 500, 1000 hoa c�c
		local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGiveDaisyTaskInfo)
		if %tbGiveDaisy_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbGiveDaisy_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"Event_MungPBM", format("Nop%dlanvatphamHoaCucVang", nTaskVal)})
		end
	end
end

function pActivity:VngGourdUseLimit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGourdUseTaskInfo) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t ��n gi�i h�n, kh�ng th� s� d�ng th�m")
		return nil
	end
	return 1
end

function pActivity:VngUseGourd()
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=7000000}
	%tbVNG_BitTask_Lib:addTask(%tbGourdUseTaskInfo, 1)	
	tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "SudungvatphamBinhHoLoPhongVanNhanPhanThuong"})
	--Ph�n th��ng item
	tbAwardTemplet:Give(%tbUseGourd_ItemAward, 1, {"Event_MungPBM", "SudungvatphamBinhHoLoPhongVanNhanPhanThuong"})
	--ph�n th��ng khi s� d�ng v�t ph�m ��t m�c
	local nTaskVal = %tbVNG_BitTask_Lib:getBitTask(%tbGourdUseTaskInfo)
		if %tbUseGourd_AdditionalAward[nTaskVal] then
			local tbTempAward = %tbUseGourd_AdditionalAward[nTaskVal]
			tbAwardTemplet:Give(tbTempAward, 1, {"Event_MungPBM", format("SuDung%dlanVatPhamBinhHoLoPhongVanPhongVan", nTaskVal)})
		end
end

function pActivity:VngUseSteelHeartWine()
	local nDailyCount = PlayerFunLib:GetTaskDailyCount(2711)	
	local tbAward = %tbUseWine_ExpAward[nDailyCount]
	if tbAward then
		tbAwardTemplet:Give(tbAward, 1, {"Event_MungPBM", "SudungvatphamPhongVanThietTamTuuNhanPhanThuong"})
	end
	tbAwardTemplet:Give(%tbUseWine_ItemAward, 1, {"Event_MungPBM", "SudungvatphamPhongVanThietTamTuuNhanPhanThuong"})	
end

function pActivity:VngCheckWeeklyFeatureMatchCount(nTaskID1, nTaskID2, nTaskID3)
	local nTongKim = %VngTaskWeekly:GetWeeklyCount(nTaskID1)
	local nVuotAi = %VngTaskWeekly:GetWeeklyCount(nTaskID2)
	local nViemDe = %VngTaskWeekly:GetWeeklyCount(nTaskID3)
	local strTittle = format("Tu�n n�y c�c h� �� ho�n th�nh:\n<color=yellow>\t\t\t%-6d<color> tr�n T�ng Kim\n<color=yellow>\t\t\t%-6d<color> l�n V��t �i\n<color=yellow>\t\t\t%-6d<color> l�n v��t �i Vi�m ��", nTongKim, nVuotAi, nViemDe)	
	Say(strTittle, 1, "��ng/OnCancel")
end

function OnCancel()
end