----------------------------------------------------------------
--FileName:	headinfo.lua
--Creater:	firefox
--Date:		2005-08-28
--Comment:	��ĩ�������ս��֮�������
--			����1���ͷ�ļ��Զ��峣��
-----------------------------------------------------------------
IncludeLib("FILESYS");
--IncludeLib("BATTLE");
IncludeLib("TITLE");
IncludeLib("RELAYLADDER")
Include( "\\script\\task\\system\\task_string.lua" );

--print(date("%w"))				--��õ�ǰ���������� 1--Monday��2--Tuesday��3--Wednesday��4--Thursday��5--Frieday��6--Saturday��0--Sunday
GV_TSK_CD_OPEN = 35
FIRE_OPENDAY_SATURDAY = 6;		--
FIRE_OPENDAY_SUNDAY = 0;		--
CD_LEVEL_LIMIT = 80		--��Ͳμ��سǵȼ�
TASKID_FIRE_KEY = 1185;--random(1000000);					--ÿ���εĹؼ��֣��ɴ��ж��Ƿ�Ϊ���ִβμӵ����
TASKID_FIRE_DAY = 1186;--tonumber(date("%m%d"));			--���һ��ֻ�ܲμ�һ������ս������¼����
TASKID_FIRE_ADDR = 1187;--����ĵĳ���ID
--1189
TSKID_FIRE_SIGNLVL = 1867	--����ʱ�ȼ�
TSKID_FIRE_SIGNEXP = 1868	--����ʱ����ֵ
TSKID_FIRE_SUMEXP = 1869	--��õľ���ֵ
TSKID_PLAYER_ZHANGONG = 1879 --��õ�ս��ֵ
FIRE_JOINUP_FEE = 100000;			--��������10w��
PL_TOTALPOINT = 1
--LADDER_ID_TEMP = 10255	--�ݴ����а�
--LADDER_ID_FANIEL = 10256--��������

MAX_NPC_COUNT = 500--1000--5000;	--���Ƶ�ͼ�������5000��npc

FIRE_1RSTNPC_COUNT = 13500--15000;
FIRE_2CNDNPC_COUNT = 3000--2000;
FIRE_3RDNPC_COUNT = 1500--1000;
FIRE_4THNPC_COUNT = 120;
FIRE_5THNPC_COUNT = 10;

TNPC_DOCTOR1 = 55;			--�ξ�ҽ��Npcģ��ID��
TNPC_DOCTOR2 = 49;			--���ҽ��Npcģ��ID��
TNPC_DEPOSIT = 625;			--������NPCģ��ID
TNPC_CHEFU = 393;
TNPC_SYMBOL1 = 629;
TNPC_SYMBOL2 = 630;
RANK_SKILL = 661;		--�ƺŹ⻷
					--�б�	С�ӳ�	����	��	Ԫ˧ ը����
tbTNPC_SOLDIER = {	{1067,	1068,	1069,	1070,	1080, 1337},	--��
										{1072,	1073,	1074,	1075,	1090, 1337}}	--��
tbSOLDIER_NAME = {	"Ti�u hi�u", "��i tr��ng", "Ti�n phong", "Ch� t��ng", "Ch� so�i", "C�ng Th�nh Chi�n Xa"	}
tbPlAYERER_NAME 		= {"Binh s� ","Hi�u �y ","Th�ng L�nh ","Ph� t��ng ","��i t��ng "} --ս���ﵽ��ν�⻷
tbPlAYERER_ZHANGONG = {     0,   300,   500,  1000,  2000} --����0Ϊʿ��������300ΪУξ....
tbPlAYERER_GUANGHUAN= { {89,   90,   91,   92,   93}, --�γƺ�ID
												{94,   95,   96,   97,   98}} --��
					--����	���� �سǲ��ֵĹ̶�npc
tbTNPC_SOLDIER1 = {	{1067,	1068},	--��
					{1072,	1073}}	--��
tbSOLDIER_NAME1 = {	"V� binh", "T��ng qu�n"}

tbSOLDIER_LEVEL = {	95, 95, 95, 100, 100 ,95}
tbSOLDIER_LEVEL1 = {	95, 95}--�سǹٱ��ļ���
                  --СУ	�ӳ�	�ȷ�	����	��˧ ը���� ȡ��
tbKILLNPC_AWARD = {2,8,10,40,60,30,10}	--ɱ��npc���ս��
tbKILLNPC_SHAREAWARD = {1,5,5,20,30,15,0}--���ѻ��ս��
tbFILE_NPCDEATH = 
	{
	"\\script\\missions\\newcitydefence\\npcdeath_1.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_2.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_3.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_4.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_5.lua",
	"\\script\\missions\\newcitydefence\\npcdeath_6.lua",	
	};
FILE_SHOUCHENG_DEATH = {
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath1.lua",
		"\\script\\missions\\newcitydefence\\shouchengnpcdeath2.lua",
	}

tbDEFENCE_MAPID = { 580, 581 }	--���ν��ͼ��by��־ɽ
tbDEFENCE_SIGNMAP = { 518, 519 }
tbREVIVAL_POS = {
					{1528,3321},
					{1557,3330},
					{1567,3358},
					{1537,3369},
				}
tbSIGNMAP_POS = {
					{ 1582,3174 },
					{ 1588,3160 },
					{ 1604,3147 },
				}


tbDEFENCE_RETURN = {
						[1] = { 1520,3228, "Ph��ng T��ng Ph� ", 2 },	--����
						[11] = { 3018,5089, "Th�nh �� Ph� ", 1 },	--�ɶ�
						[37] = { 1632,3185, "Bi�n Kinh Ph� ", 2 },	--�꾩
						[78] = { 1439,3214, "T��ng D��ng Ph� ", 1 },	--����
						[80] = { 1593,3197, "D��ng Ch�u Ph� ", 1 },	--����
						[162] = { 1470,3269, "��i L�", 1 },	--����
						[176] = { 1392,3313, "L�m An Ph� ", 1 },	--�ٰ�
					}
					
tbDEFENCE_ANNOUNCE = {
			"Ng��i ch�i c� th� ��n Th�nh �� ph�, T��ng D��ng ph�, L�m An ph�, ��i L� ph�, D��ng Ch�u ph� ��i tho�i v�i V� binh th�nh m�n �� tham gia th� th�nh phe T�ng.",
			"Ng��i ch�i c� th� ��n Ph��ng T��ng ph�, Bi�n Kinh ph� ��i tho�i v�i V� binh th�nh m�n �� tham gia th� th�nh phe Kim."
}

FILE_PLAYERDEATH = 		"\\script\\missions\\newcitydefence\\playerdeath.lua";
FILE_DOCTOR = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_BOX = 				"\\script\\missions\\newcitydefence\\npc\\cd_box.lua";
FILE_DOCTOR1 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_DOCTOR2 = 			"\\script\\missions\\newcitydefence\\npc\\cd_doctor.lua";
FILE_CENTERTRAP1 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap1.lua";
FILE_CENTERTRAP2 = 		"\\script\\missions\\newcitydefence\\trap\\hometrap2.lua";
FILE_CD_TRANSER = 		"\\script\\missions\\newcitydefence\\npc\\cd_transer.lua"
FILE_SYMBOLNPC =		"";

FRAME2TIME = 18;				--18֡��Ϸʱ���൱��1����
MISSIONID = 27;					--mission���
MAX_MEMBERCOUNT = 400;			--���ǵ�ͼ�����������

SMALLTIMERID = 52;				--��ʱ�����
TOTALTIMERID = 53;				--��ʱ�����

SMALL_TIME = 20 * FRAME2TIME;				--ÿ20���ʱһ��
TOTAL_TIME = 150 * 60 * FRAME2TIME;			--150���Ӽ�ʱһ�Σ������
RUNGAME_TIME = 30 * 60 * FRAME2TIME / SMALL_TIME; --����30����֮������
LASTREPORT_TIME = 145 * 60 * FRAME2TIME / SMALL_TIME;	--�س����5����û���ӣ���ʾһ��ʱ��
CALLBOSS_ZHUSHUAI = 120 * 60 * FRAME2TIME / SMALL_TIME;	--��˧����ʱ��

NHOMEDEFENCE = 24 --�Ƿ���ʼֵ
NHOMEDEFENCE_DAMAGE = 1  --�Ƿ��˺�ֵ�����ǳ��ԳǷ�

MS_STATE = 1;				--�����м�¼����״̬�ı���ID
MS_RANDKEY = 2;				--��¼��ǰ�����µ�key�������
MS_OPENDAY = 3;				--��¼��ǰ����ʼ���£���
MS_CITYCAMP = 4;			--��¼���ŵ�ͼ����Ӫ����-1����-2
MS_SMALL_TIME = 5;			--��¼smalltimer��ʱ���Ĵ���
MS_BOSS4_DOWN = 6;			--Ϊ1�Ѳ���Сboss��0��δ
MS_BOSS5_DOWN	=	7;		--Ϊ1�Ѳ�����boss��0��δ
MS_TLCOUNT_COMMON = 8;		--ɱ������ͨ�ֵ�����
MS_CITYDEFENCE = 9;			--Ϊ0��ʾ��ʱ��û���������Ϊ1��ʾ�������
MS_MISSIONID = 10;			--���뵱ǰmission��ID

MS_MAXCOUNTNPC_1 = 11;		--СУʣ������
MS_MAXCOUNTNPC_2 = 12;		--�ӳ�ʣ������
MS_MAXCOUNTNPC_3 = 13;			--�ȷ�ʣ������
MS_MAXCOUNTNPC_4 = 14;			--����ʣ������
MS_MAXCOUNTNPC_5 = 15;			--��˧ʣ������

MS_RESTCOUNTNPC_1 = 16;		--��¼һ��ɱ���İ׹�����
MS_RESTCOUNTNPC_2 = 17;		--��¼һ��ɱ������������
MS_RESTCOUNTNPC_3 = 18;		--��¼һ��ɱ����ɱ�ּ�������
MS_RESTCOUNTNPC_4 = 19;		--��¼һ��ɱ����СBOSS����
MS_RESTCOUNTNPC_5 = 20;		--��¼һ��ɱ���Ĵ�BOSS����

MS_HOMEOUT_X1 = 21;			--Ұ������Ӫ�Ĵ�������X����һ��Trap
MS_HOMEOUT_Y1 = 22;
MS_HOMEOUT_X2 = 23;			--Ұ������Ӫ�Ĵ�������X���ڶ���Trap
MS_HOMEOUT_Y2 = 24;

MS_CENTER_X1 = 27;			--��Ӫ��Ұ��Ĵ�������X����һ��Trap
MS_CENTER_Y1 = 28;
MS_CENTER_X2 = 29;			--��Ӫ��Ұ��Ĵ�������X����һ��Trap
MS_CENTER_Y2 = 30;

MS_SHOUCHENGWEIBING = 33
MS_SHOUCHENGJIANGJUN = 34

MS_HOMEDEFENCE = 35	--�Ƿ�

MS_S_GUAI1 = 1;			--��¼��һ��ˢ�ֵ�
MS_S_GUAI2 = 2;			--��¼�ڶ���ˢ�ֵ�
MS_S_GUAI3 = 3;			--��¼������ˢ�ֵ�
MS_S_CD_NAME = 4;			--��ǰ�س�ս�۵�����

CD_BASE_VALUE = 1000000

TB_CD_AWARDEXP = {600, 700, 800, 900, 1000}
TB_CD_AWARDITEM = {
			--{ itemname, itemvalue, itemlist},
				{"��i L�c ho�n",0.02,{ 6,0,3,0,1,1,1 }},
				{"Phi T�c ho�n",0.02,{ 6,0,6,0,1,1,1 }},
	}