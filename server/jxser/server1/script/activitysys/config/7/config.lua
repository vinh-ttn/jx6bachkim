Include("\\script\\activitysys\\g_activity.lua")
local tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "DailogOption",
	szName = "Ta mu�n d�ng nh�nh c�y ��i l�y kinh nghi�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tuy�t mai","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer1","C�c h� mu�n d�ng c�ch n�o �� ��i?"} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i th�nh %u kinh nghi�m", "Nh�nh c�y ti�u", 4000000),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer1","��i kinh nghi�m",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y ti�u","return {tbProp={6,1,2141,1,0,0},}",1} },
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"G_ACTIVITY:ExecActivityDetail",	{18} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i th�nh %u kinh nghi�m", "Nh�nh c�y trung", 6000000),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer1","��i kinh nghi�m",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y trung","return {tbProp={6,1,2142,1,0,0},}",1} },
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"G_ACTIVITY:ExecActivityDetail",	{19} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i th�nh %u kinh nghi�m", "Nh�nh c�y ��i", 10000000),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer1","��i kinh nghi�m",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y ��i","return {tbProp={6,1,2143,1,0,0},}",1} },
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"G_ACTIVITY:ExecActivityDetail",	{20} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "DailogOption",
	szName = format("Nh�n ���c %s", "�i�m trang tr�"),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tuy�t mai","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer2","C�c h� mu�n d�ng c�ch n�o �� ��i?"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i %d %s", "Nh�nh c�y ti�u", 1, "�i�m trang tr�"),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer2","��i �i�m trang tr�",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y ti�u","return {tbProp={6,1,2141,1,0,0},}",1} },
		{"PlayerFunLib:IsHaveTong",	{"C�c h� v�n ch�a c� bang h�i"} },
		{"tbZhongQiu200909:IsTimeAct",	{nil} },
	},
	tbActition = 
	{
		{"tbZhongQiu200909:AddExploit",	{1} },
		{"G_ACTIVITY:ExecActivityDetail",	{18} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i %d %s", "Nh�nh c�y trung", 2, "�i�m trang tr�"),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer2","��i �i�m trang tr�",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y trung","return {tbProp={6,1,2142,1,0,0},}",1} },
		{"PlayerFunLib:IsHaveTong",	{"C�c h� v�n ch�a c� bang h�i"} },
		{"tbZhongQiu200909:IsTimeAct",	{nil} },
	},
	tbActition = 
	{
		{"tbZhongQiu200909:AddExploit",	{2} },
		{"G_ACTIVITY:ExecActivityDetail",	{19} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "ComposeDailogOption",
	szName = format("S� d�ng %s ��i %d %s", "Nh�nh c�y ��i", 3, "�i�m trang tr�"),
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer2","��i �i�m trang tr�",0,0,0,"",0},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Nh�nh c�y ��i","return {tbProp={6,1,2143,1,0,0},}",1} },
		{"PlayerFunLib:IsHaveTong",	{"C�c h� v�n ch�a c� bang h�i"} },
		{"tbZhongQiu200909:IsTimeAct",	{nil} },
	},
	tbActition = 
	{
		{"tbZhongQiu200909:AddExploit",	{3} },
		{"G_ACTIVITY:ExecActivityDetail",	{20} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "DailogOption",
	szName = "Xem �i�m trang tr� bang h�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tuy�t mai","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer3","��i hi�p mu�n xem c�i g�?"} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "DailogOption",
	szName = "Xem t�nh h�nh �i�m trang tr� c�a b�n bang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer3","",""},
	tbCondition = 
	{
		{"PlayerFunLib:IsHaveTong",	{"C�c h� v�n ch�a c� bang h�i"} },
	},
	tbActition = 
	{
		{"tbZhongQiu200909:TongInfo",	{nil} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "DailogOption",
	szName = "Xem t�nh h�nh b�ng x�p h�ng �i�m trang tr� bang h�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer3","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer3.1","Ch�n xem 1 bang x�p h�ng"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "DailogOption",
	szName = "B�ng x�p h�ng m�i ��t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer3.1","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer3.1.1", format("<lua LadderFunLib:GetInfo(10263,\"%s\",\"%s\",\"%s\")/>", "STT", "T�n bang h�i", "S� l��ng" ) } },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "DailogOption",
	szName = "B�ng x�p h�ng tu�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer3.1","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer3.1.2",format("<lua LadderFunLib:GetInfo(10264,\"%s\",\"%s\",\"%s\")/>", "STT", "T�n bang h�i", "S� l��ng")} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "DailogOption",
	szName = "B�ng x�p h�ng su�t ho�t ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"shitouer3.1","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"PlayerFunLib:ShowSubDailog",	{"shitouer3.1.3",format("<lua LadderFunLib:GetInfo(10265,\"%s\",\"%s\",\"%s\")/>",  "STT", "T�n bang h�i", "S� l��ng")} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "DailogOption",
	szName = "Nh�n th��ng x�p h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tuy�t mai","",""},
	tbCondition = 
	{
		{"PlayerFunLib:IsHaveTong",	{"C�c h� v�n ch�a c� bang h�i"} },
	},
	tbActition = 
	{
		{"tbZhongQiu200909:GetAwardDailog",	{nil} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "DailogOption",
	szName = "�i ��n ��a �i�m th��ng xu�t hi�n c�y gi�ng sinh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xa phu","",""},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"tbZhongQiu200909:FlyToTree",	{nil} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "SetDailogTitle",
	szName = "����ѩ÷����",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tuy�t mai","<npc>".."Ta �ang c�n t�m nh�ng nh�nh th�ng th�t ��p �� trang tr� cho nh�ng C�y Gi�ng Sinh quanh ��y c�ng th�m l�ng l�y. ��i hi�p c� th� gi�p ta t�m nh�ng nh�nh th�ng th�t tuy�t v�i kh�ng?"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "nil",
	szName = "T�ng th�m �i�m c�ng ��c ��ng th�i t�ng �i�m kinh nghi�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{4000000,0,"shuzhi huan jingyan"} },
		{"PlayerFunLib:AddTask",	{2647,4} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "nil",
	szName = "T�ng th�m �i�m c�ng ��c ��ng th�i t�ng �i�m kinh nghi�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{6000000,0,"shuzhi huan jingyan"} },
		{"PlayerFunLib:AddTask",	{2647,6} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "nil",
	szName = "T�ng th�m �i�m c�ng ��c ��ng th�i t�ng �i�m kinh nghi�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTask",	{2647,300,"S� d�ng nh�nh c�y ti�u, nh�nh c�y trung, nh�nh c�y ��i nhi�u nh�t ch� ���c 300.000.000 kinh nghi�m","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"shuzhi huan jingyan"} },
		{"PlayerFunLib:AddTask",	{2647,10} },
	},
}
G_ACTIVITY:RegisteActivityDetailConfig(7, tbConfig)
