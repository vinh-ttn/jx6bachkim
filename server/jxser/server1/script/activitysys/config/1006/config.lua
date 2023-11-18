Include("\\script\\activitysys\\config\\1006\\variables.lua")
tbConfig = {}
tbConfig[1] =
{
	nId = 1,
	szMessageType = "ItemScript",
	szName = "S� d�ng B�ch Ch�n ��n L� Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30149,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1676,1,0,0},tbParam={500000000}},1,"DCKyTranCacThang10", "SuDungBachChanDonLeBao"} },
	},
}
tbConfig[2] =
{
	nId = 2,
	szMessageType = "ItemScript",
	szName = "S� d�ng Huy�t Ch�n ��n L� Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30150,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1677,1,0,0},tbParam={1000000000}},1,"DCKyTranCacThang10", "SuDungHuyetChanDonLeBao"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "ItemScript",
	szName = "S� d�ng Huy�n Ch�n ��n L� Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30151,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,1678,1,0,0},tbParam={1500000000}},1,"DCKyTranCacThang10", "SuDungHuyenChanDonLeBao"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "ItemScript",
	szName = "S� d�ng T� Kim Ch�n ��n L� Bao",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,30152,1,0,0},}},
	tbCondition = 
	{
		{"PlayerFunLib:VnCheckInCity", {"default"}},
		{"PlayerFunLib:CheckFreeBagCell",	{1,"default"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,2263,1,0,0},tbParam={2000000000}},1,"DCKyTranCacThang10", "SuDungTuKimChanDonLeBao"} },
	},
}