-- ���������Ʒ��������һ����Ʒ��
-- By: Wangjingjun(2011-02-17)

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><T�ng Kim B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbSJ_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbSJNewAward = 
{	
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "T�ng Kim B� B�o")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "T�ng Kim B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "T�ng Kim B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "T�ng Kim B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "T�ng Kim B� B�o")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nCount=1,nRate=0.008},
		{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nCount=1,nRate=0.008},
		{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.005},
		{szName="�� Ph� Kim � Kh�i",tbProp={6,1,2982,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � Y",tbProp={6,1,2983,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � H�i",tbProp={6,1,2984,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � Y�u ��i",tbProp={6,1,2985,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � H� Uy�n",tbProp={6,1,2986,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � H�ng Li�n",tbProp={6,1,2987,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � B�i",tbProp={6,1,2988,1,0,0},nCount=1,nRate=2},
		{szName="�� Ph� Kim � Th��ng Gi�i",tbProp={6,1,2989,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Kim � H� Gi�i",tbProp={6,1,2990,1,0,0},nCount=1,nRate=0.5},
		{szName="�� Ph� Kim � Kh� Gi�i",tbProp={6,1,2991,1,0,0},nCount=1,nRate=0.2},
		{szName="Kim � L�nh",tbProp={6,1,2349,1,0,0},nCount=1,nRate=0.02},
		{szName="B�o R��ng Kim � H� Gi�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={10,0,0,0,0,0},nRate=0.01,CallBack = _Message},
		{szName="B�o R��ng Kim � Th��ng Gi�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.01,CallBack = _Message},
		{szName="B�o R��ng Kim � H�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.01,CallBack = _Message},
		{szName="B�o R��ng Kim � Y�u ��i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.01,CallBack = _Message},
		{szName="B�o R��ng Kim � H� Uy�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.01,CallBack = _Message},
		{szName="B�o R��ng Kim � V� Kh�",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={7,0,0,0,0,0},nRate=0.005,CallBack = _Message},
		{szName="T�ng Kim Chi�u Binh L� Bao",tbProp={6,1,30084,1,0,0},nCount=1,nRate=2,nExpiredTime=10080},
		{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=1,nRate=1,nExpiredTime=20160},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.01,nExpiredTime=43200},
		{szName="Ph� Th�y Chi B�o",tbProp={6,1,3003,1,0,0},nCount=1,nRate=0.129},
		{szName="Ti�u Di�u T�n",tbProp={6,1,2831,1,0,0},nCount=1,nRate=2,nExpiredTime=20160},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "T�ng Kim B� B�o")
					end,
					nRate = 33,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "T�ng Kim B� B�o")
					end,
					nRate = 25,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "T�ng Kim B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "T�ng Kim B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "T�ng Kim B� B�o")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "T�ng Kim B� B�o")
					end,
					nRate = 2,
		},
		{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "T�ng Kim B� B�o")
					end,
					nRate = 1,
		},
		{szName="T� M�ng Chi B�o (�o)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={5,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Ng�c B�i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={8,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Nh�n D��i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={9,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (�ai L�ng)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={4,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (V� Kh�)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={6,0,0,0,0,0}, CallBack = _Message},	
		{szName="Phi phong Kinh L�i (D�ch chuy�n t�c th�i)",tbProp={0,3470},nCount=1,nRate=0.05,nQuality = 1,nExpiredTime=10080,},
		{szName="Phi phong Kinh L�i (X�c su�t h�a gi�i s�t th��ng)",tbProp={0,3471},nCount=1,nRate=0.05,nQuality = 1,nExpiredTime=10080,},
		{szName="Phi phong Kinh L�i ( Tr�ng k�ch )",tbProp={0,3472},nCount=1,nRate=0.05,nQuality = 1,nExpiredTime=10080,},
		{szName="Qu� Ho�ng Kim",tbProp={6,1,907,1,0,0},nCount=1,nRate=0.335,nExpiredTime=43200},
	},	
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
	local tbKey1 = tbSJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbSJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnSJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1	
end
function Oncancel()end

function VnSJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbSJ_Key_Require[strKeyType]
	local tbAward = tbSJNewAward[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2741, -1) ~= 1 then
		Say("Kh�ng t�m th�y T�ng Kim B� B�o", 1, "��ng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"SongJin", "use songjingmibao"})	
	AddStatData("baoxiangxiaohao_kaisongjinmibao", 1)	
end