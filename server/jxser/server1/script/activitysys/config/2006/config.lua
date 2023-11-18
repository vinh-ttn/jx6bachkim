---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2006\\variables.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0701"
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim1000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim3000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi17]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi28]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},25,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAiViemDe10]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVLMC]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},50,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossTheGioi]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},5,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossS�tTh�]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�n Ni�n Gia"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Nh�n ph�n th��ng 1",14} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "nil",
	szName = "compse medal 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"ThisActivity:toUpdatecompose",	{1} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "H�p Th�nh B�nh Sinh Nh�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�nh Sinh Nh�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S�a T��i",{tbProp={6,1,2851,1,0,0},},2} },
		{"AddOneMaterial",	{"���ng Tinh",{tbProp={6,1,2852,1,0,0},},2} },
		{"AddOneMaterial",	{"B�t M�",{tbProp={6,1,2853,1,0,0},},2} },
		{"AddOneMaterial",	{"B�",{tbProp={6,1,2855,1,0,0},},1} },
		{"AddOneMaterial",	{"Kem",{tbProp={6,1,2856,1,0,0},},1} },
		{"AddOneMaterial",	{"S� C� La",{tbProp={6,1,2854,1,0,0},},1} },
		{"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,2859,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1750,1,0,0},},1,"2"} },
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
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i H� l� bao",23} },
	},
}
tbConfig[23] = 
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng s� ph�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i H� l� bao",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"300000 l��ng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1760,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng �� t�",23} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng �� t�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng �� t�",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1589,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng h�o h�u",23} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng h�o h�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng h�o h�u",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1590,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng c�u nh�n",23} },
	},
}
tbConfig[29] = 
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng c�u nh�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng c�u nh�n",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1591,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng bang h�i",23} },
	},
}
tbConfig[31] = 
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng bang h�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng bang h�i",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1592,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng gi�o ch�",23} },
	},
}
tbConfig[33] = 
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng gi�o ch�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng gi�o ch�",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1593,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[34] = --һ��ϸ��
{
	nId = 34,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng s� mu�i",23} },
	},
}
tbConfig[35] = 
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng s� mu�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng s� mu�i",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1594,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[36] = --һ��ϸ��
{
	nId = 36,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng bang ch�",23} },
	},
}
tbConfig[37] = 
{
	nId = 37,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng bang ch�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng bang ch�",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1595,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[38] = --һ��ϸ��
{
	nId = 38,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng s� ��",23} },
	},
}
tbConfig[39] = 
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng s� ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng s� ��",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1596,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[40] = --һ��ϸ��
{
	nId = 40,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"Mua Thi�p ch�c m�ng s� huynh",23} },
	},
}
tbConfig[41] = 
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Mua Thi�p ch�c m�ng s� huynh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thi�p ch�c m�ng s� huynh",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=20191201,tbProp={6,1,1597,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}