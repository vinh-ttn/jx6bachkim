Include("\\script\\activitysys\\config\\47\\variables.lua")
tbConfig = {}

tbConfig[1] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "B�m v�o B�ch M� �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B�ch M� �n"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
--		{"AddDialogOpt",	{"Ta mu�n ��i Ph�n Ph�n Th��ng T�n S�",7}},	
		{"AddDialogOpt",	{"Ta mu�n ��i Chi�n M� B�n Ti�u",3} },
		{"AddDialogOpt",	{"Ta mu�n ��i Chi�n M� Phi�n V�",4}},
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� X�ch Long C�u",5} },
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� Si�u Quang",6} },		
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� Phi V�n",11} },	
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� B�n Ti�u",12} },		
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� Phi�n V�",13} },		
--		{"AddDialogOpt",	{"Ta mu�n Reset Th�i Gian Chi�n M� X�ch Long C�u",14} },
	},
}

tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "",
	szName = "",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {""},
	tbCondition = 
	{

	},
	tbActition = 
	{

	},
}

tbConfig[3] = --һ��ϸ��
{
	nId = 3,
	szMessageType = "CreateCompose",
	szName = "��i Chi�n M� B�n Ti�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i Chi�n M� B�n Ti�u",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�nh B�i Chi�n M�",{tbProp={6,1,4690,1,0,0},},5000} },
--		{"AddOneMaterial",	{"100 xu",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,6,10,0,0,0},tbParam={60}},1,"[��i Chi�n M� B�n Ti�u]"} },		
	},
}
tbConfig[4] = --һ��ϸ��
{
	nId = 4,
	szMessageType = "CreateCompose",
	szName = "��i Chi�n M� Phi�n V�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i Chi�n M� Phi�n V�",0,1,1,1},
	tbCondition = 
	{
--		{"AddOneMaterial",	{"Chi�n M� X�ch Long C�u",{tbProp={0, 10, 9, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"L�nh B�i Chi�n M�",{tbProp={6,1,4690,1,0,0},},10000} },
--		{"AddOneMaterial",	{"100 xu",{tbProp={4,417,1,1,0,0,0},},100} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10,7,10,0,0,0}, tbParam={60}},1,"[��i Chi�n M� Phi�n V�]"}},
	},
}


tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� X�ch Long C�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gia H�n Chi�n M� X�ch Long C�u",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Chi�n M� X�ch Long C�u",{tbProp={0, 10, 9, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"L�nh B�i Chi�n M�",{tbProp={6,1,4664,1,0,0},},20} },
		{"AddOneMaterial",	{"500 xu",{tbProp={4,417,1,1,0,0,0},},500} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 6, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H�n Chi�n M� B�n Ti�u]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 9, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H�n Chi�n X�ch Long C�u]"} },		
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Gia H�n Chi�n M� Si�u Quang",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Chi�n M� Si�u Quang",{tbProp={0, 10, 13, 1, 5, 0},},1}},
		{"AddOneMaterial",	{"L�nh B�i Th�y T�c",{tbProp={6,1,4659,1,0,0},},20} },
		{"AddOneMaterial",	{"500 xu",{tbProp={4,417,1,1,0,0,0},},500} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0, 10, 13, 1, 5, 0},nExpiredTime=43200, tbParam={60}},1,"[Gia H�n Chi�n M� Si�u Quang]"}},
	},
}

tbConfig[7] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 7,
	szMessageType = "CreateDialog",
	szName = "B�m v�o B�ch M� �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta c� th� gi�p ng��i ��i v�t ph�m t� ho�t ��ng T�n S�. Ng��i mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"��i Kh�ng C�n Ti�n ��ng",8}},	
		{"AddDialogOpt",	{"Ta Mu�n D�ng Th�m Ti�n ��ng",11}},

	},
}
tbConfig[8] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 8,
	szMessageType = "CreateDialog",
	szName = "B�m v�o B�ch M� �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta c� th� gi�p ng��i ��i v�t ph�m t� ho�t ��ng T�n S�. Ng��i mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"M�t N� �o D�i",9}},	
		{"AddDialogOpt",	{"M�t N� C� Truy�n",10}},

	},
}
--------------------------------------
tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i M�t N� T�n S�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�nh B�i T�n S�",{tbProp={6,1,4684,1,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="}},
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,470,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[��i M�t N� Ao Dai]"}},
	},
}
tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i M�t N� T�n S�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�nh B�i T�n S�",{tbProp={6,1,4684,1,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,469,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[��i M�t N� T�n S�]"}},
	},
}
---------------------------------------------------
tbConfig[11] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 11,
	szMessageType = "CreateDialog",
	szName = "B�m v�o B�ch M� �n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc> Ta c� th� gi�p ng��i ��i v�t ph�m t� ho�t ��ng T�n S�. Ng��i mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"M�t N� �o D�i",12}},	
		{"AddDialogOpt",	{"M�t N� C� Truy�n",13}},

	},
}

tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i M�t N� T�n S�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�nh B�i T�n S�",{tbProp={6,1,4684,1,0,0},},50}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,470,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[��i M�t N� T�n S�]"}},
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Gia H�n Chi�n M� Si�u Quang",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i M�t N� T�n S�",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�nh B�i T�n S�",{tbProp={6,1,4684,1,0,0},},50}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200}},
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,11,469,1,0,0},nExpiredTime=10080, tbParam={60}},1,"[��i M�t N� T�n S�]"}},
	},
}