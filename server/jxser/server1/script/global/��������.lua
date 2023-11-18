-- NPC - Quan Ly Bang Hoi
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")

TB_JiangHuXingBaoDian = {
		[32] = {
			szTitleMsg = "<dec>�� tr�i qua bi�t bao nhi�u �n o�n giang h�, ng��i c� ph�i l� �� c� m�t ��m huynh �� t� mu�i ��ng cam c�ng kh�? Ng��i c� mu�n l�nh ��o h�, c�ng nhau t�o ra m�t m�n v� c�ng V�n Th� B�t Di�t, c��p �o�t quy�n s� h�u 7 th�nh tr�, �� h� c� th� c�ng nhau h��ng vinh hoa ph� qu�. V�y th� h�y l�p ra Bang H�i ri�ng cho m�nh, vi�t v�o �� c�c �n o�n t�nh th�, nhi n� t�nh tr��ng, c��p thuy�n, �o�t th�nh, c��p BOSS.",
			tbOpt = {
				[1] = {"Th�nh l�p Bang H�i", 33},
				[2] = {"Khu v�c Bang H�i", 34},
				[3] = {"K�t c�u t� ch�c", 35},
				[4] = {"Qu� c�a Bang H�i", 36},
				[5] = {"L�i nhu�n c�a Bang H�i", 37},
				[6] = {"Li�n minh Bang H�i", 38},
				[7] = {"M�c ti�u Bang H�i h�ng tu�n", 39},
				[8] = {"Gi�i t�n Bang H�i", 40}
			},
		},
		[33] = { szTitleMsg = "<dec>Sau khi h�i �� c�c �i�u ki�n b�n d��i, ng��i c� th� ��n Hoa S�n (293.218) t�m T�ng Kim ch��ng m�n nh�n �� th�nh l�p Bang H�i.<enter>1. Nh�n v�t kh�ng thu�c Bang H�i, m�n ph�i n�o, hi�n l�n ch� ��.<enter>2. ��ng c�p 150 tr� l�n.<enter>3. �i�m danh v�ng 450 tr� l�n, Danh v�ng c� th� nh�n ���c th�ng qua l�m nhi�m v�, bao g�m c� nhi�m v� T�n th� th�n.<enter>4. T�i l�nh ��o 30 tr� l�n.<enter>5. Chi�n l�i ph�m T�ng Kim ��i th�nh: Nh�c V��ng Ki�m (�i�m t�ch l�y T�ng Kim c� th� d�ng �� ��i Nh�c V��ng H�n Th�ch t�i Qu�n Nhu Quan, 100 Nh�c V��ng H�n Th�ch c� th� ��i ���c 1 Nh�c V��ng Ki�m. C� th� mua tr�c ti�p Nh�c V��ng Ki�m l� bao t�i K� Tr�n C�c m� ra �� nh�n).<enter>6. Ti�n: 100 v�n l��ng",tbOpt = {{"Tr� v�", 32},},},
		[34] = { szTitleMsg = "<dec>Ng��i c� th� t�i ch� t� r��u c�a th�t ��i th�nh th� s� d�ng ��o c� 'Thanh ��ng ��nh' �� thi�t l�p m�t t�m b�n �� ��c l�p c�a Bang H�i, ��i v�i 7 th�nh th� kh�c nhau th� b�n �� s� kh�c nhau.",tbOpt = {{"Tr� v�", 32},},},
		[35] = { szTitleMsg = "<dec>Ng��i c� th� ra l�nh cho nhi�u nh�t l� 7 Tr��ng L�o, nhi�u nh�t 56 ��i Tr��ng, ��i v�i c�c h� ph�i kh�c nhau c� th� ��i nhi�u nh�t 56 t�n, m�i t�n d�i nh�t l� 4 ch� h�n. ",tbOpt = {{"Tr� v�", 32},},},
		[36] = { szTitleMsg = "<dec>Qu� bang h�i l� m�t h� th�ng chung, d�ng �� c�t gi� t�i s�n chung c�a Bang H�i.",tbOpt = {{"Tr� v�", 32},},},
		[37] = { szTitleMsg = "<dec>Ng��i c� th� th�ng qua ph��ng th�c ti�n th��ng �� ph�n chia qu� cho c�c th�nh vi�n Bang H�i, c� th� th�ng qua giao di�n ti�n th��ng ph�n chia ph�t th��ng cho 3 c�p b�c kh�c nhau c�a Bang H�i l�: Tr��ng L�o, ��i Tr��ng v� Bang Ch�ng. ",tbOpt = {{"Tr� v�", 32},},},
		[38] = { szTitleMsg = "<dec>Ng��i c�ng c� th� li�n k�t v�i c�c Bang H�i kh�c l�p th�nh Li�n minh Bang H�i, trong m�i Bang H�i li�n minh c�n ph�i c� m�t Bang H�i Minh Ch�, c� �t nh�t m�t Bang H�i th�nh vi�n, v� kh�ng v��t qu� 7 Bang H�i th�nh vi�n.",tbOpt = {{"Tr� v�", 32},},},
		[39] = { szTitleMsg = "<dec>Do h� th�ng ch�n ng�u nhi�n m�t trong c�c t�nh n�ng T�ng Kim, D� T�y, V��t ?i...Ch� c� Bang H�i ho�n th�nh nhi�m v� n�y. C�c th�nh vi�n Bang H�i ��u c� th� nh�n ���c nh�ng l�i �ch phong ph�, Bang ch� c� th� nh�n ���c l�nh b�i BOSS",tbOpt = {{"Tr� v�", 32},},},
		[40] = { szTitleMsg = "<dec>Khi Bang H�i kh�ng �� 16 ng��i th� s� ti�n h�nh v�o k� kh�o nghi�m, n�u nh� sau 3 ng�y s� th�nh vi�n kh�ng �� 16 ng��i th� Bang H�i s� gi�i t�n. H�y t�o t�nh �o�n k�t gi�a c�c anh em trong Bang. ",tbOpt = {{"Tr� v�", 32},},},
	};
	
function main()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex);
	local tbDailog = DailogClass:new(szNpcName)
	tbDailog.szTitleMsg = "<npc>V� thi�u hi�p n�y c� mu�n gia nh�p Bang H�i kh�ng?"
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	
	tbDailog:AddOptEntry("Xem tin t�c h� tr� Bang H�i", TongHelp);
	tbDailog:AddOptEntry("M� giao di�n chi�u m� Bang H�i", NeedOpenTongZhaoMu);
	
	tbDailog:Show()
end

function jianghuxing_showdiag(nidx, nbackidx)
	local tb_dailog = {};
	
	if (not TB_JiangHuXingBaoDian[nidx].szTitleMsg) then
		print("Error!!There Is No Titlemsg!!");
		return
	end
	
	tb_dailog[1] = TB_JiangHuXingBaoDian[nidx].szTitleMsg;
	
	if (TB_JiangHuXingBaoDian[nidx].tbOpt) then
		for nkey, szopp in TB_JiangHuXingBaoDian[nidx].tbOpt do
			tinsert(tb_dailog, format("%s/#jianghuxing_showdiag(%d)", szopp[1], szopp[2]));
		end
	end
	
	tinsert(tb_dailog, "K�t th�c ��i tho�i/OnCancel");
	
	CreateTaskSay(tb_dailog);
end

function OnCancel()
end

function NeedOpenTongZhaoMu()
	OpenTongZhaoMu()
end

function TongHelp()
	jianghuxing_showdiag(32)
end
