ValenAct_nStartDate = 20120209
ValenAct_nEndDate = 20120301
ValenAct_TSK_REDLINE = 0
ValenAct_TREE_STATE = 1
ValenAct_TSK_STATE = 2
ValenAct_TSK_PUBTIME = 3
ValenAct_TSK_CREATETIME = 4
ValenAct_TSK_ID_AND_RANDOMTIME = 5
ValenAct_TSK_ACCTIME = 6
ValenAct_TSK_SCORE = 7
ValenAct_TSK_AWARD = 8
ValenAct_TSK_SINGLE_TIME = 9
--ValenAct_nLifePeriod = 30*60 
ValenAct_nMidTime = 60	-- ÿ���������δ��ȡʱ��
ValenAct_nLoopTime = 90	-- ÿ����������ȡδ���ʱ��
ValenAct_nStepTime = 300 -- �ɳ��׶�
ValenAct_nStepTaskTime = 270 -- ÿ���׶�����ʱ��
ValenAct_nStepPartTime = 30 -- ÿ���׶ο���ʱ��
ValenAct_nPickTime = 10*60  -- ��ժʱ��
ValenAct_nTskStepCount = 3
ValenAct_tbMap = {1,11,37,176,162,78,80, 174,121,153,101,99,100,20,53}
ValenAct_tbNpcId = {1252, 1253, 1254, 1255,}
ValenAct_nUnGrow = 0
ValenAct_nGrowing = 1
ValenAct_tbConfig = {
	["H�t Gi�ng Hoa H�ng"] = {nTeamSize = 2, nItemIndex = 3109, nSexScore = 1, 
		tbName = {"M�m hoa h�ng", "C�y hoa h�ng nh�", "C�y hoa h�ng ch�a tr� hoa", "C�y hoa h�ng n� ��y hoa", },
		tbDialog = {
			"Qu�n T�m T� Ng� T�m",
			"Ch�p T� Chi Th�, D� T� Giai L�o.",
			"Th� T�nh V� K� Ti�u Tr�,T�i H� Mao ��u, Kh��c Th��ng T�m ��u.",
			"Ng� Nguy�n D� Qu�n T��ng Tri",
			"Nguy�n Thi�n H� H�u T�nh Nh�n Chung Th�nh Tr��c Thu�c.",
		},
		szAddStatKey = "qingrenjie_zhongmeiguihuazhong",
	},
	["��u H�ng"] = {nTeamSize = nil, nItemIndex = 3110,	nSexScore = nil,
		tbName = {"H�t Gi�ng ��u H�ng", "C�y ��u H�ng nh�", "C�y ��u H�ng ch�a ra hoa", "C�y ��u H�ng k�t tr�i", },
		tbDialog = {
			"H�ng ��u Sinh Nam Qu�c, Xu�n Lai Ph�t K� Chi",
			"Nguy�n Qu�n �a Th�i Hi�t, Th� V�t T�i T��ng T�.",
			"T�nh Nh�n O�n Dao, C�nh T�ch Kh�i T��ng T�.",
			"Tr��ng T��ng T�, Tr��ng T��ng T�, Nh��c V�n T��ng T� Th�m Li�u K�, Tr� Phi T��ng Ki�n Th�i.",
			"Tr��ng T�ng T�, Tr��ng T��ng T�, D�c B� T��ng T� Thuy�t T� Th�y, Thi�n T�nh Nh�n B�t Tri.",
			"Tr��ng T��ng T� H� Tr��ng T��ng �c, �o�n T��ng T� H� V� C�ng C�c.",
		},
		szAddStatKey = "qingrenjie_zhonghongdou",
	},
}
ValenAct_nRedLineIndex = 3111
ValenAct_Op = {"T��i n��c", "B�n ph�n", "C�t c� d�i", "B�t s�u",}