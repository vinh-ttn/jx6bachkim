---------------Youtube PGaming---------------
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0201"
tbConfig = {}
tbConfig[1] = --T�ng Kim 1000 �i�m
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 1000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{1000,">="} },
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,"<"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim1000]"} },
	},
}
tbConfig[2] = --T�ng Kim 3000 �i�m
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "T�ng Kim Cao C�p 3000 �i�m",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {-2,"3"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim3000]"} },
	},
}
tbConfig[3] =
{
	nId = 3,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 17 Giai �o�n 1",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"17"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi17]"} },
	},
}
tbConfig[4] =
{
	nId = 4,
	szMessageType = "Chuanguan",
	szName = "V��t Qua �i 28 Giai �o�n 2",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"28"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi28]"} },
	},
}
tbConfig[5] = --Th�y T�c ��u L�nh
{
	nId = 5,
	szMessageType = "NpcOnDeath",
	szName = "Gi�t Ch�t 1 Th�y T�c ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckBoatBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDauLinh]"} },
	},
}
tbConfig[6] = --Th�y T�c ��i ��u L�nh
{
	nId = 6,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Th�y T�c ��i ��u L�nh",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckId",	{"1692"} },
		{"NpcFunLib:CheckInMap",	{"337,338,339"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
	},
}
tbConfig[7] = --Vi�m ��
{
	nId = 7,
	szMessageType = "YDBZguoguan",
	szName = "V��t Qua �i Vi�m �� Th� 10",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {10},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},25,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAiViemDe10]"} },
	},
}
tbConfig[8] = --Tin Su
{
	nId = 8,
	szMessageType = "FinishMail",
	szName = "Tin Su",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTinSu10]"} },
	},
}
tbConfig[9] = --V�LMC
{
	nId = 9,
	szMessageType = "FinishVLMC_VNG",
	szName = "Ho�n Th�nh VLMC",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVLMC]"} },
	},
}
tbConfig[10] = --Boss Th� Gi�i
{
	nId = 10,
	szMessageType = "NpcOnDeath",
	szName = "Ti�u Di�t Boss Th� Gi�i",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckWorldBoss",	{nil} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},50,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossTheGioi]"} },
	},
}
tbConfig[11] = --Boss S�t Th�
{
	nId = 11,
	szMessageType = "NpcOnDeath",
	szName = "Nhi�m V� S�t Th� C�p 90",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
		{"NpcFunLib:CheckKillerdBoss",	{90} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},5,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossS�tTh�]"} },
	},
}
tbConfig[12] = --?���ϸ��
{
	nId = 12,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ���`���u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"225,226,227,224,340,75"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th� b�nh"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta mu�n l�m b�nh ch�ng th��ng",14} },
	{"AddDialogOpt",	{"Ta mu�n l�m b�nh ch�ng h�o h�ng",15} },
	{"AddDialogOpt",	{"Ta mu�n l�m b�nh ch�ng th��ng h�ng",22} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m b�nh ch�ng th��ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b�nh ch�ng th��ng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"L� b�nh",{tbProp={6,1,1653,1,0,0},},4} },
	{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,1654,1,0,0},},3} },
	{"AddOneMaterial",	{"��u xanh",{tbProp={6,1,1655,1,0,0},},2} },
	{"AddOneMaterial",	{"Th�t heo",{tbProp={6,1,1656,1,0,0},},1} },
	{"AddOneMaterial",	{"20000 l��ng",{nJxb=20000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1664,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m b�nh ch�ng h�o h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b�nh ch�ng h�o h�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� b�nh",{tbProp={6,1,1653,1,0,0},},4} },
		{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,1654,1,0,0},},3} },
		{"AddOneMaterial",	{"��u xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"Th�t heo",{tbProp={6,1,1656,1,0,0},},1} },
		{"AddOneMaterial",	{"B� quy�t l�m b�nh ch�ng h�o h�ng",{tbProp={6,1,1661,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1663,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[16] = --S� D�ng
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "T�i Tr�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4938,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:TuiTra", {nil}},
	},
}
tbConfig[17] = --S� D�ng
{
	nId = 17,
	szMessageType = "ItemScript",
	szName = "H�p S� C� La",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,2861,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:HopSoCoLa", {nil}},
	},
}
tbConfig[18] = --Add NPC
{
	nId = 18,
	szMessageType = "ServerStart",
	szName = "Khi Kh�i ��ng Server S� T�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
	},
	tbActition = 
	{
		{"ThisActivity:AddInitNpc",	{nil} },
	},
}
tbConfig[19] = --?���ϸ��
{
	nId = 19,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ����aͷ",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"10,20,30,40,50,60,70,80"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
	},
}
tbConfig[20] = --?���ϸ��
{
	nId = 20,
	szMessageType = "NpcOnDeath",
	szName = "�߹ֵ�����ź�u",
	nStartDate = nil, 
        nEndDate = nil, 
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"NpcFunLib:CheckNormalMonster",	{"90"} },
		{"NpcFunLib:CheckInMap",	{"322,321,144,124,93"} },
		{"PlayerFunLib:CheckTotalLevel",	{50,"",">="} },
	},
	tbActition = 
	{
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1652,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1657,1,0,0},},1,"5"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1658,1,0,0},},1,"3"} },
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,1659,1,0,0},},1,"1"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua T�i Tr�",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"T�i Tr�",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4938,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[22] = 
{
	nId = 22,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n l�m b�nh ch�ng th��ng h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b�nh ch�ng th��ng h�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"L� b�nh",{tbProp={6,1,1653,1,0,0},},4} },
		{"AddOneMaterial",	{"G�o n�p",{tbProp={6,1,1654,1,0,0},},3} },
		{"AddOneMaterial",	{"��u xanh",{tbProp={6,1,1655,1,0,0},},2} },
		{"AddOneMaterial",	{"Th�t heo",{tbProp={6,1,1656,1,0,0},},1} },
		{"AddOneMaterial",	{"B� quy�t l�m b�nh ch�ng th��ng h�ng",{tbProp={6,1,1660,1,0,0},},1} },
		
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1662,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[23] = --һ��ϸ��
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "click lingfan",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"H�ng rong"},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
	},
	tbActition = 
	{
		{"AddDialogOpt",	{"Mua B� quy�t l�m b�nh ch�ng h�o h�ng",24} },
		{"AddDialogOpt",	{"Mua B� quy�t l�m b�nh ch�ng th��ng h�ng",25} },
	},
}
tbConfig[24] = --һ��ϸ��
{
	nId = 24,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B� quy�t l�m b�nh ch�ng h�o h�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},100000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1661,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[25] = --һ��ϸ��
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"B� quy�t l�m b�nh ch�ng h�o h�ng",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},200000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1660,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[26] = --��i tho�i
{
	nId = 26,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�y Mai"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta mu�n treo li�n Ph�c - L�c - Th� �� ��n t�t",27} },
	},
}
tbConfig[27] = 
{
	nId = 27,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n treo li�n Ph�c - L�c - Th� �� ��n t�t",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"treo li�n Ph�c - L�c - Th�",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"Ph�c",{tbProp={6,1,1657,1,0,0},},1} },
		{"AddOneMaterial",	{"L�c",{tbProp={6,1,1658,1,0,0},},1} },
		{"AddOneMaterial",	{"Th�",{tbProp={6,1,1659,1,0,0},},1} },
		{"AddOneMaterial",	{"9999 l��ng",{nJxb=9999,},1} },
		{"PlayerFunLib:CheckLevel",	{50,"C�p b�c qu� th�p, c�n ph�i luy�n t�p th�m �� c� th� treo li�n!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"if  GetTask(5782) < 100 then AddItem(6,1,random(122,124),1,0,0,0); end SetTask(5782, GetTask(5782)+1);"} },
		{"dostring",	{"Msg2Player(format([[B�n �� treo ���c %d li�n]], GetTask(5782)))"} },
	},
}
tbConfig[28] = --��i tho�i
{
	nId = 28,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"C�y ��o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"Ta mu�n treo li�n Ph�c - L�c - Th� �� ��n t�t",27} },
	},
}