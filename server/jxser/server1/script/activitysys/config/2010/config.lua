---------------Youtube PGaming---------------
Include("\\script\\activitysys\\config\\2010\\variables.lua")
local nTask_HuDie		= 1
local nTask_XinXin		= 2
local nTask_ZhuXin_YuanXin		= 3
local nTask_ChenDu		= 4
local nTask_DaLi		= 5
local nTask_FengXiang		= 6
local nTask_XiangYang		= 7
local nTask_BianJin		= 8
local nTask_LinAn		= 9
local nTask_YangZhou		= 10
local nTask_GiveCount		= 11
local nTask_Activi_Point		= 2794
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
local nTime2 = "20"..nYear.."1001"
tbConfig = {}
tbConfig[1] = --?���ϸ��
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"5"} },
	},
}
tbConfig[2] = --?���ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���`���u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"5"} },
	},
}
tbConfig[3] = --?���ϸ��
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ����aͷ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,1220,1,0,0},nExpiredTime=nTime,},1,"1"} },
	},
}
tbConfig[4] = --?���ϸ��
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "��?�a��������ũ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng Nga"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>�� �On m�a tr�ng tr�n. H�ng Nga h� gi�i xu�ng tr�n ch�i. C�c h� mu�n ��i th��ng kh�ng?"} },
		{"AddDialogOpt",	{"Ta mu�n h�p th�nh l�ng ��n",5} },
                {"AddDialogOpt",	{"Ta mu�n ��i l�ng ��n ��c bi�t",12} },
                {"AddDialogOpt",	{"��i b�nh trung thu",19} },
	},
}
tbConfig[5] = --?���ϸ��
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "�ϳɻ��ֵȼ�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c h� mu�n h�p th�nh lo�i l�ng ��n n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n b��m b��m",6} },
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n ng�i sao",7} },
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n �ng",8} },
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n tr�n",9} },
                {"AddDialogOpt",	{"H�p th�nh l�ng ��n c� ch�p",10} },
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n k�o qu�n",11} },
	},
}
tbConfig[6] = --?���ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n b��m b��m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh L�ng ��n b��m b��m",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng v�ng",{tbProp={6,1,1221,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"50000 l��ng",{nJxb=50000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1241,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n b��m b��m]"} },
	},
}
tbConfig[7] = --?���ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n ng�i sao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh l�ng ��n ng�i sao",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng lam",{tbProp={6,1,1222,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 l��ng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1242,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[8] = --?���ϸ��
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n �ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh l�ng ��n �ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng l�c",{tbProp={6,1,1223,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1243,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[9] = --?���ϸ��
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n tr�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh l�ng ��n tr�n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng ��",{tbProp={6,1,1224,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"300000 l��ng",{nJxb=300000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1244,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[10] = --?���ϸ��
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n c� ch�p",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh l�ng ��n c� ch�p",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng cam",{tbProp={6,1,1225,1,0,0},},2} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"400000 l��ng",{nJxb=400000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1245,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[11] = --?���ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n k�o qu�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�p th�nh l�ng ��n k�o qu�n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Gi�y Ki�ng cam",{tbProp={6,1,1225,1,0,0},},5} },
		{"AddOneMaterial",	{"Thanh tre",{tbProp={6,1,1226,1,0,0},},1} },
		{"AddOneMaterial",	{"D�y cai",{tbProp={6,1,1227,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1246,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[12] = --?���ϸ��
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "��i l�ng ��n ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c h?mu�n ��i lo�i l�ng ��n ��c bi�t n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i l�ng ��n b��m b��m ��c bi�t",13} },
		{"AddDialogOpt",	{"��i l�ng ��n ng�i sao ��c bi�t",14} },
		{"AddDialogOpt",	{"��i l�ng ��n �ng ��c bi�t",15} },
		{"AddDialogOpt",	{"��i l�ng ��n tr�n ��c bi�t",16} },
                {"AddDialogOpt",	{"��i l�ng ��n c� ch�p ��c bi�t",17} },
		{"AddDialogOpt",	{"��i l�ng ��n k�o qu�n ��c bi�t",18} },
	},
}
tbConfig[13] = --?���ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n b��m b��m ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n b��m b��m ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n b��m b��m",{tbProp={6,1,1241,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"100000 l��ng",{nJxb=100000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1229,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[14] = --?���ϸ��
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n ng�i sao ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n ng�i sao ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n ng�i sao",{tbProp={6,1,1242,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"200000 l��ng",{nJxb=200000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1230,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[15] = --?���ϸ��
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n �ng ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n �ng ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n �ng",{tbProp={6,1,1243,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"300000 l��ng",{nJxb=300000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1231,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[16] = --?���ϸ��
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n tr�n ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n tr�n ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n tr�n",{tbProp={6,1,1244,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"400000 l��ng",{nJxb=400000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1232,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[17] = --?���ϸ��
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n c� ch�p ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n c� ch�p ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n c� ch�p",{tbProp={6,1,1245,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1233,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[18] = --?���ϸ��
{
	nId = 18,
	szMessageType = "CreateCompose",
	szName = "��i l�ng ��n k�o qu�n ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i l�ng ��n k�o qu�n ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n k�o qu�n",{tbProp={6,1,1246,1,0,0},},1} },
                {"AddOneMaterial",	{"N�n",{tbProp={6,1,1228,1,0,0},},1} },
                {"AddOneMaterial",	{"600000 l��ng",{nJxb=600000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1234,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[19] = --?���ϸ��
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "�ϳɻ��ֵȼ�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>C�c h?mu�n h�p th�nh lo�i b�nh trung thu n�o ?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i b�nh trung thu th��ng.",20} },
		{"AddDialogOpt",	{"��i b�nh trung thu ��u xanh.",21} },
		{"AddDialogOpt",	{"��i b�nh trung thu nh�n tr�ng.",22} },
		{"AddDialogOpt",	{"��i b�nh trung thu ��c bi�t.",24} },
                {"AddDialogOpt",	{"��i b�nh trung thu h�t sen.",25} },
		{"AddDialogOpt",	{"��i b�nh trung thu con heo.",26} },
	},
}
tbConfig[20] = --?���ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu th��ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n b��m b��m ��c bi�t",{tbProp={6,1,1229,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1235,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[21] = --?���ϸ��
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu ��u xanh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu ��u xanh",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n ng�i sao ��c bi�t",{tbProp={6,1,1230,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1236,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[22] = --?���ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu nh�n tr�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu nh�n tr�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n �ng ��c bi�t",{tbProp={6,1,1231,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[23] = --?���ϸ��
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu nh�n tr�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu nh�n tr�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n tr�n ��c bi�t",{tbProp={6,1,1232,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1237,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[24] = --?���ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu ��c bi�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu ��c bi�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n c� ch�p ��c bi�t",{tbProp={6,1,1233,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1238,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[25] = --?���ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu h�t sen",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu h�t sen",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng ��n k�o qu�n ��c bi�t",{tbProp={6,1,1234,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1239,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[26] = --?���ϸ��
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "��i b�nh trung thu con heo",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i b�nh trung thu con heo",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh trung thu h�t sen",{tbProp={6,1,1239,1,0,0},},1} },
                {"AddOneMaterial",	{"B�nh trung thu th��ng",{tbProp={6,1,1235,1,0,0},},1} },
                {"AddOneMaterial",	{"500000 l��ng",{nJxb=500000,},1} },
		--{"lib:CheckDay",	{nTime2, nTime, "Ho�t ��ng �� kOt th�c."} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1240,1,0,0},nExpiredTime=nTime,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[27] = --?���ϸ��
{
	nId = 27,
	szMessageType = "ServerStart",
	szName = "�?�����?��������NPC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
