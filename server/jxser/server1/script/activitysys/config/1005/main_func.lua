Include("\\script\\activitysys\\config\\1005\\check_func.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\vng_feature\\checkinmap.lua")
Include("\\script\\tong\\tong_header.lua");
Include("\\script\\lib\\log.lua")
IncludeLib("TONG")
Include("\\script\\vng_lib\\bittask_lib.lua")
Include("\\script\\activitysys\\config\\1005\\personal_award.lua")
Include("\\script\\activitysys\\config\\1005\\personal_quest.lua")
Include("\\script\\activitysys\\config\\1005\\exchange_gold_equip.lua")
Include("\\script\\activitysys\\config\\1005\\dailyaward.lua")
Include("\\script\\vng_lib\\VngTransLog.lua")
Include("\\script\\activitysys\\config\\1005\\exchange_wrong_equip.lua")
tbPVLB_Main = {}

function tbPVLB_Main:MainDialog()
	local tbOpt = {}
	if tbVNG_BitTask_Lib:getBitTask(tbBITTSK_DONATE_ITEM_LIMIT) == 0 then
		tinsert(tbOpt, {"N�p T�n Th� Kim B�i", tbPVLB_Main.DonateItem, {tbPVLB_Main}})
	end
	tinsert(tbOpt, {"Ki�m tra ph�n th��ng", tbPVLB_Award.MainDialog, {tbPVLB_Award}})
	tinsert(tbOpt, {"Ph�n th��ng h�ng ng�y", PhongVanLenhBai2011.ShowDialogDaily, {PhongVanLenhBai2011}})
	tinsert(tbOpt, {"Nhi�m v� t�n th�", tbPVLB_Quest.Main, {tbPVLB_Quest}})
	tinsert(tbOpt, {"��i trang b�", tbPVLB_ExchgEquip.MainDialog, {tbPVLB_ExchgEquip}})
	if tbVNG_BitTask_Lib:getBitTask(tbBITTASK_EXCHANGE_WRONG_EQUIP) == 0 then
		tinsert(tbOpt, {"��i l�i trang b� nh�n sai", tbExchangeWrongEquip.GetGoldEquipListInRoom, {tbExchangeWrongEquip}})
	end
	tinsert(tbOpt, {"H�y b� "})
	CreateNewSayEx("Phong V�n L�nh B�i:", tbOpt)
end

function confirm_donate_ttkb(nCount)
	local nW, _, _ = GetWorldPos()
	if nW ~= 162 or GetFightState() ~= 0 then
		Talk(1, "", "Thao t�c n�y ch� th�c hi�n ���c trong th�nh ��i L�.")
		return
	end
	if tbVNG_BitTask_Lib:CheckBitTaskValue(tbBITTSK_DONATE_ITEM_LIMIT, 1, "M�i nh�n v�t ch� ���c n�p v�t ph�m n�y 1 l�n.", "~=") ~= 1 then
		return
	end
	if nCount > 1 or nCount <= 0 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i")
		return
	end
	local nIdx=GetGiveItemUnit(1)
	local nG,nD,nP,_,_=GetItemProp(nIdx)
	if nG ~= 6 or nD ~= 1 or nP ~= 30144 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i")
		return
	end
	if IsMyItem(nIdx) ~= 1 or RemoveItemByIndex(nIdx) ~= 1 then
		return
	end
	local szTongName, nTongID = GetTongName();	
	local nItemCount = TONG_GetTaskValue(nTongID, nTS_TONG_TASK_ITEM_COUNT)
	if nItemCount >= 0 then
		tbVNG_BitTask_Lib:setBitTask(tbBITTSK_DONATE_ITEM_LIMIT, 1)
		TONG_ApplySetTaskValue(nTongID, nTS_TONG_TASK_ITEM_COUNT, nItemCount + 1)
		Msg2Player(format("N�p th�nh c�ng 1 <color=yellow>T�n Th� Kim B�i<color> v�o bang h�i. S� l��ng hi�n t�i: <color=green>%d<color>", nItemCount + 1))
		tbLog:PlayerActionLog("PhongVanLenhBai", "NopTanThuKimBai")
		tbVngTransLog:Write("201109_EventPhongVanLenhBai/", 11, "NopTanThuKimBai", "T�n Th� Kim B�i trong bang: "..nItemCount + 1, 1)
	end	
end

function tbPVLB_Main:DonateItem()
	local nW, _, _ = GetWorldPos()
	if nW ~= 162 or GetFightState() ~= 0 then
		Talk(1, "", "Thao t�c n�y ch� th�c hi�n ���c trong th�nh ��i L�.")
		return
	end
	if tbPVLB_Check:IsNewPlayer() ~= 1 then
		return
	end
	local szTongName, nTongID = GetTongName();	
	if szTongName == nil or szTongName == "" then
		Talk(1, "", "C�c h� ch�a gia nh�p bang h�i kh�ng th� giao n�p T�n Th� Kim B�i")
		return
	end
	if tbVNG_BitTask_Lib:CheckBitTaskValue(tbBITTSK_DONATE_ITEM_LIMIT, 1, "M�i nh�n v�t ch� ���c n�p v�t ph�m n�y 1 l�n.", "~=") == 1 then
		GiveItemUI("N�p T�n Th� Kim B�i", "Y�u C�u: T�n Th� Kim B�i", "confirm_donate_ttkb", "onCancel", 1)
	end
end

