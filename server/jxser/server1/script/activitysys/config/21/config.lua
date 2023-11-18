

-------�ֲ��������� ��ʼ---------
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
-------�ֲ��������� ����---------

tbConfig = {}
tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t b�nh h�t sen",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2496,1,0,0},nExpiredTime=20101011,},1,"5"} },
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t b�nh ��u xanh",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2497,1,0,0},nExpiredTime=20101011,},1,"5"} },
	},
}
tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t b�nh khoai m�n",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{tbProp={6,1,2498,1,0,0},nExpiredTime=20101011,},1,"1"} },
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng b�nh d�o (th�ng)",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=20101011,},40,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh b�nh d�o]"} },
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng b�nh d�o (h�a)",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {0,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=20101011,},40,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh b�nh d�o]"} },
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p k�t th�c t�ng b�nh d�o (thua)",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {-1,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2499,1,0,0},nExpiredTime=20101011,},40,"[Ho�t ��ng trung thu] [T�ng Kim s�n sinh b�nh d�o]"} },
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "ClickNpc",
	szName = "H�ng rong b�n b�nh nh�n th�t",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua b�nh nh�n th�t",8} },
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Mua b�nh nh�n th�t",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"B�nh nh�n th�t",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"30000 l��ng",{nJxb=30000,},1} },
		{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2500,1,0,0},nExpiredTime=20101011,},1,"[ho�t ��ng trung thu] [h�ng rong mua b�nh nh�n th�t]"} },
	},
}
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "ClickNpc",
	szName = "H�ng nga h�p th�nh",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"H�ng Nga"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh l�ng ��n",10} },
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateDialog",
	szName = "H�p th�nh ph�n h�ng",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"<npc>C�c h� mu�n h�p th�nh lo�i l�ng ��n n�o?"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"L�ng ��n b��m b��m",11} },
		{"AddDialogOpt",	{"��n ng�i sao",12} },
		{"AddDialogOpt",	{"L�ng ��n �ng",13} },
		{"AddDialogOpt",	{"L�ng ��n tr�n",14} },
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n b��m b��m",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"L�ng ��n b��m b��m",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh H�t Sen",{tbProp={6,1,2496,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh ��u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh Khoai M�n",{tbProp={6,1,2498,1,0,0},},1} },
		{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2502,1,0,0},nExpiredTime=20101018,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n ng�i sao",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"��n ng�i sao",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh H�t Sen",{tbProp={6,1,2496,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh ��u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh Khoai M�n",{tbProp={6,1,2498,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh d�o",{tbProp={6,1,2499,1,0,0},},1} },
		{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2503,1,0,0},nExpiredTime=20101018,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n �ng",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"L�ng ��n �ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh H�t Sen",{tbProp={6,1,2496,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh ��u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh Khoai M�n",{tbProp={6,1,2498,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh nh�n th�t",{tbProp={6,1,2500,1,0,0},},1} },
		{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2504,1,0,0},nExpiredTime=20101018,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "H�p th�nh l�ng ��n tr�n",
	nStartDate = 201009200000,
	nEndDate  = 201010110000,
	tbMessageParam = {"L�ng ��n tr�n",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�nh H�t Sen",{tbProp={6,1,2496,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh ��u Xanh",{tbProp={6,1,2497,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh Khoai M�n",{tbProp={6,1,2498,1,0,0},},1} },
		{"AddOneMaterial",	{"B�nh th�p c�m",{tbProp={6,1,2501,1,0,0},},1} },
		{"lib:CheckDay",	{20100920, 20101011, "Th�i h�n ��i �� k�t th�c"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2505,1,0,0},nExpiredTime=20101018,},1,"[Ho�t ��ng trung thu] [H�p th�nh l�ng ��n]"} },
		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t�ng 1 �i�m t�ch l�y s� ki�n"} },
	},
}
tbConfig[15] = --һ��ϸ��
{
	nId = 15,
	szMessageType = "ItemScript",
	szName = "S� d�ng l�ng ��n b��m b��m",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2502,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h�y s� d�ng t�i th�nh th� ho�c t�n th� th�n!"} },
		{"PlayerFunLib:IsFightState",	{1,"Xin h�y s� d�ng t�i khu v�c chi�n ��u!"} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"ThisActivity:CheckTask",	{nTask_HuDie,1000,"��t ��n kinh nghi�m cao nh�t, kh�ng th� nh�n th�m kinh nghi�m!","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:AwardExp",	{1000000, nTask_HuDie, 1000000000, "S� d�ng l�ng ��n b��m b��m", "[Ho�t ��ng trung thu][S� d�ng l�ng ��n b��m b��m]"} },
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "S� d�ng l�ng ��n ng�i sao",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2503,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h�y s� d�ng t�i th�nh th� ho�c t�n th� th�n!"} },
		{"PlayerFunLib:IsFightState",	{1,"Xin h�y s� d�ng t�i khu v�c chi�n ��u!"} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:AddNpc",	{"��i L�c Th� V�"} },
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "S� d�ng l�ng ��n �ng",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2504,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h�y s� d�ng t�i th�nh th� ho�c t�n th� th�n!"} },
		{"PlayerFunLib:IsFightState",	{1,"Xin h�y s� d�ng t�i khu v�c chi�n ��u!"} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:AddNpc",	{"Th��ng Th�ng Th� V�"} },
	},
}
tbConfig[18] = --һ��ϸ��
{
	nId = 18,
	szMessageType = "ItemScript",
	szName = "S� d�ng L�ng ��n tr�n",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2505,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckInMap",	{"11,1,37,176,162,78,80,174,121,153,101,99,100,20,53","Xin h�y s� d�ng t�i th�nh th� ho�c t�n th� th�n!"} },
		{"PlayerFunLib:IsFightState",	{1,"Xin h�y s� d�ng t�i khu v�c chi�n ��u!"} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:AddNpc",	{"Kim C��ng Th� V�"} },
	},
}
tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu Th�nh ��",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2507,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_ChenDu,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu Th�nh ��]"} },
		{"ThisActivity:AddTask",	{nTask_ChenDu,1} },
	},
}
tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu ��i L�",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2508,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_DaLi,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu ��i L�]"} },
		{"ThisActivity:AddTask",	{nTask_DaLi,1} },
	},
}
tbConfig[21] = --һ��ϸ��
{
	nId = 21,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu Ph��ng T��ng",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2509,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_FengXiang,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu Ph��ng T��ng]"} },
		{"ThisActivity:AddTask",	{nTask_FengXiang,1} },
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu T��ng D��ng",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2510,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_XiangYang,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu T��ng D��ng]"} },
		{"ThisActivity:AddTask",	{nTask_XiangYang,1} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu Bi�n Kinh",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2511,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_BianJin,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu Bi�n Kinh]"} },
		{"ThisActivity:AddTask",	{nTask_BianJin,1} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu L�m An",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2512,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_LinAn,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu L�m An]"} },
		{"ThisActivity:AddTask",	{nTask_LinAn,1} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�nh Trung Thu D��ng Ch�u",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {{tbProp={6,1,2513,1,0,0},}},
	tbCondition = 
	{
		{"ThisActivity:CheckTask",	{nTask_YangZhou,20,"Trong th�i gian ho�t ��ng, m�i lo�i b�nh ch� ���c s� d�ng 20 c�i","<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"C�p 50 tr� l�n m�i c� th� tham gia ho�t ��ng",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{10000000,0,"[Ho�t ��ng trung thu][S� d�ng B�nh Trung Thu D��ng Ch�u]"} },
		{"ThisActivity:AddTask",	{nTask_YangZhou,1} },
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "ServerStart",
	szName = "Loading NPC",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:AddTaskNpc",	{nil} },
		{"tb2010ZhongQiu:AddDecorationNpc",	{nil} },
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "ClickNpc",
	szName = "��i tho�i v�i H�ng Nga",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {"H�ng Nga"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"SetDialogTitle",	{"<npc>Trong th�i gian 0 gi� 20/09/2010 ��n 0 gi� 11/10/2010, ��ng ��o c� th� th�ng qua ��nh qu�i, t�ng kim, h�ng rong, K� Tr�n C�c �� nh�n ���c c�c lo�i b�nh trung thu, ��ng th�i c�ng c� th� h�p th�nh c�c lo�i l�ng ��n � ch� h�ng. Tr��c 0 gi� 18/10 s� d�ng l�ng ��n c� th� tri�u h�i BOSS trung thu, sau khi ��nh b�i s� nh�n ���c c�c ph�n th��ng phong ph�, ��ng th�i c� c� h�i nh�n ���c l�ng ��n k�o qu�n. N�p l�ng ��n k�o quan cho ch� h�ng s� nh�n ���c ph�n th��ng kinh nghi�m, l�n n�p 1000, 2000, 3000,... s� nh�n ���c kinh nghi�m nhi�u h�n b�nh th��ng. �� l�n c�a h�ng nga s� t�y thu�c v�o s� l��ng l�ng ��n k�o qu�n �� n�p, m�i ng�y v�o l�c 20 gi� n�u nh� H�ng Nga � tr�ng th�i l�n nh�t s� xu�t hi�n hi�u �ng b�n ph�o hoa, c�c ��ng ��o ��ng xung quanh �� c� th� nh�n ���c ph�n th��ng kinh nghi�m. M�i ng�y 20 gi� 30 ph�t, h�ng nga s� tr� v� tr�ng th�i nh� nh�t, s� l��ng ��n k�o qu�n c�ng v� 0. Trong th�i gian ho�t ��ng m�i ng��i nhi�u nh�t ch� ���c n�p 1999 c�i."} },
		{"AddDialogOpt",	{"N�p l�ng ��n k�o qu�n",28} },
		{"AddDialogOpt",	{"Ki�m tra s� l��ng �� n�p",34} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "N�p l�ng ��n k�o qu�n",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {"N�p l�ng ��n k�o qu�n",1,1,1,0.01},
	tbCondition = 
	{
		{"lib:CheckDay",	{20100920, 20101018, "Ho�t ��ng �� k�t th�c"} },
		{"lib:CheckTime",	{{{000000,200000},{203000,240000}}, "Kh�ng ph�i l� th�i gian ho�t ��ng"} },
		{"AddOneMaterial",	{"L�ng ��n k�o qu�n",{tbProp={6,1,2506,1,0,0},},1} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"ThisActivity:CheckTask",	{nTask_GiveCount,"1999 - <ComposeCount> ","Trong th�i gian ho�t ��ng m�i ng��i ch� ���c n�p 1999 c�i!","<="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTask",	{nTask_Activi_Point,1} },
		{"PlayerFunLib:AddExp",	{500000,0,"[Ho�t ��ng trung thu][N�p l�ng ��n k�o qu�n]"} },
		{"tb2010ZhongQiu:GiveItem2HengE",	{nil} },
		{"ThisActivity:AddTask",	{nTask_GiveCount,1} },
		{"PlayerFunLib:SimpleMsg",	{"Msg2Player","Gia t�ng 1 �i�m t�ch l�y s� ki�n"} },
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "ClickNpc",
	szName = "B�m v�o long nhi",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"B� Long"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"��i m�t n� c�u m�nh",33} },
		{"AddDialogOpt",	{"��i m�t n� tr��ng c�ng",35} },
		{"AddDialogOpt",	{"��i M�t n� ki�n ng�nh",36} },
		{"AddDialogOpt",	{"��i m�t n� qu� �nh",30} },
		{"AddDialogOpt",	{"��i h�i thi�n t�i t�o c�m nang",31} },
		{"AddDialogOpt",	{"��i nh�t k� c�n kh�n ph�",32} },
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� qu� �nh",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"M�t n� qu� �nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} },
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},5} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,455,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i qu� �nh]"} },
	},
}
tbConfig[31] = --һ��ϸ��
{
	nId = 31,
	szMessageType = "CreateCompose",
	szName = "��i h�i thi�n t�i t�o c�m nang",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"C�m nang thay ��i tr�i ��t",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},3} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1781,1,0,0},nExpiredTime=20160, tbParam={60}},1,"[Ho�t ��ng trung thu][��i h�i thi�n t�i t�o c�m nang]"} },
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "��i nh�t k� c�n kh�n ph�",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"Nh�t K� C�n Kh�n Ph�",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},300} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2126,1,0,0},nExpiredTime=20160,},1,"[Ho�t ��ng trung thu][��i nh�t k� c�n kh�n ph�]"} },
	},
}
tbConfig[33] = --һ��ϸ��
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� c�u m�nh",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"M�t n� c�u m�nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},5} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,454,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i m�t n� c�u m�nh]"} },
	},
}
tbConfig[34] = --һ��ϸ��
{
	nId = 34,
	szMessageType = "nil",
	szName = "Ki�m tra s� l��ng �� n�p L�ng ��n k�o qu�n",
	nStartDate = 201009200000,
	nEndDate  = 201010180000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"lib:CheckDay",	{20100920, 20101018, "Ho�t ��ng �� k�t th�c"} },
		{"lib:Include",	{"\\script\\event\\zhongqiu_jieri\\201009\\support.lua"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"tb2010ZhongQiu:ShowGiveCount",	{nTask_GiveCount} },
	},
}
tbConfig[35] = --һ��ϸ��
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "��i m�t n� tr��ng c�ng",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"M�t n� tr��ng c�ng",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},5} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,479,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i m�t n� tr��ng c�ng]"} },
	},
}
tbConfig[36] = --һ��ϸ��
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "��i M�t n� ki�n ng�nh",
	nStartDate = 201011160000,
	nEndDate  = 201012060000,
	tbMessageParam = {"M�t n� ki�n ng�nh",0,1,1,1},
	tbCondition = 
	{
		--{"lib:CheckDay",	{20101116, 20101206, "Th�i h�n ��i �� k�t th�c"} }
		{"AddOneMaterial",	{"Ng� H�nh K� Th�ch",{tbProp={6,1,2125,1,0,0},},20} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,480,1,0,0},nExpiredTime=10080,},1,"[Ho�t ��ng trung thu][��i M�t n� ki�n ng�nh]"} },
	},
}
