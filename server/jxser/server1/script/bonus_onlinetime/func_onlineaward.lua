Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\task\\random\\task_head.lua");
Include("\\script\\baoruongthanbi\\head.lua");

tbRandomTask =
{
	211,
	212,
	213,
	214,
	215,
	216,
	222,
	224,
	225,
	226,
	227,
	228,
}
--
--
tbOnlineAwardExp =
{
	{szName = "����", nExp_tl = 15000000},
}

tbOnlineAwardHuyenTinh =
{
	{szName="������ʯ", tbProp={6,1,147,2,0,0}, nCount=10},
	{szName="������ʯ", tbProp={6,1,147,3,0,0}, nCount=10},
	{szName="������ʯ", tbProp={6,1,147,4,0,0}, nCount=10},
}
--
function IsActiveGetHuyenTinh()
	local nCurDate = tonumber(GetLocalDate("%Y%m%d"))
	if (nCurDate <= 20201110) then
		return 1
	else
		return 0
	end
end

function OnlineAward()

	 OnlineAward_ResetStillOnlineNewDay()
	
	local tbOpt = {};
		local szTitle = format("Xin ��i hi�p l�a ch�n:");
		tbOpt = 
		{
			"L�a ch�n �y th�c online/OnlineAward_GetBonus",
			"Ki�m tra th�i gian �y th�c/OnlineAward_ShowTimeNow",
			"K�t th�c/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
end

function OnlineAward_GetBonus()
--	if CheckIPBonus() == 0 then
--		Say("Ŀǰ��ϵ���ܸ콱�����Ժ�����!",0)
--		return
--	end
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("Hi�n t�i ��i hi�p kh�ng th� xem ���c th�ng tin. Xin th� l�i!",0)
		return		
	end

	OnlineAward_SummaryOnlineTime()
	OnlineAward_StartTime()
	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	if nHour < 1 then
		Say("��i hi�p �y th�c ch�a ���c 1 canh gi�!",0)
		return
	end
	
	if (PlayerFunLib:CheckTaskDaily(BNCQ_TASKID_GET_TIMES,6,"H�m nay ��i hi�p �� nh�n ph�n th��ng 6 l�n, ng�y mai quay l�i �i.","<") ~= 1) then
			return
	end
	
	if CalcFreeItemCellCount() < 1 then
		Say("��i hi�p kh�ng c�n �� ch� tr�ng!",0)
		return
	end
	
	local tbOpt = {};
		local szTitle = format("��i hi�p, xin m�i l�a ch�n ph�n th��ng:");
		tbOpt = 
		{
			"Nh�n ph�n th��ng ��c bi�t/#OnlineAward_ConfirmBonus()",
			"��2�Ƚ�Ʒ/#OnlineAward_ConfirmBonus(2)",
			"K�t th�c/Cancel",
		}
	tinsert(tbOpt, 1, szTitle)
	CreateTaskSay(tbOpt);
	
	
--	if OnlineAward_PayTime(1*60*60) == 1 then	
--		PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
--		for i = 1, 10 do AddLenhBaiBH() end
--		for i = 1, 10 do AddMocNhan() end
--		tbAwardTemplet:GiveAwardByList({szName = "���촸", tbProp={6,1,2348,1,0,0}, nExpiredTime = 10080, nBindState = -2, nCount = 2}, "Online�콱");
--	end
	
end


function OnlineAward_ConfirmBonus()
	if (nType == 1) then
		if OnlineAward_PayTime(1*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			for i = 1, 10 do AddLenhBaiBH() end
			for i = 1, 10 do AddMocNhan() end
			if (IsActiveGetHuyenTinh() == 1) then
				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online�콱");
			end
			local tbAward = {szName="T�ng t�",tbProp={6,1,30086,1,0,0},nCount=10,nExpiredTime=20110220}
			tbAwardTemplet:GiveAwardByList(tbAward, "[VNG][Lunar Year 2011][Online�콱]");
		end
	else
		if OnlineAward_PayTime(1*60*60) == 1 then	
			PlayerFunLib:AddTaskDaily(BNCQ_TASKID_GET_TIMES,1)
			tbAwardTemplet:GiveAwardByList(tbOnlineAwardExp[1], "Online �콱");
			if (IsActiveGetHuyenTinh() == 1) then
				tbAwardTemplet:GiveAwardByList(tbOnlineAwardHuyenTinh, "Online nh�n th��ng");
			end
		end
	end
end


function OnlineAward_ShowTimeNow()
	if OnlineAward_Check_TransferLife() ~= 1 then
		Say("Hi�n t�i kh�ng th� xem ���c th�ng tin. Xin th� l�i!",0)
		return		
	end
	OnlineAward_SummaryOnlineTime()	
	local nHour, nMin, nSec = OnlineAward_ShowTime()
	local strMsg = format("Th�i gian �y th�c r�i m�ng \n\t<color=yellow> %d <color> gi� <color=yellow> %d <color> ph�t <color=yellow> %d <color> gi�y.",nHour, nMin, nSec)
	OnlineAward_StartTime()
	Talk(1,"Online ���c",strMsg)
end

function AddLenhBaiBH()
do return end
	--local nRandomTaskID = createRandomTask();
	local nRandomIndex = random(1, getn(tbRandomTask))
	local nRandomTaskID = tbRandomTask[nRandomIndex]
	
	nRandomItemIndex = AddItem(6, 2, 1020, 0, 1, 0, 0);
	SetItemMagicLevel(nRandomItemIndex, 1, nRandomTaskID);
	nExpiredTime = BNCQ_OneDayTime
	ITEM_SetExpiredTime(nRandomItemIndex, nExpiredTime);
	SetItemBindState(nRandomItemIndex, -2);
	SyncItem(nRandomItemIndex);
	local strItem = GetItemName(nRandomItemIndex)
	Msg2Player("Ng��i nh�n ���c "..strItem)
	WriteLog(date("%Y%m%d %H%M%S").."\t".." Online �ս�"..GetAccount().."\t"..GetName().."\t".." Online �콱����"..strItem)
end

function AddMocNhan()
do return end
		local ndx = AddItem(6,1,1085,1,0,0)
		SetSpecItemParam(ndx, 2, 9)
		nExpiredTime = BNCQ_OneDayTime
		ITEM_SetExpiredTime(ndx, nExpiredTime);
		SetItemBindState(ndx, -2);
		SyncItem(ndx)
		local strItem = GetItemName(ndx)
		Msg2Player("Ng��i nh�n ���c "..strItem)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." Online �ս� "..GetAccount().."\t"..GetName().."\t".." Online �콱"..strItem)
end

function Cancel()
end
