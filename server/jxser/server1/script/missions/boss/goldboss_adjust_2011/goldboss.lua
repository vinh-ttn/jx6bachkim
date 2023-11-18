-- �ļ�������goldboss.lua
-- �����ߡ���wangjingjun
-- ���ݡ������ƽ�boss����������boss24Сʱ���Զ�ɾ��
-- PS	   : �����ڸ��ļ����ص�ʱ����Ҫ����boss����ע�ᣬ�ظ����أ�boss������������
-- ����ʱ�䣺2011-10-02 08:15:46

Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\misc\\eventsys\\type\\npcdeath.lua")
--Change boss award 2012 - Modified By DinhHQ - 20120315
Include("\\script\\lib\\awardtemplet.lua")
--local tbEquiptAward =
--{
--	[1873] = 
--	{
--		
--	},
--	[1874] = 
--	{
--		
--	},
--	[1875] = 
--	{
--		
--	},
--}

local tbDropItem = {
	[1]={{szName="T� M�ng Chi B�o (N�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={1,0,0,0,0,0}, },},
	[2]={{szName="T� M�ng Chi B�o (�o)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={5,0,0,0,0,0}, },},
	[3]={{szName="T� M�ng Chi B�o (H�ng Li�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={0,0,0,0,0,0}, },},
	[4]={{szName="T� M�ng Chi B�o (Ng�c B�i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={8,0,0,0,0,0}, },},
	[5]={{szName="T� M�ng Chi B�o (Gi�y)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={7,0,0,0,0,0}, },},
	[6]={{szName="T� M�ng Chi B�o (Bao Tay)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={3,0,0,0,0,0}, },},
	[7]={{szName="T� M�ng Chi B�o (Nh�n Tr�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=5,tbParam={2,0,0,0,0,0}, },},
	[8]={{szName="T� M�ng Chi B�o (Nh�n D��i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=5,tbParam={9,0,0,0,0,0}, },},
	[9]={{szName="T� M�ng Chi B�o (�ai L�ng)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=8,tbParam={4,0,0,0,0,0}, },},
	[10]={{szName="T� M�ng Chi B�o (V� Kh�)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=3,tbParam={6,0,0,0,0,0}, },},
	[11]={{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=80},},
	[12]={{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=80},},
	[13]={{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=80},},
	[14]={{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=80},},
	[15]={{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=60},},
	[16]={{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,3210},nCount=1,nRate=5,nQuality = 1,nExpiredTime=10080,},},
	[17]={{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,3220},nCount=1,nRate=5,nQuality = 1,nExpiredTime=10080,},},
	[18]={{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nCount=1,nRate=1},},
	[19]={{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nCount=1,nRate=1},},
	[20]={{szName="�� Ph� B�ch H� H�i",tbProp={6,1,3175,1,0,0},nCount=1,nRate=1},},
	[21]={{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nCount=1,nRate=1},},
	[22]={{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nCount=1,nRate=1},},
	[23]={{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nCount=1,nRate=1},},
	[24]={{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nCount=1,nRate=1},},
	[25]={{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nCount=1,nRate=1},},
	[26]={{szName="B�ch H� �� Ph� H� Gi�i",tbProp={6,1,3181,1,0,0},nCount=1,nRate=1},},
	[27]={{szName="�� Ph� B�ch H� V� Kh�",tbProp={6,1,3182,1,0,0},nCount=1,nRate=0.5},},
	[28]={{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.3},},
	[29]={{szName="�� Ph� Kim � Kh�i",tbProp={6,1,2982,1,0,0},nCount=1,nRate=4},},
	[30]={{szName="�� Ph� Kim � Y",tbProp={6,1,2983,1,0,0},nCount=1,nRate=6},},
	[31]={{szName="�� Ph� Kim � H�i",tbProp={6,1,2984,1,0,0},nCount=1,nRate=2},},
	[32]={{szName="�� Ph� Kim � Y�u ��i",tbProp={6,1,2985,1,0,0},nCount=1,nRate=2},},
	[33]={{szName="�� Ph� Kim � H� Uy�n",tbProp={6,1,2986,1,0,0},nCount=1,nRate=2},},
	[34]={{szName="�� Ph� Kim � H�ng Li�n",tbProp={6,1,2987,1,0,0},nCount=1,nRate=6},},
	[35]={{szName="�� Ph� Kim � B�i",tbProp={6,1,2988,1,0,0},nCount=1,nRate=5},},
	[36]={{szName="�� Ph� Kim � Th��ng Gi�i",tbProp={6,1,2989,1,0,0},nCount=1,nRate=3},},
	[37]={{szName="�� Ph� Kim � H� Gi�i",tbProp={6,1,2990,1,0,0},nCount=1,nRate=3},},
	[38]={{szName="�� Ph� Kim � Kh� Gi�i",tbProp={6,1,2991,1,0,0},nCount=1,nRate=2},},
	[39]={{szName="Kim � L�nh",tbProp={6,1,2349,1,0,0},nCount=1,nRate=1.8},},
	[40]={{szName="Kim � Kim B�i",tbProp={6,1,3001,1,0,0},nCount=1,nRate=1},},
	[41]={{szName="Anh H�ng Thi�p",tbProp={6,1,1604,1,0,0},nCount=1,nRate=70,nExpiredTime=10080},},
	[42]={{szName="B�o R��ng Kim � Kh�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.9, },},
	[43]={{szName="B�o R��ng Kim � Y",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},nRate=0.9, },},
	[44]={{szName="B�o R��ng Kim � H�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.8, },},
	[45]={{szName="B�o R��ng Kim � Y�u ��i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.8, },},
	[46]={{szName="B�o R��ng Kim � H� Uy�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.8, },},
	[47]={{szName="B�o R��ng Kim � H�ng Li�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},nRate=0.9, },},
	[48]={{szName="B�o R��ng Kim � B�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={9,0,0,0,0,0},nRate=0.8, },},
	[49]={{szName="B�o R��ng Kim � Th��ng Gi�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.6, },},
	[50]={{szName="B�o R��ng Kim � H� Gi�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.6, },},
	[51]={{szName="B�o R��ng Kim � V� Kh�",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.4, },},
}
local tbNpcInfo = 
{
	[1] = {1873,"Tr��ng Tuy�n",},		
	[2] = {1874,"Kim Th� L��ng",},		
	[3] = {1875,"M� Dung To�n",},		
}

function checkNpc(nNpcIndex)
	local nNpcId = GetNpcSettingIdx(nNpcIndex)
	local szName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szName = NpcName2Replace(szName)
	end
	
	for i=1,getn(%tbNpcInfo) do	
		local szNpcName = %tbNpcInfo[i][2]
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end 
		if (szNpcName == szName) and (nNpcId == %tbNpcInfo[i][1]) then
			return 1
		end
	end
	return 0
end

function addNews(nNpcIndex, nPlayerIndex)
	local szName = GetName(nPlayerIndex)
	if NpcName2Replace then
		szName = NpcName2Replace(szName)
	end
	
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local szNews = format("��i hi�p <color=yellow>%s<color> t�i <color=yellow>%s<color> �� ti�u di�t th�nh c�ng <color=yellow>%s<color>!", szName, SubWorldName(SubWorld),szNpcName)
	AddGlobalNews(szNews)
end

function goldbossdeath(nNpcIndex, nPlayerIndex)
--	print("boss ���� " .. GetNpcName(nNpcIndex))
	if checkNpc(nNpcIndex) ~= 1 then
		return 
	end
	
	addNews(nNpcIndex, nPlayerIndex)
	--Thay ��i ph�n th��ng - Modified by DinhHQ - 20111009
	local tbItemAward = 
	{
		[1873] = {szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0},nCount = 20, nExpiredTime = 7 * 24 * 60},
		[1874] = {szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0},nCount = 20, nExpiredTime = 7 * 24 * 60},
		[1875] = {szName="Thi�n Linh ��n",tbProp={6,1,3022,1,0,0},nCount = 30, nExpiredTime = 7 * 24 * 60},
	}
	--B�  ph�n th��ng Thi�n Chi R��ng - Modified by DinhHQ - 20111009
--	local tbOtherAward = 
--	{
--		[1873] = {90, 30},
--		[1874] = {94.825, 30},
--		[1875] = {94.825, 40},
--	}
	
	local nKind = GetNpcParam(nNpcIndex, 1)
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,tbItemAward[nKind],format("killed_%s",szNpcName))
	--B�  ph�n th��ng Thi�n Chi R��ng - Modified by DinhHQ - 20111009
--	local nRate = random(1,10000) / 100
--	if nRate <= tbOtherAward[nKind][1] then
--		local tbTeam = getPlayerTeam()
--		addTianzhibaoxiang(tbOtherAward[nKind][2], nNpcIndex, tbTeam)
--	else
--		tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbEquiptAward[nKind],format("killed_%s",szNpcName))
--	end
	--Change boss award 2012- Modified by DinhHQ - 20120315
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbDropItem,format("killed_%s",szNpcName))	
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbEquiptAward[nKind],format("killed_%s",szNpcName))
	--Ph�n th��ng exp
	local tbAwardExp = {
		["Killer"] = {nExp = 20e6, szName = "�i�m kinh nghi�m"},
		["Around"] = {nExp = 10e6, szName = "�i�m kinh nghi�m"},
	}
	nOldPlayer = PlayerIndex	
	local nTeamSize = GetTeamSize();	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			PlayerIndex = GetTeamMember(i)
			tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho t� ��i ti�u di�t "..szNpcName})
		end
	else		
		tbAwardTemplet:Give(tbAwardExp["Killer"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho ng��i ti�u di�t "..szNpcName})
	end
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);	
	for i=1,nCount do	
		PlayerIndex = tbRoundPlayer[i]
		tbAwardTemplet:Give(tbAwardExp["Around"], 1, {"DCPhanThuongBoss", "Ph�n th��ng exp cho ng��i ��ng g�n "..szNpcName})
	end
	PlayerIndex = nOldPlayer
end

function getPlayerTeam()
	local tbTeam = {}
	local nTeamSize = GetTeamSize()
	if nTeamSize == 0 then
		tinsert(tbTeam, PlayerIndex)
	else
		for i = 1, nTeamSize do
			local nPlayerIndex = GetTeamMember(i)
			tinsert(tbTeam, nPlayerIndex)
		end
	end
	return tbTeam
end

function addTianzhibaoxiang(nCount, nNpcIndex, tbTeam)
	local tbTianzhibaoxiang = 
	{
		szName = "R��ng Thi�n Chi", 
		nLevel = 95,
		nNpcId = 1876,
		nIsboss = 0,
		nTime = 5 * 60,		-- ����ʱ�� 5 ����
		szScriptPath = "\\script\\missions\\boss\\goldboss_adjust_2011\\tianzhibaoxiang.lua",
	}
	local nNpcX,nNpcY,nMapIndex = GetNpcPos(nNpcIndex)
	local nMapId = SubWorldIdx2ID(nMapIndex)
	tbTianzhibaoxiang.tbNpcParam = tbTianzhibaoxiang.tbNpcParam or {}
	tbTianzhibaoxiang.tbNpcParam[1] = GetLocalTime()		-- �õ�������ʱ��
	tbTianzhibaoxiang.tbNpcParam[2] = getn(tbTeam)
	for i=1, getn(tbTeam) do
		tbTianzhibaoxiang.tbNpcParam[i+2] = tbTeam[i]
	end
	
	local nRow = 6
	local nOffset = 3 * 32
	-- �м�Ԥ��һ��λ�÷������鵤�������ڼ������ʾ����ʱ������������Ҫ+1
	local nClow = floor(nCount / nRow) + 1
	local nMidRow = floor(nRow / 2)
	local nMidClow = floor(nClow / 2)
	local nStartX = nNpcX - nMidRow * nOffset
	local nStartY = nNpcY - nMidClow * nOffset
	
	-- ÿ��6�����䣬��boss������λ��Ϊ���ĳɾ�������
	for j=1, nClow do
		for i=1, nRow do
			if nCount > 0 then
				-- ����λ����ʾ���鵤�������ñ���
				if j ~= nMidClow or i ~= nMidRow then
					local x = nStartX + i * nOffset
					local y = nStartY + j * nOffset
					basemission_CallNpc(tbTianzhibaoxiang, nMapId, x, y)
					nCount = nCount - 1
				end
			else
				break
			end
		end
	end	
end

function OnTimer(nNpcIndex)
	DelNpc(nNpcIndex)
end

function register()
	for i=1,getn(%tbNpcInfo) do	
		local szNpcName = %tbNpcInfo[i][2]
		if NpcName2Replace then
			szNpcName = NpcName2Replace(szNpcName)
		end 
		EventSys:GetType("NpcDeath"):Reg(szNpcName, goldbossdeath)
	end
end

register()