TAB_SKILL = {
	-- ThienTu
	emperor =
	{	
		lifemax_v = {1000, -1, 0},
		allres_p = {10, -1, 0},
		allresmax_p = {5, -1, 0},
		allskill_v  = {1, -1, 0},		-- ȫϵ���ܣ�1
	},
	-- Quoc Chu
	king =
	{
		lifemax_v = {800, -1, 0},
		allres_p = {5, -1, 0},
		allresmax_p = {4, -1, 0},
		allskill_v  = {1, -1, 0},		-- ȫϵ���ܣ�1
	},
	-- �Thua Tuong
	minister =
	{
		lifemax_v = {800, -1, 0},
		allres_p = {4, -1, 0},
		allresmax_p = {4, -1, 0},
	},
	-- Nguyen Soai
	marshal =
	{
		lifemax_v = {600, -1, 0},
		allres_p = {3, -1, 0},
		allresmax_p = {3, -1, 0},
	},
	-- Tien Phong
	pioneer =
	{
		lifemax_v = {500, -1, 0},
		allres_p = {2, -1, 0},
		allresmax_p = {2, -1, 0},
	},
}

-----------------------------------------------------------
--����GetSkillLevelData(levelname, data, level)
--levelname��ħ����������
--data����������
--level�����ܵȼ�
--return������������Ϊdata�����ܵȼ�Ϊlevel
--			ʱ��ħ������levelname����������������ľ���ֵ
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	local skill = TAB_SKILL[data]
	if (not skill) then
		return ""
	end
	local tb = skill[levelname]
	if (not tb) then
		return ""
	end
	return format("%d,%d,%d", tb[1], tb[2], tb[3])
end
