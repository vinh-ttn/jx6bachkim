Include("\\script\\activitysys\\config\\44\\variables.lua") 
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");



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
local TaskVarIdx_YeSou		= 23
-------�ֲ��������� ����---
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź��",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���̶���",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ͷ",
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
		--{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,3524,1,0,0},},1,"8"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ClickNpc",
	szName = "��ҵ��������ũ",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�y H� Th��ng Nh�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
                {"SetDialogTitle",	{"<npc>L�nh b�i boss Kim Quang l� m�t v�t ph�m v� c�ng qu� gi�, n�u g�i h�n ra v� ��nh b�i ���c h�n, ph�n th��ng s� v� c�ng gi� tr� ?"} },
		{"AddDialogOpt",	{"Ta mu�n ��i Kim B�i.",5} },
		{"AddDialogOpt",	{"Ta mu�n ��i Ng�c B�i.",6} },
                
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n ��i Kim B�i",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Kim B�i",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�nh Kim B�i",{tbProp={6,1,1774,1,0,0},},100} },
                {"AddOneMaterial",	{"2000000 l��ng",{nJxb=2000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1481,1,0,0},nExpiredTime=43200,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n ��i Ng�c B�i",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {"Ng�c B�i",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�nh Ng�c B�i",{tbProp={6,1,1775,1,0,0},},200} },
                {"AddOneMaterial",	{"5000000 l��ng",{nJxb=5000000,},1} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i tham gia ho�t ��ng.",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1482,1,0,0},nExpiredTime=43200,},1,"[T�nh n�ng socola] [H�p th�nh socola]"} },
	},
}