--�û�ѡ�������й�ʱ�Ľű�
--2004.11.24
Include("\\script\\global\\baijuwanhead.lua");
Include("\\script\\global\\judgeoffline_limit.lua");		-- 2006��10��30�ռ������������г��г����Ժ��������йܵĽű�  by peres
Include("\\script\\item\\ib\\zimudai.lua");
Include("\\script\\lib\\player.lua")
Include("\\script\\trip\\define.lua")

arraymap = 
	{
		["1"] = "����",
		["11"] = "�ɶ�",
		["37"] = "�꾩",
		["80"] = "����",
		["78"] = "����",
		["162"] = "����",
		["176"] = "�ٰ�",
		["20"] = "�����",
		["53"] = "������",
		["54"] = "������",
		["99"] = "������",
		["100"] = "������",
		["101"] = "�����",
		["121"] = "������",
		["153"] = "ʯ����",
		["174"] = "��Ȫ��",
		["13"] = "����",
		["25"] = "����",
		["49"] = "����",
		["59"] = "����",
		["81"] = "�䵱",
		["103"] = "����",
		["115"] = "ؤ��",
		["131"] = "����",
		["154"] = "����",
		["183"] = "�嶾",
--		["208"]	= "����",
		-- LLG_ALLINONE_TODO_20070802
		["235"] = "�һ�����һ��",
		["236"] = "�һ���������",
		["237"] = "�һ���������",
		["238"] = "�һ������ģ�",
		["239"] = "�һ������壩",
		["240"] = "�һ���������",
		["241"] = "�һ������ߣ�",
		["835"] = "������(һ)",
		["836"] = "������(��)",
		["837"] = "������(��)",
		["838"] = "������(��)",
		["839"] = "������(��)",
		["840"] = "������(��)",
		["586"] = "��������ͼһ",
		["587"] = "ɽ�ǰ���ͼ",
		["588"] = "�置����ͼ",
		["589"] = "ɳĮ����ͼ",
		["590"] = "��ʦ����ͼ",
		["591"] = "��������ͼ",
		["593"] = "���ϰ���ͼ",
		["594"] = "ѩ�����ͼ",
		["595"] = "��������ͼ��",
		["596"] = "��������ͼ��",
		["597"] = "��������ͼ��",
	};

function judgeoffline(player_count, offline_count)
		
	-- szHour = date("%H");
	-- nHour = tonumber(szHour);
	
	-- sparetime = GetTask(AEXP_TASKID);	
	-- if (nHour >= AEXP_INVALIDTIMEBEGIN and nHour < AEXP_INVALIDTIMEEND) then 
	-- 		Say("<#>����<color=red>"..AEXP_INVALIDTIMEBEGIN..":00<color>-<color=red>"..AEXP_INVALIDTIMEEND..":00<color>ʱ�����ѡ�������йܣ����Լ�����̯���ף����ǲ����þ���ֵ�������Զ���ȡ��Ե�����ʱ���ϵͳ����۳���������й�ʱ�䣬����Ŀɽ�����Ϸʱ�����������㡣", 2, "��ȷ��Ҫ���������й���?/judgecontion", "��ʱ��Ҫ�ˡ�/donothing");
	-- 		return 5
	-- else
	--     judgecontion();
	-- end 	
	judgecontion();
	
	return 0
end

function judgecontion()
--	do
--		Talk(1, "", "�����йܹ��ܹر�")
--		return
--	end

	--���������һ����ô�ɹ���ʼ�����й�
	local tbSpareTime = {};
										--��Ч��׾���	��ͨ��׾���	�׾���
	local tbAexpTask = {AEXP_TIANXING_TIME_TASKID,AEXP_SPECIAL_TIME_TASKID,AEXP_TASKID, AEXP_SMALL_TIME_TASKID,
											--��Ч���ܴ�׾���	���ܴ�׾���	���ܰ׾���
												AEXP_SPECIAL_SKILL_TASKID, AEXP_SKILL_TIME_TASKID, AEXP_SMALL_SKILL_TASKID};
	local btime = 0;
	for i = 1, getn(tbAexpTask) do
		tbSpareTime[i] = {};
		tbSpareTime[i][1] = GetTask(tbAexpTask[i]);
		tbSpareTime[i][2], tbSpareTime[i][3] = getFrame2MinAndSec(tbSpareTime[i][1]);	--���û���ʾ��ʾ������
		if (tbSpareTime[i][1] >= FRAME2TIME * 60 and btime ~= 1) then
			btime = 1;
		end;
	end;
	
	
	if (btime == 1 and IsCharged() == 1) then
		local nSkillExpID = GetTask(AEXP_SKILL_ID_TASKID);
		local szSkillExpName = "";
		if (nSkillExpID ~= 0) then
			szSkillExpName = "<color=yellow>"..GetSkillName(nSkillExpID).."<color>";
		else
			szSkillExpName = "<color=blue>Ch�a ch�n k?n�ng<color>";
		end
		
		local szmsg = format("��������й�ʣ��ʱ��Ϊ:��Ч��׾���<color=red>%d<color>Сʱ<color=red>%d<color> ��"..
	"<enter>��׾���<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>�׾���<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>��Ч�ɲ�¶<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>����������(%s):��Ч���ܴ�׾���<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>���ܴ�׾���<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>���ܰ׾���<color=red>%d<color>Сʱ<color=red>%d<color>��"..
	"<enter>�й�ʱ�������Ч��׾���Ч�������Ȱ���Ч�����뾭�鲢�۳����ӦЧ��ʱ�䡣", 
					tbSpareTime[1][2],tbSpareTime[1][3],
					tbSpareTime[2][2],tbSpareTime[2][3],
					tbSpareTime[3][2],tbSpareTime[3][3],
					tbSpareTime[4][2],tbSpareTime[4][3],
					szSkillExpName, tbSpareTime[5][2],tbSpareTime[5][3],
					tbSpareTime[6][2],tbSpareTime[6][3],
					tbSpareTime[7][2],tbSpareTime[7][3]);
		local szSay =
		{	"��ʼ�����й�/beginoffline",
			"ѡ�������йܼ���/#selectofflineskill('judgecontion')",
			"��ʼ�����й�/begin_onlinecommission",
			"���������й�/end_onlinecommission",
			"��ȡ���߽���/offlineaward",
			"���ٿ��ǿ���/donothing"
		};
		Describe(szmsg, getn(szSay), szSay[1], szSay[2], szSay[3], szSay[4], szSay[5], szSay[6]);
	else
		if (IsCharged() ~= 1) then
			Talk(1, "", "<#>Ƿ�ѳ�ֵ���ѣ�");
			return
		end;
		--beginoffline();
		--�û�ʣ���ʱ��
		Say("<#>Th�i gian c�n l�i �y th�c kinh nghi�m B�ch C�u Ho�n c�a b�n l?color=red>0<color>��. Ng��i c?th?s?d�ng ��i B�ch C�u Ho�n ��c Bi�t ho�c l?��i B�ch C�u Ho�n �� t�ng th�i gian �y th�c c�a m�nh. <enter>ho�c l?ch�n<color=yellow> �y th�c r�i m�ng mi�n ph?color>, c�i n�y ch?c?th?nh�n ���c m�t ch�t �t kinh nghi�m.",
			3,
			"��ʼ�����й�/beginoffline",
			"��ȡ���߽���/offlineaward",
			"���ٿ��ǿ���/donothing");
	end
end

-- ��ʼ�����й�
function begin_onlinecommission()
	local bRet = check_if_can_offline()
	if bRet then
		return bRet
	end
	
	--�ж��û�ʣ���ʱ��
	local sparetime = getsparetime();
	if (sparetime <= 0) then
		Say("<#>��ʣ��������й�ʱ��Ϊ0���ӡ�����ʹ���������й���Ʒ����ʹ�øù��ܡ�", 0);
		return 3
	end

	if (GetOnlineCommissionStatus() ~= 0) then
		Msg2Player("<#>�㵱ǰ�����������й�״̬��")
	else
		Msg2Player("��ʼ�����йܣ�")
		SetOnlineCommissionStatus(1)
		WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tbegin_onlinecommission, last online time:%s",
						GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo()));
		--EnableClientInput(0)
	end
end

-- ���������й�
function end_onlinecommission()
	if (GetOnlineCommissionStatus() == 0) then
		Msg2Player("<#>�����йܿ�ʼ��")
	else
		SetOnlineCommissionStatus(0)
		--EnableClientInput(1)
		Msg2Player("<#>�����йܽ�����")
		WriteLog(format("[OfflineLive]\t%s\tAccount:%s\tName:%s\tend_onlinecommission, last online time:%s",
							GetLocalDate("%Y-%m-%d %X"), GetAccount(), GetName(), getBaiJutimeinfo()));
	end
end

function check_if_can_offline()
	
	local nTripMode = GetTripMode()
	if nTripMode == TRIP_MODE_SERVER then
		Talk(1, "", "Xin ��i hi�p l��ng th?kh�ng th?s?d�ng t�nh n�ng �y th�c t�i server c�ng c�ng")
		return 1
	end
	--�����ж��û����ڵ�����
	mapid = SubWorldIdx2MapCopy(SubWorld);
	strmapid = ""..mapid.."";
	--û���ڵ�ǰ��ͼ��
	if (arraymap[strmapid] == nil) then
		Say("<#>�㲻�����������ʹ�������йܹ��ܣ����㵽��Ӧ���ض����򣨰������г��򡢴�ׯ�Լ�ʮ�������ڣ�ʹ�������йܡ�", 0);
		return 1
	end
	
	-- �ж��Ƿ���ĳЩ�������򣬱���˵�����������
	if offlineCheckPermitRegion()~=1 then
		Say("<#>�㲻�����������ʹ�������йܹ��ܣ����㵽��Ӧ���ض����򣨰������г��򡢴�ׯ�Լ�ʮ�������ڣ�ʹ�������йܡ�", 0);
		return 1;
	end;
	
	--�ж��û���ս��״̬
	if (GetFightState() ~= 0) then 
		Say("<#>��Ŀǰ����ս��״̬�У��޷����������й�״̬����������ս��״̬����ʹ�������йܡ�", 0);
		return 2
	end
	
	--�ж��û�ʣ���ʱ��
	local sparetime = getsparetime();
	if (sparetime <= 0) then
		Say("<#>��ʣ��������йܾ���ʱ��Ϊ0���ӣ����߲�δѡ�������йܵļ��ܣ�������ȷ�Ϻ���ʹ�øù��ܡ�", 0);
		return 3
	end
	
	-- ��һ̨����������������800�ˣ��������������̨�������ڽ��������й�
	player_count = GetPlayerCount();
	local nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_LIMIT;
	if (mapid >= 835 and mapid <= 840) then
		nmax_count_limit = AEXP_OFFLINE_PLAYERCOUNT_SPECIAL;--750
	end;
	if (player_count > nmax_count_limit) then
		Say("<#>��������ط��������ɽ�˺����㻹�ǵ������ĳ��򡢴�ׯ���������ٽ��������йܰɡ�",0);
		return 4
	end
	
	
end

function beginoffline()	
	local bRet = check_if_can_offline()
	if bRet then
		return bRet
	end
	-- �ж��Ƿ��������й�
	if (GetOnlineCommissionStatus() ~= 0) then
		Say("<#>�㵱ǰ���������й�״̬��", 0)
		return 1
	end
	-- ��ʼ���߹һ�
	OfflineLive(PlayerIndex);
end

--ʲô�������ĺ��������ܶ���ط����õ����޸ĵ�ʱ����ע��
function donothing()
	
end

TASKID_OFFLINELIVE_EXP = {
	AEXP_SMALL_TIME_TASKID,
	AEXP_TASKID,
	AEXP_SPECIAL_TIME_TASKID,
	AEXP_TIANXING_TIME_TASKID
}

TASKID_OFFLINELIVE_SKILL = {
	AEXP_SMALL_SKILL_TASKID,
	AEXP_SKILL_TIME_TASKID,
	AEXP_SPECIAL_SKILL_TASKID
}

function getsparetime()
	--�ж��û�ʣ���ʱ��
	local nLeftTime = 0
	for i = 1, getn(TASKID_OFFLINELIVE_EXP) do
		nLeftTime = nLeftTime + GetTask(TASKID_OFFLINELIVE_EXP[i])
	end
	if (GetTask(AEXP_SKILL_ID_TASKID) ~= 0) then
		local nTime = 0
		for i = 1, getn(TASKID_OFFLINELIVE_SKILL) do
			nTime = nTime + GetTask(TASKID_OFFLINELIVE_SKILL[i])
		end
		if (nLeftTime < nTime) then
			nLeftTime = nTime
		end
	end
	return nLeftTime
end

-- ѡ�������йܼ���
function selectofflineskill()
	local aryExpSkill = getexpskill();
	local nExpSkillCount = getn(aryExpSkill);
	local aryszExpSkill = {};
	local szSayCmd = "��ѡ������Ҫ�����йܵļ��ܣ�";
	for i = 1, nExpSkillCount do
		aryszExpSkill[i] = format("%s/#onSetUpgradeSkill(%d)",aryExpSkill[i][2],aryExpSkill[i][1]);
	end
	tinsert(aryszExpSkill, "Tr?l�i/judgecontion")
	Say(szSayCmd, getn(aryszExpSkill), aryszExpSkill);
end

-- ���������йܼ���
function onSetUpgradeSkill(nUpgradeSkillID)
	SetTask(AEXP_SKILL_ID_TASKID, nUpgradeSkillID);
	judgecontion();
end

function offlineaward()
	local player = Player:New(PlayerIndex)
	DynamicExecute(
		"\\script\\global\\offlineaward.lua",
		"dlg_offlineaward",
		player)
end
