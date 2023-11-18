Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\vng_feature\\checkinmap.lua")
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
PhongVanLenhBai2011 = {}
PhongVanLenhBai2011.TASK_DAILY_AWARD_TIMES1 = 3090
PhongVanLenhBai2011.TASK_DAILY_AWARD_TIMES2 = 3091
PhongVanLenhBai2011.TASK_DAILY_WEEKEND_AWARD = 3092
PhongVanLenhBai2011.TASK_COUNT_DAILY_AWARD_TIMES1 = 3093
PhongVanLenhBai2011.TASK_COUNT_DAILY_AWARD_TIMES2 = 3094
PhongVanLenhBai2011.TASK_COUNT_WEEKEND_AWARD = 3095
PhongVanLenhBai2011.tbAwardDaily1 = 
{
	[1]  =
	{
		{szName = "S�t th� gi�n (c�p 90)", tbProp = {6, 1, 400, 90,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Anh H�ng Thi�p", tbProp = {6, 1, 1604,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Thi�n Long L�nh", tbProp = {6, 1, 2256,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Qu� Huy Ho�ng (cao) ", tbProp = {6, 1, 906,1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		{szName = "T�ng Kim Phi T�c ho�n", tbProp = {6, 1, 190,1,0,0}, nCount = 50, nExpiredTime = 43200, nBindState = -2},
		{szName = "L�nh b�i ", tbProp = {6, 1, 157,1,0,0}, nCount = 50, nExpiredTime = 43200, nBindState = -2},
	},
	[2] =
	{
		{szName = "Ng�n L��ng", nJxb =1000000, nRate = 34, nCount = 1},
		{szName = "Ng�n L��ng", nJxb =2000000, nRate = 33, nCount = 1},
		{szName = "Ng�n L��ng", nJxb =3000000, nRate = 33, nCount = 1},
	},
	[3] =
	{
		{szName = "Ti�n Th�o L� ", tbProp = {6,1,71,1,0,0}, nCount = 5, nRate = 50, nBindState = -2},
		{szName = "Ti�n Th�o L� ��c bi�t", tbProp = {6,1,1181,1,0,0}, nCount = 5, nRate = 50, nBindState = -2},
	},
	[4] =
	{
		{szName = "B�ch Ni�n Tr�n L�", tbProp = {6,1,2266,1,0,0}, nCount = 1, nRate =34, nExpiredTime = 10080, nBindState = -2},
		{szName = "Thi�n Ni�n Tr�n L�", tbProp = {6,1,2267,1,0,0}, nCount = 1, nRate =33, nExpiredTime = 10080, nBindState = -2},
		{szName = "V�n Ni�n Tr�n L�", tbProp = {6,1,2268,1,0,0}, nCount = 1, nRate =33, nExpiredTime = 10080, nBindState = -2},
	},
}

PhongVanLenhBai2011.tbAwardDaily2 =
{
	[1] =
	{
		{szName = "Ph� Qu� C�m H�p", tbProp = {6, 1, 2402,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ng�c Qu�n", tbProp = {6, 1, 2311,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "L�nh b�i ", tbProp = {6, 2, 1020,1,0,0}, nCount = 40, nExpiredTime = 10080, nBindState = -2, CallBack = function (nItemIndex) SetItemMagicLevel(nItemIndex, 1, random(211,216)) end},
		{szName = "M�c nh�n", tbProp = {6, 1, 2969,1,0,0}, nCount = 40, nExpiredTime = 10080, nBindState = -2},
	},
	[2] =
	{
		{szName = "Long Huy�t Ho�n", tbProp = {6,1,2117,1,0,0}, nCount = 1, nRate =20, nExpiredTime = 10080, nBindState = -2},
		{szName = "H�i Long Ch�u", tbProp = {6,1,2115,1,0,0}, nCount = 1, nRate =20, nExpiredTime = 10080, nBindState = -2},
		{szName = "L�nh B�i Th�y T�c", tbProp = {6,1,2745,1,0,0}, nCount = 1, nRate =20, nExpiredTime = 10080, nBindState = -2},
		{szName = "Thi�n B�o Kh� L�nh", tbProp = {6,1,2813,1,0,0}, nCount = 1, nRate =20, nExpiredTime = 10080, nBindState = -2},
		{szName = "Vi�m �� L�nh", tbProp = {6,1,1617,1,0,0}, nCount = 1, nRate =20, nExpiredTime = 10080, nBindState = -2},
	},
}

PhongVanLenhBai2011.tbWeekendAward = 
{
	[1] =
	{
		{szName = "Ho�ng Kim �n C�p 3 (C��ng h�a)", tbProp = {0,3207}, nRate = 17, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ho�ng Kim �n C�p 4 (C��ng h�a)", tbProp = {0,3208}, nRate = 17, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ho�ng Kim �n C�p 5 (C��ng h�a)", tbProp = {0,3209}, nRate = 16, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ho�ng Kim �n C�p 3 (Nh��c h�a)", tbProp = {0,3217}, nRate = 17, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ho�ng Kim �n C�p 4 (Nh��c h�a)", tbProp = {0,3218}, nRate = 17, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ho�ng Kim �n C�p 5 (Nh��c h�a)", tbProp = {0,3219}, nRate = 16, nQuality = 1, nExpiredTime = 10080, nBindState = -2},
	},
	[2] =
	{
		{szName = "Qu� Ho�ng Kim", tbProp = {6, 1,907,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "H�n Nguy�n Linh L�", tbProp = {6, 1,2312,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "M�nh b�n �� s�n h� x� t�c (1000 m�nh)", tbProp = {6, 1,2514,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "M�t n� Nguy�n so�i", tbProp = {0, 11,447,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	},
	[3] =
	{
		{szName = "B�ch C�u ho�n", tbProp = {6, 1, 74, 1, 0, 0}, nCount = 1, nExpiredTime = 10080, nRate = 34, nBindState = -2},
		{szName = "��i B�ch C�u ho�n", tbProp = {6, 1, 130, 1, 0, 0}, nCount = 1, nExpiredTime = 10080, nRate = 33, nBindState = -2},
		{szName = "B�ch C�u Ho�n ��c bi�t", tbProp = {6, 1, 1157, 1, 0, 0}, nCount = 1, nExpiredTime = 10080, nRate = 33, nBindState = -2},
	},
	[4] =
	{
		{szName = "B�ch C�u Ho�n k� n�ng", tbProp = {6, 1, 1372,1,0,0}, nRate = 34, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "��i B�ch C�u ho�n (K� n�ng) ", tbProp = {6, 1, 977,1,0,0}, nRate = 33, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		{szName = "B�ch C�u Ho�n k� n�ng ��c bi�t", tbProp = {6, 1, 1182,1,0,0}, nRate = 33, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	},
	[5] =
	{
		{szName = "T� H�i Ti�u Di�u ��n L� H�p", tbProp = {6, 1, 2398,1,0,0}, nCount = 1, nRate = 34, nExpiredTime = 10080, nBindState = -2},
		{szName = "C�u Thi�n V�n Du ��n L� H�p", tbProp = {6, 1, 2400,1,0,0}, nCount = 1, nRate = 33, nExpiredTime = 10080, nBindState = -2},
		{szName = "Ng� Ch�u L�ng Kh�ng ��n L� H�p", tbProp = {6, 1, 2399,1,0,0}, nCount = 1, nRate = 33, nExpiredTime = 10080, nBindState = -2},
	},
	[6] =
	{
		{szName = "B�ch Ni�n Huy Ho�ng qu�", tbProp = {6, 1, 2269,1,0,0}, nCount = 1, nRate = 34, nExpiredTime = 10080, nBindState = -2},
		{szName = "Thi�n Ni�n Huy Ho�ng qu�", tbProp = {6, 1, 2270,1,0,0}, nCount = 1, nRate = 33, nExpiredTime = 10080, nBindState = -2},
		{szName = "V�n Ni�n Huy Ho�ng qu�", tbProp = {6, 1, 2271,1,0,0}, nCount = 1, nRate = 33, nExpiredTime = 10080, nBindState = -2},

	},
} 

function PhongVanLenhBai2011:ShowDialogDaily()
	--Ki�m tra nh�p m� code Phong Van Lenh Bai
	--if tbPVLB_Check:IsNewPlayer() ~= 1 then
		--Talk(1, "", "C�c h� kh�ng �� �i�u ki�n tham gia ch��ng tr�nh.")
		--return
	--end
	local nDay = tonumber(date("%w"))
	local nTime =tonumber(GetLocalDate("%H%M"))
	local szTitle = "Ph�n th��ng h�ng ng�y"
	local tbOpt = {}
	
	if (nTime >= 0 and nTime <= 1400) then
		tinsert(tbOpt,  "Nh�n ph�n th��ng h�ng ng�y/#PhongVanLenhBai2011:GetDailyAwardTimes1()")
	else
		tinsert(tbOpt,  "Nh�n ph�n th��ng h�ng ng�y/#PhongVanLenhBai2011:GetDailyAwardTimes2()")
	end
	
	if (nDay == 5 or nDay == 6 or nDay == 0) then
		tinsert(tbOpt,  "Nh�n ph�n th��ng cu�i tu�n/#PhongVanLenhBai2011:GetWeekendAward()")
	end
	tinsert(tbOpt,  "Kh�ng c�n g�/#PhongVanLenhBai2011:Cancel()")
	
	Say(szTitle, getn(tbOpt), tbOpt)
end

function PhongVanLenhBai2011:GetDailyAwardTimes1()
	if PlayerFunLib:VnCheckInCity () ~= 1 then
		return
	end
	if (PlayerFunLib:CheckTransLifeCount(2,"Ph�i l� nh�n v�t chuy�n sinh l�n 2 m�i nh�n ���c ph�n th��ng n�y","==") ~= 1) then
		return
	end
	
	 if (PlayerFunLib:CheckTaskDaily(self.TASK_DAILY_AWARD_TIMES1, 1, "H�m nay ��i hi�p �� nh�n ph�n th��ng n�y r�i, ng�y mai quay l�i nh�!", "<") ~= 1)then
	 	return
	 end
	 
	local nGetAwardTimes = GetTask(self.TASK_COUNT_DAILY_AWARD_TIMES1)
	if (nGetAwardTimes >= 60) then
		Talk(1, "", "Ph�n th��ng n�y ch� nh�n ���c t�i �a 60 l�n!")
		return
	end
	
	if CalcFreeItemCellCount() < 59 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 59 � tr�ng!")
		return
	end
	
	PlayerFunLib:AddTaskDaily(self.TASK_DAILY_AWARD_TIMES1, 1)
	SetTask(self.TASK_COUNT_DAILY_AWARD_TIMES1, nGetAwardTimes + 1)
	tbAwardTemplet:Give(self.tbAwardDaily1, 1, {"PhongVanLenhBai2011", "NhanThuongHangNgayLan1"})
	tbVngTransLog:Write("201109_EventPhongVanLenhBai/", 11, "NhanThuongHangNgayLan1", "N/A", 1)
end

function PhongVanLenhBai2011:GetDailyAwardTimes2()
	if PlayerFunLib:VnCheckInCity () ~= 1 then
		return
	end
	if (PlayerFunLib:CheckTransLifeCount(2,"Ph�i l� nh�n v�t chuy�n sinh l�n 2 m�i nh�n ���c ph�n th��ng n�y","==") ~= 1) then
		return
	end
	
	 if (PlayerFunLib:CheckTaskDaily(self.TASK_DAILY_AWARD_TIMES2, 1, "H�m nay ��i hi�p �� nh�n ph�n th��ng n�y r�i, ng�y mai quay l�i nh�!", "<") ~= 1)then
	 	return
	 end
	 
	local nGetAwardTimes = GetTask(self.TASK_COUNT_DAILY_AWARD_TIMES2)
	if (nGetAwardTimes >= 60) then
		Talk(1, "", "Ph�n th��ng n�y ch� nh�n ���c t�i �a 60 l�n!")
		return
	end
	
	if CalcFreeItemCellCount() < 59 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 59 � tr�ng!")
		return
	end
	
	PlayerFunLib:AddTaskDaily(self.TASK_DAILY_AWARD_TIMES2, 1)
	SetTask(self.TASK_COUNT_DAILY_AWARD_TIMES2, nGetAwardTimes + 1)
	
	local _ , nTongID = GetTongName()
	if (nTongID > 0) then
		AddContribution(2000)
		Msg2Player("B�n nh�n ���c 2000 �i�m c�ng hi�n bang h�i")
--		WriteLog(date("%Y%m%d %H%M%S").."\t".."PhongVanLenhBai2011"..GetAccount().."\t"..GetName().."\t".."Nh�n th��ng ���c 2000 �i�m c�ng hi�n bang h�i")
		tbLog:PlayerActionLog("PhongVanLenhBai", "NhanThuongHangNgayLan2", "2000 �i�m c�ng hi�n bang h�i")
	end
	
	tbAwardTemplet:Give(self.tbAwardDaily2, 1, {"PhongVanLenhBai2011", "NhanThuongHangNgayLan2"})
	tbVngTransLog:Write("201109_EventPhongVanLenhBai/", 11, "NhanThuongHangNgayLan2", "N/A", 1)
end

function PhongVanLenhBai2011:GetWeekendAward()
	if PlayerFunLib:VnCheckInCity () ~= 1 then
		return
	end
	if (PlayerFunLib:CheckTransLifeCount(2,"Ph�i l� nh�n v�t chuy�n sinh l�n 2 m�i nh�n ���c ph�n th��ng n�y","==") ~= 1) then
		return
	end
	
	if (PlayerFunLib:CheckTaskDaily(self.TASK_DAILY_WEEKEND_AWARD, 1, "H�m nay ��i hi�p �� nh�n ph�n th��ng n�y r�i, ng�y mai quay l�i nh�!", "<") ~= 1)then
	 	return
	 end
	
	local nGetAwardTimes = GetTask(self.TASK_COUNT_WEEKEND_AWARD)
	if (nGetAwardTimes >= 60) then
		Talk(1, "", "Ph�n th��ng n�y ch� nh�n ���c t�i �a 60 l�n!")
		return
	end
	
	if CalcFreeItemCellCount() < 59 then
		Talk(1, "", "H�nh trang ��i hi�p kh�ng �� 59 � tr�ng!")
		return
	end
	
	PlayerFunLib:AddTaskDaily(self.TASK_DAILY_WEEKEND_AWARD, 1)
	SetTask(self.TASK_COUNT_WEEKEND_AWARD, nGetAwardTimes + 1)
	tbAwardTemplet:Give(self.tbWeekendAward, 1, {"PhongVanLenhBai", "NhanThuongCuoiTuan"})
	tbVngTransLog:Write("201109_EventPhongVanLenhBai/", 11, "NhanThuongCuoiTuan", "N/A", 1)
end

