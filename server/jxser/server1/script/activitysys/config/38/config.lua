Include("\\script\\activitysys\\config\\38\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ServerStart",
	szName = "add npc when server start",
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
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Gift",
	nStartDate = 201201010000,
	nEndDate  = 201202010000,
	tbMessageParam = {"return {tbProp={6,1,3086,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,MAX_USED_NEWYEAR_GIFT_DAILY,"S� l�n s� d�ng c�a ng��i h�m nay �� ��, ng�y mai h�y quay l�i nh�!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearGift",	{nil} },
		{"ThisActivity:AddTaskDaily",	{TSK_USED_NEWYEAR_GIFT_DAILY,1} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "right click item named NewYear-Fireworks",
	nStartDate = 201201010000,
	nEndDate  = 201202010000,
	tbMessageParam = {"return {tbProp={6,1,3087,-1,-1,0},}"},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{TSK_USED_NEWYEAR_FIREWORKS,MAX_USED_NEWYEAR_FIREWORKS,"Ng��i �� nh�n ���c qu� nhi�u ph�n th��ng, xin h�y th� c�i kh�c �i!","<"} },
		{"ThisActivity:CheckFireworksUseTime",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"default",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:UseNewYearFireworks",	{nil} },
		{"ThisActivity:AddTask",	{TSK_USED_NEWYEAR_FIREWORKS,1} },
	},
}
