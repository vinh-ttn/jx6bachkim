Include("\\script\\activitysys\\config\\39\\variables.lua")
tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "click yuexialaoren",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"Nguy�t H� l�o nh�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"T� H�ng Thi�n L� Nh�n Duy�n",3} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "ClickNpc",
	szName = "click zhangdenggongnv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"T� H�ng Thi�n L� Nh�n Duy�n",4} },
		{"AddDialogOpt",	{"Ph�n th��ng s� d�ng T� Nguy�t Ng�ng L�",13} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "yuelao_yinyuan",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"B�ch Ni�n Tu ��c ��ng Thuy�n ��, Thi�n Ni�n Tu Lai C�ng Ch�m Mi�n, Ta s� d�ng D�y H�ng n�y �� r�ng bu�c nh�n duy�n tr�n th� gian n�y",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gi�i thi�u ho�t ��ngL� T�nh Nh�n",5} },
		{"AddDialogOpt",	{"Nh�n T� H�ng",6} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "gongnv_yinyuan",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"H�t Gi�ng Hoa H�ng v� ��u H�ng m�t l�n ng��i ch� c� th� nh�n 1 trong hai lo�i",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Gi�i thi�u ho�t ��ngL� T�nh Nh�n",5} },
		{"AddDialogOpt",	{"Nh�n H�t Gi�ng Hoa H�ng",7} },
		{"AddDialogOpt",	{"Nh�n ��u H�ng",9} },
--By: NgaVN - B� d�ng ch�n ��i C�n Kh�n T�ch M�ch ��n t�i NPC Ch��ng �ang Cung N�
		--{"AddDialogOpt",	{"Giao n�p Di Hoa H�a M�ng",12} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateDialog",
	szName = "yinyuan introduction",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"Trong th�i gian ho�t ��ng, c�c ��i hi�p c�p 120 tr� l�n m�i ng�y ��u c� th� ��n Nguy�t H� L�o Nh�n nh�n 1 T� H�ng, c�ng c� th� ��n Ch��ng ��ng Cung N� nh�n ��u H�ng ho�c H�t Gi�ng Hoa H�ng, nh�n v� tr�ng ��u H�ng c�n ph�i ��p �ng ���c �i�u ki�n c�a ho�t ��ng, nh�n v� tr�ng H�t Gi�ng Hoa H�ng c�n ph�i ��p �ng ���c 1 trong 2 �i�u ki�n b�t k� d��i ��y<enter> 1. Hai  ng��i ch�i kh�c nhau v� gi�i t�nh c�ng nhau t� ��i, s� nh�n duy�n v� s� th�nh ng�u tr�n T� H�ng c�a hai ng��i c�ng t� ��i<enter> 2. Phu th� hai ng��i c�ng nhau t� ��i <enter> khi c�ng nhau tr�ng H�t Gi�ng Hoa H�ng, ng��i kh�c gi�i t�nh c�a ��i hi�p c�ng ��i ng� c�n ph�i nu�i d��ng H�t Gi�ng Hoa H�ng c�a ��i ph��ng, Khi Hoa H�ng tr��ng th�nh, ng��i c� th� thu th�p D� H��ng Hoa H�ng tr�n c�y c�a m�nh. nu�i d��ng H�ng ��u kh�ng c�n t� ��i, ch� c�n nu�i d��ng h�t gi�ng c�a m�nh l� ���c, nu�i d��ng H�t Gi�ng Hoa H�ng/��u H�ng c�n ph�i k�p th�i b�t s�u , nh� c�, v.v k�p th�i, nh� v�y m�i nh�n ���c c�ng nhi�u ph�n th��ng. <enter> trong th�i gian ho�t ��ng trong K� Tr�n C�c c� Di Hoa H�a M�ng, ��i hi�p c� th� l�y Di Hoa H�a M�ng giao cho Ch��ng ��ng Cung N�, Ch��ng ��ng Cung N� s� cho ng��i C�n Kh�n T�ch L�ch ��n, ��i hi�p c� th� s� d�ng C�n Kh�n T�ch L�ch ��n �i �c Lang C�c ti�u di�t �c Lang T� S�, ��nh b�i �c Lang T� S� s� nh�n ���c nhi�u ph�n th��ng",0},
	tbCondition = 
	{
	},
	tbActition = 
	{
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "nil",
	szName = "get redline from yuelao",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
--By: NgaVN	
		--{"ThisActivity:CheckTaskDaily",	{TSK_GET_REDLINE,0,"H�m nay ng��i �� nh�n D�y H�ng r�i","=="} },
		{"ThisActivity:CheckRedline",	{nil} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		--{"ThisActivity:AddTaskDaily",	{TSK_GET_REDLINE,1} },
		{"ThisActivity:GiveRedline",	{nil} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateDialog",
	szName = "get rose see from gongnv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {format("��u H�ng v� H�t Gi�ng Hoa H�ng m�i ng�y ch� c� th� l�nh nh�n 1 trong hai c�i, n�u nh� trong ng�y kh�ng nh�n, th� s� d��c c�ng d�n sang ng�y h�m sau �� nh�n, nhi�u nh�t ch� c� th� c�ng d�n 3 c�i. <enter> hi�p s� mu�n nh�n H�t Gi�ng Hoa H�ng, c�n ph�i ��p �ng hai �i�u ki�n b�t k� d��i ��y <enter> 1. 2 Ng��i ch�i kh�c gi�i t�nh c�ng nhau t� ��i<enter> 2. D�y T� H�ng","C�a h�ng tinh l�c"),0},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n nh�n H�t Gi�ng Hoa H�ng",8} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "nil",
	szName = "surely get rose see from gongnv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"ThisActivity:CheckTeamConfig",	{nil} },
		{"ThisActivity:CheckSeedTime",	{TSK_SEEDTIME,TSK_SEEDTIME_EX} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SubSeedTime",	{TSK_SEEDTIME,TSK_SEEDTIME_EX} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3109,1,0,0},nBindState = -2,nExpiredTime=20120301,},1,"EVENT_LOG_TITLE","get rose seed"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "CreateDialog",
	szName = "get redbean from gongnv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {format("��u H�ng v� H�t Gi�ng Hoa H�ng m�i ng�y ch� c� th� l�nh nh�n 1 trong hai c�i, n�u nh� trong ng�y kh�ng nh�n, th� s� d��c c�ng d�n sang ng�y h�m sau �� nh�n, nhi�u nh�t ch� c� th� c�ng d�n 3 c�i. <enter>%s c� T� Nguy�t Ng�ng L�, T� Nguy�t Ng�ng L� c� th� t�ng th�m 1 l�n nh�n 1 H�t Gi�ng Hoa H�ng ho�c 1 ��u H�ng <enter> ��i hi�p, ng��i ch�a t�m ���c nh�n duy�n c�a m�nh sao, ng��i c� th� nh�n ��u H�ng �em �i tr�ng, c� di�u l� ph�n th��ng c�a ��u H�ng kh�ng phong ph� b�ng Hoa H�ng ��u nh�, hay l� ��i hi�p ng��i nhanh nhanh �i t�m nh�n duy�n c�a m�nh �i, c�ng v�i anh ta (c� ta) �i tr�ng c�y th� th� v� h�n.","C�a h�ng tinh l�c"),0},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ta mu�n nh�n ��u H�ng",10} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "nil",
	szName = "surely get redbean from gongnv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"ThisActivity:CheckSeedTime",	{TSK_SEEDTIME,TSK_SEEDTIME_EX} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"ThisActivity:SubSeedTime",	{TSK_SEEDTIME,TSK_SEEDTIME_EX} },
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,3110,1,0,0},nBindState = -2,nExpiredTime=20120301,},1,EVENT_LOG_TITLE,"get redbean"} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "ItemScript",
	szName = "use xiuyueninglv",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {{tbProp={6,1,3115,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"ThisActivity:CheckDateEx",	{nil} },
--By: NgaVN
		{"ThisActivity:CheckTaskDaily",	{TSK_GET_REDLINE,2,"H�m nay ng��i �� s� d�ng 2 l�n T� Nguy�t Ng�ng L�, mai h�y s� d�ng ti�p","<"} },		
	},
	tbActition = 
	{
		{"ThisActivity:AddTask",	{TSK_SEEDTIME_EX,1} },
		{"ThisActivity:AddTaskDaily",	{TSK_GET_REDLINE,1} },
		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Ng��i nh�n ���c th�m m�t l�n c� h�i nh�n H�t Gi�ng Hoa H�ng ho�c ��u H�ng"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "handin yihuahemeng",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {"C�n Kh�n Ph�ch L�ch ��n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Di Hoa H�a M�ng",{tbProp={6,1,3112,1,0,0},},1} },
	},
	tbActition = 
	{
--By: NgaVN - B� d�ng ch�n ��i C�n Kh�n T�ch M�ch ��n t�i NPC Ch��ng �ang Cung N�
		--{"PlayerFunLib:GetItem",	{{tbProp={6,1,3116,1,0,0},nExpiredTime=20120301,},1,EVENT_LOG_TITLE,"handin yihuahemeng get pilidan"} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "nil",
	szName = "Ph�n th��ng s� d�ng T� Nguy�t Ng�ng L�",
	nStartDate = 201202090000,
	nEndDate  = 201203010000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{120,"default",">="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_REDLINE_NUM,0,"��i Hi�p �� nh�n r�i, Hay mai nh�n n�a","=="} },
		{"ThisActivity:CheckTaskDaily",	{TSK_GET_REDLINE,2,"H�m nay ch�a s� d�ng 2 T� Nguy�t Ng�ng L�","=="} },
	},
	tbActition = 
	{
		{"ThisActivity:AddTaskDaily",	{TSK_REDLINE_NUM,1} },
		{"PlayerFunLib:AddExp",	{60000000,1,EVENT_LOG_TITLE,"PhanthuongsudungTuNguyetNgungLo"} },
	},
}