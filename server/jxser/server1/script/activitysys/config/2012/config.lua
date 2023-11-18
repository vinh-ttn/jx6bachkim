---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2012\\variables.lua")
local nYear  = tonumber(date("%y"));
local nYear2  = nYear+1
local nTime = "20"..nYear2.."0101"
tbConfig = {}
tbConfig[1] = --T�ng Kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim1000]"} },
	},
}
tbConfig[2] = --T�ng Kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim3000]"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 17 Giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 28 Giai �o�n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi28]"} },
	},
}
tbConfig[5] = --Th�y T�c ��u L�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t Ch�t 1 Th�y T�c ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDauLinh]"} },
	},
}
tbConfig[6] = --Th�y T�c ��i ��u L�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Th�y T�c ��i ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
	},
}
tbConfig[7] = --Vi�m ��
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t Qua �i Vi�m �� Th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},25,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAiViemDe10]"} },
	},
}
tbConfig[8] = --Tin Su
{
	nId = 8,
	szMessageType = "FinishMail",
	szName = "Tin Su",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4944,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTinSu10]"} },
	},
}
tbConfig[9] = --V�LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Ho�n Th�nh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVLMC]"} },
	},
}
tbConfig[10] = --Boss Th� Gi�i
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Boss Th� Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},50,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossTheGioi]"} },
	},
}
tbConfig[11] = --Boss S�t Th�
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m V� S�t Th� C�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},5,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossS�tTh�]"} },
	},
}
tbConfig[12] = --?���ϸ��
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���`���u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"�ng gi� No-en"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t th��ng",14} },
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t ��c bi�t",15} },
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t kh�n cho�ng xanh ��c bi�t",22} },
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t kh�n cho�ng xanh th��ng",23} },
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t kh�n cho�ng �� ��c bi�t",24} },
	{"AddDialogOpt",	{"Ta mu�n l�m ng��i tuy�t kh�n cho�ng �� th��ng",25} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t th��ng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1324,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"C�y th�ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"10000 l��ng",{nJxb=10000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1321,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[16] = --S� D�ng
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "T�i B�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4940,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiBanh", {nil}},
	},
}
tbConfig[17] = --S� D�ng
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "H�p S� C� La",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2861,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:HopSoCoLa", {nil}},
	},
}
tbConfig[18] = --Add NPC
{
	nId = 18,
	szMessageType = "ServerStart",
	szName = "Add npc when server start",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:InitAddNpc",	{nil} },
	},
}
tbConfig[19] = --?���ϸ��
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ����aͷ",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
	},
}
tbConfig[20] = --?���ϸ��
{
	nId = 20,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź�u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1311,1,0,0},},1,"2"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua T�i B�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�i B�nh",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4940,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t kh�n cho�ng xanh ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t kh�n cho�ng xanh ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh�n cho�ng (xanh)",{tbProp={6,1,1316,1,0,0},},1} },
	{"AddOneMaterial",	{"C�y th�ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l��ng",{nJxb=20000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1319,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t kh�n cho�ng xanh th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t kh�n cho�ng xanh th��ng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh�n cho�ng (xanh)",{tbProp={6,1,1316,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1322,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[24] = 
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t kh�n cho�ng �� ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t kh�n cho�ng �� ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh�n cho�ng (��)",{tbProp={6,1,1317,1,0,0},},1} },
	{"AddOneMaterial",	{"C�y th�ng",{tbProp={6,1,1318,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l��ng",{nJxb=20000,},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1320,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m ng��i tuy�t kh�n cho�ng �� th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"ng��i tuy�t kh�n cho�ng �� th��ng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Hoa tuy�t",{tbProp={6,1,1312,1,0,0},},5} },
	{"AddOneMaterial",	{"C�nh th�ng",{tbProp={6,1,1314,1,0,0},},2} },
	{"AddOneMaterial",	{"C� r�t",{tbProp={6,1,1313,1,0,0},},1} },
	{"AddOneMaterial",	{"N�n gi�ng sinh",{tbProp={6,1,1315,1,0,0},},1} },
	{"AddOneMaterial",	{"Kh�n cho�ng (��)",{tbProp={6,1,1317,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1323,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}