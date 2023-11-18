Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-- 120����������ͷ�ļ�

LV120_SKILL_STATE = 2450	-- ��ŵ�ǰ����״̬��ȫ�������������ʼֵΪ1��Ϊ0��ʾ�����Ѿ����
LV120_SKILL_ID = 2463		-- �͢����120������ID
LOCK_MAP_SEQUENCE =		-- ��Ž���ͼ˳���ȫ���������
{
	{2451, 2452, 2453, 2454, 2455, 2456},	-- ��һ��������ͼ˳��
	{2457, 2458, 2459, 2460, 2461, 2462},	-- �ڶ���������ͼ˳��
}

DGJ_WULINMIJI	= {6, 1, 1120}	-- ��̫Ѱ���������ؼ�
COFFIN_MAP		= {6, 1, 1119}	-- �꾩����ʢ�����ͼ
COFFIN			= {6, 1, 1121}	-- ���ع�ľ
LOCK_MAP1		= {6, 1, 1122}	-- ��ľ����ͼ ��һ����
LOCK_MAP2		= {6, 1, 1123}	-- ��ľ����ͼ �ڶ�����
CADAVER			= {6, 1, 1124}	-- ������ʬ
LV120SKILLBOOK	= {6, 1, 1125}	-- 120�����ܾ�Ҫ

COFFIN_POSITION = {37, 1832, 3439, 6, 6}	-- �ײ�����λ��{��ͼ, X����, Y����, X���, Y���}

LV120SKILL_NEW_NPC =	-- Т��NPC�б�
{	-- ��ʽ {NpcId, MapId, X, Y, Name, Script},
	{1203, 57, 1583, 3203, "Skill 120", "\\script\\task\\lv120skill\\npc\\��ɽ����_�������������ؼ�.lua"},
}

ORG_WULIMIJI	= {6, 1, 26}		-- ��ͨ�������ؼ�
BANRUOXINJING	= {6, 1, 12}		-- �����ľ�
XISUIJING		= {6, 1, 22}		-- ϴ�辭
XINGHONGBAOSHI	= {4, 353, 1}		-- �ɺ챦ʯ
CRYSTAL =
{
	{4, 238, 1},		-- ��ˮ��
	{4, 239, 1},		-- ��ˮ��
	{4, 240, 1},		-- ��ˮ��
}
BLUE_C = 1
PURPLE_C = 2
GREEN_C = 3

LOCK_MAP1_KEY =			-- ��һ������
{
	{1,  CRYSTAL[GREEN_C]},
	{3,  CRYSTAL[PURPLE_C]},
	{11, CRYSTAL[BLUE_C]},
	{14, CRYSTAL[BLUE_C]},
	{22, CRYSTAL[PURPLE_C]},
	{24, CRYSTAL[GREEN_C]},
}

LOCK_MAP2_KEY =			-- �ڶ�������
{
	{2,  CRYSTAL[GREEN_C]},
	{6,  CRYSTAL[PURPLE_C]},
	{10, CRYSTAL[BLUE_C]},
	{15, CRYSTAL[BLUE_C]},
	{19, CRYSTAL[GREEN_C]},
	{23, CRYSTAL[PURPLE_C]},
}

FACTION_TEXT = 			-- ����ϵ���ı�����
{
	[0] = {"<link=image[0,14]:\\spr\\npcres\\enemy\\enemy037\\enemy037_pst.spr>", "Huy�n Nh�n Ph��ng Tr��ng", "Ph��ng Tr��ng"}, -- thi�u l�m 
 [1] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy084\\enemy084_pst.spr>", "D��ng Anh", "Bang Ch�"}, -- thi�n v��ng 
[2] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy077\\enemy077_pst.spr>", "���ng C�u", "Ch��ng m�n"}, -- ���ng m�n 
[3] = {"<link=image[0,12]:\\spr\\npcres\\enemy\\enemy091\\enemy091_pst.spr>", "H�c Di�n Lang Qu�n", "Gi�o Ch�"}, -- ng� ��c 
[4] = {"<link=image[0,11]:\\spr\\npcres\\enemy\\enemy055\\enemy055_pst.spr>", "Thanh Hi�u S� Th�i", "Ch��ng m�n"}, -- nga mi 
[5] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy098\\enemy098_pst.spr>", "Du�n H�m An", "Ch��ng m�n"}, -- th�y y�n 
[6] = {"<link=image[0,19]:\\spr\\npcres\\enemy\\enemy071\\enemy071_pst.spr>", "H� Nh�n Ng�", "Bang ch�"}, -- c�i bang 
[7] = {"<link=image[0,9]:\\spr\\npcres\\enemy\\enemy103\\enemy103_pst.spr>", "Ho�n Nhan H�ng Li�t", "Gi�o ch�"}, -- thi�n nh�n 
[8] = {"<link=image[0,13]:\\spr\\npcres\\enemy\\enemy046\\enemy046_pst.spr>", " ��o nh�t ch�n nh�n ", "Ch��ng m�n"}, -- v� ���ng 
[9] = {"<link=image[0,22]:\\spr\\npcres\\enemy\\enemy065\\enemy065_pst.spr>", "To�n C� T�", "Ch��ng m�n"}, -- c�n l�n
}

FACTION_BOOK =			-- ���ɼ�����
{
	[0] = {{6, 1, 56}, {6, 1, 57}, {6, 1, 58}},				-- ����
	[1] = {{6, 1, 37}, {6, 1, 38}, {6, 1, 39}},				-- ����
	[2] = {{6, 1, 27}, {6, 1, 28}, {6, 1, 45}, {6, 1, 46}},	-- ����
	[3] = {{6, 1, 47}, {6, 1, 48}, {6, 1, 49}},				-- �嶾
	[4] = {{6, 1, 42}, {6, 1, 43}, {6, 1, 59}},				-- ����
	[5] = {{6, 1, 40}, {6, 1, 41}},							-- ����
	[6] = {{6, 1, 54}, {6, 1, 55}},							-- ؤ��
	[7] = {{6, 1, 35}, {6, 1, 36}, {6, 1, 53}},				-- ����
	[8] = {{6, 1, 33}, {6, 1, 34}},							-- �䵱
	[9] = {{6, 1, 50}, {6, 1, 51}, {6, 1, 52}},				-- ����
}

DIALOG_UI_TEXT =			-- �Ի�UI��ʾ
{
	{"<link=image[0,10]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr>", "��c C� Ki�m"},			-- 1 ������
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby040\\passerby040s2.spr>", "Xa phu bi�n kinh"},	-- 2 �꾩����
	{"<link=image[0,9]:\\spr\\npcres\\passerby\\passerby072\\passerby072s1.spr>", "C� Th�n To�n"},	-- 3 ������
	{"<link=image:\\spr\\Ui3\\120����������\\task_wulin.spr>", "V� l�m b� t�ch"},						-- 4 ��Ѱ���������ؼ�
	{"<link=image:\\spr\\Ui3\\120����������\\bianjing_southeast.spr>", "Bi�n kinh ��ng b� s� ph�t �i�m ��a ��"},	-- 5 �꾩����ʢ�����ͼ
	{"<link=image:\\spr\\Ui3\\120����������\\task_coffin.spr>", "Th�n B� Quan M�c"},					-- 6 ���ع�ľ
	{"<link=image:\\spr\\Ui3\\120����������\\task_lockinfo.spr>", "Quan M�c Gi�i T�a ��"},				-- 7 ��ľ����ͼ
	{"<link=image:\\spr\\Ui3\\120����������\\task_corpse.spr>", "K� D� T� Thi"},					-- 8 ������ʬ���˹�ǰ��
	{"<link=image:\\spr\\Ui3\\120����������\\task_corpse1.spr>", "K� D� T� Thi"},					-- 9 ������ʬ���˹���
	{"<link=image:\\spr\\Ui3\\120����������\\task_stunt.spr>", "K� N�ng 120"},				-- 10 120�����ܾ�Ҫ
	{"<link=image:\\spr\\Ui3\\120����������\\������1-01.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},			-- 11-16 ��ľ����ͼһ ��Ƭ
	{"<link=image:\\spr\\Ui3\\120����������\\������1-02.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������1-03.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������1-04.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������1-05.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������1-06.spr>", "M�nh v�n 1 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������2-01.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},			-- 17-22 ��ľ����ͼ�� ��Ƭ
	{"<link=image:\\spr\\Ui3\\120����������\\������2-02.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������2-03.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������2-04.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������2-05.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},
	{"<link=image:\\spr\\Ui3\\120����������\\������2-06.spr>", "M�nh v�n 2 quan m�c gi�i t�a ��"},
}

LV120SKILL_LIST =			-- 120�������б�
{
	[0] = {709, 1, 0, 120, "K� N�ng 120", "��i th�a nh� lai ch� "}, -- thi�u l�m 
[1] = {708, 1, 1, 120, "K� N�ng 120", "��o h� thi�n "}, -- thi�n v��ng 
[2] = {710, 1, 2, 120, "K� N�ng 120", "M�ch �nh tung "}, -- ���ng m�n 
[3] = {711, 1, 3, 120, "K� N�ng 120", "H�p tinh y�m "}, -- ng� ��c 
[4] = {712, 1, 4, 120, "K� N�ng 120", "B� nguy�t ph�t tr�n "}, -- nga mi 
[5] = {713, 1, 5, 120, "K� N�ng 120", "Ng� quy�t �n "}, -- th�y y�n 
[6] = {714, 1, 6, 120, "K� N�ng 120", "H�n thi�n kh� c�ng "}, -- c�i bang 
[7] = {715, 1, 7, 120, "K� N�ng 120", "Ma �m phi ph�ch "}, -- thi�n nh�n 
[8] = {716, 1, 8, 120, "K� N�ng 120", "Xu�t � b�t nhi�m "}, -- v� ���ng 
[9] = {717, 1, 9, 120, "K� N�ng 120", "L��ng nghi ch�n kh� "}, -- c�n l�n
}

g_DescTable = {}		-- ȫ����ʱ�Ի��ַ�������

function init_lv120skill()					-- ��ʼ������
	if (GetTask(LV120_SKILL_STATE) == 0) then
		SetTask(LV120_SKILL_STATE, 1)
	end
	SyncTaskValue(LV120_SKILL_STATE)
	SyncTaskValue(LV120_SKILL_ID);
	lv120skill_debug()	-- �Զ������쳣
end

function describe_talk(tDialog, szCall)		-- �Ի�����
	local i = 0
	if (getn(tDialog) == 0) then return end
	repeat
		i = i + 1
	until (g_DescTable[i] == nil)
	g_DescTable[i] = tDialog
	if (szCall == nil) then szCall = "" end
	describe_basic(1, i, szCall)	
end

function describe_basic(nSeq, idxTable, szCallback)		-- �Ի��ݹ麯�����ڲ���
	local tDialog = g_DescTable[idxTable]
	if (nSeq == getn(tDialog)) then
		if (szCallback == "") then
			Describe(tDialog[nSeq], 1, "K�t th�c ��i tho�i/quit")
		else
			Describe(tDialog[nSeq], 1, "Ti�p t�c ��i tho�i/"..szCallback)
		end
		g_DescTable[idxTable] = nil
		return
	end
	Describe(tDialog[nSeq], 1, "Ti�p t�c ��i tho�i /#describe_basic("..(nSeq + 1)..", "..idxTable..", [["..szCallback.."]])")
end

function npc_string(nNpc, szDisplay, bFaction)			-- ���NPC�����˵�����ַ���
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..tab[2].."<link>:"..szDisplay
end

function speak_string(nNpc, szDisplay, bFaction)		-- �����Ҷ�NPC��˵�����ַ���
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1]..GetName().."<link>:"..szDisplay
end

function self_string(nNpc, szDisplay, bFaction)			-- �������԰��ַ���
	if (nNpc == 0) then		-- 0��ʾ��ͼʾ
		return "<color=orange>"..szDisplay.."<color>"
	end
	local tab = DIALOG_UI_TEXT[nNpc]
	if (bFaction ~= nil) then
		tab = FACTION_TEXT[nNpc]
	end
	return tab[1].."<link><color=orange>"..szDisplay.."<color>"
end

function add_lv120skillnpc()			-- �������NPC
	for i = 1, getn(LV120SKILL_NEW_NPC) do
		local Tab = LV120SKILL_NEW_NPC[i]
		local idxMap = SubWorldID2Idx(Tab[2]);
		if (idxMap >= 0) then
			local idxNpc = AddNpc(Tab[1], 1, idxMap, Tab[3] * 32, Tab[4] * 32, 1, Tab[5])
			SetNpcScript(idxNpc, Tab[6])
		end
	end
end

function generate_sequence(tab)			-- �����������

	local nCount = getn(tab)
	local temp, nSeq, bAct = {}, 0, 0

	for i = 1, nCount do
		tinsert(temp, i)
		if (GetTask(tab[i]) < 1) or (GetTask(tab[i]) > getn(tab)) then bAct = 1 end	-- ����в��Ϸ�������ȫ���ؽ�
	end

	if (bAct == 1) then
		for i = 1, nCount do
			nSeq = random(1, getn(temp))
			SetTask(tab[i], temp[nSeq])
			SyncTaskValue(tab[i])
			tremove(temp, nSeq)
		end
	end

end

function add_item(tab)							-- ��ӵ���
	return AddItem(tab[1], tab[2], tab[3], 1, 0, 0)
end

function display_clip(nLockMap, nSeq, szCall)	-- ��ʾһ����Ƭ
	local nIndex = 10 + 6 * (nLockMap - 1) + GetTask(LOCK_MAP_SEQUENCE[nLockMap][nSeq])
	Describe(DIALOG_UI_TEXT[nIndex][1]..DIALOG_UI_TEXT[nIndex][2].."<link>", 2, "X�c nh�n/"..szCall, "K�t th�c ��i tho�i/quit")
end

function lv120skill_report()					-- �����ű������
	local tDialog
	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	if (nFaction == 0) or (nFaction == 8) or (nFaction == 6) or (nFaction == 4) then	-- ����
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th� ra l� ng��i �� bi�t li�u chuy�n x�a . g�n nh�t giang h� ��t nhi�n thay ��i , � t�ng n��c , t� ��u t�i �u�i c�ng m�y �en gi�ng ��y , ta c�ng ngh� ��n chuy�n n�y , nh�ng l� b�i v� "..szCall.." kh�ng th� t� ch�c �i�u tra n�n chuy�n . sau �� , m�t �t giang h� �n s� t�i xu�t giang h� , �i�u tra n�n chuy�n . b�n h� ph�t hi�n mi m�c , m�t ng�y ng�y hi�n l� ra , mi m�c bi�u hi�n , �m ch� �m m�u v� : ng�y nh�n d�y !", 1), 
                        speak_string(nFaction, "Tho�t nh�n ch�n t��ng �� r� r�ng , th�t l� ng�y nh�n �m m�u . ch� c� �i�u tra c�c lo�i ��ng v�t ph�t hi�n , � tr�n thi th� l�u l�i �n k� � tr�n giang h� kh�ng xu�t hi�n qua , ngo�i ra , xu�t hi�n r�t nhi�u d� th��ng con d�i , ��y l� hay kh�ng l� m�i ng�y nh�n t� thu�t ?", 1), 
                        npc_string(nFaction, "V� b�o v� ��i t�ng , b�o v� ch�nh ngh�a , ta chu�n b� ��i ph� chuy�n n�y ��ch ��i s�ch . ta c�ng m�t s� cao th� b� quan s�ng l�p m�t chi�u th��ng th�a tuy�t h�c . m�t m�nh ng��i t�m ���c r�t tr�ng y�u mi m�c , th�t l� ��ng gi� khen ng�i . ta quy�t ��nh truy�n c�ng ng��i th��ng th�a v� c�ng , hy v�ng ng��i sau n�y c� th� �� thi�n h� v� m�y ��m nhi�m .", 1), 
                        speak_string(nFaction, "�a t� "..szCall.." tu�n theo "..szCall.." d�y d� .", 1), 
                        npc_string(nFaction, "Th�i gian c�p b�ch , cho n�n n�n v� c�ng ch� c� th� truy�n th� m�t ph�n , sau n�y mu�n c� g�ng tu luy�n . n�n v� c�ng ch� truy�n c�ng ng��i , nh�ng m�n ph�i kh�c �� t� c�n kh�ng bi�t . v� ph�ng ng�a sanh s� , ta �� xem kh�u quy�t vi�t xong , ch�nh ng��i nghi�n c�u �i . theo nh� ng��i b�y gi� ��ch t� ch�t , ng��i s� r�t d� d�ng l�nh h�i ��ch . ��ng r�i , ng��i �i chu�n b� <color=white> b�n m�n t�t c� k� n�ng , l�m th�nh m�t s�ch <color>.", 1), 
                        speak_string(nFaction, "Tu�n l�nh "..szCall.." �� t� l�p t�c ph�c m�nh .", 1),
		}
	elseif (nFaction == 2) or (nFaction == 1) or (nFaction == 5) then					-- ����
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th� ra l� ng��i �� bi�t li�u chuy�n x�a . g�n nh�t giang h� ��t nhi�n thay ��i , � t�ng n��c , t� ��u t�i �u�i c�ng m�y �en gi�ng ��y , ta c�ng ngh� ��n chuy�n n�y , nh�ng l� b�i v� "..szCall.." kh�ng th� t� ch�c �i�u tra n�n chuy�n . sau �� , m�t �t giang h� �n s� t�i xu�t giang h� , �i�u tra n�n chuy�n . b�n h� ph�t hi�n mi m�c , m�t ng�y ng�y hi�n l� ra , mi m�c bi�u hi�n , �m ch� �m m�u v� : ng�y nh�n d�y !", 1), 
                        speak_string(nFaction, "Tho�t nh�n ch�n t��ng �� r� r�ng , th�t l� ng�y nh�n �m m�u . ch� c� �i�u tra c�c lo�i ��ng v�t ph�t hi�n , � tr�n thi th� l�u l�i �n k� � tr�n giang h� kh�ng xu�t hi�n qua , ngo�i ra , xu�t hi�n r�t nhi�u d� th��ng con d�i , ��y l� hay kh�ng l� m�i ng�y nh�n t� thu�t ?", 1), 
                        npc_string(nFaction, "V� ph�ng ng�a ng�y nh�n �m m�u , ta �� ti�n h�nh t�ch c�c ��ch �m th�m �i�u tra . ta c�ng m�t s� cao th� b� quan s�ng l�p m�t chi�u th��ng th�a tuy�t h�c . m�t m�nh ng��i t�m ���c r�t tr�ng y�u mi m�c , th�t l� ��ng gi� khen ng�i . ta quy�t ��nh truy�n c�ng ng��i th��ng th�a v� c�ng , hy v�ng ng��i sau n�y c� th� �� thi�n h� v� m�y ��m nhi�m .", 1), 
                        speak_string(nFaction, "�a t� "..szCall.." tu�n theo "..szCall.." d�y d� .", 1), 
                        npc_string(nFaction, "Th�i gian c�p b�ch , cho n�n n�n v� c�ng ch� c� th� truy�n th� m�t ph�n , sau n�y mu�n c� g�ng tu luy�n . n�n v� c�ng ch� truy�n c�ng ng��i , nh�ng m�n ph�i kh�c �� t� c�n kh�ng bi�t . v� ph�ng ng�a sanh s� , ta �� xem kh�u quy�t vi�t xong , ch�nh ng��i nghi�n c�u �i . theo nh� ng��i b�y gi� ��ch t� ch�t , ng��i s� r�t d� d�ng l�nh h�i ��ch . ��ng r�i , ng��i �i chu�n b� <color=white> b�n m�n t�t c� k� n�ng , l�m th�nh m�t s�ch <color>.", 1), 
                        speak_string(nFaction, "Tu�n l�nh "..szCall.." �� t� l�p t�c ph�c m�nh .", 1),
		}
	elseif (nFaction == 3) or (nFaction == 9) then										-- а��
		tDialog =
		{
			npc_string(nFaction, "Ai nha , th� ra l� ng��i �� bi�t li�u chuy�n x�a . g�n nh�t giang h� ��t nhi�n thay ��i , � t�ng n��c , t� ��u t�i �u�i c�ng m�y �en gi�ng ��y , ta c�ng ngh� ��n chuy�n n�y , nh�ng l� b�i v� "..szCall.." kh�ng th� t� ch�c �i�u tra n�n chuy�n . sau �� , m�t �t giang h� �n s� t�i xu�t giang h� , �i�u tra n�n chuy�n . b�n h� ph�t hi�n mi m�c , m�t ng�y ng�y hi�n l� ra , mi m�c bi�u hi�n , �m ch� �m m�u v� : ng�y nh�n d�y !", 1), 
                        speak_string(nFaction, "Tho�t nh�n ch�n t��ng �� r� r�ng , th�t l� ng�y nh�n �m m�u . ch� c� �i�u tra c�c lo�i ��ng v�t ph�t hi�n , � tr�n thi th� l�u l�i �n k� � tr�n giang h� kh�ng xu�t hi�n qua , ngo�i ra , xu�t hi�n r�t nhi�u d� th��ng con d�i , ��y l� hay kh�ng l� m�i ng�y nh�n t� thu�t ?", 1), 
                        npc_string(nFaction, "B�n m�n l�m sao c� th� r�i � ph�a sau h�n � ��u ? v� v�y , ta �� ti�n h�nh �m th�m �i�u tra , ��ng th�i x�c ��nh : kh�ng th� �� cho ng�y nh�n ��i v�i ch�ng ta b�t l�i , trong c� ng��i c� th�i c� ch� t�o thi�n h� h�n lo�n . ta c�ng m�t s� cao th� b� quan s�ng l�p m�t chi�u th��ng th�a tuy�t h�c . m�t m�nh ng��i t�m ���c r�t tr�ng y�u mi m�c , th�t l� ��ng gi� khen ng�i . "..szCall.." n�m �y , r�t nhi�u c� ��m l��c ��ch anh h�ng m�i c� th� ��m nhi�m , nh�ng l� , m�t m�nh ng��i t�m ���c r�t tr�ng y�u mi m�c , th�t l� ��ng gi� khen ng�i . ta quy�t ��nh truy�n c�ng ng��i tuy�t h�c , sau n�y gi�p ta n�i danh thi�n h� ", 1), 
                        speak_string(nFaction, "�a t� "..szCall.." tu�n theo "..szCall.." d�y d� .", 1), 
                        npc_string(nFaction, "Th�i gian c�p b�ch , cho n�n n�n v� c�ng ch� c� th� truy�n th� m�t ph�n , sau n�y mu�n c� g�ng tu luy�n . n�n v� c�ng ch� truy�n c�ng ng��i , nh�ng m�n ph�i kh�c �� t� c�n kh�ng bi�t . v� ph�ng ng�a sanh s� , ta �� xem kh�u quy�t vi�t xong , ch�nh ng��i nghi�n c�u �i . theo nh� ng��i b�y gi� ��ch t� ch�t , ng��i s� r�t d� d�ng l�nh h�i ��ch . ��ng r�i , ng��i �i chu�n b� <color=white> b�n m�n t�t c� k� n�ng , l�m th�nh m�t s�ch <color>.", 1), 
                        speak_string(nFaction, "Tu�n l�nh "..szCall.." �� t� l�p t�c ph�c m�nh .", 1),
		}
	elseif (nFaction == 7) then															-- ����
		tDialog =
		{
			npc_string(nFaction, "Th�t l� kh�ng h� l� ng�y nh�n d�y �� t� , kh�ng c� g� c� th� qu� li�u con m�t c�a ng��i . g�n nh�t , giang h� ��t nhi�n h�n lo�n , th�t l� kh�ng c� c� ngh� ��n , ��y l� ta ng�y nh�n d�y ch� t�o ra s� �oan , ha ha . ng��i �� �o�n ���c , ta c�ng kh�ng d�i g�t ng��i . g�n nh�t , ng�y nh�n d�y tri�u t�p m�t �t v� l�m cao th� , luy�n th�nh li�u m�t lo�i c�c m�nh ��ch t� thu�t . n�i �i�n ��ch ��ng v�t c�ng n�m � trong quan t�i ��ch thi th� , ��u l� ch�ng ta c�ng lao , c�ng t� r� , ta ��i kim qu�c �em c� m�t l�n ��nh chinh ph�t .", 1), 
                        speak_string(nFaction, "Gi�o ch� anh minh , ta �em v� kim qu�c th�ng nh�t thi�n h� ��ch nghi�p l�n ph� thang ��o h�a ", 1), 
                        npc_string(nFaction, "L�n n�y ��ng lo�n r�t nghi�m m�t , tin t�c c�ng kh�ng c� truy�n kh�p c�c m�n ph�i , c� ng��i m�i v�a �� l� ra tin t�c s� ch�t . nh�ng thi th� n�y ��u l� t�ng n��c ph�i ��ch gi�n �i�p , c�ng coi l� l�m cho ta th� nghi�m . ta l�m c�i n�y , c�ng kh�ng ph�i mu�n ng��i gi� b� m�t , ng��i l� b�n m�n ng��i c�a . nh�ng l� , ng��i l� h�u d�ng h�u m�u ng��i c�a , c� th� ��m nhi�m ��i ��m nhi�m , ha ha . h�m nay ta truy�n cho ng��i tuy�t h�c , kh�ng mu�n c� ph� kim qu�c t�n nhi�m ��i v�i ng��i . ", 1), 
                        speak_string(nFaction, "�a t� "..szCall.." tu�n theo "..szCall.." d�y d� .", 1), 
                        npc_string(nFaction, "Th�i gian c�p b�ch , cho n�n n�n v� c�ng ch� c� th� truy�n th� m�t ph�n , sau n�y mu�n c� g�ng tu luy�n . n�n v� c�ng ch� truy�n c�ng ng��i , nh�ng m�n ph�i kh�c �� t� c�n kh�ng bi�t . v� ph�ng ng�a sanh s� , ta �� xem kh�u quy�t vi�t xong , ch�nh ng��i nghi�n c�u �i . theo nh� ng��i b�y gi� ��ch t� ch�t , ng��i s� r�t d� d�ng l�nh h�i ��ch . ��ng r�i , ng��i �i chu�n b� <color=white> b�n m�n t�t c� k� n�ng , l�m th�nh m�t s�ch <color>.", 1), 
                         speak_string(nFaction, "Tu�n l�nh "..szCall.." �� t� l�p t�c ph�c m�nh .", 1),
		}
	end
	describe_talk(tDialog)
	SetTask(LV120_SKILL_STATE, 18)
	SyncTaskValue(LV120_SKILL_STATE)
end

function lv120skill_submit()				-- �ύ����ȫ��������UI
	GiveItemUI("��ng b�n m�n to�n b� k� n�ng s�ch ", " �em b�n m�n t�t c� k� n�ng s�ch b� v�o l� c� th� ��t ���c 120 k� n�ng b� t�ch.", "submit_skillbook", "quit")
end

function submit_skillbook(nCount)			-- �ύ����ȫ��������

	local nFaction = GetLastFactionNumber()
	local szCall = FACTION_TEXT[nFaction][3]
	local idxBook, g, d, p = 0, 0, 0, 0
	local book, temp = {}, {}

	if (nCount == 0) then
		lv120skill_submit()
		return
	end

	for i = 1, getn(FACTION_BOOK[nFaction]) do
		tinsert(temp, FACTION_BOOK[nFaction][i])
	end

	for i = 1, nCount do
		idxBook = GetGiveItemUnit(i)
		g, d, p = GetItemProp(idxBook)
		for j = 1, getn(temp) do
			if (g == temp[j][1]) and (d == temp[j][2]) and (p == temp[j][3]) then
				tremove(temp, j)
				tinsert(book, idxBook)
				break
			end
		end
	end

	if (getn(temp) == 0) then
		local tDialog =
		{
			npc_string(nFaction, "L�m vi�c lanh l�i l�i c� m�i ng��i c�a th�t l� kh� c�u a, ta �� cho ng��i b� quy�t li�u, ch�nh ng��i nghi�n c�u m�t ch�t li�n c� th� l�nh ng� ", 1), 
                        speak_string(nFaction, "�a t� "..szCall.." �a t� ch� gi�o , b�y gi� ta �i tu luy�n .", 1), 
                        self_string(10, "M�t h�i c�ng phu : th�i gian, ng��i li�n h�c ���c v� l�m th��ng th�a tuy�t k� "),
		}
		describe_talk(tDialog)
		for i = 1, getn(book) do
			if (RemoveItemByIndex(book[i]) ~= 1) then		-- ȡ��������ϵļ�����
				WriteLog("120 c�p k� n�ng - T�t b�n m�n t�t c� k� n�ng s�ch -- h�y th��ng k� n�ng s�ch.  Player ="..GetName().." Time = "..date("%y.%m.%d"))
				Msg2Player("H� th�ng b� l�i , xin li�n l�c ph�t ���c th��ng gi�i quy�t!")
				return
			end
		end
		idxBook = add_item(LV120SKILLBOOK)	-- ���120��������
		Msg2Player("Ng��i ��t ���c 1"..GetItemName(idxBook))
		SetTask(LV120_SKILL_STATE, 19)
		SyncTaskValue(LV120_SKILL_STATE)
	else
		Describe("C�n b� v�o m�t b� t�t c� s�ch k� n�ng, cho "..szCall.." l�m th�nh 120 c�p th��ng th�a s�ch k� n�ng",2, "L�m l�i/lv120skill_submit", "Tho�t/quit")
	end

end

function calc_item(tab)
	return	CalcItemCount(-1, tab[1], tab[2], tab[3], -1)
end

-- ��������쳣
function lv120skill_debug()
	local state = GetTask(LV120_SKILL_STATE)
	if (state <= 1) or (state >= 19) then return end
	if (state == 5) then debug_item(DGJ_WULINMIJI) return end
	if (state == 9) then debug_item(COFFIN_MAP) return end
	if (state >= 10) and (state <= 15) then debug_item(COFFIN) return end
	if (state == 16) then debug_item(CADAVER) return end
end

function debug_item(Item)
	if (calc_item(Item) < 1) then
		if (CalcFreeItemCellCount() < 1) then
			Msg2Player("? c�p 120 ph�t sinh sai l�m, xin m�i l�n n�a s�a sang l�i trang b�, xu�t hi�n m�t ch� tr�ng, ��ng th�i xin m�i l�n n�a ��ng l�c, h� th�ng li�n tr� l�i ��i hi�p m�t �i ��ch ��.")
			return
		end
		local idxItem = add_item(Item)
		Msg2Player("��i hi�p ��t ���c m�i v�a m�t �i ��ch �� "..GetItemName(idxItem)..", b�y gi� c� th� ti�p t�c nhi�m v� c�p 120")
	end
end

function quit()
end


-- 120��������һ�
function lvl120skill_learn()

	if HocKyNang120 ~= 1 then
		return Talk(1, "", "T�nh n�ng n�y t�m ��ng, h�y quay l�i sau!")	
	end	

	Describe("C� c�i g� kh� m� sao ?",4, 
               "Ta mu�n ��i s�ch k� n�ng c�p 120 /lvl120skill_getbook", 
               "L�m sao c� th� h�c ���c  k� n�ng 120/lvl120skill_learninfo", 
               "Ph��ng ph�p uy�n t�p k� n�ng 120 /lvl120skill_skillinfo", 
               "�� cho ta suy ngh� /no");
end;

function lvl120skill_skillinfo()
	local szInfo = format("%s%s%s%s%s%s%s%s%s%s", 
                  "<enter><color=green>1. ��nh tr�ch ��t ���c <color>", 
                 "<enter>Luy�n c�p khu v�c qu�i v�t : ��nh m�t lo�i tr�ch, xanh bi�c boss, ho�ng kim boss;", 
                 "<enter>Ho�t ��ng trung ��ch tr�ch : ��nh v�o c�a th� nh�t ��ch tr�ch, s�t th� boss;", 
                 "<enter>Nhi�m v� trung ��ch tr�ch : ��nh v�o ho�ng kim nhi�m v� trung ��ch tr�ch ;", 
                 "<enter>T�ng kim chi�n tr��ng : s� d�ng t�ch ph�n ��i h�c h�i kinh nghi�m nghi�m tr� gi� , nh�ng l� , kh�ng th� v��t qua m�i ng��i th��ng h�n .", 
                 "<enter><color=green>2. �y th�c nhi�m v� <color>", 
                  "<enter>S� d�ng b�ch c�u ho�n k� n�ng , r� r�ng c�u ho�n k� n�ng , r� r�ng c�u ho�n ��c hi�u k� n�ng .", 
                  "<enter>B�ch c�u ho�n k� n�ng : s� d�ng sau �em �� cao 120 k� n�ng ��ch luy�n t�p �� , m�i n�m ph�t luy�n t�p �� �em gia t�ng m�t l�n .", 
                   "<enter>��i c�u ho�n k� n�ng : hi�u qu� so m�t lo�i b�ch c�u ho�n k� n�ng t�ng l�n , m�i n�m ph�t luy�n t�p �� �em gia t�ng m�t l�n ", 
                   "<enter>��i c�u ho�n ��c hi�u : hi�u qu� so m�t lo�i b�ch c�u ho�n k� n�ng t�ng l�n , m�i n�m ph�t luy�n t�p �� �em gia t�ng m�t l�n ;" 
                   ); 
              Describe(szInfo, 
               2, 
            "Tr� v� /lvl120skill_learn", 
            "K�t th�c ��i tho�i /no")
end;

function lvl120skill_learninfo()
	Describe("��t t�i 120 c�p, c� th� ��n ph�i ��i l�y 120 k� n�ng s�ch, s� d�ng s�ch sau, �em h�c ���c 120 k� n�ng, m�i ng��i ch� c� th� ��i m�t l�n <enter> ��i l�y s�ch mu�n tu�n th� : m�t quy�n m�m n�u t�m tr�i qua , m�t quy�n b�n m�n 90 k� n�ng s�ch , m�t vi�n �� th�m b�o th�ch c�ng m�t vi�n th�y tinh .", 
             2, 
            "Tr� v� /lvl120skill_learn", 
            "K�t th�c ��i tho�i /no")
end;

function lvl120skill_getbook()
	-- ԭ������е�19����������ԭֵ���һ�������ɹ���ֱ����Ϊ19
	local nstate = GetTask(LV120_SKILL_STATE);
	local nlevel = GetLevel();
	local nfact = GetLastFactionNumber();
	if (nstate == 19) then
		Describe("Th�t l� ti�c nu�i, ng��i �� s� d�ng k� n�ng c�p 120",1 , "K�t th�c ��i tho�i /no");
	elseif (nlevel < 120) then
		Describe("C�p b�c kh�ng �� 120, kh�ng th� ��i s�ch ",1 , "K�t th�c ��i tho�i /no");
	elseif (nfact < 0 or nfact > 9) then
		Describe("Ng��i kh�ng gia nh�p m�n ph�i, kh�ng �� �i�u ki�n ��i s�ch",1 , "K�t th�c ��i tho�i /no");
	else
		if (lvl120skill_delallitem() == 1) then
			SetTask(LV120_SKILL_STATE, 19);
			add_item(LV120SKILLBOOK);
			Msg2Player("��i s�ch k� n�ng c�p 120 th�nh c�ng.")
			WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tget a lvl120skillbook",
				GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount()))
		else
			Describe("Th�t l� ti�c nu�i, mang v�t ph�m kh�ng h�p y�u c�u, xin m�i ki�m tra !", 1,"K�t th�c ��i tho�i /no"); 
                     Msg2Player("C�n thu th�p v�t ph�m : m�t quy�n b�n nh��c t�m kinh, m�t b� s�ch k� n�ng c�p 90 c�a b�n m�n, m�t vi�n tinh h�ng b�o th�ch c�ng m�t vi�n th�y tinh .");
		end;
	end;
end;
-- 120��������һ�

function lvl120skill_delallitem()
	if (lvl120skill_calccount(BANRUOXINJING) < 1) then
		return 0;
	end;
	local nfact = GetLastFactionNumber();
	for i = 1, getn(FACTION_BOOK[nfact]) do
		if (lvl120skill_calccount(FACTION_BOOK[nfact][i]) < 1) then
			return 0;
		end;
	end;

	if (lvl120skill_calccount(XINGHONGBAOSHI) < 1) then
		return 0;
	end;
	
	if (lvl120skill_calccrystal() < 1) then
		return 0;
	end;
	
	lvl120skill_delitem(BANRUOXINJING, 1);
	for i = 1, getn(FACTION_BOOK[nfact]) do
		lvl120skill_delitem(FACTION_BOOK[nfact][i], 1);
	end;
	lvl120skill_delitem(XINGHONGBAOSHI, 1);
	lvl120skill_delscrystal(1);
	return 1;
end;

function lvl120skill_calccount(tb_item)
	return CalcEquiproomItemCount(tb_item[1], tb_item[2], tb_item[3], -1);
end;
function lvl120skill_delitem(tb_item, ncount)
	if (ncount <= 0) then
		return 0;
	end;
	local np = ConsumeEquiproomItem(ncount, tb_item[1], tb_item[2], tb_item[3], -1);
	if (np == 1) then
		WriteLog(format("[LvL120Skill]\t%s\tName:%s\tAccount:%s\tDeleteItem Count=%d,G=%d,D=%d,P=%d,L=%d",
					GetLocalDate("%Y-%m-%d %X"),GetName(), GetAccount(),
					ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	else
		print(format("Error!!!! DeleteItem Fail!!! Count=%d,G=%d,D=%d,P=%d,L=%d",
				ncount, tb_item[1], tb_item[2], tb_item[3], -1));
	end;
end;
function lvl120skill_calccrystal()
	local nsum = 0;
	for i = 1, getn(CRYSTAL) do
		nsum = nsum + lvl120skill_calccount(CRYSTAL[i]);
	end;
	return nsum;
end;
function lvl120skill_delscrystal(ncount)
	for i = 1, getn(CRYSTAL) do
		local ncrst = lvl120skill_calccount(CRYSTAL[i]);
		if (ncrst > ncount) then
			ncrst = ncount;
		end;
		lvl120skill_delitem(CRYSTAL[i], ncrst);
		ncount = ncount - ncrst;
		if (ncount <= 0) then
			break
		end;
	end;
end;



-- //Խ�ϰ治��������ʱ���������ʼ��
if (GetProductRegion() ~= "vn") then
	login_add(init_lv120skill, 2)
end
