-- Ұ���������ű�
-- Edited by peres
-- 2004/12/24 ʥ����ǰҹ

IncludeLib("FILESYS");
IncludeLib("RELAYLADDER");	--���а�
Include("\\script\\task\\newtask\\tasklink\\tasklink_head.lua"); -- ��������ͷ�ļ�
Include("\\script\\task\\newtask\\tasklink\\tasklink_award.lua"); -- �������Ľ���ͷ�ļ�
Include("\\script\\event\\storm\\function.lua")	--Storm
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

--Storm �����Ľ�������
function storm_goon_start(gameid, b_nonext)
	
	local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
	
		-- ÿ������ƴ��� +1
		nNum = nNum + 1;
		SetTask(ID_TASKLINK_LIMITNUM, nNum);
		
	if b_nonext then return end
	tl_dealtask()
	Task_MainDialog()
end

-- ��������Ƿ��Ѿ�����ÿ�������
function checkTask_Limit()
	
-- ÿ�����ƴ����Ĵ���
local nNowDate = tonumber(GetLocalDate("%y%m%d"));
local nOldDate = GetTask(ID_TASKLINK_LIMITDATE);
local nNum     = GetTask(ID_TASKLINK_LIMITNUM);
	
	if nNowDate~=nOldDate then
		
		SetTask(ID_TASKLINK_LIMITDATE, tonumber(GetLocalDate("%y%m%d")) );
		SetTask(ID_TASKLINK_LIMITNUM, 0);
		SetTask(ID_TASKLINK_LIMITCancelCount, 0);
		return 1;
		
	else
		-- 40 �ε�����
		if nNum>=40 then
			Say("������ÿ�������������ܳ���40�Ρ�", 0);
			return 0;
		end;
		
		return 1;

	end;
	
end;
	
	
--Task_BuyGoods = {}
--Task_FindGoods = {}
--Task_ShowGoods = {}
--Task_FindMaps = {}
--Task_UpGround = {}
--Task_WorldMaps = {}
--Task_Level = {}
--Task_MainLevelRate = {}


-- ���������ڴ����
Task_BuyGoods = AssignValue(Task_BuyGoods,TL_BUYGOODS)
Task_FindGoods = AssignValue(Task_FindGoods,TL_FINDGOODS)
Task_ShowGoods = AssignValue(Task_ShowGoods,TL_SHOWGOODS)
Task_FindMaps = AssignValue(Task_FindMaps,TL_FINDMAPS)
Task_UpGround = AssignValue(Task_UpGround,TL_UPGROUND)
Task_WorldMaps = AssignValue(Task_WorldMaps,TL_WORLDMAPS)

Task_MainTaskLink = AssignValue_TaskLink(Task_MainTaskLink,TL_LEVELLINK)
Task_MainLevelRate = AssignValue_TaskRate(Task_MainLevelRate,TL_MAINTASKLEVEL)

-- ���콱���ڴ����
Task_AwardBasic = AssignValue_Award(Task_AwardBasic,TL_AWARDBASIC)

-- ������ɴ����Ľ���
Task_AwardLink = AssignValue_LinkAward(TL_AWARDLINK)

Task_AwardLoop = AssignValue_Award(Task_AwardLoop,TL_AWARDLOOP)

-- ����Ի������ڴ����
Task_TalkGoods = AssignValue_TaskTalk(Task_TalkGoods,TL_TASKGOODSTALK)
Task_TalkBuy = AssignValue_TaskTalk(Task_TalkBuy,TL_TASKBUYTALK)
Task_TalkShow = AssignValue_TaskTalk(Task_TalkShow,TL_TASKSHOWTALK)
Task_TalkFind = AssignValue_TaskTalk(Task_TalkFind,TL_TASKFINDMAPS)
Task_TalkUp = AssignValue_TaskTalk(Task_TalkUp,TL_TASKUPGROUNDTALK)
Task_TalkWorld = AssignValue_TaskTalk(Task_TalkWorld,TL_TASKWORLDTALK)


function Task_NewVersionAward()
	
	local nNum = GetTask(ID_TASKLINK_LIMITNUM);
	local nCancelNum = GetTask(ID_TASKLINK_LIMITCancelCount);
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\huoyuedu\\huoyuedu.lua", "tbHuoYueDu:AddHuoYueDu", "yesourenwu")
	G_ACTIVITY:OnMessage("FinishYesou", nNum, nCancelNum);
	
	-- ÿ����ɵ�30�����⽱��
	if (nNum - nCancelNum) == 30 then
		Msg2Player("��ϲ�㣬���30��Ұ�����񣬻�ö��⽱����");
		tbAwardTemplet:GiveAwardByList({nExp_tl = 60000000}, "��ö��⽱����")
	end
	
	-- ÿ����ɵ�40�����⽱��
	if (nNum == 40 and nCancelNum) == 0 then
		Msg2Player("��ϲ�㣬���40��Ұ�����񣬻�ö��⽱����");
		tbAwardTemplet:GiveAwardByList({nExp_tl = 200000000}, "��ö��⽱����")
	end	
	
end


function main()

	--�������ڻ�ڼ�Ի���
--	local nDate = tonumber(GetLocalDate("%y%m%d"));
--	if (nDate >= 60808 and nDate <= 60815) then
--		local tab_Content = {
--			"Xem c�n nhi�m v?g?�� l�m kh�ng/tasklink_entence",
--		}
--		tinsert(tab_Content, "Ta mu�n l�m m�t v�ng Li�n Hoa/menglanjie");
--		tinsert(tab_Content, "R�i kh�i/Task_Wait");
--		Say("M�y n�m nay chi�n tranh tri�n mi�n, d�n t�nh th�ng kh? Ph��ng tr��ng Thi�u L�m t?mu�n t?ch�c th?trai m�ng L?Vu Lan �� m�i ng��i h��ng ch�t gi�y ph�t y�n b�nh", getn(tab_Content), tab_Content);
--		return
--	end;
	
	tasklink_entence();
end;

function menglanjie()
	if (GetExtPoint(0) <= 0 or GetLevel() < 30) then
		Say("Xin l�i! Ch?c?ng��i ch�i t?c�p <color=red>30, �� n�p th?color> m�i c?th?tham gia ho�t ��ng n�y", 0)
		return 
	end;
	local tab_Content = {
		"Ta mu�n k�t v�ng Kim Li�n Hoa [c�n 9 Kim Li�n Hoa]/#process(1)",
		"Ta mu�n h�p th�nh v�ng M�c Li�n Hoa [c�n 9 M�c Li�n Hoa]/#process(2)",
		"Ta mu�n h�p th�nh v�ng Th�y Li�n Hoa [c�n 9 Th�y Li�n Hoa]/#process(3)",
		"Ta mu�n h�p th�nh v�ng H�a Li�n Hoa [c�n 9 H�a Li�n Hoa]/#process(4)",
		"Ta mu�n h�p th�nh v�ng Th?Li�n Hoa [c�n 9 Th?Li�n Hoa]/#process(5)",
		"Ch?��n th�m �ng ch�t th�i!/Task_Wait"
	}
	Say("Ch?c�n ng��i �i thu th�p �� s?Li�n Hoa v?<color=yellow>"..MAKING_COST.."<color> l��ng ta s?gi�p ng��i k�t v�ng hoa tuy�t ��p. Nh�ng l�u ? m�i ng�y ch?c?th?k�t ���c 2 v�ng Li�n Hoa c�ng thu�c t�nh m?th�i.", getn(tab_Content), tab_Content);
end;

--{name, product}
MAKING_COST = 10000;
MAKING_COUNT = 9;
tab_Flower = {
	{1126, "��", 1131, 1760, 1761}, {1127, "ľ", 1132, 1762, 1763}, {1128, "ˮ ", 1133, 1764, 1765}, {1129, "��", 1134, 1766, 1767}, {1130, "��", 1135, 1768, 1769}
}

function process(nIdx)
	if (nIdx < 1 or nIdx > getn(tab_Flower)) then
		return
	end;
	
	local nIndex;
	if (nIdx == 1) then
		nIndex = 1;
	elseif (nIdx == 2) then
		nIndex = 2;
	elseif (nIdx == 3) then
		nIndex = 3;
	elseif (nIdx == 4) then
		nIndex = 4;
	elseif (nIdx == 5) then
		nIndex = 5;
	end;
	
	Say("Mu�n l�m 1 v�ng <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color> c�n c?9 <color=yellow>"..tab_Flower[nIdx][2].."Li�n Hoa<color>. Ng��i x�c ��nh l�m ch?", 2, "��ng! Xin l�o b�i tr?t�i!/#make_round("..nIndex..")", "Ta s?quay l�i sau!/Task_Wait");
end;

function make_round(nIdx)
	if (GetCash() < MAKING_COST) then
		Say("Xin t�m �� 10000 l��ng r�i h�y quay l�i! Ta ?��y ch?", 1, "���c th�i! Ta �i l�y th�m ti�n!/Task_Wait");
		return
	end;
	
	local nCount = CalcEquiproomItemCount(6,1,tab_Flower[nIdx][1],-1);
	if (nCount < 9) then
		Say("Ng��i h�nh nh?ch�a �� <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color=yellow>. Ch�a �� 9 <color=yellow>"..tab_Flower[nIdx][2].." Li�n Hoa<color> th?ta kh�ng th?gi�p ng��i k�t v�ng "..tab_Flower[nIdx][2].." Li�n Hoa ho�n", 1, "�� ta �i chu�n b?��!/Task_Wait");
		return
	end;
	
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	if (nDate ~= GetTask(tab_Flower[nIdx][4])) then
		SetTask(tab_Flower[nIdx][4], nDate);
		SetTask(tab_Flower[nIdx][5], 0);
	end;
	
	local nTimes = GetTask(tab_Flower[nIdx][5]);
	if (nTimes >= 2) then
		Say(tab_Flower[nIdx][2].."H�m nay �� k�t th�nh c�ng 2 v�ng r�i! Mai h�y ��n nh?", 0)
		return
	end;
	
	Pay(MAKING_COST);
	ConsumeEquiproomItem(9, 6, 1, tab_Flower[nIdx][1], -1);
	SetTask(tab_Flower[nIdx][5], nTimes + 1);
	AddItem(6, 1, tab_Flower[nIdx][3], 1, 0, 0, 0);
	Say("V�ng "..tab_Flower[nIdx][2].." Li�n Hoa c�a ng��i �� k�t xong. H�y mang n?��n ch?L?Quan �i!", 1, "Nh�n v�ng hoa/Task_Wait");
	Msg2Player("B�n nh�n ���c m�t"..tab_Flower[nIdx][2].." Li�n Hoa ho�n");
end;
    
-- �����������
function tasklink_entence()

_TaskLinkDebug() -- �����������޷�������ȥ�� BUG �޸�

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myCountLinks
local myCountTimes

local myCanceled = nt_getTask(1036)
local myTaskTime = GetGameTime() -- ��ȡ��Ϸʱ�䣬�����ж�����Ƿ񱻷�
local n = myTaskTime - nt_getTask(1029)
local myTaskInfo = ""


-- �����ҵ�ǰ��״̬Ϊ��δ�����Ļ��������·���
if (tl_gettaskcourse() == 2) then
	Task_GiveAward()
	return
end

	if ( myCanceled == 10) then
		if (n < 605) then
			Task_Punish()
			return
		else
			myCanceled = 0
			nt_setTask(1036,0)
			Task_Confirm()
		end
	end

	if (tl_gettaskcourse() == 0) then
		-- �����û�п�ʼҰ�ŵ��������Ļ�
--		Say(" V?n�y"..GetPlayerSex().."xem ra �� b�n ba giang h?���c m�t th�i gian d�i r�i nh? c?mu�n tham gia kh�o nghi�m nhi�m v?li�n t�c c�a ta kh�ng?",3,"���c th�i! Ta kh�ng tin c?nhi�m v?n�o l�m kh?d?���c ta/Task_Confirm","Ta mu�n bi�t kh�o nghi�m c�a ng��i n�i c?n�i dung ra sao/Task_Info","Ta b�n r�i, kh�ng r�nh ng�i t�n g�u v�i �ng/Task_Exit");
		Say("Ұ�ţ���λ"..GetPlayerSex().."������������Ҳ��һ��ʱ���ˣ��ɷ�����Ȥ���μ��ҵ�<color=yellow>��������������䣬������ȡ����<color>���������أ�",3,"��ѽ���ҾͲ�����ʲô�������ѵõ��ҵ�/Task_Confirm","����֪����˵�Ŀ����Ǹ�ʲô����/Task_Info","�һ����£�û�պ��������г�/Task_Exit");
	end
	
	if (tl_gettaskcourse() == 3) then

		-- ����Ƿ񳬹�ÿ�������
		if checkTask_Limit()~=1 then return end;
	
		myCountLinks = tl_counttasklinknum(2)
		myCountTimes = tl_counttasklinknum(1)
		
--		Say(":<enter>V?"..GetPlayerSex().."�� ho�n th�nh <color=yellow>"..myCountTimes.."<color>, nhi�m v?n�y ng�y h�m nay c?th?th�c hi�n l�i<color=yellow>"..(40 - GetTask(ID_TASKLINK_LIMITNUM)).."<color>, ng��i c?mu�n l�m n�a kh�ng?",2,"���ng nhi�n, mau cho ta bi�t nhi�m v?ti�p theo l?g?/Task_TaskProcess","�� ta ngh?ng�i m�t l�t ��! Ta b�n r�i/Task_Wait");
		Say("Ұ�ţ�<enter>��λ"..GetPlayerSex().."�Ѿ������ <color=yellow>"..myCountTimes.."<color> ��������������񣬲�֪�㻹��û����Ȥ������������ȥ�أ�",2,"��Ȼ��������֪����һ��������ʲô/Task_TaskProcess","��������Ъһ����ɣ��һ��б������/Task_Wait");
	elseif (tl_gettaskcourse() == 1) then
		Task_MainDialog()
	end

end

-- ��Ӧ��Ұ�ŵĿ��飬��ʽ��ʼ������
function Task_Confirm()

local myTaskID

-- ���������������ֵ��1020 �ű���Ϊ������״̬ר�ñ��������е��ĸ��ֽڷֱ���Ϊ��| �ٴ��� | ������ | �ۻ��� | ��ȡ��ʣ����� |

tl_settaskstate(1,0) -- ���ڽ��е�һ������
tl_settaskstate(2,tl_getfirstlink()) -- ���ڽ��е�һ������
tl_settaskstate(3,tl_getfirstloop()) -- ���ڽ��е�һ������

tl_settaskstate(4,0) -- ʣ�� 0 ��ȡ������Ļ���
nt_setTask(DEBUG_TASKVALUE, 0);

tl_settaskstate(6,0)

storm_ask2start(4)	--Storm ��ʼ��ս
tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuDaTau")
--tbLog:PlayerActionLog("��Ҫ�ص�","NhanNhiemVuDaTau")
end


-- ������һ������
function Task_TaskProcess()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���


-- ����Ƿ񳬹�ÿ�������
if checkTask_Limit()~=1 then return end;

tl_taskprocess() -- ����ִ����һ�ֺ���

storm_goon_start()	--Storm�ָ�

end


-- ����������Ҫ�������
function Task_MainDialog()

local myTaskInfo = tl_gettaskinfo() -- �������ϸ��Ϣ
local myTaskTotalNum = tl_counttasklinknum(1) + 1; -- ���������ͳ��
local myTitleText = "";

if (myTaskInfo == nil) then
	myTaskInfo = ""
end

-- ��������״̬Ϊ�Ѿ���������δ���
tl_settaskcourse(1)


if myTaskTotalNum==0 or myTaskTotalNum==nil then
	myTitleText = "Ұ�ţ�<enter><enter>"..myTaskInfo;
else
	myTitleText = "Ұ�ţ�<enter><enter>���ǵ� <color=green>"..myTaskTotalNum.."<color> ������"..myTaskInfo;
end;

Say(myTitleText,
	4,
--	"Bi�t r�i, �� ta ho�n th�nh nhi�m v?xong m�i l�i t�m ng��i/Task_Wait",
--	"ta �� ho�n th�nh nhi�m v?l�n n�y, xin h�y ki�m tra l�i!/Task_Accept",
--	"Nhi�m v?l�n n�y kh?qu? Ta mu�n h�y b?kh�ng l�m n�a/Task_CancelConfirm",
--	"Ta mu�n bi�t kh�o nghi�m c�a ng��i n�i c?n�i dung ra sao/Task_Info"
	"֪���ˣ���������������������/Task_Wait",
	"���Ѿ��������ε������������հɣ�/Task_Accept",
	"�������Ҳ̫���ˣ�����ȡ����������/Task_CancelConfirm",
	"����֪����˵�Ŀ����Ǹ�ʲô����/Task_Info"
	);

-- ����ȡ������ı��Ϊ����ȡ��
nt_setTask(1045, 1);

end


-- ȡ������ʱ�������һ��ȷ�ϵĻ���
function Task_CancelConfirm()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myCountTimes = tl_counttasklinknum(1);  -- ��ҽ��е���������

if (myTaskCancel==0) then
	Say("Ұ�ţ�������һ��ȡ���Ļ���Ҳû�У�����һ����ͱ���ô�ͷ��ʼร�������֮ǰ�Ľ����ۻ��ͻ����¿�ʼ������",3,"�ǵģ��Ҿ��ǲ��������������/Task_NormalCancel","������ 100 ��ɽ�����ͼ��Ƭ��ȡ���������/#Task_Cancel(2)","�š����Ǿ������������/Task_Wait");
else
	Say("Ұ�ţ������ڻ��� "..myTaskCancel.." ��ȡ������Ļ��ᣬ��ȷ��Ҫȡ�����������",2,"�ǵģ��Ҿ��ǲ��������������/#Task_Cancel(1)","�š����Ǿ������������/Task_Wait");
end


--if (myTaskCancel==0) then
--	
--	Say(" Hi�n t�i b�n kh�ng c?c?h�i n�o �� h�y b?nhi�m v? b�n ch?c?th?l�m l�i t?��u th�i! ��ng th�i ph�n th��ng t�ch l�y c�a b�n l�c tr��c s?���c t�nh l�i t?��u.",
--		3,
--		"��ng, ta kh�ng mu�n l�m nhi�m v?qu?qu�i n�y ��u/Task_NormalCancel",
--		"Ta mu�n s?d�ng 100 m�nh s�n H?X?T�c �� h�y b?nhi�m v?l�n n�y/#Task_Cancel(2)",
--		"Uhm! �� ta suy ngh?l�i ��/Task_Wait");
--	
--else
--	
--	Say(" Hi�n t�i b�n c�n"..myTaskCancel.." s?l�n c?h�i h�y b?nhi�m v? b�n x�c ��nh h�y b?nhi�m v?l�n n�y ��ng kh�ng?",
--		2,
--		"��ng, ta kh�ng mu�n l�m nhi�m v?qu?qu�i n�y ��u/#Task_Cancel(1)",
--		"Uhm! �� ta suy ngh?l�i ��/Task_Wait");
--	
--end

end


-- ������ȡ����ʽ��ȷ��һ��
function Task_NormalCancel()

Say("Ұ�ţ�����������Ҫȡ�����������",2,"��Ҫ�����ˣ��Ҿ��ǲ��������������/#Task_Cancel(1)","�ǻ��������������/Task_Wait");

--Say(" B�n suy ngh?k?h�y b?nhi�m v?l�n n�y ��ng kh�ng?",2,"��ng l�i th�i n�a! ta kh�ng mu�n l�m nhi�m v?qu?qu�i n�y ��u/#Task_Cancel(1)","Th�i �� ta suy ngh?l�i ��!/Task_Wait");

end;


-- 1000 �����ϵ�����ȡ��ʱ��Ҫ��ˮ��
function Task_TotalCancel()
	GiveItemUI("Ұ������1000������ȡ������Ҫ�ṩ��ˮ��һ�ţ��뽫ˮ�������������Ʒ���У�", "Task_TotalCancel_Main", "Task_Wait");
end;


function Task_TotalCancel_Main(nCount)
	
	local nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = 0,0,0,0,0,0;
	local nIndex = 0;
	
	if nCount~=1 then
		Say("Ұ�ţ�����ҵĲ�����ɫ��<color=yellow>1��<color> ˮ��!", 0);
		return
	end;
	
	nIndex = GetGiveItemUnit(1);
	nGenre,nDetail,nParticular,nLevel,nGoodsFive,nLuck = GetItemProp(nIndex);
	
	if nGenre==4 and nDetail==240 and nParticular==1 then
		Task_Cancel(1);  -- ȫ��ȡ��
	else
		Say("Ұ��:����ҵĲ�����ɫ��<color=yellow>1��<color> ˮ��!", 0);
		return		
	end;
	
end;


-- ��ʾ��ҵ�ǰ�����������еĳ̶ȣ������ã�
function Task_ProcessInfo()

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���

local myTaskType = tl_getplayertasktype()

local myTimes = tl_gettaskstate(1)
local myLinks = tl_gettaskstate(2)

local myCountTimes = tl_counttasklinknum(1)

-- local myTaskValue1 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue1"))
-- local myTaskValue2 = tonumber(TabFile_GetCell(tl_gettasktextID(myTaskType),tl_gettasktablecol(),"TaskValue2"))
	

-- local myMainValue = myTaskValue1 + (myTaskValue2 * (1+(myCountLinks+myTimes)*0.1))

-- local myMainValueText1 = "��Ŀǰ��������Ʒ��ֵΪ: "..myTaskValue1.."  �����ֵΪ: "..myTaskValue2.."<enter>".."�����ڵ������ܼ�ֵ��Ϊ: "..myMainValue

--	Say("Ұ�ţ������ڽ��е��˵� "..myTaskLoops.." ���еĵ� "..myTaskLinks.." ���еĵ� "..myTaskTimes.." �Ρ�<enter>���������еĴ���Ϊ��"..tl_counttasklinknum(1).." ��<enter>���������е�����Ϊ��"..tl_counttasklinknum(2).." ��<enter>"..myMainValueText1,0);

--	Say(" Hi�n t�i ng��i �� ho�n th�nh <color=yellow>"..myCountTimes.."<color> s?l�n nhi�m v?ta giao cho, c�n c?g�ng h�n nh?", 0);
	Say("Ұ�ţ��������Ѿ������ <color=yellow>"..myCountTimes.."<color> ��������������񣬻������Ŭ��Ŷ��", 0);

end


-- ����Ѿ��������ǰ����Ұ������
function Task_Accept()
	--2007-09-19 ������Ʒ����ʱ�ı����ռ��ж�
	if (CalcFreeItemCellCount() < 5) then
		Say("Ұ�ţ���������İ���������5�����ӣ�Ȼ������ȡ��Ʒ��",0);
		return
	end;
local myTaskType = tl_getplayertasktype()

	if (myTaskType == 1) then
		GiveItemUI("Ѱ����Ʒ����","Ұ�ţ�Ŷ��������ȥ��Ķ��������������","Task_Accept_01","Task_Wait");
	elseif (myTaskType == 2) then
		GiveItemUI("������Ʒ����","Ұ�ţ�Ŷ��������ȥ�ҵĶ���������ҵ�����","Task_Accept_02","Task_Wait");
	elseif (myTaskType == 3) then
		GiveItemUI("��Ʒչʾ����","Ұ�ţ�Ŷ��������ȥ�ҵĶ���������ҵ�����","Task_Accept_03","Task_Wait");
	elseif (myTaskType == 4) then
		Task_Accept_04()
	elseif (myTaskType == 5) then
		Task_Accept_05()
	elseif (myTaskType == 6) then
		Task_Accept_06()
	else -- �쳣����
		Say("Ұ�ţ������������Ķ�����û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end

end


-- ����һ���жϴ���
function Task_Accept_01(nCount)
local myTaskGoods
local ItemGenre,DetailType,ParticularType,Level,nSeries,Luck

if ( nCount > 1 ) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."����һ�η���ô�ණ���������ǿ���Ŀ��Ͼ��ѽ�������������ɡ���",0);
	return 0
elseif ( nCount == 0) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."���㡭����ķ��ж������������ǲ������ϻ�����ѽ��",0);
	return 0
end

	ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
--	magictype , p1, p2, p3 = GetItemMagicAttrib(nItemIndex, 1)
	myTaskGoods = {ItemGenre,DetailType,ParticularType,nSeries,Level}
	
--	tl_print ("Ұ�ż�������Ʒ��"..ItemGenre..DetailType..ParticularType..nSeries..Level)
	
	if (tl_checktask(myTaskGoods) == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- ɾ��������ϵ���Ʒ
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say("Ұ�ţ������������Ķ�����û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end
end


-- ��������жϴ���
function Task_Accept_02(nCount)

local myTaskGoods
local ItemGenre, DetailType, ParticularType, Level, nSeries, Luck
local magictype,p1,p2,p3
local i,n,m = 0,0,0

if ( nCount > 1 ) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."����һ�η���ô�ණ���������ǿ���Ŀ��Ͼ��ѽ�������������ɡ���",0);
	return 0
elseif ( nCount == 0) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."���㡭����ķ��ж������������ǲ������ϻ�����ѽ��",0);
	return 0
end

	for i=1,6 do
		ItemGenre,DetailType,ParticularType,Level,nSeries,Luck = GetItemProp(GetGiveItemUnit(1))
		magictype , p1, p2, p3 = GetItemMagicAttrib(GetGiveItemUnit(1), i)
		myTaskGoods = {ItemGenre,DetailType,ParticularType,Level,nSeries,magictype,p1,p2,p3}
--		tl_print("������ħ������ "..i.." :".." ħ�� ID Ϊ: "..magictype.."  ħ������1Ϊ: "..p1.."  ħ������2Ϊ: "..p2.." ħ������3Ϊ: "..p3);
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end
	
	if (m == 1) then
		RemoveItemByIndex(GetGiveItemUnit(1)) -- ɾ��������ϵ���Ʒ
		Task_AwardRecord()
		Task_GiveAward()
	else
		Say("Ұ�ţ������������Ķ�����û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end
	
end


-- ���������жϴ���
function Task_Accept_03(nCount)

local myTaskGoods
local magictype,p1,p2,p3
local i,n,m = 0,0,0


if ( nCount > 1 ) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."����һ�η���ô�ණ���������ǿ���Ŀ��Ͼ��ѽ�������������ɡ���",0);
	return 0
elseif ( nCount == 0) then
	Say("Ұ�ţ���λ"..GetPlayerSex().."���㡭����ķ��ж������������ǲ������ϻ�����ѽ��",0);
	return 0
end

	for i=1,6 do -- ѭ���������е�ħ�����Կ����Ƿ��к��ʵ�
		magictype,p1,p2,p3 = GetItemMagicAttrib(GetGiveItemUnit(1),i)
		myTaskGoods = {magictype,p1,p2,p3}
		n = tl_checktask(myTaskGoods)
		if (n == 1) then
			m = 1
		end
	end	

	if (m == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say("Ұ�ţ������������Ķ�����û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end
	
end


-- �����ĵ��жϴ���
function Task_Accept_04()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say("Ұ�ţ����������������黹û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end
	
end


-- ��������жϴ���
function Task_Accept_05()

	if (tl_checktask() == 1) then
		Task_AwardRecord()
		Task_GiveAward()
		-- ��������
	else
		Say("Ұ�ţ����������������黹û�дﵽ�ҵ�Ҫ��Ŷ������������Ŭ���ɣ�",0);
	end
	
end



-- ���������жϴ���
function Task_Accept_06()
	
	if (tl_checktask()==1) then
		Task_AwardRecord()
		Task_GiveAward()
		return 1
	else
		Say("Ұ�ţ�������������λ"..GetPlayerSex().."��ĳ�䲻�ţ���Ҳ���׽����Ͻ�����һ�����֣��㶼��û���ռ�������Ҫ���ɽ�����ͼ��Ƭ��ô�������������أ�",0);
		return 0
	end

end



-- ���ѡ��ȡ������Ĵ���
-- ������� nType��ȡ������ķ�����1Ϊ��ȡ��������ȡ����2Ϊ�� 100 ��ɽ�����ͼ��Ƭ��ȡ��
function Task_Cancel(nType)

local myTaskTimes = tl_gettaskstate(1) -- ��ҽ��е��Ĵ���
local myTaskLinks = tl_gettaskstate(2) -- ��ҽ��е�������
local myTaskLoops = tl_gettaskstate(3) -- ��ҽ��е��Ļ���
local myTaskCancel = tl_gettaskstate(4) -- ��ҿ���ȡ���Ĵ���
local myCanceled = nt_getTask(1036) -- ����Ѿ�����ȡ���˶��ٴ�
local myMapNum = nt_getTask(1027) -- ������������ж��ٸ�ɽ�����ͼ��Ƭ

local myNewCancel = GetTask(DEBUG_TASKVALUE);  -- ���ݵ�ȡ������

local nTotalTaskNum = tl_counttasklinknum(1); -- ��ȡ��ǰ���һ�����˶��ٴ�����

-- ������Ǵ����������״̬�����ܽ������µ�ȡ������
if nt_getTask(1045)~=1 then
	return
end;

-- �ж��Ƿ����ˢȡ���������Ϊ
if _CancelTaskDebug()~=1 then
	Say("Ұ�ţ��š��������ˣ��������Ѿ�û��ȡ��������Ŷ��", 0);
	return
end;

-- ����Ƿ񳬹�ÿ�������
if checkTask_Limit()~=1 then return end;

	if (nType==2) then
		if (myMapNum>=100) then
			myMapNum = myMapNum - 100;
			nt_setTask(1027, myMapNum);
			myTaskCancel = myTaskCancel + 1;
			Msg2Player("��ʹ���� 100 ��ɽ�����ͼ��Ƭ��ȡ��һ������");
			Msg2Player("�����ڵ�ɽ�����ͼ��Ƭ��ʣ "..myMapNum.." �ţ�");
		else
			Say("Ұ�ţ��㡭���㡭������Ĵ��� <color=yellow>100<color> ��ɽ�����ͼ��Ƭ������û���ۻ��ɣ�",0);
			return
		end;
	end;

	if (myTaskTimes == 0) and (myTaskLinks == tl_getfirstlink()) then
	
		if (myTaskCancel == 0) then
		
			myCanceled = myCanceled + 1
			nt_setTask(1036,myCanceled)
	
			if ( myCanceled > 2) then -- �����������ڳ���ȡ��������������������
				myCanceled = 10	
				nt_setTask(1036,myCanceled)
				nt_setTask(1029,GetGameTime())
				Task_Punish()
				
				return
				
			end
			
		end
		
		-- ��������ɷ��µ�����
		SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- ���ӵ����ȡ������
		storm_ask2start(4)	--Storm ��ʼ��ս
		
		return
		
	end

	if (myTaskCancel >= 1) then -- �����һ��л���ȡ���Ļ�����������ǰ�ȼ�������
	
		-- д��ȡ������ʱ�� LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
		
		myTaskCancel = myTaskCancel - 1
		
		tl_settaskstate(4,myTaskCancel)
		
		nt_setTask(DEBUG_TASKVALUE, myTaskCancel);
			
	else
		-- д��ȡ������ʱ�� LOG
		_WriteCancelLog(nType, nTotalTaskNum, myTaskCancel);
	
		tl_settaskstate(1,0) -- ���ڽ��е�һ������
		tl_settaskstate(2,tl_getfirstlink()) -- ���ڽ��е�һ������
		tl_settaskstate(3,0) -- �ӵ� 0 ����ʼ
		
		tl_settaskstate(4,0) -- ʣ�� 0 ��ȡ������Ļ���
		nt_setTask(DEBUG_TASKVALUE, 0);
		
		tl_settaskstate(6,0) -- ��ǰ���������� 0 ��
		nt_setTask(1036,0) -- �ͷ������ۻ���Ϊ 0 
		-- �������¼һ�����������
		nt_setTask(1044, tl_counttasklinknum(1));
		
--		Msg2Player("<color=yellow>Chu�i nhi�m v?D?T�u �� x�a b?ho�n to�n, b�y gi?s?ph�i l�m l�i t?nhi�m v?��u ti�n<color>!");
	end
	
	-- ����ȡ������ı��Ϊ������ȡ��
	nt_setTask(1045, 2);
	
	-- ��������ɷ��µ�����
	SetTask(ID_TASKLINK_LIMITCancelCount, GetTask(ID_TASKLINK_LIMITCancelCount) + 1); -- ���ӵ����ȡ������
	storm_ask2start(4)	--Storm ��ʼ��ս
end;


-- ��Ұ�Ž��������������Ĺ����뷽��
function Task_Info()
	Talk(4,
		"tasklink_entence",
		"Ұ�ţ�����ΰ��ŵĿ����Ϊ���ֲ�ͬ���͵�С�����������λ������ʿ��������������",
		"Ұ�ţ�ÿ���һ��������<color=red>��Ӧ�Ľ���<color>���Ÿ�λ���������������<color=red>��ǧ��<color>������������<color=red>ֵ�þ�ϲ�ı���<color>�����㣡",
		"Ұ�ţ�������������з�����һ������Ļ����򽫴ӵ�һ������ʼ���𡣲���������ʱ��ǻ������ȡ������Ļ��ᣬ�ǵÿ����Լ���ô�����ˡ�",
		"Ұ�ţ���ô���������ˣ���û����Ȥ�������ҵ��������ѽ��"
		);
end


-- �ܾ���Ұ�ŵĿ�������
function Task_Exit()

	if (GetSex() == 0) then
		Say("Ұ�ţ������������ȹ���֪����ͨ���ҵĿ����ж���Ľ��������Ȼ���ٻ��������ˡ�",0);
	else
		Say("Ұ�ţ���������������λŮ��֪����ͨ���ҵĿ����ж���Ľ��������Ȼ���ٻ��������ˡ�",0);
	end
end


-- ��������Ĺ������˳�Ұ�ŵĶԻ��������κδ���
function Task_Wait()

end


function Task_Punish()
	Say("Ұ�ţ���λ"..GetPlayerSex().."�ǲ���Ҳ̫�ż���Щ���Ұ��ŵĿ��������ô�����㻹�ǳ�Щ�����ɣ�",0);
	return 0
end




--  //////////////////////////////////////////////////////////////
-- //                     ���轱���Ĵ���                       //
--//////////////////////////////////////////////////////////////

function Task_GiveAward()

	local i
	
	local myAward
	local myLinkAward,myLoopAward
	
	local myGoodsText = ""
	local ShowText = {"","",""}

	local nTotalTaskNum = tl_counttasklinknum(1); -- ��ȡ��ǰ���һ�����˶��ٴ�����
--	if (nTotalTaskNum ~= 0 and mod(nTotalTaskNum, 10) == 0 and GetTask(TKS_TASKLINK_SPITEM) ~= nTotalTaskNum) then
--		SetTask(TKS_TASKLINK_SPITEM, nTotalTaskNum);
--		local tbItem = {tbProp = {6, 1, 2374, 1, 0, 0}}
--		tbAwardTemplet:GiveAwardByList(tbItem, "seasonnpc_10task")
--		Msg2Player(format("Ch�c m�ng ��i hi�p �� ho�n th�nh li�n ti�p %d nhi�m v?D?T�u, nh�n ���c ph�n th��ng %s!", 10, "B�o r��ng th�n b?c�a D?T�u"));
--	end

	--tl_print ("���������ͻ�����������ϣ�����");
	local nTongValue;
	myAward, nTongValue = tl_giveplayeraward(1);
	if (not nTongValue) then
		nTongValue = 0;
	end	
	local nBeishu = greatnight_huang_event(4);
	if (nBeishu > 0) then
		nTongValue = floor(nTongValue / nBeishu);
	end;
	
	for i=1,3 do
	--	tl_print ("�õ���Ǯ������");
		if (myAward[i][1] == 1) then
			ShowText[i] = "�õ�"..myAward[i][9].."/3".."/"..myAward[i][2].."/SelectAward_Money"
		elseif (myAward[i][1] == 2) then
			ShowText[i] = "�õ�"..myAward[i][9].."/4".."/"..myAward[i][2].."/SelectAward_Exp"
		elseif (myAward[i][1] == 3) then
			myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
			ShowText[i] = "�õ�"..myAward[i][9].."/5".."/"..myGoodsText.."/mySG"
		elseif (myAward[i][1] == 4) then
			if (myAward[i][10]==1) then
				myGoodsText = myAward[i][3]..","..myAward[i][4]..","..myAward[i][5]..","..myAward[i][6]..","..myAward[i][7]..","..myAward[i][8]
				ShowText[i] = myAward[i][9].."/6".."/"..myGoodsText.."/mySG"
			elseif (myAward[i][10]==2) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Exp"
			elseif (myAward[i][10]==3) then
				ShowText[i] = myAward[i][9].."/6".."/"..myAward[i][2].."/SelectAward_Money"
			end
			
		elseif (myAward[i][1] == 5) then
			ShowText[i] = "�õ�"..myAward[i][9].."/7".."/"..myAward[i][1].."/SelectAward_Cancel"
		end
		
	end
	
	tl_print(ShowText[1])
	tl_print(ShowText[2])
	tl_print(ShowText[3])
	
Prise( "Ұ�ţ������ˣ�����λ"..GetPlayerSex().."������һ��������������Ҫ���أ�",ShowText[1],ShowText[2],ShowText[3] );
	
	--tl_print ("������ϣ���������");

end



-- ���Ѿ�ȷ����������ɵ��ǻ�δ����ʱ�ı��������Է����ˢ��
function Task_AwardRecord()
	--Storm �ӻ���
	local filename = tl_gettasktextID(tl_getplayertasktype())
	local tabcol = tl_gettasktablecol()
	local myTaskValue1 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue1"))
	local myTaskValue2 = tonumber(TabFile_GetCell(filename,tabcol,"TaskValue2"))
	local myMainValue = myTaskValue1 + myTaskValue2
	storm_addpoint(4, myMainValue)
	
	tl_settaskcourse(2) -- ����Ľ�չ�̶�Ϊ2�����ǻ�û�з���
	nt_setTask(1037, GetGameTime() + tonumber(GetLocalDate("%H%M%S")));
end



-- ѡ������Ʒ�Ľ���
-- PS����Ϊ���ǵ��������Ĵ����ַ����ܳ��� 32 ��������������̼�д�� mySG
function mySG(myQuality,myGenre,myDetail,myParticular,myLevel,myFive)

-- ��ֹ�����浯����ˢ�����Ĵ���
if (tl_gettaskcourse() == 3) then
	Say("Ұ�ţ����Ѿ����������Ŷ����ô���������أ�",0);
	return
end
	--2007-09-19 ������Ʒ����ʱ�ı����ռ��ж�
	if (CalcFreeItemCellCount() < 5) then
		Say("Ұ�ţ�������������Ӳ�����5����Ȼ��������ȡ������",0);
		return
	end;
	
--	tl_print("�õ��˽�����Ʒ��ţ�"..myQuality..myGenre..myDetail..myParticular..myLevel..myGoodsFive);
	if (myQuality == 0) then
		AddItem(myGenre,myDetail,myParticular,myLevel,myFive,0,0)
		
		if (myDetail==238) or (myDetail==239) or (myDetail==240) or (myDetail==252) then
			WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."�������������еõ��˱�ʯһ������ʯ�����ͱ��Ϊ��"..myDetail)
		end

	else
		AddGoldItem(0,myGenre)
		AddGlobalNews("���棺��� "..GetName().." ��Ϊ�����������Ұ�Ŵ��õ��˻ƽ�װ��һ��������");
		WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."�������������еõ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..myGenre)
	end
	Msg2Player("���õ���һ��������Ʒ������");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end

-- ѡ���˽�Ǯ�Ľ���
function SelectAward_Money(nAward)

-- ��ֹ�����浯����ˢ�����Ĵ���
if (tl_gettaskcourse() == 3) then
	Say("Ұ�ţ����Ѿ����������Ŷ����ô���������أ�",0);
	return
end

	Earn(nAward)
	Msg2Player("���õ��� <color=green>"..nAward.."<color> ������");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	-- ��������Ľ�Ǯ�������� 30W�����LOG
	if nAward>=300000 then
		WriteLog("[��������Ǯ��¼]"..
				 date("[%y��%m��%d��%Hʱ%M��]")..
				 "[�˺�]"..GetAccount()..
				 "[��ɫ]"..GetName()..
				 "���������л����<money>"..nAward.."</money>�����ӵĽ�����");
	end;
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end

-- ѡ���˾���ֵ�Ľ���
function SelectAward_Exp(nAward)

-- ��ֹ�����浯����ˢ�����Ĵ���
if (tl_gettaskcourse() == 3) then
	Say("Ұ�ţ����Ѿ����������Ŷ����ô���������أ�",0);
	return
end

	tl_addPlayerExp(nAward)
	Msg2Player("���õ��� <color=green>"..nAward.."<color> �㾭��ֵ");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end

-- ѡ�������һ�εĽ���
function SelectAward_Change(nAward)

-- ��ֹ�����浯����ˢ�����Ĵ���
if (tl_gettaskcourse() == 3) then
	Say("Ұ�ţ����Ѿ����������Ŷ����ô���������أ�",0);
	return
end

	Msg2Player("���õ��������ѡ��һ�ν����Ļ��ᣡ");
	
	tl_settaskcourse(3)
	PayPlayerLinkAward();

end

-- ѡ����ȡ���Ļ���
function SelectAward_Cancel(nAward)

local myCancel = 0;
local myNewCancel = GetTask(DEBUG_TASKVALUE);

	-- ��ֹ�����浯����ˢ�����Ĵ���
	if (tl_gettaskcourse() == 3) then
		Say("Ұ�ţ����Ѿ����������Ŷ����ô���������أ�",0);
		return
	end


	
	myCancel = tl_gettaskstate(4)
	myCancel = myCancel + 1
	
	if myNewCancel==0 then
		myNewCancel = myCancel;
	else
		myNewCancel = myNewCancel + 1;		
	end;
	
	if myNewCancel<=254 then
		-- �ٴ�һ������ı���
		nt_setTask(DEBUG_TASKVALUE, myNewCancel);
	end;
	
	tl_settaskstate(4, myCancel);
	
	if myCancel<=254 then
		Msg2Player("���õ��� <color=green>һ��ȡ������Ļ���<color>!");
	end;

	WriteLog("[������������¼]"..
			 date("[%y��%m��%d��%Hʱ%M��%S��]")..
			 "[�˺�]"..GetAccount()..
			 "[��ɫ]"..GetName()..
			 "���������л����ȡ������Ľ�������ǰ��ȡ������Ϊ <"..myCancel.."> �Ρ�");
	
	tl_settaskcourse(3)	
	PayPlayerLinkAward();
	
	local nBeishu = greatnight_huang_event(4);
	local nTongValueGift = GetTaskTemp(TASKID_TONG_TASKLINKTEMP);
	if (nBeishu > 0) then
		nTongValueGift = floor(nTongValueGift / nBeishu);
	end;
	tongaward_tasklink(nTongValueGift);	--�������ɽ���
	Task_NewVersionAward()
end


-- ������������������������߻ƽ�װ��
function PayPlayerLinkAward()

local myGolden = {2,6,11,16,21,22,26,31,39,40,42,46,51,54,56,60,61,67,71,76,81,87,92,94,96,101,106,107,115,119,121,122,126,132,136,144,145,146} -- 20 �������ƽ�װ���ı��
local nGoldenID = 0

local myTaskTimes = tl_gettaskstate(1)
local myTaskLinks = tl_gettaskstate(2)
local myTaskLoops = tl_gettaskstate(3)

local nTotalTask = tl_counttasklinknum(1);

-- ����������ɴ�������
Ladder_NewLadder(10118, GetName(), nTotalTask, 1);

-- �����﷢��̶���������Ľ���
tl_getlinkaward(Task_AwardLink, nTotalTask);

-- Խ�ϰ���� 8000 ���������κδ���
if (nTotalTask == 8000) then

--	nGoldenID = myGolden[random(getn(myGolden))]
	
	-- �� 8000 �������� 1E ��Ǯ
	Earn(100000000);
	
--	AddGoldItem( 0, nGoldenID )
	
	WriteLog("[������������¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."����������������Ϊ��� 8000 ������õ��˻ƽ�װ��һ�����ƽ�װ�����Ϊ��"..nGoldenID)
	
	AddGlobalCountNews("���棺��� "..GetName().." ��Ϊ����� 8000 ��������Ұ�Ŵ��õ������ɴ�ƽ�װ��һ���ͽ�����һ����������", 3);
	
	for i=1,3 do
		Msg2Player("��ϲ�㣡����Ϊ����������� 8000 ���������Եõ���һ����Ʒ������һ���������ң�����");
	end

	return
	
end

storm_ask2start(4, 1)	--Storm ��ʼ��ս

end


--/////���������޷�������ȥ�� BUG ���޲�/////

function _TaskLinkDebug()

	if (nt_getTask(1030)==0) and (tl_gettaskcourse()==1) then
		nt_setTask(1030,2);
		tl_savetalkvalue(1,2);
		tl_savetalkvalue(2,2);
		tl_savetalkvalue(3,2);
		tl_savetalkvalue(4,2);
		tl_savetalkvalue(5,2);
		tl_savetalkvalue(6,2);
	end

end


--  ////////////////////////////////////////////////
-- ///// �ж�����Ƿ�ˢȡ������Ĺ��� /////////////
--////////////////////////////////////////////////

function _CancelTaskDebug()

local nOrgTask = GetTask(DEBUG_TASKVALUE);
local nDecTask = tl_gettaskstate(4);
local nDiff    = 0;

	if nOrgTask==nDecTask or nOrgTask==0 then
		return 1;
	else
		WriteLog("[�����������¼]"..
				 date("[%y��%m��%d��%Hʱ%M��%S��]")..
				 "[�˺�]"..GetAccount()..
				 "[��ɫ]"..GetName()..
				 "����ȡ�����᲻���ȣ���ǰȡ������Ϊ <"..nDecTask..">�����ݵ�ȡ������Ϊ <"..nOrgTask..">��");
		return 0;
	end;

end;

--  /////�������ȡ��ʱ�� LOG //////////////////////
-- ///// ����Ĳ���Ϊ���������ȡ������Ļ��� /////
--////////////////////////////////////////////////

function _WriteCancelLog(nType, nTime, nCancel)

	if nType==1 then
		WriteLog("[������ȡ����¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."���������Ϊ"..nTime.."ȡ������ʣ��"..nCancel.."ʱȡ����һ������");
	else
		WriteLog("[������ȡ����¼]"..date("[%y��%m��%d��%Hʱ%M��]").."���˺�"..GetAccount().."����ɫ"..GetName().."���������Ϊ"..nTime.."ʱ��100�����ͼȡ����һ������");
	end;

end;
