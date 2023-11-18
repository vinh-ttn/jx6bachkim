Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")


-------�ֲ��������� ��ʼ---------
-------�ֲ��������� ����---------

local tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "H�ng rong b�n v� b�ng ho�ng kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua v� b�ng ho�ng kim",2} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "H�ng rong b�n v� b�ng ho�ng kim_2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"V� b�ng ho�ng kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},30000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2358,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh�p th�nh v� b�ng ho�ng kim"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p sinh ra t�i nguy�n li�u_th�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T�ng kim cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p cho ra t�i nguy�n li�u_H�a",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {0,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T�ng kim cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p cho ra t�i nguy�n li�u_Thua",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]T�ng kim cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "T�ng kim cao c�p cho ra t�i nguy�n li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"20"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{90,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},80,"[WC 2010]V��t �i cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Phong L�ng �� cho ra t�i nguy�n li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},200,"[WC 2010]Phong L�ng �� cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� cho ra t�i nguy�n li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2360,1,0,0},nExpiredTime=20100628,},200,"[WC 2010]Nhi�m v� s�t th� cho ra t�i nguy�n li�u"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "ItemScript",
	szName = "S� d�ng t�i nguy�n li�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2360,1,0,0},}},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{63,1,"[WC 2010]S� d�ng t�i nguy�n li�u"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "T�i l� quan h�p th�nh b�ng da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c h� mu�n gh�p th�nh lo�i b�ng n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gh�p th�nh b�ng da",11} },
		{"AddDialogOpt",	{"Gh�p th�nh b�ng ho�ng kim",12} },
		{"AddDialogOpt",	{"Gh�p th�nh b�ng b�ch kim",13} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Gh�p th�nh b�ng da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�ng da",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru�t cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch�t d�o",{tbProp={6,1,2362,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2363,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh�p th�nh b�ng da"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Gh�p th�nh b�ng ho�ng kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�ng ho�ng kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru�t cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch�t d�o",{tbProp={6,1,2362,1,0,0},},1} },
		{"AddOneMaterial",	{"V� b�ng ho�ng kim",{tbProp={6,1,2358,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2364,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh�p th�nh b�ng ho�ng kim"} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Gh�p th�nh b�ng b�ch kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�ng b�ch kim",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ru�t cao su",{tbProp={6,1,2361,1,0,0},},1} },
		{"AddOneMaterial",	{"Ch�t d�o",{tbProp={6,1,2362,1,0,0},},1} },
		{"AddOneMaterial",	{"V� b�ng b�ch kim",{tbProp={6,1,2359,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2365,1,0,0},nExpiredTime=20100628,},1,"[WC 2010]Gh�p th�nh b�ng b�ch kim"} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "ItemScript",
	szName = "S� d�ng b�ng da",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2363,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{1,500,"S� d�ng b�ng da nhi�u nh�t ch� ���c 500000000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{1000000,0,"[WC 2010]S� d�ng b�ng da nh�n ���c kinh nghi�m"} },
		{"ThisActivity:AddTask",	{1,1} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "ItemScript",
	szName = "S� d�ng b�ng ho�ng kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2364,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{2,4000,"S� d�ng b�ng ho�ng kim v� b�ch kim nhi�u nh�t t�ng c�ng ch� ���c 4000000000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{2000000,0,"[WC 2010]S� d�ng b�ng ho�ng kim nh�n ���c kinh nghi�m"} },
		{"ThisActivity:AddTask",	{2,2} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "S� d�ng b�ng b�ch kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2365,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"C�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�nh trang ph�i tr�ng 10 � tr� l�n m�i c� th� s� d�ng b�ng b�ch kim"} },
		{"ThisActivity:CheckTask",	{2,4000,"S� d�ng b�ng ho�ng kim v� b�ch kim nhi�u nh�t t�ng c�ng ch� ���c 4000000000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{64,1,"[WC 2010]S� d�ng b�ng b�ch kim nh�n ���c v�t ph�m th��ng"} },
		{"ThisActivity:ExecActivityDetail",	{17} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "nil",
	szName = "S� d�ng b�ng b�ch kim_kinh nghi�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{2,4000,"S� d�ng b�ng ho�ng kim v� b�ch kim nhi�u nh�t t�ng c�ng ch� ���c 4000000000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{65,1,"[WC 2010]S� d�ng b�ng b�ch kim nh�n ���c th��ng kinh nghi�m"} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng B� Huy�t ��n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2366,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{3,1000,"S� d�ng B� Huy�t ��n nhi�u nh�t ch� ���c 1000000000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[WC 2010]S� d�ng b� huy�t ��n t�ng kinh nghi�m"} },
		{"ThisActivity:AddTask",	{3,10} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "L� quan gh�p trang b�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>��i hi�p mu�n gh�p th�nh lo�i trang b� n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gh�p th�nh Vinh Di�u Chi Y",20} },
		{"AddDialogOpt",	{"Gh�pt h�nh Tinh Chu�n Chi Ngoa",21} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Gh�p th�nh Vinh Di�u Chi Y",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Vinh Di�u Chi Y",0,2,3,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti�u C�u chi y",{tbProp={6,1,2367,1,0,0},},99} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,214},nQuality=1,nExpiredTime=86400,},1,"[WC 2010]Gh�p th�nh Vinh Di�u Chi Y"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Gh�pt h�nh Tinh Chu�n Chi Ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tinh Chu�n Chi Ngoa",0,2,2,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti�u t�c chi ngoa",{tbProp={6,1,2368,1,0,0},},99} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,215},nQuality=1,nExpiredTime=86400,},1,"[WC 2010]Gh�p th�nh Tinh Chu�n Chi Ngoa"} },
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "L� quan gi�i thi�u ho�t ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"L� Quan"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ho�t ��ng ch�o m�ng WORLDCUP",23} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "L� quan gi�i thi�u ho�t ��ng_2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Ch�o m�ng ng�y h�i b�ng �� l�n nh�t h�nh tinh, trong kho�ng 11/06/2010 � 0h ng�y 28/06/2010, qu� ��ng ��o c� th� tham gia c�c ho�t ��ng v�i nhi�u ph�n th��ng h�p d�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta ��n �� gh�p b�ng da",10} },
		{"AddDialogOpt",	{"Ta ��n gh�p trang b�",19} },
	},
}
G_ACTIVITY:RegisteActivityDetailConfig(15, tbConfig)
