Include("\\script\\activitysys\\config\\45\\variables.lua")
tbConfig = {}

tbConfig[1] = --һ��ϸ��
{
	nId = 1,
	szMessageType = "Chuanguan",
	szName = "���ع���28��",
	nStartDate = 201708300000,
	nEndDate  = 201809300000,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
	},
	tbActition = 
	{
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","Xu Khoa"}},
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4690,1,0,0}},2,"Event","vuotai28nhanlenhbai"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAi28", "1 L�nh B�i Chi�n M�", 1}},
	},
}
tbConfig[2] = --һ��ϸ��
{
	nId = 2,
	szMessageType = "NpcOnDeath",
	szName = "�����ɱ��ˮ��ͷ��",
	nStartDate = 201708300000,
	nEndDate  = 201809300000,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"NpcFunLib:CheckBoatBoss",	{nil} },	
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={6,1,4690,1,0,0}},1,"Event_QuocKhanhVN","TieuDietThuyTacDauLinhNhanDayThung"}},
--		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},1,"Event_QuocKhanhVN","Xu Khoa"}},		
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "TieuDietThuyTacDauLinh", "1 L�nh B�i Chi�n M�", 1}},
	},
}

tbConfig[3] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 3,
	szMessageType = "ClickNpc",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�o ��a T�ng"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
--		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n �� Ho�ng Kim Lo�i 2 Th�nh Maxop",4} },
--		{"AddDialogOpt",	{"Ta mu�n Tr�ng Luy�n Reset th�i h�n Ho�ng Kim Lo�i 2",74} },	
--		{"AddDialogOpt",	{"Ta mu�n ��i M�t N�",17} },
--		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n �� Ho�ng Kim Lo�i 2",6} },
--		{"AddDialogOpt",	{"TTa mu�n ��i M�t N� Truy�n Th�ng",25} },		
	},
}

tbConfig[4] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 4,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n ng��i c� th� nh�n ���c trang b� c� thu�c t�nh ��t gi�i h�n nh�ng kh�ng th� gia h�n th�i gian cho �� ng��i h�y c�n nh�c cho k� nh�!"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Tr�ng Luy�n �� Ho�ng Kim Theo C�ch 1",5} },	
--		{"AddDialogOpt",	{"Ta mu�n ��i M�t N�",17} },
		{"AddDialogOpt",	{"Tr�ng Luy�n �� Ho�ng Kim Theo C�ch 2",6} },	
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Nhu T�nh",6} },		
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Hi�p C�t",7} },		
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Vinh Di�u",8} },
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o B�o R��ng V� Danh",9} },			
	},
}


tbConfig[5] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 5,
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
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�u L�m",7} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�n V��ng",11} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Nga My",15} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Th�y Y�n",18} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Ng� ��c",21} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� ���ng M�n",24} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� C�i Bang",28} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�n Nh�n",31} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� V� �ang",34} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� C�n L�n",37} },	
		
	},
}
tbConfig[6] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 6,
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
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�u L�m",40} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�n V��ng",44} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Nga My",48} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Th�y Y�n",51} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Ng� ��c",54} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� ���ng M�n",57} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� C�i Bang",61} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� Thi�n Nh�n",64} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� V� �ang",67} },
		{"AddDialogOpt",	{"Ta mu�n tr�ng luy�n Trang B� C�n L�n",70} },		
		
	},
}

tbConfig[7] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 7,
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
		{"AddDialogOpt",	{"M�ng Long Ch�nh H�ng T�ng M�o",8} },
		{"AddDialogOpt",	{"Ph�c Ma Ph� �� T�ng H�i",9} },
		{"AddDialogOpt",	{"T� Kh�ng Nhuy�n B� H� Uy�n",10} },
	
		
	},
}
tbConfig[8] = --һ��ϸ��
{
	nId = 8,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�ng Long Ch�nh H�ng T�ng M�o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,220},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"Ph�c Ma Ph� �� T�ng H�i",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,229},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"T� Kh�ng Nhuy�n B� H� Uy�n",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,233},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[11] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 11,
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
		{"AddDialogOpt",	{" K� Nghi�p Chu T��c L�ng V�n Ngoa",12} },
		{"AddDialogOpt",	{" Ng� Long T�n Phong H� y�n",13} },
		{"AddDialogOpt",	{" H�m Thi�n Th�a Long Chi�n Ngoa",14} },
			
	},
}

tbConfig[12] = --һ��ϸ��
{
	nId = 12,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"K� Nghi�p Chu T��c L�ng V�n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,244},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"Ng� Long T�n Phong H� y�n",{tbProp={0,29},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,248},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"H�m Thi�n Th�a Long Chi�n Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,239},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{" V� Gian C�m V�n H� Uy�n",16} },
		{"AddDialogOpt",	{" V� Ma H�ng Truy Nhuy�n Th�p H�i",17} },
			
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
		{"AddOneMaterial",	{"V� Gian C�m V�n H� Uy�n",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,253},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"V� Ma H�ng Truy Nhuy�n Th�p H�i",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,259},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{" T� Ho�ng B�ng Tung C�m uy�n",19} },
		{"AddDialogOpt",	{" B�ch H�i H�ng Linh Kim Ti ��i",20} },
			
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
		{"AddOneMaterial",	{"T� Ho�ng B�ng Tung C�m uy�n",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,810},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"B�ch H�i H�ng Linh Kim Ti ��i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,272},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{" U Lung X�ch Y�t M�t trang",22} },
		{"AddDialogOpt",	{" Minh �o U ��c �m Y",23} },
			
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
		{"AddOneMaterial",	{"U Lung X�ch Y�t M�t trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,276},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"Minh �o U ��c �m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,281},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[24] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 24,
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
		{"AddDialogOpt",	{"B�ng H�n Huy�n Y Th�c Gi�p",25} },
		{"AddDialogOpt",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",26} },
		{"AddDialogOpt",	{"S�m Hoang Tinh V�n Phi L�",27} },		
			
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ng H�n Huy�n Y Th�c Gi�p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,291},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,298},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"S�m Hoang Tinh V�n Phi L�",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,304},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{"��ng C�u Phi Long ��u Ho�n",29} },
		{"AddDialogOpt",	{"��ch Kh�i Tri�n M�ng Y�u ��i",30} },	
			
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
		{"AddOneMaterial",	{"��ng C�u Phi Long ��u Ho�n",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,310},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"��ch Kh�i Tri�n M�ng y�u ��i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,317},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{"Ma S�t C� H�a Li�u Thi�n uy�n",32} },
		{"AddDialogOpt",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",33} },	
			
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
		{"AddOneMaterial",	{"Ma S�t C� H�a Li�u Thi�n uy�n",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,323},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,333},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddDialogOpt",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",35} },
		{"AddDialogOpt",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",36} },	
			
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
		{"AddOneMaterial",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,338},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
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
		{"AddOneMaterial",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,343},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[37] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 37,
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
		{"AddDialogOpt",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",38} },
		{"AddDialogOpt",	{"L�i Khung Linh Ng�c U�n L�i",39} },	
			
	},
}
tbConfig[38] = --һ��ϸ��
{
	nId = 38,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,348},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[39] = --һ��ϸ��
{
	nId = 39,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�i Khung Linh Ng�c U�n L�i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},250} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,353},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
----------------------------------trung luyen cach 2---------------------------------------
tbConfig[40] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 40,
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
		{"AddDialogOpt",	{"M�ng Long Ch�nh H�ng T�ng M�o",41} },
		{"AddDialogOpt",	{"Ph�c Ma Ph� �� T�ng H�i",42} },
		{"AddDialogOpt",	{"T� Kh�ng Nhuy�n B� H� Uy�n",43} },
	
		
	},
}
tbConfig[41] = --һ��ϸ��
{
	nId = 41,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�ng Long Ch�nh H�ng T�ng M�o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,220},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[42] = --һ��ϸ��
{
	nId = 42,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ph�c Ma Ph� �� T�ng H�i",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,229},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[43] = --һ��ϸ��
{
	nId = 43,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Kh�ng Nhuy�n B� H� Uy�n",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,233},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[44] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 44,
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
		{"AddDialogOpt",	{" K� Nghi�p Chu T��c L�ng V�n Ngoa",45} },
		{"AddDialogOpt",	{" Ng� Long T�n Phong H� y�n",46} },
		{"AddDialogOpt",	{" H�m Thi�n Th�a Long Chi�n Ngoa",47} },
			
	},
}

tbConfig[45] = --һ��ϸ��
{
	nId = 45,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"K� Nghi�p Chu T��c L�ng V�n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,244},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[46] = --һ��ϸ��
{
	nId = 46,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� Long T�n Phong H� y�n",{tbProp={0,29},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,248},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[47] = --һ��ϸ��
{
	nId = 47,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�m Thi�n Th�a Long Chi�n Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,239},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[48] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 48,
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
		{"AddDialogOpt",	{" V� Gian C�m V�n H� Uy�n",49} },
		{"AddDialogOpt",	{" V� Ma H�ng Truy Nhuy�n Th�p H�i",50} },
			
	},
}
tbConfig[49] = --һ��ϸ��
{
	nId = 49,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Gian C�m V�n H� Uy�n",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,253},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[50] = --һ��ϸ��
{
	nId = 50,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Ma H�ng Truy Nhuy�n Th�p H�i",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,259},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[51] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 51,
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
		{"AddDialogOpt",	{" T� Ho�ng B�ng Tung C�m uy�n",52} },
		{"AddDialogOpt",	{" B�ch H�i H�ng Linh Kim Ti ��i",53} },
			
	},
}
tbConfig[52] = --һ��ϸ��
{
	nId = 52,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Ho�ng B�ng Tung C�m uy�n",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,810},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[53] = --һ��ϸ��
{
	nId = 53,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ch H�i H�ng Linh Kim Ti ��i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,272},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[54] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 54,
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
		{"AddDialogOpt",	{" U Lung X�ch Y�t M�t trang",55} },
		{"AddDialogOpt",	{" Minh �o U ��c �m Y",56} },
			
	},
}

tbConfig[55] = --һ��ϸ��
{
	nId = 55,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung X�ch Y�t M�t trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,276},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[56] = --һ��ϸ��
{
	nId = 56,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh �o U ��c �m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,281},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[57] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 57,
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
		{"AddDialogOpt",	{"B�ng H�n Huy�n Y Th�c Gi�p",58} },
		{"AddDialogOpt",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",59} },
		{"AddDialogOpt",	{"S�m Hoang Tinh V�n Phi L�",60} },		
			
	},
}
tbConfig[58] = --һ��ϸ��
{
	nId = 58,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ng H�n Huy�n Y Th�c Gi�p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,291},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[59] = --һ��ϸ��
{
	nId = 59,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,298},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[60] = --һ��ϸ��
{
	nId = 60,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S�m Hoang Tinh V�n Phi L�",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,304},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[61] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 61,
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
		{"AddDialogOpt",	{"��ng C�u Phi Long ��u Ho�n",62} },
		{"AddDialogOpt",	{"��ch Kh�i Tri�n M�ng Y�u ��i",63} },	
			
	},
}
tbConfig[62] = --һ��ϸ��
{
	nId = 62,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ng C�u Phi Long ��u Ho�n",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,310},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[63] = --һ��ϸ��
{
	nId = 63,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ch Kh�i Tri�n M�ng y�u ��i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,317},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[64] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 64,
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
		{"AddDialogOpt",	{"Ma S�t C� H�a Li�u Thi�n uy�n",65} },
		{"AddDialogOpt",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",66} },	
			
	},
}
tbConfig[65] = --һ��ϸ��
{
	nId = 65,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S�t C� H�a Li�u Thi�n uy�n",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,323},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[66] = --һ��ϸ��
{
	nId = 66,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,333},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[67] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 67,
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
		{"AddDialogOpt",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",68} },
		{"AddDialogOpt",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",69} },	
			
	},
}
tbConfig[68] = --һ��ϸ��
{
	nId = 68,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,339},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[69] = --һ��ϸ��
{
	nId = 69,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,343},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[70] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 70,
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
		{"AddDialogOpt",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",71} },
		{"AddDialogOpt",	{"L�i Khung Linh Ng�c U�n L�i",72} },	
			
	},
}
tbConfig[71] = --һ��ϸ��
{
	nId = 71,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,348},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[72] = --һ��ϸ��
{
	nId = 72,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�i Khung Linh Ng�c U�n L�i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},150} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,353},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[73] = --һ��ϸ��
{
	nId = 73,
	szMessageType = "YDBZguoguan",
	szName = "�׵۴�����ʮ��",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{150,"",">="} },
		{"PlayerFunLib:CheckFreeBagCell",	{1,"H�nh trang c�a b�n kh�ng c�n ch� tr�ng, ph�n th��ng l�n n�y kh�ng nh�n ���c"} },		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={4,417,1,1,0,0,0},nBindState = -2},2,"Event_QuocKhanhVN","VuotAiViemDe10NhanDayThung"}},	
		{"tbVngTransLog:Write", {strQK_TranslogFolder, nQK_PromotionID, "VuotAiViemDe10", "2 Ti�n ��ng", 1}},
	},
}
-----------RESET DO HOANG KIM LOAI 2-------------------------
tbConfig[74] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 74,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau Khi tr�ng luy�n thu�c t�nh s� thay ��i v� th�i h�n �� Ho�ng Kim ���c reset l�i ban ��u ng��i c� mu�n th� kh�ng?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Reset �� Ho�ng Kim Theo C�ch 1",108} },	
--		{"AddDialogOpt",	{"Ta mu�n ��i M�t N�",17} },
		{"AddDialogOpt",	{"Reset �� Ho�ng Kim Theo C�ch 2",109} },	
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Nhu T�nh",6} },		
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Hi�p C�t",7} },		
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o R��ng Vinh Di�u",8} },
--		{"AddDialogOpt",	{"Ta mu�n ��i B�o B�o R��ng V� Danh",9} },			
	},
}
tbConfig[75] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 75,
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
		{"AddDialogOpt",	{"M�ng Long Ch�nh H�ng T�ng M�o",76} },
		{"AddDialogOpt",	{"Ph�c Ma Ph� �� T�ng H�i",77} },
		{"AddDialogOpt",	{"T� Kh�ng Nhuy�n B� H� Uy�n",78} },

	},
}
tbConfig[76] = --һ��ϸ��
{
	nId = 76,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�ng Long Ch�nh H�ng T�ng M�o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[77] = --һ��ϸ��
{
	nId = 77,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ph�c Ma Ph� �� T�ng H�i",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[78] = --һ��ϸ��
{
	nId = 78,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Kh�ng Nhuy�n B� H� Uy�n",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[79] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 79,
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
		{"AddDialogOpt",	{" K� Nghi�p Chu T��c L�ng V�n Ngoa",80} },
		{"AddDialogOpt",	{" Ng� Long T�n Phong H� y�n",81} },
		{"AddDialogOpt",	{" H�m Thi�n Th�a Long Chi�n Ngoa",82} },
			
	},
}

tbConfig[80] = --һ��ϸ��
{
	nId = 80,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"K� Nghi�p Chu T��c L�ng V�n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[81] = --һ��ϸ��
{
	nId = 81,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� Long T�n Phong H� y�n",{tbProp={0,29},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[82] = --һ��ϸ��
{
	nId = 82,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�m Thi�n Th�a Long Chi�n Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[83] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 83,
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
		{"AddDialogOpt",	{" V� Gian C�m V�n H� Uy�n",84} },
		{"AddDialogOpt",	{" V� Ma H�ng Truy Nhuy�n Th�p H�i",85} },
			
	},
}
tbConfig[84] = --һ��ϸ��
{
	nId = 84,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Gian C�m V�n H� Uy�n",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[85] = --һ��ϸ��
{
	nId = 85,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Ma H�ng Truy Nhuy�n Th�p H�i",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[86] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 86,
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
		{"AddDialogOpt",	{" T� Ho�ng B�ng Tung C�m uy�n",87} },
		{"AddDialogOpt",	{" B�ch H�i H�ng Linh Kim Ti ��i",88} },
			
	},
}
tbConfig[87] = --һ��ϸ��
{
	nId = 87,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Ho�ng B�ng Tung C�m uy�n",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[88] = --һ��ϸ��
{
	nId = 88,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ch H�i H�ng Linh Kim Ti ��i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[89] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 89,
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
		{"AddDialogOpt",	{" U Lung X�ch Y�t M�t trang",90} },
		{"AddDialogOpt",	{" Minh �o U ��c �m Y",91} },
			
	},
}

tbConfig[90] = --һ��ϸ��
{
	nId = 90,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung X�ch Y�t M�t trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[91] = --һ��ϸ��
{
	nId = 91,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh �o U ��c �m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[92] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 92,
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
		{"AddDialogOpt",	{"B�ng H�n Huy�n Y Th�c Gi�p",93} },
		{"AddDialogOpt",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",94} },
		{"AddDialogOpt",	{"S�m Hoang Tinh V�n Phi L�",95} },		
			
	},
}
tbConfig[93] = --һ��ϸ��
{
	nId = 93,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ng H�n Huy�n Y Th�c Gi�p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[94] = --һ��ϸ��
{
	nId = 94,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[95] = --һ��ϸ��
{
	nId = 95,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S�m Hoang Tinh V�n Phi L�",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[96] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 96,
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
		{"AddDialogOpt",	{"��ng C�u Phi Long ��u Ho�n",97} },
		{"AddDialogOpt",	{"��ch Kh�i Tri�n M�ng Y�u ��i",98} },	
			
	},
}
tbConfig[97] = --һ��ϸ��
{
	nId = 97,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ng C�u Phi Long ��u Ho�n",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[98] = --һ��ϸ��
{
	nId = 98,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ch Kh�i Tri�n M�ng y�u ��i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[99] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 99,
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
		{"AddDialogOpt",	{"Ma S�t C� H�a Li�u Thi�n uy�n",100} },
		{"AddDialogOpt",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",101} },	
			
	},
}
tbConfig[100] = --һ��ϸ��
{
	nId = 100,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S�t C� H�a Li�u Thi�n uy�n",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[101] = --һ��ϸ��
{
	nId = 101,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[102] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 102,
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
		{"AddDialogOpt",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",103} },
		{"AddDialogOpt",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",104} },	
			
	},
}
tbConfig[103] = --һ��ϸ��
{
	nId = 103,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[104] = --һ��ϸ��
{
	nId = 104,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[105] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 105,
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
		{"AddDialogOpt",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",106} },
		{"AddDialogOpt",	{"L�i Khung Linh Ng�c U�n L�i",107} },	
			
	},
}
tbConfig[106] = --һ��ϸ��
{
	nId = 106,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[107] = --һ��ϸ��
{
	nId = 107,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�i Khung Linh Ng�c U�n L�i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},20} },
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},200} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[108] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 108,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n thu�c t�nh trang b� s� thay ��i v� th�i h�n �� s� ���c Reset l�i tr�ng th�i ban ��u ng��i c� mu�n th� kh�ng."},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�u L�m",75} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�n V��ng",79} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Nga My",83} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Th�y Y�n",86} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Ng� ��c",89} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� ���ng M�n",92} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� C�i Bang",96} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�n Nh�n",99} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� V� �ang",102} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� C�n L�n",105} },
		
	},
}
tbConfig[109] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 109,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n thu�c t�nh trang b� s� thay ��i v� th�i h�n �� s� ���c Reset l�i tr�ng th�i ban ��u ng��i c� mu�n th� kh�ng."},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�u L�m",110} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�n V��ng",114} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Nga My",118} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Th�y Y�n",121} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Ng� ��c",124} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� ���ng M�n",127} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� C�i Bang",131} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� Thi�n Nh�n",134} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� V� �ang",137} },
		{"AddDialogOpt",	{"Ta mu�n Reset th�i h�n Trang B� C�n L�n",140} },	
		
	},
}
-----------RESET DO HOANG KIM LOAI 2-------------------------

tbConfig[110] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 110,
	szMessageType = "CreateDialog",
	szName = "B�m v�o Ch��ng T�o ��a T�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam ={"<npc>Sau khi tr�ng luy�n thu�c t�nh trang b� s� thay ��i v� th�i h�n �� s� ���c Reset l�i tr�ng th�i ban ��u ng��i c� mu�n th� kh�ng?"},
	tbCondition = 
	{
	},
	tbActition = 
	{	
		{"AddDialogOpt",	{"M�ng Long Ch�nh H�ng T�ng M�o",111} },
		{"AddDialogOpt",	{"Ph�c Ma Ph� �� T�ng H�i",112} },
		{"AddDialogOpt",	{"T� Kh�ng Nhuy�n B� H� Uy�n",113} },

	},
}
tbConfig[111] = --һ��ϸ��
{
	nId = 111,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"M�ng Long Ch�nh H�ng T�ng M�o",{tbProp={0,1},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,1},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[112] = --һ��ϸ��
{
	nId = 112,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ph�c Ma Ph� �� T�ng H�i",{tbProp={0,10},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,10},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[113] = --һ��ϸ��
{
	nId = 113,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Kh�ng Nhuy�n B� H� Uy�n",{tbProp={0,14},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,14},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[114] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 114,
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
		{"AddDialogOpt",	{" K� Nghi�p Chu T��c L�ng V�n Ngoa",115} },
		{"AddDialogOpt",	{" Ng� Long T�n Phong H� y�n",116} },
		{"AddDialogOpt",	{" H�m Thi�n Th�a Long Chi�n Ngoa",117} },
			
	},
}

tbConfig[115] = --һ��ϸ��
{
	nId = 115,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"K� Nghi�p Chu T��c L�ng V�n Ngoa",{tbProp={0,25},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,25},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[116] = --һ��ϸ��
{
	nId = 116,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ng� Long T�n Phong H� y�n",{tbProp={0,29},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,29},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[117] = --һ��ϸ��
{
	nId = 117,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"H�m Thi�n Th�a Long Chi�n Ngoa",{tbProp={0,20},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,20},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[118] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 118,
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
		{"AddDialogOpt",	{" V� Gian C�m V�n H� Uy�n",119} },
		{"AddDialogOpt",	{" V� Ma H�ng Truy Nhuy�n Th�p H�i",120} },
			
	},
}
tbConfig[119] = --һ��ϸ��
{
	nId = 119,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Gian C�m V�n H� Uy�n",{tbProp={0,34},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,34},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[120] = --һ��ϸ��
{
	nId = 120,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"V� Ma H�ng Truy Nhuy�n Th�p H�i",{tbProp={0,40},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,40},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[121] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 121,
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
		{"AddDialogOpt",	{" T� Ho�ng B�ng Tung C�m uy�n",122} },
		{"AddDialogOpt",	{" B�ch H�i H�ng Linh Kim Ti ��i",123} },
			
	},
}
tbConfig[122] = --һ��ϸ��
{
	nId = 122,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"T� Ho�ng B�ng Tung C�m uy�n",{tbProp={0,49},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,49},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[123] = --һ��ϸ��
{
	nId = 123,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ch H�i H�ng Linh Kim Ti ��i",{tbProp={0,53},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,53},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[124] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 124,
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
		{"AddDialogOpt",	{" U Lung X�ch Y�t M�t trang",125} },
		{"AddDialogOpt",	{" Minh �o U ��c �m Y",126} },
			
	},
}

tbConfig[125] = --һ��ϸ��
{
	nId = 125,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"U Lung X�ch Y�t M�t trang",{tbProp={0,57},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,57},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[126] = --һ��ϸ��
{
	nId = 126,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Minh �o U ��c �m Y",{tbProp={0,62},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,62},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[127] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 127,
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
		{"AddDialogOpt",	{"B�ng H�n Huy�n Y Th�c Gi�p",128} },
		{"AddDialogOpt",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",129} },
		{"AddDialogOpt",	{"S�m Hoang Tinh V�n Phi L�",130} },		
			
	},
}
tbConfig[128] = --һ��ϸ��
{
	nId = 128,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B�ng H�n Huy�n Y Th�c Gi�p",{tbProp={0,72},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,72},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[129] = --һ��ϸ��
{
	nId = 129,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Thi�n Quang Song B�o H�n Thi�t Tr�c",{tbProp={0,79},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,79},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[130] = --һ��ϸ��
{
	nId = 130,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S�m Hoang Tinh V�n Phi L�",{tbProp={0,85},},1} },
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,85},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[131] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 131,
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
		{"AddDialogOpt",	{"��ng C�u Phi Long ��u Ho�n",132} },
		{"AddDialogOpt",	{"��ch Kh�i Tri�n M�ng Y�u ��i",133} },	
			
	},
}
tbConfig[132] = --һ��ϸ��
{
	nId = 132,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ng C�u Phi Long ��u Ho�n",{tbProp={0,91},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,91},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}

tbConfig[133] = --һ��ϸ��
{
	nId = 133,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"��ch Kh�i Tri�n M�ng y�u ��i",{tbProp={0,98},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,98},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[134] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 134,
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
		{"AddDialogOpt",	{"Ma S�t C� H�a Li�u Thi�n uy�n",135} },
		{"AddDialogOpt",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",136} },	
			
	},
}
tbConfig[135] = --һ��ϸ��
{
	nId = 135,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma S�t C� H�a Li�u Thi�n uy�n",{tbProp={0,104},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,104},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[136] = --һ��ϸ��
{
	nId = 136,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ma Th� Huy�t Ng�c Th�t S�t B�i",{tbProp={0,114},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,114},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[137] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 137,
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
		{"AddDialogOpt",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",138} },
		{"AddDialogOpt",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",139} },	
			
	},
}
tbConfig[138] = --һ��ϸ��
{
	nId = 138,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�ng Nh�c V� C�c Huy�n Ng�c B�i",{tbProp={0,119},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,119},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[139] = --һ��ϸ��
{
	nId = 139,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",{tbProp={0,124},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},	
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,124},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[140] = --��i tho�i Ch��ng ��ng Cung N�
{
	nId = 140,
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
		{"AddDialogOpt",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",141} },
		{"AddDialogOpt",	{"L�i Khung Linh Ng�c U�n L�i",142} },	
			
	},
}
tbConfig[141] = --һ��ϸ��
{
	nId = 141,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"S��ng Tinh Thi�n Tinh B�ng Tinh th�",{tbProp={0,129},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,129},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}
tbConfig[142] = --һ��ϸ��
{
	nId = 142,
	szMessageType = "CreateCompose",
	szName = "Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Tr�ng Luy�n �� Ho�ng Kim M�n Ph�i",0,1,1,1},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L�i Khung Linh Ng�c U�n L�i",{tbProp={0,134},},1} },	
		{"AddOneMaterial",	{"L�nh B�i V��t �i",{tbProp={6,1,4655,1,0,0},},100}},
		{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0,0},},100} },		
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{tbProp={0,134},nQuality=1,nExpiredTime=43200, tbParam={60}},1,"[Tr�ng Luy�n Trang B� Ho�ng Kim M�n Ph�i]"} },
		
	},
}