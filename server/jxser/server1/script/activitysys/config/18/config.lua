Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\misc\\taskmanager.lua")


-------�ֲ��������� ��ʼ---------
local nCloseDate		= 20100816
local nCloseTime		= 201208160000
local nItemUseDate		= 20120823
local nTask_LittleWord		= 1
local nTask_MiddleWord		= 2
local nTask_FightToken_ChenDu		= 3
local nTask_FightToken_DaLi		= 4
local nTask_FightToken_FengXiang		= 5
local nTask_FightToken_XiangYang		= 6
local nTask_FightToken_BianJin		= 7
local nTask_FightToken_LinAn		= 8
local nTask_FightToken_YangZhou		= 9
-------�ֲ��������� ����---------

local tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "Loading NPC",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"lib:Include",	{"\\script\\event\\seven_city_war\\themeactivities\\support.lua"} },
	},
	tbActition = 
	{
		{"tbSevenCityWar_Theme:AddNpc",	{nCloseDate} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t ��i h� b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80,90"} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2403,1,0,0},nExpiredTime=nCloseDate,},1,"1.5"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p_th�ng",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},100,"[Ho�t ��ng ch�nh PBM][T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p_h�a",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},100,"[Ho�t ��ng ch�nh PBM][T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p_thua",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},100,"[Ho�t ��ng ch�nh PBM][T�ng Kim cao c�p nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "Chuanguan",
	szName = "V��t �i cao c�p nh�n ���c ��i c�t b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"20"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{90,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},100,"[Ho�t ��ng ch�nh PBM][V��t �i cao c�p nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Phong L�ng �� nh�n ���c ��i c�t b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},150,"[Ho�t ��ng ch�nh PBM][Phong L�ng �� nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� nh�n ���c ��i c�t b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2404,1,0,0},nExpiredTime=nCloseDate,},120,"[Ho�t ��ng ch�nh PBM][Nhi�m v� s�t th� nh�n ���c ��i c�t b�o h�p]"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "ItemScript",
	szName = "S� d�ng ��i h� b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {{tbProp={6,1,2403,1,0,0},}},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{76,1,"[Ho�t ��ng ch�nh PBM][S� d�ng ��i h� b�o h�p]"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "ItemScript",
	szName = "S� d�ng ��i c�t b�o h�p",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {{tbProp={6,1,2404,1,0,0},}},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{77,1,"[Ho�t ��ng ch�nh PBM][S� d�ng ��i c�t b�o h�p]"} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ClickNpc",
	szName = "B�m v�o B�o B�o Ca",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"B�o B�o Ca"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>Nh�n d�p ch�o m�ng s� ki�n ra m�t Phi�n B�n M�i, c�c v� ��i hi�p c� th� thu th�p c�c nguy�n li�u c�n thi�t �� ��i l�y nh�ng b�o v�t qu� hi�m c�a ta!"} },
		{"AddDialogOpt",	{"��i ti�u t� khung",12} },
		{"AddDialogOpt",	{"��i trung t� khung (huy�n tinh)",13} },
		{"AddDialogOpt",	{"��i trung t� khung (Ph�c duy�n l�)",14} },
		{"AddDialogOpt",	{"��i trang b� phi�n b�n m�i",15} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "��i ti�u t� khung",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"Ti�u T� Khung",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Th�t",{tbProp={6,1,2405,1,0,0},},1} },
		{"AddOneMaterial",	{"Th�nh",{tbProp={6,1,2406,1,0,0},},1} },
		{"AddOneMaterial",	{"��i",{tbProp={6,1,2407,1,0,0},},1} },
		{"AddOneMaterial",	{"Chi�n",{tbProp={6,1,2408,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=10000},1} },
		{"AddOneMaterial",	{"Ti�u Ph�c Duy�n L� ",{tbProp={6,1,122,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2418,1,0,0},nExpiredTime=nItemUseDate,},1,"[Ho�t ��ng ch�nh PBM][��i ti�u t� khung]"} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "��i trung t� khung (huy�n tinh)",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"Trung T� Khung",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Th�t",{tbProp={6,1,2405,1,0,0},},1} },
		{"AddOneMaterial",	{"Th�nh",{tbProp={6,1,2406,1,0,0},},1} },
		{"AddOneMaterial",	{"��i",{tbProp={6,1,2407,1,0,0},},1} },
		{"AddOneMaterial",	{"Chi�n",{tbProp={6,1,2408,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=60000},1} },
		{"AddOneMaterial",	{"Huy�n Tinh c�p 4",{tbProp={6,1,147,4,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2419,1,0,0},nExpiredTime=nItemUseDate,},1,"[Ho�t ��ng ch�nh PBM][��i trung t� khung]"} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "��i trung t� khung (Ph�c duy�n l�)",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"Trung T� Khung",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Th�t",{tbProp={6,1,2405,1,0,0},},1} },
		{"AddOneMaterial",	{"Th�nh",{tbProp={6,1,2406,1,0,0},},1} },
		{"AddOneMaterial",	{"��i",{tbProp={6,1,2407,1,0,0},},1} },
		{"AddOneMaterial",	{"Chi�n",{tbProp={6,1,2408,1,0,0},},1} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=40000},1} },
		{"AddOneMaterial",	{"��i Ph�c Duy�n L� ",{tbProp={6,1,124,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2419,1,0,0},nExpiredTime=nItemUseDate,},1,"[Ho�t ��ng ch�nh PBM][��i trung t� khung]"} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "��i trang b� phi�n b�n m�i",
	nStartDate = nil,
	nEndDate  = nCloseTime,
	tbMessageParam = {"Trang b� phi�n b�n m�i",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Th�t",{tbProp={6,1,2405,1,0,0},},1} },
		{"AddOneMaterial",	{"Th�nh",{tbProp={6,1,2406,1,0,0},},1} },
		{"AddOneMaterial",	{"��i",{tbProp={6,1,2407,1,0,0},},1} },
		{"AddOneMaterial",	{"Chi�n",{tbProp={6,1,2408,1,0,0},},1} },
		{"AddOneMaterial",	{"M�nh thi�n th�",{tbProp={6,1,2409,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{78,1,"[Ho�t ��ng ch�nh PBM][��i trang b� phi�n b�n m�i]"} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "S� d�ng ti�u t� khung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2418,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_LittleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng 999 ti�u t� khung","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_LittleWord,1} },
		{"PlayerFunLib:AddExp",	{1000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng ti�u t� khung]"} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "S� d�ng ti�u t� khung",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2419,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_MiddleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng trung t� khung, th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa t�ng c�ng 999 c�i","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_MiddleWord,1} },
		{"PlayerFunLib:AddExp",	{2500000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng trung t� khung]"} },
		{"PlayerFunLib:GetAward",	{79,1,"[Ho�t ��ng ch�nh PBM][S� d�ng trung t� khung]"} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng th�t tinh b�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2420,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_MiddleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng trung t� khung, th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa t�ng c�ng 999 c�i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{2,"Ph�i �� tr�ng 2 � tr� l�n m�i c� th� s� d�ng th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_MiddleWord,1} },
		{"PlayerFunLib:AddExp",	{4000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng th�t tinh b�i]"} },
		{"PlayerFunLib:GetAward",	{80,1,"[Ho�t ��ng ch�nh PBM][S� d�ng th�t tinh b�i]"} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "ItemScript",
	szName = "S� d�ng th�nh v��ng kh�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2421,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_MiddleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng trung t� khung, th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa t�ng c�ng 999 c�i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{2,"Ph�i �� tr�ng 2 � tr� l�n m�i c� th� s� d�ng th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_MiddleWord,1} },
		{"PlayerFunLib:AddExp",	{6000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng th�nh v��ng kh�i]"} },
		{"PlayerFunLib:GetAward",	{80,1,"[Ho�t ��ng ch�nh PBM][S� d�ng th�nh v��ng kh�i]"} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� d�ng ��i th�nh gi�p",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2422,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_MiddleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng trung t� khung, th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa t�ng c�ng 999 c�i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{2,"Ph�i �� tr�ng 2 � tr� l�n m�i c� th� s� d�ng th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_MiddleWord,1} },
		{"PlayerFunLib:AddExp",	{8000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng ��i th�nh gi�p]"} },
		{"PlayerFunLib:GetAward",	{80,1,"[Ho�t ��ng ch�nh PBM][S� d�ng ��i th�nh gi�p]"} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "S� d�ng chi�n th�n ngoa",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2423,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckLevel",	{50,"Nh�n v�t c�p 50 tr� l�n m�i c� th� s� d�ng",">="} },
		{"ThisActivity:CheckTask",	{nTask_MiddleWord,999,"M�i nh�n v�t nhi�u nh�t ch� c� th� s� d�ng trung t� khung, th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa t�ng c�ng 999 c�i","<"} },
		{"PlayerFunLib:CheckFreeBagCell",	{2,"Ph�i �� tr�ng 2 � tr� l�n m�i c� th� s� d�ng th�t tinh b�i, th�nh v��ng kh�i, ��i th�nh gi�p, chi�n th�n ngoa"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_MiddleWord,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng chi�n th�n ngoa]"} },
		{"PlayerFunLib:GetAward",	{80,1,"[Ho�t ��ng ch�nh PBM][S� d�ng chi�n th�n ngoa]"} },
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ItemScript",
	szName = "S� d�ng th�nh �� huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2411,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_ChenDu,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_ChenDu,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng th�nh �� huy�t chi�n l�nh]"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ItemScript",
	szName = "S� d�ng ��i l� huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2412,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_DaLi,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_DaLi,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng ��i l� huy�t chi�n l�nh]"} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "ItemScript",
	szName = "S� d�ng ph��ng t��ng huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2413,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_FengXiang,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_FengXiang,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng ph��ng t��ng huy�t chi�n l�nh]"} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "ItemScript",
	szName = "S� d�ng t��ng d��ng huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2414,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_XiangYang,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_XiangYang,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng ph��ng t��ng huy�t chi�n l�nh]"} },
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "ItemScript",
	szName = "S� d�ng bi�n kinh huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2415,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_BianJin,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_BianJin,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng bi�n kinh huy�t chi�n l�nh]"} },
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng l�m an huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2416,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_LinAn,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_LinAn,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng l�m an huy�t chi�n l�nh]"} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng d��ng ch�u huy�t chi�n l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2417,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FightToken_YangZhou,20,"C�ng 1 lo�i th�nh th� huy�t chi�n l�nh ch� c� th� s� d�ng 20 c�i.","<"} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{nTask_FightToken_YangZhou,1} },
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng ch�nh PBM][S� d�ng d��ng ch�u huy�t chi�n l�nh]"} },
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "ClickNpc",
	szName = "B�m v�o long nhi",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B� Long"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i nh�t k� c�n kh�n ph�",30} },
		{"AddDialogOpt",	{"��i m�t n� c� truy�n",31} },
		{"AddDialogOpt",	{"��i m�t n� �o d�i",32} },
		{"AddDialogOpt",	{"��i m�t n� qu� �nh",33} },
		{"AddDialogOpt",	{"��i m�t n� c�u m�nh",34} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "��i nh�t k� c�n kh�n ph�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Nh�t K� C�n Kh�n Ph�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},300} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=43200,},1,"[Ho�t ��ng ch�nh PBM][��i 1 nh�t k� c�n kh�n ph�]"} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� c� truy�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� c� truy�n",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},30} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,469,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng ch�nh PBM][��i m�t n� c� truy�n]"} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� �o d�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� �o d�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},30} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,470,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng ch�nh PBM][��i m�t n� �o d�i]"} },
	},
}
tbConfig[33] = --һ��ϸ��
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� qu� �nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� qu� �nh",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},5} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng ch�nh PBM][��i m�t n� qu� �nh]"} },
	},
}
tbConfig[34] = --һ��ϸ��
{
	nId = 34,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� c�u m�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�t n� c�u m�nh",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},5} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng ch�nh PBM][��i m�t n� c�u m�nh]"} },
	},
}
tbConfig[35] = --һ��ϸ��
{
	nId = 35,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Th�m C�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th�m C�u"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i ng�a",36} },
	},
}
tbConfig[36] = --һ��ϸ��
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "��i ng�a",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ng�a",0,2,3,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Th�n H�nh To�i Phi�n",{tbProp={6,1,2410,1,0,0},},81} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetAward",	{81,1,"[Ho�t ��ng ch�nh PBM][��i ng�a]"} },
	},
}
G_ACTIVITY:RegisteActivityDetailConfig(18, tbConfig)
