Include("\\script\\activitysys\\config\\88\\variables.lua")
tbConfig = {}

tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "ClickNpc",
	szName = "Ho�ng Kim L�o Nh�n",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Ho�ng Kim L�o Nh�n"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="}},
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua C�p Nh�n V� Danh",2}},
		{"AddDialogOpt",	{"��i �� Ho�ng Kim",3}},
	},
}

tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "CreateCompose",
	szName = "��i V� Danh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"��i V� Danh",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},500} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,141},nQuality=1,nExpiredTime=43200,  tbParam={60}},1,"[Trang b� V� Danh]"} },
		{"PlayerFunLib:GetItem",	{{tbProp={0,142},nQuality=1,nExpiredTime=43200,  tbParam={60}},1,"[Trang b� V� Danh]"} },		
	},
}
tbConfig[3] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 3,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi ��i ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n ��i lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Thi�u L�m",4} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Thi�n V��ng",8} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Nga My",12} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Th�y Y�n",15} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Ng� ��c",18} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� ���ng M�n",21} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� C�i Bang",25} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� Thi�n Nh�n",28} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� V� �ang",31} },
		{"AddDialogOpt",	{"Ta mu�n ��i Trang B� C�n L�n",34} },	
		
	},
}

tbConfig[4] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"M�ng Long Ch�nh H�ng T�ng M�o",5} },
		{"AddDialogOpt",	{"Ph�c Ma Ph� �� T�ng H�i",6} },
		{"AddDialogOpt",	{"T� Kh�ng Nhuy�n B� H� Uy�n",7} },
	
		
	},
}
tbConfig[5] = --һ��ϸ��
{
	nId = 5,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[6] = --һ��ϸ��
{
	nId = 6,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[7] = --һ��ϸ��
{
	nId = 7,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[8] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 8,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" K� Nghi�p Chu T��c L�ng V�n Ngoa",9} },
		{"AddDialogOpt",	{" Ng� Long T�n Phong H� y�n",10} },
		{"AddDialogOpt",	{" H�m Thi�n Th�a Long Chi�n Ngoa",11} },
			
	},
}

tbConfig[9] = --һ��ϸ��
{
	nId = 9,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[10] = --һ��ϸ��
{
	nId = 10,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[11] = --һ��ϸ��
{
	nId = 11,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[12] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 12,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" V� Gian C�m V�n H� Uy�n",13} },
		{"AddDialogOpt",	{" V� Ma H�ng Truy Nhuy�n Th�p H�i",14} },
			
	},
}
tbConfig[13] = --һ��ϸ��
{
	nId = 13,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[14] = --һ��ϸ��
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[15] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 15,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" T� Ho�ng B�ng Tung C�m uy�n",16} },
		{"AddDialogOpt",	{" B�ch H�i H�ng Linh Kim Ti ��i",17} },
			
	},
}
tbConfig[16] = --һ��ϸ��
{
	nId = 16,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[17] = --һ��ϸ��
{
	nId = 17,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[18] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 18,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{" U Lung X�ch Y�t M�t trang",19} },
		{"AddDialogOpt",	{" Minh �o U ��c �m Y",20} },
			
	},
}

tbConfig[19] = --һ��ϸ��
{
	nId = 19,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[20] = --һ��ϸ��
{
	nId = 20,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[21] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 21,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"B�ng H�n Huy�n Y Th�c Gi�p",22} },
		{"AddDialogOpt",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",23} },
		{"AddDialogOpt",	{"S�m Hoang Tinh V�n Phi L�",24} },		
			
	},
}
tbConfig[22] = --һ��ϸ��
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[25] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 25,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"��ng C�u Phi Long ��u Ho�n",26} },
		{"AddDialogOpt",	{"��ch Kh�i Tri�n M�ng Y�u ��i",27} },	
			
	},
}
tbConfig[26] = --һ��ϸ��
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[27] = --һ��ϸ��
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[28] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 28,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ma S�t C� H�a Li�u Thi�n uy�n",29} },
		{"AddDialogOpt",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",30} },	
			
	},
}
tbConfig[29] = --һ��ϸ��
{
	nId = 29,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[30] = --һ��ϸ��
{
	nId = 30,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[31] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 31,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",32} },
		{"AddDialogOpt",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",33} },	
			
	},
}
tbConfig[32] = --һ��ϸ��
{
	nId = 32,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[33] = --һ��ϸ��
{
	nId = 33,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },			
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[34] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 34,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n. Ng��i c� mu�n Tr�ng luy�n lo�i n�o?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",35} },
		{"AddDialogOpt",	{"L�i Khung Linh Ng�c U�n L�i",36} },
			
	},
}
tbConfig[35] = --һ��ϸ��
{
	nId = 35,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[36] = --һ��ϸ��
{
	nId = 36,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{	
		{"AddOneMaterial",	{"�� ph� Ho�ng Kim ",{tbProp={6,1,4689,1,0,0},},5000} },	
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
