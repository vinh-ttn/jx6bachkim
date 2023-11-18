IncludeLib("RELAYLADDER")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
--�˳���Ϸ���������ID,Ҳ���Ǳ������Ǹ��ط���
CS_RevId = 80;
CS_RevData = 36;

--�᳡���λַ
BW_COMPETEMAP = {209, 210, 211};

--����˫����Ӫʱ��λַ
CS_CampPos = {	{209, 1620, 3202},	--��ɫ
				{209, 1612, 3187}, 	--��ɫ
				{209, 1598, 3216}   --��ս�ߵ�λַ��ɫ
			 }; 
CS_CamperPos = {
				{1599, 3202, "����"},
				{1608, 3211, "����"},
}
FRAME2TIME = 18;
--��Ϸ���������
MAX_MEMBER_COUNT = 100;
--�洢��ҵ�λַ������丿
BW_SIGNPOSWORLD = 300;
BW_SIGNPOSX = 301;
BW_SIGNPOSY = 302;
MS_STATE = 1;
MS_MAXMEMBERCOUNT = 2;
CITYID = 6; --����ID
BW_KEY = 7; -- 0-100000000�������
MS_NEWSVALUE = 9; --�����д��Т�ű丿�ĵط�
MS_TEAMKEY = {10, 11};

MSS_CAPTAIN = {1, 2};
BW_SMALLTIME_ID = 10; --��ʱ������
BW_TOTALTIME_ID = 11;
TIMER_1 = 20 * FRAME2TIME; -- 20�빫��һϢս��
TIMER_2 = 12 * 3 * TIMER_1 ; --��ս��ʱ��Ϊ10+2����

GO_TIME = 6; -- ����ʱ��Ϊ2����
BW_MISSIONID = 4;

function BW_SetRev()
	if (GetTask(BW_SIGNPOSWORLD) == 80) then
		SetRevPos(CS_RevId, CS_RevData)
	elseif (GetTask(BW_SIGNPOSWORLD) == 78) then 
		SetRevPos(29);--xy
	else
		SetRevPos(6);--cd
	end;
end;

--���Ҫ��뿪��Ϸ
function LeaveGame()
	camp = GetCamp();--�ָ�ԭʼ��Ӫ
	SetFightState(0)
	if (GetCurCamp() == 2) then
		LeaveChannel(PlayerIndex, "L�i ��i gi�p");
	elseif (GetCurCamp() == 3) then
		LeaveChannel(PlayerIndex, "L�i ��i �t");
	end;
	SetTaskTemp(200,0);
	SetPunish(1)--��ַPK�ݷ�
	SetPKFlag(0)--�ر�PK����
	ForbidChangePK(0);
	RestoreOwnFeature()
	--�򿪽��װ�̯
	DisabledStall(0);	--��̯
	ForbitTrade(0);	--����
	SetCurCamp(GetCamp());
	DisabledUseTownP(0)
	ForbidEnmity(0);
	DelMSPlayer(BW_MISSIONID, PlayerIndex);
	SetLogoutRV(0);--��ַ������
	SetCreateTeam(1);
	SetDeathScript("");--��ַ˵���ű�Ϊ��

end;

function GameOver()
	PTab = {};
	idx = 0;
	local i;
	local j = 1;
	for i = 1, 500 do 
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, 0);
		
		if (pidx > 0) then
			PTab[j] = pidx;
			j = j + 1;
		end;
		if (idx == 0 ) then 
			break
		end
	end
	
	PCount = getn(PTab);
	OldPlayer = PlayerIndex;
	for i  = 1, PCount do 
		PlayerIndex = PTab[i];
		NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
	end;
	PlayerIndex = OldPlayer;
	
end;

function JoinCamp(Camp)
	--����Mission��ӵ�ǰ���
	LeaveTeam()
	local Camp1;
	if (Camp == 3) then
		Camp1 = 0;
	else
		Camp1 = Camp + 1;
	end
	AddMSPlayer(BW_MISSIONID, Camp);
	SetCurCamp(Camp1)
	bw_state_joined_in(Camp1);

	if (Camp == 1) then
		NewWorld(CS_CampPos[1][1], CS_CampPos[1][2], CS_CampPos[1][3])
		EnterChannel(PlayerIndex, "L�i ��i Gi�p");
	elseif (Camp == 2) then
		NewWorld(CS_CampPos[2][1], CS_CampPos[2][2], CS_CampPos[2][3])
		EnterChannel(PlayerIndex, "L�i ��i �t");
	else 
		NewWorld(CS_CampPos[3][1], CS_CampPos[3][2], CS_CampPos[3][3])
	end;

	str = GetName().."<#> �� ti�n v�o ��u tr��ng."
	Msg2MSAll(BW_MISSIONID, str);
end;

function bw_state_joined_in(Camp)
--��ַ�����йصı丿���������󾺼���ս�ı�ĳ�������Ӫ�Ĳ���
	SetTaskTemp(200,1);

	--��ַս��״̬
	SetFightState(0);

	--����˳�ʱ������RV������Ϣ�ε���ʱӷRV(���������㣬���˳���)
	SetLogoutRV(1);

	--��˵���ݷ�
	SetPunish(0);
	
	ForbidEnmity(1);
	
	--��ֹ���װ�̯
	DisabledStall(1);	--��̯
	ForbitTrade(1);	--����
	
	--�ر���ӹ���
	SetCreateTeam(0);
	
	--��PK����
	if (Camp == 0) then
		SetPKFlag(0)
		ChangeOwnFeature(0, 0, -1, -1, -1, -1, -1)
		Msg2Player("Tr�ng t�i: Tr�ng th�i �� ���c �n");
	else
		SetPKFlag(1)
	end;
	ForbidChangePK(1);
	DisabledUseTownP(1)
	
	--��ַ�����㣬һ����ѡ����븷���ĳ���
	BW_SetRev()
	
	--��ַ��ǰ��ҵ�˵���ű�
	SetDeathScript("\\script\\missions\\bw\\bwdeath.lua");
	
	--��ַϢ��˵����������

	x = GetTask(BW_SIGNPOSWORLD);
	y = GetTask(BW_SIGNPOSX);
	z = GetTask(BW_SIGNPOSY);
	SetTempRevPos(x, y * 32, z * 32);
end;

--���������ӳ��ķ���
function bw_getcaptains()
	local OldSubWorld = SubWorld;
	local idx = SubWorldID2Idx(209);
	local szCaptainName = {};
	if (idx == -1) then
		return szCaptainName;
	end;
	SubWorld = idx;
	szCaptainName[1] = GetMissionS(MSS_CAPTAIN[1]);
	szCaptainName[2] = GetMissionS(MSS_CAPTAIN[2]);
	SubWorld = OldSubWorld;
	return szCaptainName;
end;

function OnShowKey()
	OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(209);
	if (SubWorld < 0) then
		return
	end;
	local szCaptainName = {};
	local szCaptainName = bw_getcaptains();
	if (GetMissionV(MS_MAXMEMBERCOUNT) <= 1) then
		Say("Ng��i �� ghi danh tham gia l�i ��i, kh�ng c�n bi�t s� l�n tham gia, v�n c� th� tr�c ti�p thi ��u.",0);
		SubWorld = OldSubWorld;
		return
	end
	local key = 0
	if (GetName() == szCaptainName[1]) then
		key = GetMissionV(MS_TEAMKEY[1]);
	end
	
	if (GetName() == szCaptainName[2]) then 
		key = GetMissionV(MS_TEAMKEY[2]);
	end
	if (key == 0) then
		Say("C�c h� kh�ng � s�n thi ��u trung, ta kh�ng th� n�i ra s� th� t� thi ��u.",0)
	else
		Say("S� th� t� l�<color=yellow> ["..key.."]<color><#>, Nhanh l�n, h�y n�i cho c�c th�nh vi�n trong ��i, th�nh vi�n c� s� th� t� ch�nh x�c m�i c� th� v�o thi ��u", 0);
	end
	SubWorld = OldSubWorld;
end

function bw_branchtask_win(nGroupID)	--��ʤ��һ�����ϱ��
	nOldPlayer = PlayerIndex;
	--ʤ����һ�ӣ�
	local idx = 0;
	local pidx;
	for i = 1, 10 do
		idx , pidx = GetNextPlayer(BW_MISSIONID, idx, nGroupID);
		if (pidx > 0) then
		   	PlayerIndex = pidx;
			branchTask_GainBW1()	--����ȷ��һ�����ʤ��ʱ���еǼǣ�
		end;
		if (idx == 0) then
			break;
		end;
	end
	PlayerIndex = nOldPlayer;
end;
