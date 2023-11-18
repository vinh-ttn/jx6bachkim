Include("\\script\\activitysys\\config\\9999\\variables.lua")

tbConfig = {}
tbConfig[1] = --��nh qu�i r�t v�t ph�m event
{
	nId = 1,
	szMessageType = "NpcOnDeath",
	szName = "��nh qu�i r�t �H�p Ti�n V� c�a s� ki�n L� Trung Thu n�m 2007",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		-- {"NpcFunLib:CheckInMap",	{"7,19,193,170,21,167,182,164,79,56,166,317,123,206,224,198,320,181,201,321, 322, 227, 340"} }, --R�t v�t ph�m t� map 2x > map 9x
	},
	tbActition = 
	{
		{"ThisActivity:DropItemEvent",	{nil} },
	},
}
tbConfig[2] = --Tham gia ho�t ��ng T�ng Kim
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "Ph�n th��ng T�ng Kim >=3000",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"PlayerFunLib:CheckTask",	{"751",3000,"",">="} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="H�p Ti�n V�", tbProp={6,1,1795,1,0,0}},10,EVENT_LOG_TITLE,"TongKim3000"} },
	},
}

tbConfig[3] = --V��t �i th�nh th�ng 28 �i
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t qua �i 28",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="H�nh Hi�p L�nh", tbProp={6,1,2566,1,0,0}},20,EVENT_LOG_TITLE,"VuotAi28"} },
	},
}

tbConfig[4] = --Ti�u di�t Th�y T�c ��u L�nh
{
	nId = 4,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��u L�nh Phong L�ng ��",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="H�p Ti�n V�", tbProp={6,1,1795,1,0,0}} ,5,EVENT_LOG_TITLE,"TieuDietThuyTacDauLinh"} },
	},
}

tbConfig[5] = --Ti�u di�t Th�y T�c ��i ��u L�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Th�y T�c ��i ��u L�nh Phong L�ng ��",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="H�p Ti�n V�", tbProp={6,1,1795,1,0,0}} ,10,EVENT_LOG_TITLE,"TieuDietThuyTacDaiDauLinh"} },
	},
}

tbConfig[6] = --Ti�u di�t BOSS Ho�ng Kim
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ph�n th��ng boss Ho�ng Kim",
	nStartDate = 201809205000,
	nEndDate  = 201810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckWorldBoss",	{nil} },
	},
	tbActition = 
	{
		-- {"PlayerFunLib:GetItem",	{{szName="H�p Ti�n V�", tbProp={6,1,1795,1,0,0}} ,20,EVENT_LOG_TITLE,"TieuDietBossTheGioi"} },
	},
}

tbConfig[7] = --Ti�u di�t BOSS S�t th�
{
	nId = 7,
	szMessageType = "NpcOnDeath",
	szName = "Ph�n th��ng boss S�t Th�",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="H�nh Hi�p L�nh", tbProp={6,1,2566,1,0,0}} ,2,EVENT_LOG_TITLE,"TieuDietBossSatThu"} },
	},
}

tbConfig[8] = --Vi�m �� th�nh c�ng 10 �i
{
	nId = 8,
	szMessageType = "YDBZguoguan",
	szName = "V��t qua �i Vi�m �� th� 10",
	nStartDate = 201809205000,
	nEndDate  = 202810205000,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{10,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{szName="H�nh Hi�p L�nh", tbProp={6,1,2566,1,0,0}} ,100,"VuotAiViemDe10"} },
	},
}