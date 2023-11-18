-- description	: ��������
-- author		: wangbin
-- datetime		: 2005-06-04

Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\event\\storm\\function.lua")	--Storm

function start_match_timer()
	StartMissionTimer(MISSION_MATCH, TIMER_MATCH, LIMIT_SIGNUP * 18);
end

function start_signup()
	SetMissionV(VARV_STATE, 1);
	SetMissionV(VARV_BOARD_TIMER, 0);
	SetMissionS(VARS_TEAM_NAME, "");
	--local min = floor(LIMIT_SIGNUP / 60);
	--broadcast("<#>ʱ�����ս��������ʼ�ˣ���������7�������߱��������ɶӳ�����������ʱ��Ϊ" .. min .. "����");
end

function InitMission()
	start_signup();
	start_match_timer();
end

function EndMission()
	close_match();
	close_board_timer();
	close_close_timer();
end

function OnLeave(index)
	local old_index = PlayerIndex;
	PlayerIndex = index;
	
	-- Big Boss Remove bonus state
	BigBoss:RemoveChuangGuanBonus();
	
	SetCurCamp(GetCamp());
	SetTaskTemp(200,0)
	SetFightState(0);
	SetPunish(1);
	SetCreateTeam(1);
	SetPKFlag(0)
	ForbidChangePK(0);
	SetDeathScript("");
	
	SetTask(1505, 0)
	DisabledUseTownP(0)
	
	Msg2MSAll(MISSION_MATCH, GetName().."R�i kh�i khu v�c nhi�m v� ");
	
	if storm_valid_game(2) then
		storm_add_pointex(2, 40)
		storm_end(2)
	end
	SetTask(STORM_TASKID_GAMEID_SS, 0)
	
	PlayerIndex = old_index;
end

function JoinMission(RoleIndex, camp)
	PlayerIndex = RoleIndex;
	if (camp ~= 1) then
		return
	end
	
	LeaveTeam()
	AddMSPlayer(MISSION_MATCH,camp);
	SetCurCamp(camp);
	SetTaskTemp(200,1)
	SetFightState(1);
	SetLogoutRV(1);
	SetPunish(0);
	str = "Nh�n s� <color=yellow>"..GetName().."<color> �� tham gia 'Nhi�m v� Th�ch Th�c Th�i Gian'"
	local sf_mapid = SubWorldIdx2ID(SubWorld)
	NewWorld(sf_mapid, BOAT_POSX, BOAT_POSY);
	SetCreateTeam(0);
	Msg2MSAll(MISSION_MATCH,str);
	SetPKFlag(1)
	ForbidChangePK(1);
	SetDeathScript(SCRIPT_PLAYER_DEATH);
	SetTask(1505, 1)
	DisabledUseTownP(1)

	SetTask(STORM_TASKID_GAMEID_SS, random(100000))
--	if (storm_start(2, 1)) then
--		local level = GetTask(TB_STORM_TASKID[2][STORM_TASKIDX_MODE]) + 1
--		str = "�μ�ɱ����������ɻ�ò��뽱�����籩����<color=yellow>40<color>�֡����سɹ�����ǰʱ���ת��Ϊ�籩���֣����<color=yellow>60<color>�֣���ÿ������ɱ��������ȡ�ɼ���õ�һ������籩���֡�%s<enter>"
--		local tb_levelstr = {
--			"����ɱ����������ÿ��ÿ�����ɻ�÷籩����<color=yellow>90<color>�֡�",
--			"�߼�ɱ����������ÿ��ÿ�����ɻ�÷籩����<color=yellow>100<color>�֡�",
--		}
--		str = format(str, tb_levelstr[level])
--		Talk(1, "", str)
--	end
end

