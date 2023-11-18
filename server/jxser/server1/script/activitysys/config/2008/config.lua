---------------Youtube PGaming---------------
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
IncludeLib("RELAYLADDER");
Include("\\script\\lib\\progressbar.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."0901"
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim1000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTongKim3000]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi17]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAi28]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietThuyTacDaiDauLinh]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},25,"[Event_M�ng Sinh Nh�t VLTK] [tVuotAiViemDe10]"} },
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
		--{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},20,"[Event_M�ng Sinh Nh�t VLTK] [tTinSu10]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},10,"[Event_M�ng Sinh Nh�t VLTK] [tVLMC]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},50,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossTheGioi]"} },
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
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},5,"[Event_M�ng Sinh Nh�t VLTK] [tTieuDietBossS�tTh�]"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
	},
}
tbConfig[13] = --��i tho�i
{
	nId = 13,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M�c L�o"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	{"AddDialogOpt",	{"��i 10 m�t �� th�n b� l�y r��ng b�c",14} },
	{"AddDialogOpt",	{"��i 10 m�t �� th�n b� v� kim th�ch l�y r��ng v�ng",15} },
	},
}
tbConfig[14] = 
{
	nId = 14,
	szMessageType = "CreateCompose",
	szName = "��i 10 m�t �� th�n b� l�y r��ng b�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"r��ng b�c",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"M�t �� th�n b�",{tbProp={6,1,196,1,0,0},},10} },
	--{"AddOneMaterial",	{"100000 l��ng",{nJxb=300000,},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1378,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[15] = 
{
	nId = 15,
	szMessageType = "CreateCompose",
	szName = "��i 10 m�t �� th�n b� v� kim th�ch l�y r��ng v�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"r��ng v�ng",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"M�t �� th�n b�",{tbProp={6,1,196,1,0,0},},10} },
	{"AddOneMaterial",	{"Kim Th�ch",{tbProp={6,1,1376,1,0,0},},1} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1377,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}
tbConfig[16] = --S� D�ng
{
	nId = 16,
	szMessageType = "ItemScript",
	szName = "R��ng B�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {{tbProp={6,1,4946,1,0,0},}},
	tbCondition = 
	{		
		{"PlayerFunLib:CheckFreeBagCell",	{10,"H�y �� Tr�ng 10 � R�i M�"} },
	},
	tbActition = 
	{
		{"ThisActivity:RuongBau", {nil}},
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
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
		{"NpcFunLib:DropSingleItem",	{{nExpiredTime=nTime,tbProp={6,1,196,1,0,0},},1,"2"} },
	},
}
tbConfig[21] = 
{
	nId = 21,
	szMessageType = "CreateCompose",
	szName = "Mua R��ng B�u",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"R��ng B�u",1,1,1,0.02},
	tbCondition = 
	{
	{"AddOneMaterial",	{"Ti�n ��ng",{tbProp={4,417,1,1,0,0},},10} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,4946,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Kem]"} },
	},
}
tbConfig[22] = --��i tho�i
{
	nId = 22,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Xa L�o Th�i"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa h�ng",25} },
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa c�c",26} },
	},
}
tbConfig[23] = --��i tho�i
{
	nId = 23,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Th�y Th�y"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa h�ng",25} },
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa c�c",26} },
	},
}
tbConfig[24] = --��i tho�i
{
	nId = 24,
	szMessageType = "ClickNpc",
	szName = "��i Tho�i Npc",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"M� Nh�n"},
	tbCondition = 
	{
	},
	tbActition = 
	{
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa h�ng",25} },
	--{"AddDialogOpt",	{"Ta mu�n t�ng b� hoa c�c",26} },
	},
}
tbConfig[25] = 
{
	nId = 25,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n t�ng b� hoa h�ng",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b� hoa h�ng",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B� Hoa H�ng",{tbProp={6,1,1681,1,0,0},},1} },
		{"PlayerFunLib:CheckLevel",	{50,"C�p b�c qu� th�p, c�n ph�i luy�n t�p th�m �� c� th� t�ng hoa!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"local nRandomKeyValue = random(1, 100);if (nRandomKeyValue < 2) then AddItem(4,238,1,1,0,0,0);end;if (nRandomKeyValue <= 10 and nRandomKeyValue>2) then AddItem(4,353,1,1,0,0,0);end;if(nRandomKeyValue <= 12 and nRandomKeyValue>10) then AddItem(4,240,1,1,0,0,0);end;if(nRandomKeyValue <= 14 and nRandomKeyValue>12) then ItemIndex = AddItem(6,1,1181,1,0,0,0);ITEM_SetExpiredTime(ItemIndex, nTime);SyncItem(ItemIndex);end;if(nRandomKeyValue <= 16 and nRandomKeyValue>14) then AddItem(4,239,1,1,0,0,0);end;if(nRandomKeyValue <= 18 and nRandomKeyValue>16) then ItemIndex = AddItem(6,1,71,1,0,0,0);ITEM_SetExpiredTime(ItemIndex, nTime);SyncItem(ItemIndex);end;if(nRandomKeyValue <= 30 and nRandomKeyValue>18) then AddItem(6,1,147,3,0,0,0);end;if(nRandomKeyValue <= 65 and nRandomKeyValue>30) then AddItem(6,1,122,1,0,0,0);end;if(nRandomKeyValue <= 70 and nRandomKeyValue>65) then AddItem(6,1,124,1,0,0,0);end;if(nRandomKeyValue <= 80 and nRandomKeyValue>70) then AddItem(6,1,123,1,0,0,0);end;if(nRandomKeyValue <= 100 and nRandomKeyValue>80) then AddItem(0,0,0,0,0,0,0);end;if  GetTask(5853) < 5000 then AddOwnExp(1000); end SetTask(5853, GetTask(5853)+1);"} },
		{"dostring",	{"Msg2Player(format([[B�n �� t�ng ���c %d hoa h�ng]], GetTask(5853)))"} },
	},
}
tbConfig[26] = 
{
	nId = 26,
	szMessageType = "CreateCompose",
	szName = "Ta mu�n t�ng b� hoa c�c",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"b� hoa c�c",1,1,1,0.02},
	tbCondition = 
	{
		{"AddOneMaterial",	{"B� Hoa C�c",{tbProp={6,1,1682,1,0,0},},1} },
		{"PlayerFunLib:CheckLevel",	{50,"C�p b�c qu� th�p, c�n ph�i luy�n t�p th�m �� c� th� t�ng hoa!",">="} },
		
	},
	tbActition = 
	{
		{"dostring",	{"if  GetTask(5852) < 2000 then AddOwnExp(500);AddItem(6,1,random(122,124),1,0,0,0); end SetTask(5852, GetTask(5852)+1);"} },
		{"dostring",	{"Msg2Player(format([[B�n �� t�ng ���c %d hoa c�c]], GetTask(5852)))"} },
	},
}
tbConfig[27] = --һ��ϸ��
{
	nId = 27,
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
		{"AddDialogOpt",	{"Mua Kim Th�ch",28} },
	},
}
tbConfig[28] = --һ��ϸ��
{
	nId = 28,
	szMessageType = "CreateCompose",
	szName = "buy basket",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"Mua Kim Th�ch",1,1,1,0.02,0,50},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTotalLevel",	{50,"default",">="} },
		{"AddOneMaterial",	{"Ng�n l��ng",{nJxb=1},300000} },
	},
	tbActition = 
	{
		{"PlayerFunLib:GetItem",	{{nExpiredTime=nTime,tbProp={6,1,1376,1,0,0},},1,"[Event_M�ng Sinh Nh�t VLTK] [B�nh Sinh Nh�t]"} },
	},
}