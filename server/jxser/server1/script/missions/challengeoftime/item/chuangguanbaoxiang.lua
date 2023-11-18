
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><B�o R��ng V��t �i><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbCOT_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbCOT_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "B�o r��ng v��t �i")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "B�o r��ng v��t �i")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "B�o r��ng v��t �i")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "B�o r��ng v��t �i")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B�o r��ng v��t �i")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
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
		{szName="B�o R��ng Kim � Kh�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, nRate=0.004, CallBack = _Message},
		{szName="B�o R��ng Kim � Th��ng Gi�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={3,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Kim � H�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Kim � Y�u ��i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},nRate=0.002, CallBack = _Message},
		{szName="B�o R��ng Kim � H� Uy�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},nRate=0.002, CallBack = _Message},		
		{szName="Thanh C�u Th�ch",tbProp={6,1,2710,1,0,0},nCount=1,nRate=0.5},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.005,nExpiredTime=43200},
		{szName="Kim Hoa Chi B�o",tbProp={6,1,3002,1,0,0},nCount=1,nRate=0.2},
		{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=2.666,nExpiredTime=43200},
		{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nCount=1,nRate=0.008},
		{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nCount=1,nRate=0.008},
		{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.001},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "B�o r��ng v��t �i")
					end,
					nRate = 35,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "B�o r��ng v��t �i")
					end,
					nRate = 25,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "B�o r��ng v��t �i")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "B�o r��ng v��t �i")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "B�o r��ng v��t �i")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "B�o r��ng v��t �i")
					end,
					nRate = 2,
		},
		{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "B�o r��ng v��t �i")
					end,
					nRate = 1,
		},		
		{szName="T� M�ng Chi B�o (�o)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={5,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Ng�c B�i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={8,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Nh�n D��i)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={9,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (�ai L�ng)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={4,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (V� Kh�)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={6,0,0,0,0,0}, CallBack = _Message},		
		{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,3211},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
		{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,3221},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)	
	local tbKey1 = tbCOT_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbCOT_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng V��t �i", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnCOTBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnCOTBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnCOTBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbCOT_Key_Require[strKeyType]
	local tbAward = tbCOT_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c B�o R��ng V��t �i", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2742, -1) ~= 1 then
		Say("Kh�ng t�m th�y B�o R��ng V��t �i", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"chuangguan", "use chuangguanbaoxiang"})
	AddStatData("baoxiangxiaohao_kaichuangguanbaoxiang", 1)	--��������һ��
end