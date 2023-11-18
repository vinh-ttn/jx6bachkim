-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ�ϰ� - ���ת��ͷ�ļ�
-- �ļ�������task_func.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2009-02-04 16:21:20

-- ======================================================

IncludeLib("LEAGUE");
IncludeLib("SETTING");
IncludeLib("FILESYS");
IncludeLib("ITEM");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\task\\metempsychosis\\task_head.lua")

-- ��¼�ڵ� n_transcount ��ת��ʱ �ĵȼ� ����ѡ����
function zhuansheng_set_gre(n_transcount, n_level, n_resist)
	local n_taskid = 0;
	local n_taskbyte = 0;
	
	local n_id = floor(n_transcount / 2) + mod(n_transcount, 2);
	n_taskid = TSK_ZHUANSHENG_GRE[n_id];
	
	if (mod(n_transcount, 2) == 0) then
		n_taskbyte = 3;
	else
		n_taskbyte = 1;
	end
	
	local n_taskvalue = GetTask(n_taskid);
	n_taskvalue = SetByte(n_taskvalue, n_taskbyte, n_level);
	n_taskvalue = SetByte(n_taskvalue, n_taskbyte+1, n_resist);
	SetTask(n_taskid, n_taskvalue);
	--WriteLog(format("zhuansheng_set_gre:%d,%d,%d,byte:%d,id:%d", n_transcount, n_level, n_resist,n_taskbyte, n_taskid))
	return 1;
end

-- ���ص�n_transcount��ת�� �ȼ�����ѡ����
function zhuansheng_get_gre(n_transcount)
	local n_taskid = 0;
	local n_taskbyte = 0;
	
	local n_id = floor(n_transcount / 2) + mod(n_transcount, 2);
	n_taskid = TSK_ZHUANSHENG_GRE[n_id];
	
	if (mod(n_transcount, 2) == 0) then
		n_taskbyte = 3;
	else
		n_taskbyte = 1;
	end
	
	local n_taskvalue = GetTask(n_taskid);
	
	return GetByte(n_taskvalue, n_taskbyte),GetByte(n_taskvalue, n_taskbyte+1)
end

-- ת��ϴ�����м��ܵ㣬������ת����õĶ��� npoint ���ܵ�
function zhuansheng_clear_skill(nlevel, npoint)
	local nskill1 = HaveMagic(210);	--�����Ṧ
	local nskill2 = HaveMagic(400);	--�������ٸ���ƶ��
	local nallskill = RollbackSkill();	-- ���Ͷ�㼼�ܣ������ؼ��ܵ�
	if (nskill1 ~= -1) then			--�����Ṧ
		nallskill = nallskill - nskill1;
		AddMagic(210, nskill1);
	end
	
	if (nskill2 ~= -1) then			--���ء��ٸ���ƶ��
		nallskill = nallskill - nskill2;
		AddMagic(400, nskill2);
	end
	--nallskill = nallskill - (nlevel -1)	--ת��ֻ�۵�����ʱ����ļ��ܵ�
	AddMagicPoint(npoint + nallskill);
end

-- ת��ϴ������Ǳ�ܵ㣬������ת����õĶ��� npoint Ǳ�ܵ�
function zhuansheng_clear_prop(nlevel, npoint, nseries)
	if (not nseries) then
		nseries = GetSeries();
	end
	
	nseries = nseries + 1;
	local Utask88 = GetTask(88)-- ���ѷ���Ǳ�����ã�task(88)��������ֱ�ӽ��������������ȣ�
	AddProp(100)			-- Ϊ����û��δ����Ǳ�ܵ�ɹ��޸��ļ����������ʱ���衱����100��

	AddStrg(TB_BASE_STRG[nseries] - GetStrg(1) + GetByte(Utask88,1));
	AddDex(TB_BASE_DEX[nseries] - GetDex(1) + GetByte(Utask88,2));
	AddVit(TB_BASE_VIT[nseries] - GetVit(1) + GetByte(Utask88,3));
	AddEng(TB_BASE_ENG[nseries] - GetEng(1) + GetByte(Utask88,4));
	local nallprop = GetProp();
	--nallprop = nallprop - (nlevel - 1) * 5;	--ת��ֻ�۵�����ʱ�����Ǳ�ܵ�
	AddProp(npoint-100);
end


-- ����Ƿ���ս�ӹ�ϵ
function check_zhuansheng_league(ntype)
	local nlg_idx = LG_GetLeagueObjByRole(ntype,GetName());
	if (nlg_idx ~= nil and nlg_idx ~= 0) then
		return 1;			--��ս�ӹ�ϵ
	else
		return 0;			--��ս�ӹ�ϵ
	end
end

-- ��鵱ǰת���κ͵ȼ��Ƿ��ܹ���ת��
function check_zhuansheng_level()
	local nlevel = GetLevel();
	local ntranscount = ST_GetTransLifeCount();
	if (ntranscount >= 5) then
		CreateTaskSay({TB_TRANSLIFE_ERRORMSG[7], "���c r�i./OnCancel"});
		return 0;
	end
	
	
	if (not TB_LEVEL_REMAIN_PROP[nlevel] or not TB_LEVEL_LIMIT[ntranscount + 1]) then
		CreateTaskSay({TB_TRANSLIFE_ERRORMSG[5], "���c r�i./OnCancel"});
		return
	end
	
	if (nlevel < TB_LEVEL_LIMIT[ntranscount + 1]) then
		CreateTaskSay({"<dec><npc>"..format("T�i l�n chuy�n sinh th� (%d), ��ng c�p ch� �t c�ng ph�i %d!", (ntranscount + 1), TB_LEVEL_LIMIT[ntranscount + 1]), "K�t th�c ��i tho�i/OnCancel"});
		return 0;
	end
	
	return 1;
end

function OnCancel()
end
