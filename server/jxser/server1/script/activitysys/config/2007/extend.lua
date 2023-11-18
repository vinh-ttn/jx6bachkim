---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2007\\head.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\2007\\variables.lua")

local tbUseTTHT_AdditionalAward = {
	[20] = {szName = "�i�m kinh nghi�m", nExp=100000},
	[40] = {szName = "�i�m kinh nghi�m", nExp=200000},
	[60] = {szName = "�i�m kinh nghi�m", nExp=3000000},
	[80] = {szName = "�i�m kinh nghi�m", nExp=4000000},
	[100] = {szName = "�i�m kinh nghi�m", nExp=5000000},
	[200] = {szName = "�i�m kinh nghi�m", nExp=10000000},
	[300] = {szName = "�i�m kinh nghi�m", nExp=15000000},
	[400] = {szName = "�i�m kinh nghi�m", nExp=20000000},
	[500] = {szName = "�i�m kinh nghi�m", nExp=25000000},
	[600] = {szName = "�i�m kinh nghi�m", nExp=30000000},
	[700] = {szName = "�i�m kinh nghi�m", nExp=35000000},
	[800] = {szName = "�i�m kinh nghi�m", nExp=40000000},
	[900] = {szName = "�i�m kinh nghi�m", nExp=45000000},
	[1000] = {szName = "�i�m kinh nghi�m", nExp=50000000},
	[1100] = {szName = "�i�m kinh nghi�m", nExp=55000000},
	[1200] = {szName = "�i�m kinh nghi�m", nExp=60000000},
	[1300] = {szName = "�i�m kinh nghi�m", nExp=65000000},
}

local tbUseTTHT_ItemAward = {
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
			szScriptPath = "\\script\\vng_event\\eventpgaming\\thang7\\npc_sukien.lua",
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
	
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseBudLimit) ~= 1 then
			%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseBudLimit, 1)
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
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� ca th� t�ng <color=yellow>%d <color>Hoa H�ng �� n�a.", %nRedRoseMaxCount - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveRedRose(nCount)
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=400}
	for i = 1, nCount do
		if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbGiveRedRoseLimit) == 1 then
			return nil
		end
		%tbVNG_BitTask_Lib:addTask(%tbGiveRedRoseLimit, 1)
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangHoaHongDo"})		
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangHoaHongDo", "400 �i�m kinh nghi�m", 1)
	end
end

function pActivity:TTHT_Limit()
	if %tbVNG_BitTask_Lib:isMaxBitTaskValue(%tbUseTTHTLimit) == 1 then
		Talk(1, "", "S� d�ng v�t ph�m �� ��t �On gi�i h�n, kh�ng th� s� d�ng th�m")
		return nil
	end
	return 1
end

function pActivity:Use_TTHT()
	local tbExpAward = {szName = "�i�m kinh nghi�m", nExp=0}
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
		Msg2Player(format("S� l��ng v��t qu� gi�i h�n, ng��i ch� ca th� t�ng <color=yellow>%d <color>C�u Ti�n Ng� Y�n n�a.", %nGive_Cuu_Tien_Daily_Max_Count - nTaskVal))
		return nil
	end
	return 1
end

function pActivity:GiveCuuTien(nCount)		
	local tbAward = {szName = "�i�m kinh nghi�m", nExp=500}
	PlayerFunLib:AddTaskDaily(%TSK_GIVE_CUU_TIEN_NGU_YEN_DAILY, nCount)
	for i = 1, nCount do		
		tbAwardTemplet:Give(tbAward, 1, {"EventVuLanBaoHieu", "TangCuuTienNguYen"})
		tbVngTransLog:Write(%strTranLogFolder, %nPromotionID, "TangCuuTienNguYen", "500 �i�m kinh nghi�m", 1)
	end
	return 1
end