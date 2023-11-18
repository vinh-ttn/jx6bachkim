Include("\\script\\activitysys\\config\\10\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "LingFanNPC_Click",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		--{"AddDialogOpt",	{"��i ph�n th��ng H�nh Hi�p L�nh",2} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "CreateDialog",
	szName = "ChangXingXiaLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc><color=yellow> H�nh Hi�p L�nh <color> nh�n ���c t?trong c�c ho�t ��ng c�a tr?ch�i,c?th?��i l�y ph�n th��ng t�i ch?c�a ta ��y."},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Thanh C�u L�nh",3} },
		{"AddDialogOpt",	{"V�n L�c L�nh",4} },
		{"AddDialogOpt",	{"Th��ng Lang L�nh",5} },
		{"AddDialogOpt",	{"Huy�n Vi�n L�nh",6} },
		{"AddDialogOpt",	{"Tu Ph�c Th�n Du",7} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_QingJuLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Thanh C�u L�nh",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2369,1,0,0},nBindState=-2,},1,"XingXiaLing_QingJuLing"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_YunLuLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V�n L�c L�nh",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},26} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2353,1,0,0},nBindState=-2,},1,"XingXiaLing_YunLuLing"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_CangLangLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th��ng Lang L�nh",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},170} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2352,1,0,0},nBindState=-2,},1,"XingXiaLing_CangLangLing"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_XuanYuanLing",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Huy�n Vi�n L�nh",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},600} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2351,1,0,0},nBindState = -2,},1,"XingXiaLing_XuanYuanLing"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "XingXiaLing_XiuFuShenYou",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tu Ph�c Th�n Du",1,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�nh Hi�p L�nh",{tbProp={6,1,2566,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2565,1,0,0},nBindState = -2,},1,"XingXiaLing_XiuFuShenYou"} },
	},
}
