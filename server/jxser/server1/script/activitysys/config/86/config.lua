Include("\\script\\activitysys\\config\\86\\variables.lua")
tbConfig = {}

tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "���ع���28��",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 T�i M�ng Xu�n", 1}},
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�����ɱ��ˮ��ͷ��",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 T�i M�ng Xu�n", 1}},
	},
}

tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "YDBZguoguan",
	szName = "�׵۴�����ʮ��",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},5,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},50,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"} },		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 T�i M�ng Xu�n", 1}},
	},
}

tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "ɱ���ƽ�BOSS",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},50,"Event_QuocKhanhVN","TieuDietBossTheGioi"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietBossTheGioi", "20 T�i M�ng Xu�n", 1}},
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "fenglingdu_bigboatboss",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{90,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 T�i M�ng Xu�n", 1}},
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng l��i ��nh c� (th�ng)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh l��i ��nh c�]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "20 T�i M�ng Xu�n", 1}},
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng l��i ��nh c� (h�a)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},15,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh l��i ��nh c�]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "15 T�i M�ng Xu�n", 1}},		
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng l��i ��nh c� (thua)",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},10,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh c�n c�u c�]"} },
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "10 T�i M�ng Xu�n", 1}},		
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "ClickNpc",
	szName = "V�n L�c",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"V�n L�c"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p Th�nh B�nh Ch�ng",16} },
		{"AddDialogOpt",	{"��i Th�y Tinh L�y V�t Ph�m Event",10} },		
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "��i qu� noel",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"<npc>C�c h� mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i T� Th�y Tinh",11} },
		{"AddDialogOpt",	{"��i T� Lam Tinh",12} },
		{"AddDialogOpt",	{"��i T� L�c Tinh",13} },
		{"AddDialogOpt",	{"��i T� Tinh H�ng B�o Th�ch",14} },
		{"AddDialogOpt",	{"��i H�nh Hi�p L�nh",15} },	
	},
}


tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tr� C� Th��ng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr� C� Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 T� Th�y Tinh",{tbProp={4,239,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng T�i M�ng Xu�n]"} },
	},
}

tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tr� C� Th��ng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr� C� Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Lam Th�y Tinh",{tbProp={4,238,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng T�i M�ng Xu�n]"} },
	},
}

tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tr� C� Th��ng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr� C� Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 L�c Th�y Tinh",{tbProp={4,240,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng T�i M�ng Xu�n]"} },
	},
}

tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tr� C� Th��ng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr� C� Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"1 Tinh H�ng B�o Th�ch",{tbProp={4,353,1,1,0,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng T�i M�ng Xu�n]"} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh Tr� C� Th��ng",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"Tr� C� Th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},10} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4688,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng T�i M�ng Xu�n]"} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "CreateDialog",
	szName = "��i qu� noel",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"<npc>C�c h� mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"L�m B�nh Ch�ng Th��ng",17} },
	{"AddDialogOpt",	{"L�m B�nh Ch�ng Th��ng H�ng",18} },
	},
}

tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "��i H�t Th�y Tinh",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"��i H�t Th�y Tinh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� b�nh",{tbProp={6,1,1653,1,0,0},},2} },
		{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,1654,1,0,0},},2} },
		{"AddOneMaterial",	{"��u xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"D�y c�i",{tbProp={6,1,1656,1,0,0},},2} },	
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1663,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng Noel] [��i H�t Th�y Tinh]"} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "��i H�t Ho�ng Kim",
	nStartDate = 201802060000,
	nEndDate  = 201803100000,
	tbMessageParam = {"��i H�t Ho�ng Kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� b�nh",{tbProp={6,1,1653,1,0,0},},2} },
		{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,1654,1,0,0},},2} },
		{"AddOneMaterial",	{"��u xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"D�y c�i",{tbProp={6,1,1656,1,0,0},},2} },
		{"AddOneMaterial",	{"Th�t heo",{tbProp={6,1,4688,1,0,0},},1} },
		{"lib:CheckDay",	{20180106, 20180310, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1662,1,0,0},nExpiredTime=20180310,},1,"[Ho�t ��ng Noel] [��i H�t Ho�ng Kim]"} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "YDBZguoguan",
	szName = "Vi�m �� v��t qua �i th� 10 nh�n ���c T�i Gi�ng Sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1652,1,0,0},nExpiredTime=20180310,},20,"Event_QuocKhanhVN","VuotAi28NhanTienDong"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "20 T�i M�ng Xu�n", 1}},
	},
}