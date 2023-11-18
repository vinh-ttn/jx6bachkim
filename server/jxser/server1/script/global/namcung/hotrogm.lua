IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\traogiaithdnb\\thdnb7.lua")
--Include("\\script\\global\\writeaddressdialog.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\vng_event\\2012_vlnb\\main.lua")
Include("\\script\\global\\lottery_gold.lua")
Include("\\script\\global\\namcung\\hotroitem.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\itemblue.lua")
--Include("\\script\\global\\gm_tool\\")
SKILL_180 = {1220,1221,1223,1222,1224,1225,1227,1226,1228,1229}
local tbFaction =
{
	[1] =
	{
		szShowName = "Thi�u L�m",
		szFaction = "shaolin",
		nShortFaction = "sl",
		tbSkill = {318, 319, 321, 709},
		tbEquip =
		{
			{
				szFaction = "Thi�u L�m Quy�n",
				nFirstEquipId = 4863,
				tbEquipName =
				{
					" Minh Ph��ng ch�u li�n", " Minh Ph��ng t�ng m�o", " Minh Ph��ng th��ng gi�i", " Minh Ph��ng h� uy�n", " Minh Ph��ng y�u ��i",
					" Minh Ph��ng c� sa ", " Minh Ph��ng tri�n th� ", " Minh Ph��ng t�ng h�i ", " Minh Ph��ng y�u tr�y ", " Minh Ph��ng h� gi�i ",
				},
			},
			{
				szFaction = "Thi�u L�m C�n",
				nFirstEquipId = 4873,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng c�n", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i", 
				},
			},
			{
				szFaction = "Thi�u L�m �ao",
				nFirstEquipId = 4883,
				tbEquipName =
				{
					"Minh Ph��ng ch�u li�n", "Minh Ph��ng t�ng m�o", "Minh Ph��ng th��ng gi�i", "Minh Ph��ng h� uy�n", "Minh Ph��ng y�u ��i",
					"Minh Ph��ng c� sa", "Minh Ph��ng �ao", "Minh Ph��ng t�ng h�i", "Minh Ph��ng y�u tr�y", "Minh Ph��ng h� gi�i",
				},
			},
		},
	},
	[2] =
	{
		szShowName = "Thi�n V��ng Bang",
		szFaction = "tianwang",
		nShortFaction = "tw",
		tbSkill = {322, 325, 323, 708},
		tbEquip =
		{
			{
				szFaction = "Thi�n V��ng Ch�y",
				nFirstEquipId = 4893,
				tbEquipName =
				{
					"Minh Ph��ng ��nh quang li�n", "Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang th��ng gi�i", "Minh Ph��ng ��nh quang th�c o�n", "Minh Ph��ng ��nh quang y�u ��i",
					"Minh Ph��ng ��nh quang kh�i", "Minh Ph��ng ��nh quang ch�y", "Minh Ph��ng ��nh quang ngoa", "Minh Ph��ng ��nh quang b�i", "Minh Ph��ng ��nh quang h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng Th��ng",
				nFirstEquipId = 4903,
				tbEquipName =
				{
					"Minh Ph��ng ng� phong li�n", "Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng gi�i", "Minh Ph��ng ng� phong th�c o�n", "Minh Ph��ng ng� phong y�u ��i",
					"Minh Ph��ng ng� phong kh�i", "Minh Ph��ng ng� phong th��ng", "Minh Ph��ng ng� phong ngoa", "Minh Ph��ng ng� phong b�i", "Minh Ph��ng ng� phong h� gi�i",
				},
			},
			{
				szFaction = "Thi�n V��ng �ao",
				nFirstEquipId = 4913,
				tbEquipName =
				{
					"Minh Ph��ng bi�u phong li�n", "Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong th��ng gi�i", "Minh Ph��ng bi�u phong th�c o�n", "Minh Ph��ng bi�u phong y�u ��i",
					"Minh Ph��ng bi�u phong kh�i", "Minh Ph��ng bi�u phong �ao", "Minh Ph��ng bi�u phong ngoa", "Minh Ph��ng bi�u phong b�i", "Minh Ph��ng bi�u phong h� gi�i",
				},
			},
		},
	},
	[3] =
	{
		szShowName = "���ng M�n",
		szFaction = "tangmen",
		nShortFaction = "tm",
		tbSkill = {339, 302, 342, 710},
		tbEquip =
		{
			{
				szFaction = "Phi �ao ���ng M�n",
				nFirstEquipId = 4983,
				tbEquipName =
				{
					"Minh Ph��ng n�c �nh h�ng li�n", "Minh Ph��ng n�c �nh qu�n", "Minh Ph��ng n�c �nh th��ng gi�i", "Minh Ph��ng n�c �nh h� uy�n", "Minh Ph��ng n�c �nh tri�n y�u",
					"Minh Ph��ng n�c �nh gi�p", "Minh Ph��ng n�c �nh phi �ao", "Minh Ph��ng n�c �nh ngoa", "Minh Ph��ng n�c �nh y�u tr�y", "Minh Ph��ng n�c �nh h� gi�i",
				},
			},
			{
				szFaction = "N� ���ng M�n",
				nFirstEquipId = 4993,
				tbEquipName =
				{
					"Minh Ph��ng c�c quang h�ng li�n", "Minh Ph��ng c�c quang qu�n", "Minh Ph��ng c�c quang th��ng gi�i", "Minh Ph��ng c�c quang h� uy�n", "Minh Ph��ng c�c quang tri�n y�u",
					"Minh Ph��ng c�c quang gi�p", "Minh Ph��ng c�c quang n� ", "Minh Ph��ng c�c quang ngoa ", "Minh Ph��ng c�c quang y�u tr�y ", "Minh Ph��ng c�c quang h� gi�i ",
				},
			},
			{
				szFaction = "Phi Ti�u ���ng M�n",
				nFirstEquipId = 5003,
				tbEquipName =
				{
					" Minh Ph��ng th��c kim h�ng li�n ", " Minh Ph��ng th��c kim qu�n ", " Minh Ph��ng th��c kim th��ng gi�i ", " Minh Ph��ng th��c kim h� uy�n ", " Minh Ph��ng th��c kim tri�n y�u ",
					" Minh Ph��ng th��c kim gi�p ", " Minh Ph��ng th��c kim phi ti�u ", " Minh Ph��ng th��c kim ngoa ", " Minh Ph��ng th��c kim y�u tr�y ", " Minh Ph��ng th��c kim h� gi�i ",
				},
			},
		},
	},
	[4] =
	{
		szShowName = "Ng� ��c Gi�o",
		szFaction = "wudu",
		nShortFaction = "wu",
		tbSkill = {353, 355, 711},
		tbEquip =
		{
			{
				szFaction = "Ng� ��c Ch��ng",
				nFirstEquipId = 4963,
				tbEquipName =
				{
					" Minh Ph��ng ��c sa h�ng li�n ", " H�ch H� ��c sa ph�t ��i ", " Minh Ph��ng ��c sa th��ng gi�i ", " Minh Ph��ng ��c sa h� uy�n ", " Minh Ph��ng ��c sa y�u ��i ",
					" Minh Ph��ng ��c sa b� trang ", " Minh Ph��ng ��c sa tri�n th� ", " Minh Ph��ng ��c sa ngoa ", " Minh Ph��ng ��c sa y�u tr�y ", " Minh Ph��ng ��c sa h� gi�i ",
				},
			},
			{
				szFaction = "Ng� ��c �ao",
				nFirstEquipId = 4973,
				tbEquipName =
				{
					" Minh Ph��ng u linh h�ng li�n ", " H�ch H� u linh ph�t ��i ", " Minh Ph��ng u linh th��ng gi�i ", " Minh Ph��ng u linh h� uy�n ", " Minh Ph��ng u linh y�u ��i ",
					" Minh Ph��ng u linh b� trang ", " Minh Ph��ng u linh �ao ", " Minh Ph��ng u linh ngoa ", " Minh Ph��ng u linh y�u tr�y ", " Minh Ph��ng u linh h� gi�i ",
				},
			},
		},
	},
	[5] =
	{
		szShowName = "Nga Mi",
		szFaction = "emei",
		nShortFaction = "em",
		tbSkill = {380, 328, 712},
		tbEquip =
		{
			{
				szFaction = "Nga Mi Ki�m",
				nFirstEquipId = 4923,
				tbEquipName =
				{
					"Minh Ph��ng l�u v�n ch�u li�n", "Minh Ph��ng l�u v�n ph�t ��i", "Minh Ph��ng l�u v�n th��ng gi�i", "Minh Ph��ng l�u v�n h� uy�n", "Minh Ph��ng l�u v�n y�u ��i ",
					"Minh Ph��ng l�u v�n sam", "Minh Ph��ng l�u v�n ki�m", "Minh Ph��ng l�u v�n ngoa", "Minh Ph��ng l�u v�n b�i ", "Minh Ph��ng l�u v�n h� gi�i ",
				},
			},
			{
				szFaction = "Nga Mi Ch��ng",
				nFirstEquipId = 4933,
				tbEquipName =
				{
					"Minh Ph��ng h�n ng�c ch�u li�n ", "Minh Ph��ng h�n ng�c ph�t ��i", "Minh Ph��ng h�n ng�c th��ng gi�i", "Minh Ph��ng h�n ng�c h� uy�n", "Minh Ph��ng h�n ng�c y�u ��i",
					"Minh Ph��ng h�n ng�c sam", "Minh Ph��ng h�n ng�c tri�n th� ", "Minh Ph��ng h�n ng�c ngoa ", "Minh Ph��ng h�n ng�c b�i ", "Minh Ph��ng h�n ng�c h� gi�i ",
				},
			},
		},
	},
	[6] =
	{
		szShowName = "Th�y Y�n",
		szFaction = "cuiyan",
		nShortFaction = "cy",
		tbSkill = {336, 337, 713},
		tbEquip =
		{
			{
				szFaction = "Th�y Y�n �ao (Ngo�i)",
				nFirstEquipId = 4943,
				tbEquipName =
				{
					"Minh Ph��ng h�ng nhan ch�u li�n ", "Minh Ph��ng h�ng nhan ph�t ��i", "Minh Ph��ng h�ng nhan th��ng gi�i", "Minh Ph��ng h�ng nhan h� uy�n", "Minh Ph��ng h�ng nhan y�u ��i",
					"Minh Ph��ng h�ng nhan sam", "Minh Ph��ng h�ng nhan �ao ", "Minh Ph��ng h�ng nhan ngoa ", "Minh Ph��ng h�ng nhan b�i ", "Minh Ph��ng h�ng nhan h� gi�i ",
				},
			},
			{
				szFaction = "Th�y Y�n Song �ao (N�i)",
				nFirstEquipId = 4953,
				tbEquipName =
				{
					"Minh Ph��ng �o th�i ch�u li�n ", "Minh Ph��ng �o th�i ph�t ��i", "Minh Ph��ng �o th�i th��ng gi�i", "Minh Ph��ng �o th�i h� uy�n", "Minh Ph��ng �o th�i y�u ��i",
					"Minh Ph��ng �o th�i sam", "Minh Ph��ng �o th�i �ao ", "Minh Ph��ng �o th�i ngoa ", "Minh Ph��ng �o th�i b�i ", "Minh Ph��ng �o th�i h� gi�i ",
				},
			},
		},
	},
	[7] =
	{
		szShowName = "C�i Bang",
		szFaction = "gaibang",
		nShortFaction = "gb",
		tbSkill = {357, 359, 714},
		tbEquip =
		{
			{
				szFaction = "C�i Bang Ch��ng",
				nFirstEquipId = 5013,
				tbEquipName =
				{
					" Minh Ph��ng h� ph�p h�ng li�n", " Minh Ph��ng h� ph�p ��u ho�n", " Minh Ph��ng h� ph�p th��ng gi�i ", " Minh Ph��ng h� ph�p h� uy�n ", " Minh Ph��ng h� ph�p th�c y�u",
					" Minh Ph��ng h� ph�p c�i y", " Minh Ph��ng h� ph�p tri�n th� ", " Minh Ph��ng h� ph�p ngoa ", "Minh Ph��ng h� ph�p b�i ", " Minh Ph��ng h� ph�p h� gi�i ",
				},
			},
			{
				szFaction = "C�i Bang B�ng",
				nFirstEquipId = 5023,
				tbEquipName =
				{
					"Minh Ph��ng tr�ng gi�i h�ng li�n", "Minh Ph��ng tr�ng gi�i ��u ho�n", "Minh Ph��ng tr�ng gi�i th��ng gi�i ", "Minh Ph��ng tr�ng gi�i h� uy�n", "Minh Ph��ng tr�ng gi�i th�c y�u",
					"Minh Ph��ng tr�ng gi�i c�i y", "Minh Ph��ng tr�ng gi�i tr��ng", "Minh Ph��ng tr�ng gi�i ngoa", "Minh Ph��ng tr�ng gi�i b�i", "Minh Ph��ng tr�ng gi�i h� gi�i ",
				},
			},
		},
	},
	[8] =
	{
		szShowName = "Thi�n Nh�n Gi�o",
		szFaction = "tianren",
		nShortFaction = "tr",
		tbSkill = {361, 362, 715},
		tbEquip =
		{
			{
				szFaction = "Chi�n Nh�n",
				nFirstEquipId = 5033,
				tbEquipName =
				{
					"Minh Ph��ng x�ch minh h�ng li�n", "H�ch H� x�ch minh kh�i", "Minh Ph��ng x�ch minh th��ng gi�i", "Minh Ph��ng x�ch minh h� o�n", "Minh Ph��ng x�ch minh y�u ��i",
					"Minh Ph��ng x�ch minh gi�p", "Minh Ph��ng x�ch minh th��ng", "Minh Ph��ng x�ch minh ngoa", "Minh Ph��ng x�ch minh b�i", "Minh Ph��ng x�ch minh h� gi�i",
				},
			},
			{
				szFaction = "Ma Nh�n",
				nFirstEquipId = 5043,
				tbEquipName =
				{
					"Minh Ph��ng s�t vi�m h�ng li�n", "H�ch H� s�t vi�m kh�i", "Minh Ph��ng s�t vi�m th��ng gi�i", "Minh Ph��ng s�t vi�m h� o�n", "Minh Ph��ng s�t vi�m y�u ��i",
					"Minh Ph��ng s�t vi�m gi�p", "Minh Ph��ng s�t vi�m �ao", "Minh Ph��ng s�t vi�m ngoa", "Minh Ph��ng s�t vi�m b�i", "Minh Ph��ng s�t vi�m h� gi�i",
				},
			},
		},
	},
	[9] =
	{
		szShowName = "V� �ang",
		szFaction = "wudang",
		nShortFaction = "wd",
		tbSkill = {365, 368, 716},
		tbEquip =
		{
			{
				szFaction = "V� �ang Kh�",
				nFirstEquipId = 2935,
				tbEquipName =
				{
					" Minh Ph��ng ti�n �m ph� ", " Minh Ph��ng ti�n �m qu�n", " Minh Ph��ng ti�n �m th��ng gi�i ", " Minh Ph��ng ti�n �m t� ", " Minh Ph��ng ti�n �m ph�p ��i ",
					" Minh Ph��ng ti�n �m ��o b�o ", " Minh Ph��ng ti�n �m ki�m ", " Minh Ph��ng ti�n �m ngoa ", " Minh Ph��ng ti�n �m b�i ", " Minh Ph��ng ti�n �m h� gi�i ",
				},
			},
			{
				szFaction = "V� �ang Ki�m",
				nFirstEquipId = 2945,
				tbEquipName =
				{
					" Minh Ph��ng ��o minh ph� ", " Minh Ph��ng ��o minh qu�n ", " Minh Ph��ng ��o minh th��ng gi�i ", " Minh Ph��ng ��o minh t� ", " Minh Ph��ng ��o minh ph�p ��i ",
					" Minh Ph��ng ��o minh ��o b�o ", " Minh Ph��ng ��o minh ki�m ", " Minh Ph��ng ��o minh ngoa ", " Minh Ph��ng ��o minh b�i ", " Minh Ph��ng ��o minh h� gi�i ",
				},
			},
		},
	},
	[10] =
	{
		szShowName = "C�n L�n",
		szFaction = "kunlun",
		nShortFaction = "kl",
		tbSkill = {372, 375, 717},
		tbEquip =
		{
			{
				szFaction = "C�n L�n �ao",
				nFirstEquipId = 5073,
				tbEquipName =
				{
					"Minh Ph��ng thi�n canh h�ng li�n ", "Minh Ph��ng thi�n canh ��o qu�n", "Minh Ph��ng thi�n canh th��ng gi�i", "Minh Ph��ng thi�n canh h� uy�n", "Minh Ph��ng thi�n canh ph�p ��i",
					"Minh Ph��ng thi�n canh ��o b�o", "Minh Ph��ng thi�n canh �ao", "Minh Ph��ng thi�n canh ngoa", "Minh Ph��ng thi�n canh b�i", "Minh Ph��ng thi�n canh h� gi�i",
				},
			},
			{
				szFaction = "C�n L�n Ki�m",
				nFirstEquipId = 5083,
				tbEquipName =
				{
					"Minh Ph��ng ng�o s��ng h�ng li�n ", "Minh Ph��ng ng�o s��ng ��o qu�n", "Minh Ph��ng ng�o s��ng th��ng gi�i", "Minh Ph��ng ng�o s��ng h� uy�n", "Minh Ph��ng ng�o s��ng ph�p ��i",
					"Minh Ph��ng ng�o s��ng ��o b�o", "Minh Ph��ng ng�o s��ng ki�m ", "Minh Ph��ng ng�o s��ng ngoa ", "Minh Ph��ng ng�o s��ng b�i", "Minh Ph��ng ng�o s��ng h� gi�i",
				},
			},
		},
	},
}
local tbEquipFreeCell =
{
	{2, 1}, {2, 2}, {1, 1}, {1, 2}, {2, 1}, --�������������Ͻ䣬��������
	{2, 3}, {2, 4}, {2, 2}, {1, 2}, {1, 1}, --?��������ѥ�ӣ���׹��Ϣ��
}

local tbFactionSeries =
{
	[1] = {1, 2},
	[2] = {3, 4},
	[3] = {5, 6},
	[4] = {7, 8},
	[5] = {9, 10},
}

local tbFreeItem =
{
	{szName="H�i Thi�n T�i T�o C�m Nang", tbProp={6,1,1781,1,0,0}, tbParam={60}},
	{szName="�� ph� Ho�ng Kim - Ng�u Nhi�n ", tbProp={6,1,random(239,391),1,0,0}},
	{szName="H�p l� v�t [Qu� Huy Ho�ng]", tbProp={6,1,1075,1,0,0}},
	{szName="Khi�u chi�n l� bao", tbProp={6,1,2006,1,0,0}},
	{szName="-Th�p To�n ��i B�-", tbProp={6,1,1399,1,0,0}},
	{szName="Vi�m ��� B�o T�ng", tbProp={6,1,2805,1,0,0}},
	{szName="T�ng kim qu�n c�ng", tbProp={6,1,1477,1,0,0}},
	{szName="��i l�c", tbProp={6,1,2517,1,0,0}},
	{szName="H�t Thi�n Tu�", tbProp={6,1,30109,1,0,0}},
	{szName="V�ng Hoa T� Do", tbProp={6,1,30035,1,0,0}},
	{szName="-H�n Huy�t Long C�u-", tbProp={0,10,18,1,0,0}, nWidth=2, nHeigth=3},
}

local tbGMAccount = {"namcung", "BlackDragon", "KeyboardHero", "DarkLord", "sccddp"}

function main()
       dofile("script/global/namcung/hotrogm.lua");
	dialog_main()
end



--==========================================================================================

Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")

function dmcreattongtest()
local strTongName = GetTongName()
local tszTitle = "Ch�o mong b�n �� tham gia h� th�ng <color=yellow>Bang H�i<color>"
if (strTongName == nil or strTongName == "") then
	Say(tszTitle,4," Nh�n �i�u ki�n t�o bang h�i/dmcreatetong","Gia nh�p bang h�i/dmjointong","T�o bang h�i/dmcreateit","K�t th�c ��i tho�i")
else
	Say(tszTitle,0)
end	
end

function dmcreatetong()	
if  GetCamp() ~= 4 then
		SetCamp(4)
		SetCurCamp(4)
		AddRepute(100000)
		AddLeadExp(1000000)
		AddLeadExp(1000000)

		AddLeadExp(1000000)

		AddEventItem(195)
		Earn(1000000)
		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end
Msg2Player("<color=yellow>Ng��i �� h�i �� t�t c� �i�u ki�n �� t�o Bang H�i!<color>")
else
end
end

function dmjointong()
if  GetCamp() ~= 4 then

		if GetLevel() <= 100 then
			for i=1,100 do
				AddOwnExp(100000000)
			end
		end

		SetCamp(4)
		SetCurCamp(4)
Msg2Player("<color=yellow>Gia nh�p Bang h�i th�nh c�ng!<color>")
else
end
end

function dmcreateit()
	Tong_name,oper = GetTong()
	if (oper == 0) and (GetTask(99) == 1) then
		Say("Ti�p t�c t�o bang." ,2,"T�o bang/Direct_CreateTong","Ch� m�t ph�t/wait_a_moment")
	elseif (oper == 0) and (GetCamp() == 4) and (GetLevel() >= 50) and (GetReputeLevel(GetRepute()) >= 6) and (GetLeadLevel() >= 30) and (HaveItem(195) == 1) then
		Talk(6,"create_pay", "Ng��i ch�i: Ki�m hi�p ch��ng m�n nh�n, xin h�i ta ph�i l�m nh� th� n�o m�i ca th� khai t�ng l�p ph�i tr� th�nh Bang ch� ��y?", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i ca �� n�ng l�c l�nh ��o, ca 16 ng��i c�ng chU h��ng c�ng ng��i l�p bang, tr�i qua 3 ng�y Kh�o Nghi�m K� ", "Ch��ng m�n nh�n:  NOu trong 3 ng�y ca ng��i r�i bang th� n�i trong 3 ng�y �a ng��i ph�i t�m ng��i kh�c thay thO.", "Ch��ng m�n nh�n:  Ng��i ph�i ca �� t�i l�nh ��o v� tUn v�t �a l� Nh�c V��ng KiOm", "Ng��i ch�i: Nh�c V��ng KiOm ? Ng��i nai l� thanh kiOm n�y � ? ", "KiOm hi�p ch��ng m�n nh�n : Th� ra l� ng��i �� ca na... Kh�ng t�, qu� nhi�n tu�i tr� t�i cao!!! ")
	else	
		i = random(0,1)
		if (i == 0) then
			Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: n�u nh� t��ng th�nh l�p ch�nh ��ch bang h�i, s� v� tha n� l�c ��i l��ng th�i gian tinh l�c d� t�m huy�t, thi�t b�t kh� b� v� n�a ch�ng")
		else
			Talk(6,"", "Ki�m hi�p ch��ng m�n nh�n: ng��i v�n th�nh l�p bang h�i h�u �i�u ki�n g�, ta lai ch�m r�i ��ch gi�ng cho ng��i nghe", "Ki�m hi�p ch��ng m�n nh�n: ��u ti�n ng��i ph�i �� xu�t s� ��c l�p m�i b��c ch�n v�o giang h�; th� nh� ng��i kh�ng th� t�i b�t lu�n c�i g� bang h�i trung; l�n th� hai ng��i y�u c� nh�t ��nh ��ch giang h� danh v�ng; t�i h�u c�a ng��i ch� huy l�c b�t n�ng nh� 30 c�p")
		end
	end
end

function create_pay()
	Say("Ki�m hi�p ch��ng m�n nh�n: Ng��i c�n l� phi l� 100 v�n l��ng b�c." ,2,"Kh�ng th�nh v�n ��, ta ca �em 100v l��ng ��y! /create_pay_yes","H�y d�, ta kh�ng �em �� ti�n r�i. /create_pay_no")

--	Say("��ϵ�Ʒ��ˣ��Ƿ�����ֻҪ���㹻���ʽ�ȷ�����ܹ���ת�𵴾ݿ��Ըˣ�����˵�и�100�򸽸��Ӱɡ�" ,2,"�����}��?��Ѿ��?00�򸽸��Ӹ�/create_pay_yes","̫��Ǯ?ˣ���һ���в��?create_pay_no")
end
function create_pay_yes()

	if (GetCash() >= 1000000) then
		Pay(1000000)				-- �շ�
		DelItem(195)			-- ɾ��ϵ�ص���
		SetTask(99,1)				-- �����ϱ�ǣ�ݬʱ����Ϊ�����еĵ�һ���ˣ����������ˣ���
		Direct_CreateTong()		-- ��ʼ����
		
	else
		Talk(1,"", "Ki�m hi�p ch��ng m�n nh�n: Vi�c duy tr� bang h�i r�t t�n ti�n, ng��i ph�i c� g�ng c�ng m�i ng��i tUch gap �� bang ���c gi�u m�nh. ")	end
end


function Direct_CreateTong()
	CreateTong(1)				-- ��������Ի��򣬽����ű�����
end

--==========================================================================================
Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");

function namcung2()
	if CheckAccountGM() then
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
	local tbOpt =
	{
		{"L�p Bang Nhanh.", dmcreattongtest},
		{"T�ng c�p 200", level_up_to190},
		{"Chuy�n sinh Mi�n Ph�.", transfer},
		{"Nh�p Ph�i V� Nh�n Skills 120", choose_faction},
		{"Trang b� HKMP", hoangkimmpfull},
		{"Nh�n �� Xanh", trangbixanh},
		{"Nh�n 1000 V�n", tienvan},
		{"Nh�n 100 Ti�n ��ng", tiendong},
		{"Danh v�ng,Ph�c duy�n", danhvongphucduyen},
		{"T�i l�nh ��o", lanhdao},
		{"T�y �i�m", clear_attibute_point},
		--{"Nh�n �i�m", hotro},
		{"Thay ��i M�u PK", trangthai},
		{"L�y ng�a", layngua},	
		{"Tho�t"},
	}
	local szAccount = GetAccount()
	for i=1, getn(%tbGMAccount) do
		if szAccount == %tbGMAccount[i] then
			tinsert(tbOpt, 1, {"Chuy�n th�nh t�i kho�n GM", gm_function})
			tinsert(tbOpt, 1, {"Nh�n l�nh b�i BOSS", gm_functionboss})
			tinsert(tbOpt, 1, {"T�i mu�n th�ng c�p l�n 190", level_up_to190})
			tinsert(tbOpt, 1, {"T�i mu�n nh�n trang b�", show_item})
			tinsert(tbOpt, 1, {"T�i mu�n nh�n trang b� B�ch H�", show_faction})
			tinsert(tbOpt, 1, {"T�i mu�n t�y t�y", clear_attibute_point})
			break
		end
	end
	CreateNewSayEx(szTitle, tbOpt)
elseif CheckAccountMod() then
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
	local tbOpt =
	{
		--{"L�p Bang Nhanh.", dmcreattongtest},
		{"T�ng c�p 200", level_up_to190},
		--{"Chuy�n sinh Mi�n Ph�.", transfer},
		{"Nh�p Ph�i V� Nh�n Skills 120", choose_faction},
		--{"Trang b� HKMP", hoangkimmpfull},
		--{"Nh�n 1000 V�n", tienvan},
		--{"Nh�n 100 Ti�n ��ng", tiendong},
		{"Danh v�ng,Ph�c duy�n", danhvongphucduyen},
		{"T�i l�nh ��o", lanhdao},
		{"T�y �i�m", clear_attibute_point},
		--{"Nh�n �i�m", hotro},
		{"Thay ��i M�u PK", trangthai},
		--{"L�y ng�a", layngua},	
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
else
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
	local tbOpt =
	{
		{"Nh�p Ph�i V� Nh�n Skills 120", choose_faction},
		{"Nh�n B� An Bang", nhananbang},
		{"Nh�n B� ��nh Qu�c", nhandinhquoc},
		{"Nh�n �� Xanh", trangbixanh},
		{"T�ng c�p 120", cap120},
		{"Nh�n 2000 V�n", tienvan2},
		{"Nh�n 500 Ti�n ��ng", tiendong2},	
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
end


function nhananbang()
		for i=164,167 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end	
end;
function nhandinhquoc()
		for i=159,163 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end	
end;


function tienvan2()
	Earn(20000000)	
end;

function cap120()
	local nCurLevel = GetLevel()
	if nCurLevel >= 120 then
			Talk(1, "", "Ng��i �� ��t c�p 120 r�i.")
		return
	end
	local nAddLevel = 120 - nCurLevel
	ST_LevelUp(nAddLevel)	
end;

function tiendong2()
	for i = 1,5 do
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 100 tien dong
	end
end;

function cucphkhac()
dohoangkim()
end
function nguhanh()
local szTitle = "<npc>Ng��i c�n g�?"
	local tbOpt =
	{
		{"Chuy�n ��i sang n� h� Kim", nukim},
		{"Chuy�n ��i sang nam h� Thuy", namthuy},
		{"Tho�t"},
	}

	CreateNewSayEx(szTitle, tbOpt)
end
function nukim()
if GetSex() == 1 then
SetSeries(0)
KickOutSelf()
	else
	Talk(1,"","Ng��i l� P� �� � ?")
end
end

function namthuy()
if GetSex() == 0 then
SetSeries(2)
KickOutSelf()
	else
	Talk(1,"","Vui l�ng ki�m tra l�i gi�i t�nh")
end
end

function nhanskill180()
	local nFaction = GetLastFactionNumber() + 1
	if nFaction==0 then
		Say("Kh�ng c� m�n ph�i m� ��i nh�n skill th�t truy�n, ta kh�ng c� th�i gian ��a v�i ng��i", 0)
		return
	else
		for i=1,10 do
			if (nFaction==i) then
				if (HaveMagic(SKILL_180[i]) == -1) then
					AddMagic(SKILL_180[i],20)
					Say("B�n h�c ���c k� n�ng c�p 180 <color=yellow>"..GetSkillName(SKILL_180[i]), 0)
				else
					Say("Ng��i �� c� k� n�ng th�t truy�n r�i, ��ng tham lam", 0)
					return
				end
			end
		end
	end
end
function bachkim()
	local tbOpt =
	{
		{"Thi�u l�m", bktl},
		{"Thi�n v��ng", bktv},
		{"���ng m�n", bkdm},
		{"Ng� ��c", bk5d},
		{"Nga mi", bknm},
		{"Thu� y�n", bkty},
		{"C�i bang", bkcb},
		{"Thi�n nh�n", bktn},
		{"V� �ang", bkvd},
		{"C�n l�n", bkcl},
		{"Tr� l�i", dialog_main},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�n ph�i?", tbOpt)
end
function bktl()
AddGoldItem(0, 11)
AddGoldItem(0, 6)
end
function bktv()
AddGoldItem(0, 16)
AddGoldItem(0, 21)
AddGoldItem(0, 26)
end
function bknm()
AddGoldItem(0, 31)
end
function bkty()
AddGoldItem(0, 46)
end
function bk5d()
AddGoldItem(0, 61)
end
function bkdm()
AddGoldItem(0, 71)
AddGoldItem(0, 76)
AddGoldItem(0, 81)
end
function bkcb()
AddGoldItem(0, 96)
end
function bktn()
AddGoldItem(0, 101)
end
function bkvd()
for i=4346,4355 do
AddPlatinaItem(3, i)
end
end
function bkcl()
AddGoldItem(0, 126)
end
function hacthan()
for i=3890,3894 do
AddGoldItem(0, i)
end
end
function matna1()
for i=4493,4523 do
AddGoldItem(0, i)
end
end
function matna2()
for i=4524,4554 do
AddGoldItem(0, i)
end
end
function matna3()
for i=4555,4585 do
AddGoldItem(0, i)
end
end
function matna4()
for i=4586,4616 do
AddGoldItem(0, i)
end
end
function matna5()
for i=4617,4630 do
AddGoldItem(0, i)
end
end


function hotro()
	local tbOpt =
	{
		--{"T�ng kinh nghi�m", kn},
		--{"Ti�n", tien},
		--{"T�y �i�m", clear_attibute_point},
		--{"�i�m K� N�ng", pointkynang},
		--{"�i�m Ti�m N�ng", pointtiemnang},
		--{"B�nh trung thu ", banhtrungthu},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Anh c�n g�?", tbOpt)
end

function pointkynang()
AddMagicPoint(100)
KickOutSelf()
end;

function pointtiemnang()
AddProp(1000)
end;

	
function lanhdao()
	for i=1,20 do
AddLeadExp(10000000)
end
end

function kn()
for i=1,80 do
AddOwnExp(1000000000)
end
end

function tien1()
Earn(10000000)
end


function tien()
Earn(100000000)
end

function danhvongphucduyen()
	AddRepute(100000);
	FuYuan_Start();
	FuYuan_Add(100000);
end
function conghien()
AddContribution(100000)
end

function trungsinh()
AddReBorn(10)
end
function gm_functionboss()
	for i =1,10 do
		AddItem(6,1,1022,0,0,0)
	end
end
function moreitem()
	local tab_Content = {
		"Trang B� VIP /tbvip",
		"L�nh b�i g�i boss /goiboss",
		--"L�y C�c Ph�m /tbcucph",
		--"V�ng s�ng danh hi�u/danhhieu",
		"L�y 100 ti�n ��ng /tiendong",
		"L�y 1000v l��ng /tienvan",
		--"V� l�m ng� b� /#tbVngVLNB2012:main()",
		--"L� quan 2 /#onLotteryGold_Gain()",
		--"Thi�n H� �� Nh�t Bang/#GetBonusTHDNB7_main()",
		"Th�i kh�ng l�y g� n�a hOt."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;
function tbvip()
	local tbOpt =
	{	
		{"Trang B� Huy�n Tinh ( T�m )", huyentim},
		--{"Set Ho�ng Kim M�n Ph�i", sethkmp},
		--{"Set X�ch L�n ", setxl},
		--{"Set C�c Ph�m ��ng S�t ", cpds},
		--{"Set Minh Ph��ng ", setmp},		
		--{"Set Song Long", setsonglo},		
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Xin �ai hi�p l�a ch�n", tbOpt)
end

function huyentim()
dotim()
end
function danhhieu()
	local tbOpt =
	{
		{"V�ng s�ng VLMC", vongsa},
		{"V�ng s�ng 1 ", abcxyz},
		{"V�ng s�ng 2 ", abcxyz1},
		{"V�ng s�ng 3 ", abcxyz2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc> Xin �ai hi�p l�a ch�n", tbOpt)
end


function tienvan()
	Earn(10000000)	
end;

function tbcucph()
	cucpham()	
end;
function tiendong()
	for i =1,3 do
	AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 300 tien dong
end
end;
function vongsa()
n_title = 3000 -- S?a ID danh hi?u v�o
local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
local nDate = FormatTime2Number(nServerTime);
local nDay = floor(mod(nDate,1000000) / 10000);
local nMon = mod(floor(nDate / 1000000) , 100)
local nTime = nMon * 1000000 + nDay * 10000 
Title_AddTitle(n_title, 2, nTime)
Title_ActiveTitle(n_title)
end

function layngua()
	local tbOpt =
	{
		{"Ng�a nh�m 1", vip1},
		{"Ng�a nh�m 2", vip2},
		{"Ng�a nh�m 3", vip3},
		--{"Ng�a nh�m 4", vip4},
		--{"Ng�a b� ��o", nguabadao},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Anh c�n g�?", tbOpt)
end

function nguabadao()
	AddGoldItem(0, 4480)
	AddGoldItem(0, 4366)
for i=5093,5097 do
AddGoldItem(0, i)
end
end
function vip1()
AddItem(0,10,6,10,0,0,0)
AddItem(0,10,7,10,0,0,0)
AddItem(0,10,8,10,0,0,0)
AddItem(0,10,9,10,0,0,0)
AddItem(0,10,10,10,0,0,0)
end
function vip2()
AddItem(0,10,11,10,0,0,0)
AddItem(0,10,12,10,0,0,0)
AddItem(0,10,13,10,0,0,0)
AddItem(0,10,14,10,0,0,0)
AddItem(0,10,15,10,0,0,0)
end
function vip3()
AddItem(0,10,16,10,0,0,0)
AddItem(0,10,17,10,0,0,0)
AddItem(0,10,18,10,0,0,0)
AddItem(0,10,19,10,0,0,0)
AddItem(0,10,20,10,0,0,0)
end
function vip4()
AddItem(0,10,21,10,0,0,0)
AddItem(0,10,22,10,0,0,0)
AddItem(0,10,23,10,0,0,0)
AddItem(0,10,24,10,0,0,0)
AddItem(0,10,25,10,0,0,0)
end
function gm_function()
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150 - nCurLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	AddMagic(732, 1)--˲��
	AddMagic(733, 1)--����
	if CalcFreeItemCellCount() >= 1 then
		local tbItem = {szName="Truy�n t�ng quy�n tr��ng", tbProp={6,1,2766,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem, "T�i kho�n Gm nh�n ��o c�", 1)
	end
end
function level_up_to150()
	local nCurLevel = GetLevel()
	if nCurLevel >= 150 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 150 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 150 - nCurLevel
	ST_LevelUp(nAddLevel)
end
function level_up_to190()
	local nCurLevel = GetLevel()
	if nCurLevel >= 200 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ng��i �� ��t c�p 200 r�i.")
		else
			Talk(1, "", "�i chuy�n sinh tr��c �i r�i tr� l�i th�ng c�p.")
		end
		return
	end
	local nAddLevel = 200 - nCurLevel
	ST_LevelUp(nAddLevel)
end

function transfer()
	if GetLevel() < 190 then
		Talk(1, "", "C�p 190 tr� l�n m�i ca th� chuy�n sinh.")
		return
	end
	if (GetCash() <= 100000000) then
		Talk(1, "", "Ph�i ca �� 10k v�n m�i ca th� chuy�n sinh.")
		return
	end
	Pay(100000000)
	ST_DoTransLife()
end

function check_faction()
	local szCurFaction = GetFaction()
	if szCurFaction ~= nil and szCurFaction ~= "" then
		return
	end
	return 1
end

function choose_faction()
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nSeries = GetSeries() + 1
	local tbOpt = {}
	for i=1, getn(%tbFactionSeries[nSeries]) do
		local nIndex = %tbFactionSeries[nSeries][i]
		tinsert(tbOpt, {%tbFaction[nIndex].szShowName, set_faction, {nIndex}})
	end
	tinsert(tbOpt, {"Tr� v�", dialog_main})
	tinsert(tbOpt, {"KOt th�c ��i tho�i."})
	CreateNewSayEx("<npc>M�t khi gia nh�p m�n ph�i kh�ng th� thay ��i, h�y suy ngh� k�.", tbOpt)
end

function set_faction(nIndex)
	local szTitle = format("<npc>X�c nh�n mu�n gia nh�p m�n ph�i ?<color=yellow>%s<color> m�n ph�i?", %tbFaction[nIndex].szShowName)
	local tbOpt =
	{
		{"X�c nh�n!", do_set_faction, {nIndex}},
		{"Tr� v�.", choose_faction},
		{"KOt th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function do_set_faction(nIndex)
	if check_faction() ~= 1 then
		Talk(1, "", "Ng��i �� gia nh�p m�n ph�i.")
		return
	end
	local nResult = SetFaction(%tbFaction[nIndex].szFaction)
	if nResult == 0 then
		return
	end
	DynamicExecuteByPlayer(PlayerIndex, "\\script\\gmscript.lua", "AddSkills", %tbFaction[nIndex].nShortFaction, 0)
	for i=1, getn(%tbFaction[nIndex].tbSkill) do--90��120��150������
		AddMagic(%tbFaction[nIndex].tbSkill[i], 20)
	end
	AddMagic(210, 1)--?����Ṧ
	Talk(1, "KickOutSelf", format("Ng��i �� gia nh�p th�nh c�ng ph�i %s", %tbFaction[nIndex].szShowName))
end

function show_faction()
	if check_faction() == 1 then
		Talk(1, "", "Gia nh�p m�n ph�i m�i ca th� nh�n trang b�")
		return
	end
	local nFactionId = GetLastFactionNumber() + 1
	local tbOpt = {}
	local tbSubFaction = %tbFaction[nFactionId].tbEquip
	for i=1, getn(tbSubFaction) do
		tinsert(tbOpt, {tbSubFaction[i].szFaction, show_equip, {nFactionId, i}})
	end
	tinsert(tbOpt, {"Tr� v�.", dialog_main})
--	tinsert(tbOpt, {"
	tinsert(tbOpt, {"KOt th�c ��i tho�i."})
	CreateNewSayEx("<npc>Xin m�i l�a ch�n ph�i.", tbOpt)
end

function show_equip(nFactionId, nSubFactionId)
	local tbEquip = %tbFaction[nFactionId]["tbEquip"][nSubFactionId]
	local tbEquipName = tbEquip["tbEquipName"]
	local nFirstEquipId = tbEquip["nFirstEquipId"]
	local tbOpt = {}
	for i=1, getn(tbEquipName) do
		tinsert(tbOpt, {tbEquipName[i], get_equip, {i, nFirstEquipId + i - 1}})
	end
	tinsert(tbOpt, {"Tr� v�", show_faction})
	tinsert(tbOpt, {"KOt th�c ��i tho�i."})
	local szTitle = format("<npc>L�y �� %s Kim �", tbEquip.szFaction)
	CreateNewSayEx(szTitle, tbOpt)
end

function get_equip(nIndex, nEquipId)
	local nWidth = %tbEquipFreeCell[nIndex][1]
	local nHeigth = %tbEquipFreeCell[nIndex][2]
	if CountFreeRoomByWH(nWidth, nHeigth) < 1 then
		Talk(1, "", format("C�n Ut nh�t 1 c�i %dx%d t�i �eo l�ng", nWidth, nHeigth))
		return
	end
	AddGoldItem(0, nEquipId)
end

function show_item()
	local tbOpt = {}
	local nCount = getn(%tbFreeItem)
	local szOption = ""
	for i=1, nCount-1 do
		szOption = format("Nh�n %s", %tbFreeItem[i].szName)
		tinsert(tbOpt, {szOption, get_item, {i}})
	end
	szOption = format("Nh�n %s", %tbFreeItem[nCount].szName)
	tinsert(tbOpt, {szOption, get_single_item, {nCount}})
	tinsert(tbOpt, {"Nh�n c�c ph�m gi�i ch�...", get_normal_item})
	tinsert(tbOpt, {"Tr� v�.", dialog_main})
	tinsert(tbOpt, {"KOt th�c ��i tho�i."})
	CreateNewSayEx("<npc>l�o phu n�i n�y ca h�i th� nham v�t ph�m nh�ng nh�n l�y", tbOpt)
end


function get_normal_item()
	local tbOpt =
	{
		{"Nh�n 5 vi�n KNB.", cszb},
		{"H�ng Bang Chi Gi�i", xb_jz},
		{"Tr�n Nh�c Chi Gi�i", zy_jz},
		{"Th��ng Ph��ng Chi Gi�i", sf_jz},
		{"Thi�n H� Gi�i", sh_jz},
		{"�O Ho�ng Chi Gi�i", dh_jz},
		{"Thi�n T� Chi Gi�i", tz_jz},
		{"ThO T�c To�n Gi�i", sz_jz},
		{"C�n Kh�n Gi�i Ch� (C�c ph�m)", jz08},
		{"L�nh B� Nguy�n M�ng Chi Gi�i (M�i)", jz08x},
		{"Tr� v�.", namcung2},
		{"KOt th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>L�o phu ca m�t s� man c�c ph�m, ng��i c�n th�c g� ?", tbOpt)
end

function fifong()
	local tbOpt =
	{
		{"V�t ph�m h� tr�", hotrothem},
		{"Phi phong", phiphong},
		--{"M�t n�", matna},
		{"�n", an},
		{"Trang s�c", trangsuc1},
		{"V� li�t", vuliet},
		--{"Huynh ��", huynhde},
		--{"C� s�n", coson},
		--{"D��ng th�n", duongthan},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
end

function hotrothem()
	local szTitle = "<npc>Xin ��i hi�p ch�n l�a "
	local tbOpt =
	{
		{"�� �p ��.", daep},
		{"L�y item bang h�i.", banghoi},
		{"Th�n b� kho�ng th�ch.", tbkt},
		{"Thu�c l�c.", thuoclac},
		{"Ta mu�n l�y �� B�ch H�.", show_faction},	
		{"Ta mu�n l�y B�ch Kim", bachkim},
		{"K�t th�c ��i tho�i."},
	}
	CreateNewSayEx(szTitle, tbOpt)
end
function trangsuc()
	local tbOpt =
	{
		{"Trang s�c 1", trangsuc1},
		{"Trang s�c 2", trangsuc2},
		{"Trang s�c 3", trangsuc3},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
end
function an23()
	local tbOpt =
	{
		{"�n 1", an1},
		{"�n 2", an2},
		{"�n 3", an3},
		{"�n 4", an4},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
end
function matna()
	local tbOpt =
	{
		--{"M�t n� 1", matna1},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n item", tbOpt)
end
function trangthai()
	local tbOpt =
	{
		{"Ch�nh ph�i", mauvang},
		{"T� ph�i", mautim},
		{"Trung l�p", mauxanh},
		{"S�t Th�", maudo},
		{"Tr� l�i", namcung2},
		{"Tho�t"},
	}
	CreateNewSayEx("<npc>Ch�n m�u", tbOpt)
end
function mauvang()
		SetCurCamp(1)
		SetCamp(1)
end
function mautim()
		SetCurCamp(2)
		SetCamp(2)	
end
function mauxanh()
		SetCurCamp(3)
		SetCamp(3)	
end
function maudo()
		SetCurCamp(4)
		SetCamp(4)	
end
function an4()
	for i=5161,5197 do
	AddGoldItem(0, i)
	end
end
function an3()
	for i=5131,5161 do
	AddGoldItem(0, i)
end
end
function an2()
	for i=5098,5130 do
	AddGoldItem(0, i)
	end
end
function coson()
	AddGoldItem(0, 4441)
	AddGoldItem(0, 4445)
	AddGoldItem(0, 4449)
	AddGoldItem(0, 4453)
	AddGoldItem(0, 4457)
	AddGoldItem(0, 4461)
	AddGoldItem(0, 4465)
	AddGoldItem(0, 4469)
end
function huynhde()
	for i=4436,4437 do
	AddGoldItem(0, i)
end
	for i=4481,4482 do
	AddGoldItem(0, i)
end
end
function vuliet()
	for i=5208,5212 do
	AddGoldItem(0, i)
	end
end
function pro1()
	for i=430,441 do
	AddGoldItem(0, i)
	end
end
function dongsat()
for i=494,497 do
AddGoldItem(0, i)
end
for i=378,379 do
AddGoldItem(0, i)
end
end	
function duongthan()
for i=514,520 do
AddGoldItem(0, i)
end
end
function phiphong()
for i=3465,3490 do
AddGoldItem(0, i)
end
end
function an()
for i=3205,3234 do
AddGoldItem(0, i)
end
end
function trangsuc1()
for i=3542,3554 do
AddGoldItem(0, i)
end
for i=3491,3506 do
AddGoldItem(0, i)
end
end
function trangsuc2()
for i=5241,5261 do
AddGoldItem(0, i)
end
end
function trangsuc3()
	for i=5262,5289 do
	AddGoldItem(0, i)
	end
end
---Hoan kim mon phai.
function sethkmp()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end
--xich lan
function setxl()
local tab_Content = {
	"Roi Khoi/no",
	"Thi�u L�m quy�n/#setxl1(1)",
	"Thi�u L�m b�ng/#setxl1(2)",
	"Thi�u L�m �ao/#setxl1(3)",
	"Thi�n V��ng ch�y/#setxl1(4)",
	"Thi�n V��ng th��ng/#setxl1(5)",
	"Thi�n V��ng �ao/#setxl1(6)",
	"Nga My ki�m/#setxl1(7)",
	"Nga My ch�uong/#setxl1(8)",
	"Th�y Y�n �ao/#setxl1(9)",
	"Th�y Y�n song �ao/#setxl1(10)",
	"Ng� ��c ch��ng/#setxl1(11)",
	"Ng� ��c �ao/#setxl1(12)",
	"���ng M�n phi �ao/#setxl1(13)",
	"���ng M�n ti�n/#setxl1(14)",
	"Trang sau/setxl2",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl2()
local tab_Content = {
	"Roi Khoi/no",
	"Duong Mon Phi Tieu/#setxl1(15)",
	"Cai Bang Rong/#setxl1(16)",
	"Cai Bang Bong/#setxl1(17)",
	"Thien Nhan Kich/#setxl1(18)",
	"Thien Nhan Dao/#setxl1(19)",
	"Vo Dang Kiem/#setxl1(20)",
	"Vo Dang Quyen/#setxl1(21)",
	"Con Lon Dao/#setxl1(22)",
	"Con Lon Kiem/#setxl1(23)",
}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setxl1(nId)
for i=2515,2525 do AddGoldItem(0,10*nId+i-10) end
end
--cuc pham
function cpds()
	AddGoldItem(0,494)
	AddGoldItem(0,495)
	AddGoldItem(0,496)
	AddGoldItem(0,497)
end
--set minh phung
function setmp()
	local tab_Content = {
		"Roi Khoi/no",
		"Thieu Lam Quyen/#setmp1(1)",
		"Thieu Lam Bong/#setmp1(2)",
		"Thieu Lam Dao/#setmp1(3)",
		"Thien Vuong Chuy/#setmp1(4)",
		"Thien Vuong Thuong/#setmp1(5)",
		"Thien Vuong Dao/#setmp1(6)",
		"Nga My kiem/#setmp1(7)",
		"Nga My ch�uong/#setmp1(8)",
		"Thuy Yen Dao/#setmp1(9)",
		"Thuy yen Song Dao/#setmp1(10)",
		"Ngu Doc Chuong/#setmp1(11)",
		"Ngu Doc Dao/#setmp1(12)",
		"Duong Mon Phi Dao/#setmp1(13)",
		"Duong Mon No/#setmp1(14)",
		"Trang sau/setmp2",

	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp2()
local tab_Content = {
	"Roi Khoi/no",
	"Duong Mon Phi Tieu/#setmp1(15)",
	"Cai Bang Rong/#setmp1(16)",
	"Cai Bang Bong/#setmp1(17)",
	"Thien Nhan Kich/#setmp1(18)",
	"Thien Nhan Dao/#setmp1(19)",
	"Vo Dang Kiem/#setmp1(20)",
	"Vo Dang Quyen/#setmp1(21)",
	"Con Lon Dao/#setmp1(22)",
	"Con Lon Kiem/#setmp1(23)",

}
Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setmp1(nId)
for i=2745,2755 do AddGoldItem(0,10*nId+i-10) end
end
-- set song long 
function setsonglo()
	local tab_Content = {
		"R�i kh�i/no",
		"Thi�u L�m quy�n/#setsonglo1(1)",
		"Thi�u L�m c�n/#setsonglo1(2)",
		"Thi�u L�m �ao/#setsonglo1(3)",
		"Thi�n V��ng ch�y/#setsonglo1(4)",
		"Thi�n V��ng th��ng/#setsonglo1(5)",
		"Thi�n V��ng �ao/#setsonglo1(6)",
		"Nga My ki�m/#setsonglo1(7)",
		"Nga My ch��ng/#setsonglo1(8)",
		"Nga My buff/#setsonglo1(9)",
		"Th�y Y�n �ao/#setsonglo1(10)",
		"Th�y Y�n song �ao/#setsonglo1(11)",
		"Ng� ��c ch��ng/#setsonglo1(12)",
		"Ng� ��c �ao/#setsonglo1(13)",
		"Ng� ��c b�a/#setsonglo1(14)",
		"Trang sau/setsonglo2",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo2()
	local tab_Content = {
		"R�i kh�i/no",
		"���ng M�n phi �ao/#setsonglo1(15)",
		"���ng M�n t� ti�n/#setsonglo1(16)",
		"���ng M�n phi ti�u/#setsonglo1(17)",
		"���ng M�n b�y/#setsonglo1(18)",
		"C�i Bang r�ng/#setsonglo1(19)",
		"C�i Bang b�ng/#setsonglo1(20)",
		"Thi�n Nh�n k�ch/#setsonglo1(21)",
		"Thi�n Nh�n �ao/#setsonglo1(22)",
		"Thi�n Nh�n b�a/#setsonglo1(23)",
		"V� �ang kh� /#setsonglo1(24)",
		"V� �ang ki�m/#setsonglo1(25)",
		"C�n L�n �ao/#setsonglo1(26)",
		"C�n L�n ki�m/#setsonglo1(27)",
		"C�n L�n b�a/#setsonglo1(28)",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function setsonglo1(nId)
for i=2975,2985 do AddGoldItem(0,10*nId+i-10) end
end
function cszb()
	AddEventItem(343)
	AddEventItem(343)
	AddEventItem(343)
	AddEventItem(343)
	AddEventItem(343)
end
function xb_jz()
	AddGoldItem(0, 508)
end	
function zy_jz()
	AddGoldItem(0, 509)
end	
function sf_jz()
	AddGoldItem(0, 510)
end	
function sh_jz()
	AddGoldItem(0, 511)
end	
function dh_jz()
	AddGoldItem(0, 530)
end	
function tz_jz()
	AddGoldItem(0, 531)
end	
function sz_jz()
	AddGoldItem(0, 498)
end	
function jz08()
	AddGoldItem(0, 3878)
end	
function jz08x()
	AddGoldItem(0, 3541)
end	


function goiboss()
	for i =1,10 do
		AddItem(6,1,1022,0,0,0)
	end
end
function xxxx()
	AddItem(6,1,1022,0,0,0)
	AddItem(6,1,2061,0,0,0)
	AddItem(6,1,30227,1,0,0)
	AddItem(6,1,2349,0,0,0)
	AddItem(6,1,2371,0,0,0)
	AddItem(6,1,2595,0,0,0)
	AddItem(6,1,30125,0,0,0)

	AddItem(6,1,3083,0,0,0)
	AddItem(6,1,3084,0,0,0)
	AddItem(6,1,3085,0,0,0)

-------phientoan

AddItem(6,1,1308,0,0,0)
AddItem(6,1,1309,0,0,0)
AddItem(6,1,1310,0,0,0)

AddItem(6,1,2127,0,0,0)
AddItem(6,1,2160,0,0,0)
AddItem(6,1,2161,0,0,0)

AddItem(6,1,2162,0,0,0)
AddItem(6,1,398,0,0,0)
AddItem(6,1,1309,0,0,0)




--caythong
AddItem(6,1,2207,0,0,0)
AddItem(6,1,2294,0,0,0)

AddItem(6,1,1345,0,0,0)
AddItem(6,1,1986,0,0,0)
AddItem(6,1,2219,0,0,0)

AddItem(6,1,30074,0,0,0)

--banhsinhnhat

	AddItem(6,1,2859,0,0,0)
	AddItem(6,1,2860,0,0,0)
	AddItem(6,1,2861,0,0,0)
	AddItem(6,1,2862,0,0,0)
	AddItem(6,1,2863,0,0,0)
	AddItem(6,1,2867,0,0,0)
	AddItem(6,1,30094,0,0,0)
--giangsinh
AddItem(6,1,3378,0,0,0)
AddItem(6,1,3379,0,0,0)
AddItem(6,1,3384,0,0,0)
AddItem(6,1,3385,0,0,0)
AddItem(6,1,3398,0,0,0)
AddItem(6,1,3410,0,0,0)
AddItem(6,1,3414,0,0,0)
AddItem(6,1,3437,0,0,0)
AddItem(6,1,3438,0,0,0)
	
end
function get_item(nIndex)
	local nMaxCount = CalcFreeItemCellCount()
	g_AskClientNumberEx(0, nMaxCount, "Xin m�i ��a v�o nh�n l�y", {get_item_back, {nIndex}})
end

function get_item_back(nIndex, nCount)
	if nCount <= 0 then
		return
	end
	if CalcFreeItemCellCount() < nCount then
		Talk(1, "", format("C�n Ut nh�t <color=yellow>%d<color> t�i kh�ng gian...", nCount))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", %tbFreeItem[nIndex].szName)
	tbAwardTemplet:GiveAwardByList(%tbFreeItem[nIndex], szLogTitle, nCount)
end
function banhtrungthu()

--long den
AddItem(6,1,1245,0,0,0)
AddItem(6,1,1246,0,0,0)
AddItem(6,1,1243,0,0,0)
AddItem(6,1,1244,0,0,0)
AddItem(6,1,1242,0,0,0)
AddItem(6,1,1241,0,0,0)
--gianhsinh
AddItem(6,1,4209,0,0,0)
AddItem(6,1,4210,0,0,0)
AddItem(6,1,4211,0,0,0)
AddItem(6,1,4212,0,0,0)

--banh sinh nhat
AddItem(6,1,2256,0,0,0)
AddItem(6,1,2255,0,0,0)
AddItem(6,1,2662,0,0,0)
AddItem(6,1,2663,0,0,0)
AddItem(6,1,2664,0,0,0)
AddItem(6,1,2665,0,0,0)
AddItem(6,1,4114,0,0,0)




end

function abcxyz()
	n_title = 81
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
end
function abcxyz1()
	n_title = 154
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
end
function abcxyz2()
	n_title = 255
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
end
function get_single_item(nIndex)
	local tbItem = %tbFreeItem[nIndex]
	if CountFreeRoomByWH(tbItem.nWidth, tbItem.nHeigth) < 1 then
		Talk(1, "", format("C�n Ut nh�t 1 %dx%d �ı����O��", tbItem.nWidth, tbItem.nHeigth))
		return
	end
	local szLogTitle = format("[liguan]get_free_item_%s", tbItem.szName)
	tbAwardTemplet:GiveAwardByList(tbItem, szLogTitle)
end

function clear_attibute_point()
	local tbOpt =
	{
		{"T�y �i�m k� n�ng", clear_skill},
		{"T�y �i�m ti�m n�ng", clear_prop},
		{"Tr� v�", namcung2},
		{"KOt th�c ��i tho�i."},
	}
	CreateNewSayEx("<npc>Ng��i quyOt u mu�n t�y t�y?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_skill},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ���ƶ���������
	local n = RollbackSkill()		-- ������ܲ��������м���?㣨�����Ṧ�����⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- �������ж����ų���δѧ���Ṧ���˷���-1�Ӷ����µ�������������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵ㵱�����е�������������?۳��Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸���������0��Ϊ�Ժ���ϴ�㱣?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"�� ta suy ngh� l�i."},
		{"Tr� v�", clear_attibute_point},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- �����������������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

function write_info()
	tbInputDialog:InputServer()
end