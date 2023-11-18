Include("\\script\\activitysys\\config\\1000\\variables.lua")
tbConfig = {}
tbConfig[1] = --T�ng kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[2] = --T�ng kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17 giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAi17"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28 giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAi28"} },
	},
}
tbConfig[5] = --Th�y t�c ��u l�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[6] = --thu� t�c ��i ��u l�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},20,"Event_MungPBM\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[7] = --Vi�m ��
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},30,"Event_MungPBM\tVuotAiViemDe10"} },
	},
}
tbConfig[8] = --Boss th� gi�i
{
	nId = 8,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t boss th� gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},50,"Event_MungPBM\tTieuDietBossTheGioi"} },
	},
}
tbConfig[9] = --boss s�t th�
{
	nId = 9,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m v� s�t th� c�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30112,1,0,0},nExpiredTime=nItemExpiredTime,},2,"Event_MungPBM\tTieuDietBossS�tTh�"} },
	},
}
--Giai �o�n 2
tbConfig[10] = --T�ng kim 1000 �i�m
{
	nId = 10,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 1000 �i�m",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tTongKim1000"} },
	},
}
tbConfig[11] = --T�ng kim 3000 �i�m
{
	nId = 11,
	szMessageType = "FinishSongJin",
	szName = "T�ng kim cao c�p 3000 �i�m",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTongKim3000"} },
	},
}
tbConfig[12] =
{
	nId = 12,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 17 giai �o�n 2",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tVuotAi17"} },
	},
}
tbConfig[13] =
{
	nId = 13,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28 giai �o�n 2",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},5,"Event_MungPBM\tVuotAi28"} },
	},
}
tbConfig[14] = --Th�y t�c ��u l�nh
{
	nId = 14,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t ch�t 1 th�y t�c ��u l�nh",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},3,"Event_MungPBM\tTieuDietThuyTacDauLinh"} },
	},
}
tbConfig[15] = --thu� t�c ��i ��u l�nh
{
	nId = 15,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u di�t thu� t�c ��i ��u l�nh",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tTieuDietThuyTacDaiDauLinh"} },
	},
}
tbConfig[16] = --Vi�m ��
{
	nId = 16,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
	nStartDate = nPhase2StartDate,
	nEndDate  = nPhase2EndDate,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30113,1,0,0},nExpiredTime=nItemExpiredTime,},10,"Event_MungPBM\tVuotAiViemDe10"} },
	},
}
--add d�ng ��i tho�i npc
tbConfig[17] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 17,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ch��ng ��ng Cung N�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ch��ng ��ng Cung N�"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Ho�t ��ng ch�o m�ng phi�n b�n m�i",18} },		
	},
}
tbConfig[18] =
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Ch��ng ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Xem ra giang h� l�i c� m�t phen d�y s�ng"},

	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh nguy�n li�u", 23} },
		{"AddDialogOpt",	{"T�ng hoa cho Ch��ng ��ng Cung N�", 26} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng tham gia t�nh n�ng tu�n", 19} },
	},
}
tbConfig[19] =
{
	nId = 19,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Ch��ng ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Trong tu�n, h�y th��ng xuy�n tham gia c�c t�nh n�ng T�ng Kim, V��t �i, Vi�m �� r�i ��n g�p ta �� nh�n ph�n th��ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Xem s� l�n tham gia t�nh n�ng tu�n n�y",29} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng tham gia 15 tr�n T�ng Kim",20} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng tham gia 15 l�n V��t �i",21} },
		{"AddDialogOpt",	{"Nh�n ph�n th��ng tham gia 10 l�n Vi�m ��",22} },
	},
}
--Ph�n th��ng t�nh n�ng h�ng tu�n
tbConfig[20] = --T�ng Kim tu�n
{
	nId = 20,
	szMessageType = "nil",
	szName = "Nh�n th��ng ho�n th�nh 15 l�n T�ng Kim 2000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_MATCH_COUNT, 15, ">=", "Ng��i v�n ch�a tham gia �� 15 tr�n T�ng Kim, c�n ph�i c� g�ng h�n"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_AWARD, 0, "<=", "Tu�n n�y ng��i �� nh�n th��ng r�i, h�y ch�m ch� tham gia c�c t�nh n�ng, tu�n sau r�i h�y quay l�i nh�n th��ng."}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_TONGKIM_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongTongKimTrongTuan"} },
	},
}
tbConfig[21] = --V��t �i tu�n
{
	nId = 21,
	szMessageType = "nil",
	szName = "Nh�n th��ng ho�n th�nh 15 l�n v��t �i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_MATCH_COUNT, 15, ">=", "Ng��i v�n ch�a ho�n th�nh 15 l�n v��t �i, ��ng ngh� t�i chuy�n nh�n th��ng"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_AWARD, 0, "<=", "Ng��i �� nh�n ph�n th��ng c�a tu�n n�y r�i, tu�n sau r�i h�y quay l�i"}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_VUOTAI_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongVuotAiTrongTuan"} },
	},
}
tbConfig[22] = --Vi�m ��
{
	nId = 22,
	szMessageType = "nil",
	szName = "Nh�n th��ng ho�n th�nh 10 l�n v��t �i Vi�m ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_MATCH_COUNT, 10, ">=", "Ng��i kh�ng �� �i�u ki�n nh�n th��ng, c�n ph�i c� g�ng h�n n�a"}},
		{"ThisActivity:VngCheckWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_AWARD, 0, "<=", "M�i tu�n ch� nh�n ���c ph�n th��ng n�y 1 l�n, h�y c� g�ng �� nh�n ph�n th��ng c�a tu�n t�i nh�!"}},
	},
	tbActition = 
	{
		{"ThisActivity:VngAddWeeklyTaskCount", {nTSK_VIEMDE_WEEKLY_AWARD, 1},},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime, nBindState = -2},10,"Event_MungPBM\tPhanThuongViemDeTrongTuan"} },
	},
}
--Gh�p nguy�n li�u
tbConfig[23] =
{
	nId = 23,
	szMessageType = "CreateDialog",
	szName = "��i tho�i v�i Ch��ng ��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>H�p th�nh nguy�n li�u"},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"H�p th�nh B�nh H� L�",24} },
		{"AddDialogOpt",	{"H�p th�nh Thi�t T�m T�u",25} },
	},
}
tbConfig[24] = --��i b�nh h� l�
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "��i b�nh h� l�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>B�nh h� l�",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Hoa c�c v�ng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa c�c t�m",{tbProp={6,1,30114,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30115,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_MungPBM\tHopThanhBinhHoLo"} },
	},
}
tbConfig[25] = --��i thi�t t�m t�u
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "��i thi�t t�m t�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>Thi�t t�m t�u",1,1,1,0.02},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"AddOneMaterial",	{"Hoa c�c v�ng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa c�c tr�ng",{tbProp={6,1,30113,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
		{"AddOneMaterial",	{"Hoa c�c t�m",{tbProp={6,1,30114,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,30116,1,0,0},nExpiredTime=nItemExpiredTime,},1,"Event_MungPBM\tHopThanhThietTamTuu"} },
	},
}
tbConfig[26] = --t�ng hoa c�c v�ng
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "N�p hoa c�c v�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"<npc>T�ng Hoa c�c v�ng",1,1,1,0},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },
		{"ThisActivity:VngGiveDaisyLimit", {nil}},
		{"AddOneMaterial",	{"Hoa c�c v�ng",{tbProp={6,1,30112,-1,-1,-1},nExpiredTime=nItemExpiredTime,},1} },		
	},
	tbActition = 
	{
		{"ThisActivity:VngGiveDaisy", {nil}},
	},
}
tbConfig[27] = --s� d�ng b�nh h� l�
{
	nId = 27,
	szMessageType = "ItemScript",
	szName = "S� d�ng b�nh h� l�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30115,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"ThisActivity:VngGourdUseLimit", {nil}},
	},
	tbActition = 
	{
		{"ThisActivity:VngUseGourd", {nil}},
	},
}
tbConfig[28] = --s� d�ng thi�t t�m t�u
{
	nId = 28,
	szMessageType = "ItemScript",
	szName = "S� d�ng thi�t t�m t�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30116,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, kh�ng th� s� d�ng v�t ph�m",">="} },		
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
		{"PlayerFunLib:CheckTaskDaily",	{nTSK_GOURD_USE_DAYLIMIT,10,"H�m nay �� s� d�ng 10 Thi�t T�m T�u, mai h�y s� d�ng ti�p.","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{nTSK_GOURD_USE_DAYLIMIT,1} },
		{"ThisActivity:VngUseSteelHeartWine", {nil}},
	},
}
tbConfig[29] = --xem s� l�n tham gia t�nh n�ng
{
	nId = 29,
	szMessageType = "nil",
	szName = "ki�m tra s� l�n tham gia t�nh n�ng tu�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"��ng c�p c�a ng��i kh�ng ��, l�n sau h�y ��n nh�!",">="} },		
	},
	tbActition = 
	{
		{"ThisActivity:VngCheckWeeklyFeatureMatchCount", {nTSK_TONGKIM_WEEKLY_MATCH_COUNT, nTSK_VUOTAI_WEEKLY_MATCH_COUNT, nTSK_VIEMDE_WEEKLY_MATCH_COUNT},},		
	},
}