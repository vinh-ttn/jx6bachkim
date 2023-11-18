IncludeLib("SETTING")
Include("\\script\\vng_lib\\taskweekly_lib.lua")
Include("\\script\\lib\\log.lua")
TSK_WEEKLY_SJ = 2716 --S� tr�n t�ng kim trong tu�n
TSK_WEEKLY_COT = 2717 --S� tr�n v��t �i trong tu�n
WEEKLY_SJ_REQUIRE = 10
WEEKLY_COT_REQUIRE = 6
function main(nItemIdx)
	if ST_GetTransLifeCount() ~= 4 then
		Talk(1, "", "Ch� nh�ng nh�n v�t tr�ng sinh 4 m�i s� d�ng ���c v�t ph�m n�y!")
		return 1
	end
	local nSJ_count = VngTaskWeekly:GetWeeklyCount(TSK_WEEKLY_SJ)
	local nCOT_count = VngTaskWeekly:GetWeeklyCount(TSK_WEEKLY_COT)
	if nSJ_count < WEEKLY_SJ_REQUIRE or nCOT_count < WEEKLY_COT_REQUIRE then
		Talk(1, "", format("M�i tu�n ph�i tham gia �t nh�t 10 tr�n T�ng Kim v� 6 l�n V��t �i m�i ���c s� d�ng v�t ph�m n�y. S� l�n tham gia c�a c�c h�: T�ng Kim: <color=yellow>%d<color> - V��t �i: <color=yellow>%d<color>", nSJ_count, nCOT_count))
		return 1
	end
	if tbVnTL4Skill:GetSkill() == 1 then
		return 0
	else
		return 1
	end
end

tbVnTL4Skill = {}
tbVnTL4Skill.tbSkill = {{1123, 10, "V� Uy Thu�t"},{1124, 10, "Nh��c Th�y Thu�t"},{1125, 10, "Tr�n Nh�c Thu�t"},{1126, 10, "Y�n Ba Thu�t"},{1127, 0, "Tr��ng Sinh Thu�t"},{1128, 20, "B�t H�i Thu�t"},{1129, 20, "Th�n Tu� Thu�t"},{1130, 20, "Truy �nh Thu�t"}}
function tbVnTL4Skill:GetSkill()
	local nRand = tbVnTL4Skill:RandomSkill()
	if nRand <= 0 or nRand > 8 then
		return 0
	end
	local tbSkill = self.tbSkill[nRand]
	if HaveMagic(tbSkill[1]) < 0 then
		local nUsedSkillPoint = GetTask(2899)
		if nUsedSkillPoint > 0 then
			Talk(1, "", "C�n ph�i t�y �i�m k� n�ng tr�ng sinh 4 tr��c r�i m�i h�c k� n�ng m�i! H�y ��n g�p B�c ��u L�o Nh�n �� ���c gi�p ��.")
			return 0
		end
		--remove skill c�
		for i = 1, getn(self.tbSkill) do
			if HaveMagic(self.tbSkill[i][1]) >= 0 then
				DelMagic(self.tbSkill[i][1])
			end
		end
		AddMagic(tbSkill[1], 0)
		if HaveMagic(tbSkill[1]) < 0 then
			return 0
		end
	end
	Msg2Player(format("Ch�c m�ng b�n �� l�nh h�i ���c v� c�ng <color=green>%s<color>", tbSkill[3]))
	tbLog:PlayerActionLog("SuDungBatThuatChanKinh", tbSkill[3])
	return 1
end

function tbVnTL4Skill:RandomSkill()
	local nTotal = 10000000
	local nCur = random(1, nTotal)
	local nStep = 0
	for i = 1, getn(self.tbSkill) do
		nStep = nStep + floor(self.tbSkill[i][2]*nTotal/100)
		if nCur < nStep then
			return i
		end
	end
end