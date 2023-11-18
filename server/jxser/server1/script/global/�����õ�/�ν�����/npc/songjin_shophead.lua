IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");

Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

Include("\\script\\lib\\awardtemplet.lua")

function cutdowntimefix(nWeekDay, nDay, nMonth, nYear, nMonthDay)
	if nDay > nMonthDay then
		nDay = nDay - nMonthDay
		nMonth = nMonth + 1
		if nMonth > 12 then
			nMonth = 1
			nYear = nYear + 1
		end
	end
	return nDay, nMonth, nYear
end

function getcutdowntime(nWeekDay, nCurTime)
	--									1,	2,	3,	4,	5,	6,	7,	8,	9,	10,	11,	12
	local tbMonthDay = {31, 28, 31, 30, 31, 30, 31, 31, 30,	31, 30, 31}
	local nTmp = nCurTime
	local nYear = floor(nTmp/100000000)
	nTmp = mod(nTmp, 100000000)
	local nMonth = floor(nTmp/1000000)
	nTmp = mod(nTmp, 1000000)
	local nDay = floor(nTmp/10000)
	nTmp = mod(nTmp, 10000)
	local nHour = floor(nTmp/100)
	nTmp = mod(nTmp, 100)
	local nMinute = nTmp;
	if ((0 == mod(nYear, 4)) and (0 ~= mod(nYear, 100))) or (0 == mod(nYear, 400)) then
		tbMonthDay[2] = tbMonthDay[2] + 1
	end
	if nWeekDay > 0 then
		nDay = nDay + 7 - nWeekDay
		nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
	else
		if nHour < 23 then
		else
			nDay = nDay + 7
			nDay, nMonth, nYear = cutdowntimefix(nWeekDay, nDay, nMonth, nYear, tbMonthDay[nMonth])
		end
	end 
	local nResult = 0
	nResult = nMonth * 1000000 + nDay * 10000 + 2300
	return nResult
end


function wushuangmengjiang()
	Say("V� khen ng�i ng��i c� c�ng lao � chi�n tr��ng, ng��i n�o c� c�ng �t c� th��ng.", 6, 
		"Ta mu�n xem tr��c c�c danh hi�u v� v�ng s�ng/battles_PreViewTitle", 
		"Xem x�p h�ng chi�n tr��ng c�a tu�n tr��c/getranklist", 
		"Xem x�p h�ng chi�n tr��ng hi�n t�i/getcurranklist", 
		"Ta ��n �� nh�n th��ng/guanghuan_sure", 
		"T�m hi�u quy t�c chi ti�t/getrule", 
		"Ch�ng qua ta gh� ch�i./no"
		)
end

function getrule()
	Say("Trong 1 tu�n ph�i l�t v�o Top 10, ng��i n�o ��t �i�m cao nh�t s� ���c tri�u ��nh s�c phong danh hi�u <color=yellow>V� song m�nh t��ng<color> v� ���c tr�ng th��ng",2, "Ta mu�n t�m hi�u chuy�n kh�c/wushuangmengjiang", "Ch�ng qua ta gh� ch�i/no");
end

function battles_PreViewTitle()
	Say("Xin ch�n danh hi�u c�n xem!", 4, "S�t Th�n Chuy�n Th�/#battles_TitleTop(1)", "L�c �p Qu�n H�ng/#battles_TitleTop(2)", "Qu�n Ng�c Thi�n V��ng/#battles_TitleTop(3)", "Th�i, th� n�y kh�ng d�nh cho ta/OnCanel")
end

function battles_TitleTop(Value)
	local battlesPreTitle
	if Value == 1 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\weimengwushuang.spr>Danh Hi�u: <link> <color=green>S�t Th�n Chuy�n Th�<color>"
	elseif Value == 2 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\liyaqunxiong.spr>Danh Hi�u: <link> <color=green>L�c �p Qu�n H�ng<color>"
	elseif Value == 3 then
		battlesPreTitle = "<link=image:\\spr\\skill\\songjin\\dubatianxia.spr>Danh Hi�u: <link> <color=green>Qu�n Ng�c Thi�n V��ng<color>"
	end
	CreateNewSayEx(battlesPreTitle, {{"Xem danh hi�u kh�c", battles_PreViewTitle}, {"K�t th�c ��i tho�i", OnCanel}})
end

function getranklist()
	local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10251, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s ��ng h�ng%s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta mu�n t�m hi�u chuy�n kh�c", wushuangmengjiang})
	tinsert(tbOpt, {"K�t th�c ��i tho�i"})
	CreateNewSayEx(szranklist, tbOpt)
end

function guanghuan_sure()
	--[dinhhq][20101230]:thay doi phan thuong TKTT
--		local nWeekDay = tonumber(GetLocalDate("%w"));
--		local nCurTime = tonumber(GetLocalDate("%Y%m%d%H%M"));
--		local nCutDownTime = getcutdowntime(nWeekDay, nCurTime)
--		get_wushuangguanghuan(nCutDownTime)
	local szPlayerName = GetName()
	for i = 1, 3 do	
		local szname, nrank, nsect, ngender = Ladder_GetLadderInfo(10251, i);	
		if(szPlayerName == szname and 0 ~= nrank) then		
			local nWeek = tonumber(GetLocalDate("%W"));
			if (GetBitTask(2762, 12, 18) ~= nWeek) then
				SetBitTask(2762, 12, 18, nWeek)
				get_TTTCAward(i)				
			else
				Talk(1, "", "��i hi�p kh�ng ph�i l� �� nh�n th��ng r�i sao?")				
			end
			return		
		end	
	end
	Say("Ch� c� 3 ng��i ���c ph�p nh�n th��ng, mu�n nh�n th��ng h�y c� g�ng gi�t gi�c.", 2, "Ta mu�n t�m hi�u chuy�n kh�c/wushuangmengjiang", "Ch�ng qua ta gh� ch�i/no")
end

function get_wushuangguanghuan(nCutDownTime)
do
	 return
end
	AddSkillState(966, 1,2, nCutDownTime, 1)
	AddSkillState(979, 1,2, nCutDownTime, 1)
end

--Change Song Jin Box bind state - Modified By DinhHQ - 20120319
local tbProduct = {szName="T�ng kim b� b�o",tbProp={6, 1, 2741, 1, 0, 0},nBindState=-2}	

function tetan2mibao()
	local G = 6
	local D = 1
	local P = 2740	-- ��̽�����p
	if GetTask(751) < 2000 then 
		Say("�i�m ng�i t�ch l�y kh�ng ��.", 1, "Kh�ng/no")
		return 
	end
	-- �ж��Ƿ������̽����
	local nCount = CalcItemCount(3, G, D, P, -1) 
	
	if nCount == 0 then
		Say("Kh�ng c� b�o r��ng kh�ng th� ��i.", 1, "Kh�ng/no")
		return
	end
	-- ��ȥ����
	ConsumeItem(3, 1, G, D, P, -1)	-- ��̽�����p
	tbAwardTemplet:GiveAwardByList(%tbProduct, "tetanbaoxiang2songjingmibao", 1)
end

function jifen2mibao()
	local nEnergyMark = 100
	local nJifenMark = 500
	local nEnergy = GetEnergy()
	if nEnergy < nEnergyMark then
		Say("Ng�i ��ch tinh luy�n th�ch kh�ng ��, l�n sau tr� l�i �i", 1, "Kh�ng/no")
		return
	end
	
	local nJifen = nt_getTask(747)
	if nJifen < nJifenMark then
		Say("�i�m ng�i t�ch l�y kh�ng ��.", 1, "Kh�ng/no")
		return
	end
	
	ReduceEnergy(nEnergyMark)	-- �۵�����ʯ
	nt_setTask(747, floor(nt_getTask(747) - nJifenMark)) -- �۵�����
	tbAwardTemplet:GiveAwardByList(%tbProduct, "jifenjingli2songjingmibao", 1)
	Jilu_jinglixiaohao(nEnergyMark)	-- ���ݢ���һ��
end

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 0.02

function duihuangmibao()
	local szMsg = format("L�a ch�n ��i l�y h�nh th�c :")
	local tbOpt = {}
	
	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("V� b�o v� v�t ph�m an to�n, xin m�i b�o ��m trang b� c�n l�i 1 %dx%d", nWidth, nHeight))
		return 
	end
	
	tinsert(tbOpt, {"��c th� b�o r��ng", tetan2mibao})
	tinsert(tbOpt, {"�i�m t�ch l�y c�ng tinh luy�n th�ch", jifen2mibao})
	CreateNewSayEx(szMsg, tbOpt)	
end

function Jilu_jinglixiaohao(nCount)
	AddStatData("jlxiaohao_duihuansongjinmibao", nCount)
end

function getcurranklist()
	local tbNum = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}
	local szranklist = ""
	for i = 1, 10 do
		local szname, nrank, nsect, ngender= Ladder_GetLadderInfo(10250, i);
		if szname ~= nil and nrank ~= 0 then
			szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], szname, nrank);
		else
			szranklist = format("%s ��ng h�ng %s: <%s> %d\n", szranklist, tbNum[i], "Kh�ng", 0);
		end
	end
	local tbOpt = {}
	tinsert(tbOpt, {"Ta mu�n t�m hi�u chuy�n kh�c", wushuangmengjiang})
	tinsert(tbOpt, {"K�t th�c ��i tho�i"})
	CreateNewSayEx(szranklist, tbOpt)
end

function get_TTTCAward(nRank)
	local battlesAwardTitle
	if nRank == 1 then
		battlesAwardTitle = 324
	elseif nRank == 2 then
		battlesAwardTitle = 325
	elseif nRank == 3 then
		battlesAwardTitle = 326
	end
	battles_TitleAwardApply(battlesAwardTitle)
	local tbExp =
		 {
			-- {nExp =400e6},
			-- {nExp =300e6},
			-- {nExp =200e6}
			
			-- {nExp =40000000},
			-- {nExp =30000000},
			-- {nExp =20000000}		
			
			{nExp =6000000},
			{nExp =4000000},
			{nExp =2000000}								
		};
	local szLog = format("T�ng kim thi�n t� tham chi�n nh�n th��ng %d", nRank)
	tbAwardTemplet:GiveAwardByList(tbExp[nRank], szLog)
end

function battles_TitleAwardApply(TitleID)
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(TitleID, 2, nTime)
	Title_ActiveTitle(TitleID)
	SetTask(1122, TitleID)
	Msg2Player("Ch�c m�ng T��ng qu�n �� nh�n v� k�ch ho�t danh hi�u <color=yellow>"..Title_GetTitleName(TitleID).."<color> trong <color=green>7<color> ng�y")
end