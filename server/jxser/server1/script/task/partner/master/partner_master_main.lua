
-- ====================== �ļ���Ϣ ======================

-- ������Եonline ���彭��ͬ�����ű�ʵ�崦���ļ� - �������ļ�
-- Edited by peres
-- 2005/09/09 PM 11:19

-- ֻ��������������
-- ����ϵ��
-- ���ǵ�
-- �����ָ�Ħ������Ƥ���ϵ�΢��
-- ������������Ⱥ����բӹ�
-- ��������������ı���ͷ���
-- ����˯ʱ������ӳ������
-- ���ǵã��峿���ѹ�����һ�̣������������
-- �������۾��������͸������һ��һ����������
-- ����������Ϊ�Ҹ�����ʹ

-- ======================================================

-- ͬ��ϵͳ��ͷ�ļ�
IncludeLib("PARTNER");

-- ���������ͬ���������ʵ�崦���ļ�
Include ("\\script\\task\\partner\\master\\partner_master_main_01.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_02.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_03.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_04.lua");
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua");

-- ������Ի�����ѡ��
taskProcess_000 = inherit(CProcess, {

	taskEntity = function(self, nCondition)
	
		local strMain = { 
                               "<npc> t�ng kim lo�n chi�n , M�ng C� qu�t kh�i, nhi�u l�n c�ng nam t�ng th�m th�ng kho�n kh�c ��ch m�t m�u , c�ng b� kim qu�c c��p l�y ���c , t�y h� qu�c ch� r�t c�c ph�t gi�c ta ��i T�ng v��ng h��ng �� t� t� h��ng �i ph�c m�t ��ch l�n ranh . v� v�y h�n b� khi�n/sai nh�t ph�m ���ng v� s� ti�n v�o Trung Nguy�n , t�m ki�m m�t m�n m�t t�ch �� l�u �� . c� th� l� th� g� kh�ng bi�t ���c , b�t qu� ch�ng ta l�i t� chuy�n n�y thu�n ��ng s� d�a t�m ra li�u m�t �t ��u m�i . b�t qu� ngh�a qu�n ��c l�c ki�n t��ng r�i r�t � c�c tr�n chi�n tr��ng tr� gi�p tri�u ��nh ch�ng l�i kim qu�c , tr��c m�t ta b�y gi� nh�n th� thi�u h�t . hy v�ng ng��i c� th� gi�p b�n r�n l�m m�y m�n �i�u tra . nh�ng nhi�m v� n�y chia ra li�t c� xu�ng . � ng��i ho�n th�nh t��ng �ng k�ch t�nh nhi�m v� sau , sau n�y m�i ng�y , m�i v� ��ng b�n c�ng c� th� l�a ch�n hai �� ho�n th�nh k�ch t�nh nhi�m v� ti�p t�c l�m m�t l�n , hy v�ng ng��i ng�n v�n gi�p ta m�t c�i !", 
                            "Th� lang chi t�/#taskProcess_001:doTaskEntity()", 
                            "Kh�ng x� nh�n chi b�/#taskProcess_002_01:doTaskEntity()", 
                            "Ch�u b�u th��ng nh�n /#taskProcess_003_Main:doTaskEntity()", 
                            "D� t�c v� s� /#taskProcess_004_Main:doTaskEntity()", 
                            "Ta ��u kh�ng mu�n nh�n, sau n�y tr� l�i./OnTaskExit"}
		
		if nCondition==1 then
			SelectDescribe(strMain);
			return 1;
		end;
		return 0;
	
	end,

});

