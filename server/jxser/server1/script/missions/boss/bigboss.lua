Include("\\script\\lib\\objbuffer_head.lua")
Include("\\script\\lib\\sharedata.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
--Fix bug missing lib - modified by DinhHQ - 20110425
Include("\\script\\lib\\droptemplet.lua")
IncludeLib("LEAGUE")

BigBoss = {}

BigBoss.TSK_PLAYER_BOSSKILLED = 2598; -- ��һ�ɱBOSS����ͳ��
BigBoss.TSK_BIGBOSS_REWARD = 2661; -- ��¼��ҵ����Ƿ��콱���콱���� ���� | ��ô��ط��� | ����ν𷭱� |��þ��鷭������ | �Ƿ��콱
BigBoss.CAN_GET_REWARD_BIT = 1;
BigBoss.EXP_REWARD_BIT = 2;
BigBoss.SONGJIN_REWARD_BIT = 3;
BigBoss.CHUANGGUAN_REWARD_BIT = 4;

BigBoss.tbKillRecord = {};
BigBoss.IsBigBossDead = 0;
BigBoss.CallBackParam = {}

BigBoss.tbGlobalReward = 
{
	{szName="H�m nay tr�n T�ng Kim 21:00, �i�m t�ch l�y s� ���c nh�n ��i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.SONGJIN_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","H�m nay tr�n T�ng Kim 21:00, �i�m t�ch l�y s� ���c nh�n ��i"))end},
	{szName="H�m nay v��t �i ��t 21:00, �i�m kinh nghi�m s� ���c nh�n ��i", nRate=25, pFun=function() PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CHUANGGUAN_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","H�m nay v��t �i ��t 21:00, �i�m kinh nghi�m s� ���c nh�n ��i"))end},
	{szName="Nh�n ��i kinh nghi�m khi ��nh qu�i trong 1 gi�", nRate=25, pFun=function() AddSkillState(967, 1, 1, 64800); PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.EXP_REWARD_BIT, 1); Msg2Player(format("��i hi�p nh�n ���c ph�n th��ng <color=yellow>%s<color>","Nh�n ��i kinh nghi�m khi ��nh qu�i trong 1 gi�"))end},
	{nExp = 10000000, nRate=25},
}

BigBoss.tbKillerReward = 
{
	{tbProp = {6,1,2127,1,0,0}, nCount=1, nExpiredTime=43200},
	{tbProp = {4,239,1,1,0,0}, nCount=10},
	{tbProp = {4,238,1,1,0,0}, nCount=10},
	{tbProp = {4,240,1,1,0,0}, nCount=10},
	{tbProp = {4,353,1,1,0,0}, nCount=20},
	{tbProp = {0,11,450,1,0,0}, nCount=1, nExpiredTime=10080},
	{tbProp = {6,1,907,1,0,0}, nCount=8, nExpiredTime=10080},
	{tbProp = {6,1,1075,1,0,0}, nCount=8},
	{tbProp = {6,1,2126,1,0,0}, nCount=1, nExpiredTime=10080},
}

BigBoss.tbNormalDrop = 
{
	{tbProp={6,1,2566,1,0,0}, nCount=200 },
	-- {tbProp = {6,1,1075,1,0,0}, nCount=3},
	-- {tbProp = {4,239,1,1,0,0}, nCount=20},
	-- {tbProp = {4,238,1,1,0,0}, nCount=20},
	-- {tbProp = {4,240,1,1,0,0}, nCount=20},
	-- {tbProp = {4,353,1,1,0,0}, nCount=20},
	-- {tbProp = {6,1,1672,1,0,0}, nCount=10},
	-- {tbProp = {0,11,450,1,0,0}, nCount=1, nExpiredTime=10080},
	-- {tbProp = {6,1,2115,1,0,0}, nCount=10},
	-- {tbProp = {6,1,2117,1,0,0}, nCount=10},
	-- {tbProp = {6,0,6,1,0,0}, nCount=20},
	-- {tbProp = {6,0,3,1,0,0}, nCount=20},
	-- {tbProp = {6,1,71,1,0,0}, nCount=20},
	-- {tbProp = {6,1,1765,1,0,0}, nCount=10},
	-- {tbProp = {6,1,26,1,0,0}, nCount=10},
	-- {tbProp = {6,1,22,1,0,0}, nCount=10},
}

--DC ph�n th��ng boss ��c C� - Modified By DinhHQ - 20111010
BigBoss.tbVngNewDropItem = {
	[1] = {
		[1]={{szName="�� Ph� T� M�ng Kh�i",tbProp={6,1,2714,1,0,0},nCount=1,nRate=13},},
		[2]={{szName="�� Ph� T� M�ng Y",tbProp={6,1,2715,1,0,0},nCount=1,nRate=13},},
		[3]={{szName="�� Ph� T� M�ng Y�u ��i",tbProp={6,1,2717,1,0,0},nCount=1,nRate=13},},
		[4]={{szName="�� Ph� T� M�ng H� Uy�n",tbProp={6,1,2718,1,0,0},nCount=1,nRate=13},},
		[5]={{szName="�� Ph� T� M�ng H�ng Li�n",tbProp={6,1,2719,1,0,0},nCount=1,nRate=13},},
		[6]={{szName="�� Ph� T� M�ng B�i",tbProp={6,1,2720,1,0,0},nCount=1,nRate=13},},
		[7]={{szName="�� Ph� T� M�ng H�i",tbProp={6,1,2716,1,0,0},nCount=1,nRate=13},},
		[8]={{szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1,nRate=8},},
		[9]={{szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1,nRate=8},},
		[10]={{szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1,nRate=8},},
		[11]={{szName="T� M�ng L�nh",tbProp={6,1,4871,1,0,0},nCount=1,nRate=10},},
		[12]={{szName="Ch�a Kh�a Nh� �",tbProp={6,1,2744,1,0,0},nCount=1,nRate=30},},
		[13]={{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=60},},
		[14]={{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=60},},
		[15]={{szName="Thanh C�u L�nh",tbProp={6,1,4867,1,0,0},nCount=1,nRate=15},},
		[16]={{szName="V�n L�c L�nh",tbProp={6,1,4868,1,0,0},nCount=1,nRate=20},},
		[17]={{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=80},},
		[18]={{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=80},},
		[19]={{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=80},},
		[20]={{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=80},},
		[21]={{szName="Thi�t La H�n",tbProp={6,1,23,1,0,0},nCount=2,nRate=80},},
		[22]={{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=30},},
		[23]={{szName="H�n Nguy�n Linh L�",tbProp={6,1,2312,1,0,0},nCount=1,nRate=25},},
		[24]={{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,3209},nCount=1,nRate=20,nQuality = 1,nExpiredTime=20160,},},
		[25]={{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,3219},nCount=1,nRate=20,nQuality = 1,nExpiredTime=20160,},},
	},
	[2] = {
		{szName="�� Ph� T� M�ng Kh�i",tbProp={6,1,2714,1,0,0},nCount=1,nRate=12},
		{szName="�� Ph� T� M�ng Y",tbProp={6,1,2715,1,0,0},nCount=1,nRate=13},
		{szName="�� Ph� T� M�ng Y�u ��i",tbProp={6,1,2717,1,0,0},nCount=1,nRate=14},
		{szName="�� Ph� T� M�ng H� Uy�n",tbProp={6,1,2718,1,0,0},nCount=1,nRate=12},		
		{szName="�� Ph� T� M�ng B�i",tbProp={6,1,2720,1,0,0},nCount=1,nRate=12},		
		{szName="�� Ph� T� M�ng H�i",tbProp={6,1,2716,1,0,0},nCount=1,nRate=13},
		{szName="�� Ph� T� M�ng H�ng Li�n",tbProp={6,1,2719,1,0,0},nCount=1,nRate=11},
		{szName="�� Ph� T� M�ng Th��ng Gi�i Ch�",tbProp={6,1,2721,1,0,0},nCount=1,nRate=5},
		{szName="�� Ph� T� M�ng H� Gi�i Ch�",tbProp={6,1,2722,1,0,0},nCount=1,nRate=5},
		{szName="�� Ph� T� M�ng Kh� Gi�i",tbProp={6,1,2723,1,0,0},nCount=1,nRate=3},
	},	
	[3] = {
		{szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0},nCount = 30, nExpiredTime = 7 * 24 * 60},
	},
}

BigBoss.tbVngNewDropEquip = 
{
	{szName="T� M�ng V� T��ng Ch�u Li�n",tbProp={0,1825},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng T� Kh�ng Ph�t Ch�u",tbProp={0,1835},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Thanh T�nh H�ng Li�n",tbProp={0,1845},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng S�ng Minh Li�n",tbProp={0,1855},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng ��nh H�i H�ng Li�n",tbProp={0,1865},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Tuy�n Uy H�ng Li�n",tbProp={0,1875},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Xu�t Tr�n Ch�u Li�n",tbProp={0,1885},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng M�c Tuy�t Ch�u Li�n",tbProp={0,1895},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Thanh S��ng Ch�u Li�n",tbProp={0,1905},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Th� H��ng Ch�u Li�n",tbProp={0,1915},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Th�c C�t H�ng Li�n",tbProp={0,1925},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Xuy�n T�m H�ng Li�n",tbProp={0,1935},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Lang Nha H�ng Li�n",tbProp={0,1945},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Thanh V� H�ng Li�n",tbProp={0,1955},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Phong S��ng H�ng Li�n",tbProp={0,1965},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng M�t V�n H�ng Li�n",tbProp={0,1975},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng H�a V�n H�ng Li�n",tbProp={0,1985},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Dung Kim H�ng Khuy�n",tbProp={0,1995},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Li�u Nguy�n H�ng Li�n",tbProp={0,2005},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Ch�n Vi�n Ph�",tbProp={0,2015},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Ch�n V� Ph�",tbProp={0,2025},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng �o�n Th�y H�ng Li�n",tbProp={0,2035},nCount=1,nRate=0.1,nQuality = 1,},
	{szName="T� M�ng Tr�ch Tinh Ph�",tbProp={0,2045},nCount=1,nRate=0.09,nQuality = 1,},
	{szName="T� M�ng V� T��ng Th��ng Gi�i",tbProp={0,1827},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng T� Kh�ng Th��ng Gi�i",tbProp={0,1837},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh T�nh Th��ng Gi�i",tbProp={0,1847},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng S�ng Minh Th��ng Gi�i",tbProp={0,1857},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng ��nh H�i Th��ng Gi�i",tbProp={0,1867},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Tuy�n Uy Th��ng Gi�i",tbProp={0,1877},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Xu�t Tr�n Th��ng Gi�i",tbProp={0,1887},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng M�c Tuy�t Th��ng Gi�i",tbProp={0,1897},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh S��ng Th��ng Gi�i",tbProp={0,1907},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Th� H��ng Th��ng Gi�i",tbProp={0,1917},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Th�c C�t Th��ng Gi�i",tbProp={0,1927},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Xuy�n T�m Th��ng Gi�i",tbProp={0,1937},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Lang Nha Th��ng Gi�i",tbProp={0,1947},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh V� Th��ng Gi�i",tbProp={0,1957},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Phong S��ng Th��ng Gi�i",tbProp={0,1967},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng M�t V�n Th��ng Gi�i",tbProp={0,1977},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng H�a V�n Th��ng Gi�i",tbProp={0,1987},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Dung Kim Th��ng Gi�i",tbProp={0,1997},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Li�u Nguy�n Th��ng Gi�i",tbProp={0,2007},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Ch�n Vi�n Th��ng Gi�i",tbProp={0,2017},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Ch�n V� Th��ng Gi�i",tbProp={0,2027},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng �o�n Th�y Th��ng Gi�i",tbProp={0,2037},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Tr�ch Tinh Th��ng Gi�i",tbProp={0,2047},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng V� T��ng H� Gi�i",tbProp={0,1834},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng T� Kh�ng H� Gi�i",tbProp={0,1844},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh T�nh H� Gi�i",tbProp={0,1854},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng S�ng Minh H� Gi�i",tbProp={0,1864},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng ��nh H�i H� Gi�i",tbProp={0,1874},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Tuy�n Uy H� Gi�i",tbProp={0,1884},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Xu�t Tr�n H� Gi�i",tbProp={0,1894},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng M�c Tuy�t H� Gi�i",tbProp={0,1904},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh S��ng H� Gi�i",tbProp={0,1914},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Th� H��ng H� Gi�i",tbProp={0,1924},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Th�c C�t H� Gi�i",tbProp={0,1934},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Xuy�n T�m H� Gi�i",tbProp={0,1944},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Lang Nha H� Gi�i",tbProp={0,1954},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Thanh V� H� Gi�i",tbProp={0,1964},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Phong S��ng H� Gi�i",tbProp={0,1974},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng M�t V�n H� Gi�i",tbProp={0,1984},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng H�a V�n H� Gi�i",tbProp={0,1994},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Dung Kim H� Gi�i",tbProp={0,2004},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Li�u Nguy�n H� Gi�i",tbProp={0,2014},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Ch�n Vi�n H� Gi�i",tbProp={0,2024},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Ch�n V� H� Gi�i",tbProp={0,2034},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng �o�n Th�y H� Gi�i",tbProp={0,2044},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng Tr�ch Tinh H� Gi�i",tbProp={0,2054},nCount=1,nRate=0.075,nQuality = 1,},
	{szName="T� M�ng V� T��ng Tri�n Th�",tbProp={0,1831},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng T� Kh�ng T�ng C�n",tbProp={0,1841},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Thanh T�nh Gi�i �ao",tbProp={0,1851},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng S�ng Minh Ch�y",tbProp={0,1861},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng ��nh H�i Th��ng",tbProp={0,1871},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Tuy�n Uy B�o �ao",tbProp={0,1881},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Xu�t Tr�n Ki�m",tbProp={0,1891},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng M�c Tuy�t Tri�n Th�",tbProp={0,1901},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Thanh S��ng �ao",tbProp={0,1911},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Th� H��ng Uy�n ��ng �ao",tbProp={0,1921},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Th�c C�t Tri�n Th�",tbProp={0,1931},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Xuy�n T�m �ao",tbProp={0,1941},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Lang Nha Phi �ao",tbProp={0,1951},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Thanh V� T� Ti�n",tbProp={0,1961},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Phong S��ng Ti�u",tbProp={0,1971},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng M�t V�n Tri�n Th�",tbProp={0,1981},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng H�a V�n Tr��ng",tbProp={0,1991},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Dung Kim Th��ng",tbProp={0,2001},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Li�u Nguy�n �ao",tbProp={0,2011},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Ch�n Vi�n Ki�m",tbProp={0,2021},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Ch�n V� Ki�m",tbProp={0,2031},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng �o�n Th�y �ao",tbProp={0,2041},nCount=1,nRate=0.05,nQuality = 1,},
	{szName="T� M�ng Tr�ch Tinh Ki�m",tbProp={0,2051},nCount=1,nRate=0.05,nQuality = 1,},
}	


function AddKillRecord_CallBack(Param, ResultHandle)
	szName = BigBoss.CallBackParam[Param][1];
	nSecondes = BigBoss.CallBackParam[Param][2];
	BigBoss.CallBackParam[Param] = nil;
	if (OB_IsEmpty(ResultHandle) == 0) then
		BigBoss.tbKillRecord = ObjBuffer:PopObject(ResultHandle);
	end
	
	local nIdx = 0;
	
	local nIdx = 0;
	for i=1,getn(BigBoss.tbKillRecord) do
		if (BigBoss.tbKillRecord[i][2] > nSecondes) then
			nIdx = i;
			break;
		end
	end
	
	if (nIdx == 0) then
		nIdx = getn(BigBoss.tbKillRecord) + 1;
	end
	
	tinsert(BigBoss.tbKillRecord, nIdx, {szName, nSecondes});
	
	local nCount = 0;
	
	-- ������óɼ�
	for i=1,getn(BigBoss.tbKillRecord) do
		if (BigBoss.tbKillRecord[i] and BigBoss.tbKillRecord[i][1] == szName) then
			nCount = nCount + 1;
			if (nCount > 1) then
				tremove(BigBoss.tbKillRecord, nIdx);
			end
		end
	end
	
	SaveShareData("FUNC_BIGBOSS_LADDER", 0, 0, BigBoss.tbKillRecord);
end

function BigBoss:AddKillRecord(szName, nSecondes)
	self.CallBackParam[getn(self.CallBackParam)+1] = {szName, nSecondes};
	
	LoadShareData("FUNC_BIGBOSS_LADDER", 0, 0, "AddKillRecord_CallBack", getn(self.CallBackParam));
end

function BigBoss:GetKillRecord(szCallBack, nParam)
	nParam = nParam or 0;
	LoadShareData("FUNC_BIGBOSS_LADDER", 0, 0, szCallBack, nParam);
end

function BigBoss:BigBossGlobalReward()
	self.CallBackParam[getn(self.CallBackParam) + 1] = PlayerIndex;
	RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "IsBigBossDead", 0, "BigBossGlobalReward_CallBack", getn(self.CallBackParam));
end

function BigBossGlobalReward_CallBack(Param, ResultHandle)
	local Index = BigBoss.CallBackParam[Param]
	if (Index and Index > 0) then
		local OldPlayerIndex = PlayerIndex
		PlayerIndex = Index
		if (OB_IsEmpty(ResultHandle) == 0) then
			IsBigBossDead = ObjBuffer:PopObject(ResultHandle);
			if (IsBigBossDead == 1) then
				PlayerFunLib:AddTaskDaily(BigBoss.TSK_BIGBOSS_REWARD, 0);	-- ���ñ���,�Է�����
				if (PlayerFunLib:CheckTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 1, "H�m nay ��i hi�p �� nh�n th��ng r�i!") == 1) then
					PlayerFunLib:SetTaskBit(BigBoss.TSK_BIGBOSS_REWARD, BigBoss.CAN_GET_REWARD_BIT, 0);
					tbAwardTemplet:GiveAwardByList(BigBoss.tbGlobalReward, format("[%s] big boss global reward",date("%Y%m%d")));
				end
			else
				Talk(1, "", format("H�m nay v�n ch�a ��nh b�i <color=red>%s<color>","��c C� Thi�n Phong"));
			end
		end
		--
		PlayerIndex = OldPlayerIndex
		BigBoss.CallBackParam[Param] = nil
	end
end

function BigBoss:BigBossDeath(nNpcIndex)
	-- ��¼ʱ��
	local nTime = tonumber(GetLocalDate("%H%M%S"))-194500; -- ����ʱ�� - �ٻ�ʱ��
	
	-- ������˺����˻���齱��
	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, 100000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i c� c�ng k�ch m�nh nh�t v�o ��c C� Thi�n Phong"));
		end
	else -- һ����
		szName = GetName();
		PlayerFunLib:AddExp(100000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i c� c�ng k�ch m�nh nh�t v�o ��c C� Thi�n Phong"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, 50000000, 0, format("%s ph�n th��ng","Ph�n th��ng kinh nghi�m cho ng��i ��ng g�n khi �� b�i ��c C� Thi�n Phong"));
	end
	
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbKillerReward, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	tbDropTemplet:GiveAwardByList(nNpcIndex, -1, self.tbNormalDrop, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	--DC Ph�n th��ng - Modified By DinhHQ - 20111010
	--item
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbVngNewDropItem, format("%s r�t","��c C� Thi�n Phong"), 1);
	--trang b�
	-- tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex, self.tbVngNewDropEquip, format("%s r�t","��c C� Thi�n Phong"), 1);
	
	-- BOSS��ɱͳ��
	local nCount = GetTask(self.TSK_PLAYER_BOSSKILLED);
	nCount = nCount + 1;
	SetTask(self.TSK_PLAYER_BOSSKILLED, nCount);
	
	-- BIGBOSS����
	local Handle = OB_Create()
	if (Handle > 0) then
		ObjBuffer:PushObject(Handle, 1)
		RemoteExecute("\\script\\mission\\boss\\bigboss.lua", "SetBigBossDead", Handle);
		OB_Release(Handle)
	end
	
	local szNews = format("T� ��i <color=yellow>%s<color> �� ti�u di�t th�nh c�ng  <color=yellow>��c C� Thi�n Phong<color>, h�y nhanh ch�ng ��n l� quan nh�n th��ng!",szName);
	AddGlobalNews(szNews);
	LG_ApplyDoScript(1, "", "", "\\script\\event\\msg2allworld.lua", "battle_msg2allworld", szNews , "", "");
	
	self:AddKillRecord(szName, nTime);
end

function BigBoss:RemoveSongJinBonus()
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	-- ���ñ���,�Է�����
	PlayerFunLib:SetTaskBit(self.TSK_BIGBOSS_REWARD, self.SONGJIN_REWARD_BIT, 0);
end

function BigBoss:RemoveChuangGuanBonus()
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	-- ���ñ���,�Է�����
	PlayerFunLib:SetTaskBit(self.TSK_BIGBOSS_REWARD, self.CHUANGGUAN_REWARD_BIT, 0);
end

function BigBoss:AddSongJinPoint(nBasePoint)
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	-- ���ñ���,�Է�����
	local nType = GetBit(PlayerFunLib:GetActivityTask(self.TSK_BIGBOSS_REWARD), self.SONGJIN_REWARD_BIT);
	if (nType == 1) then
		local nHour = tonumber(GetLocalDate("%H"));
		if (nHour <= 22) then -- 21����ν�22:30����
			nBasePoint = nBasePoint * 2;
		end
		
	end
	--Lunar new year 2011 - Bobus award - Modified By DinhHQ - 20120103
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate >= 201201200000 and nNowDate < 201201252400 and nType ~= 1 then
		nBasePoint = nBasePoint * 2;
	end
	return nBasePoint;
end

function BigBoss:AddChuangGuanPoint(nBasePoint)
	PlayerFunLib:AddTaskDaily(self.TSK_BIGBOSS_REWARD, 0);	-- ���ñ���,�Է�����
	local nType = GetBit(PlayerFunLib:GetActivityTask(self.TSK_BIGBOSS_REWARD), self.CHUANGGUAN_REWARD_BIT);
	if (nType == 1) then
		nBasePoint = nBasePoint * 2;
	end
	--Lunar new year 2011 - Bobus award - Modified By DinhHQ - 20120103
	local nNowDate = tonumber(GetLocalDate("%Y%m%d%H%M"))
	if nNowDate >= 201201200000 and nNowDate < 201201252400 and nType ~= 1 then
		nBasePoint = nBasePoint * 2;
	end
	return nBasePoint;
end

function BigBoss:MakeAllPlayerCanGetReward()
	local nIdx = GetFirstPlayerAtServer();
	while(nIdx > 0) do
		doFunByPlayer(nIdx, PlayerFunLib.AddTaskDaily, PlayerFunLib, self.TSK_BIGBOSS_REWARD, 0);
		doFunByPlayer(nIdx, PlayerFunLib.SetTaskBit, PlayerFunLib, self.TSK_BIGBOSS_REWARD, self.CAN_GET_REWARD_BIT, 1);
		nIdx = GetNextPlayerAtServer();
	end
end