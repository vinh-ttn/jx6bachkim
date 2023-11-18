Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><Vi�m �� B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbYdbz_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}

tbYdbz_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "Vi�m �� B� B�o")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "Vi�m �� B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Vi�m �� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "Vi�m �� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Vi�m �� B� B�o")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName="Ch�a Kh�a Nh� �",tbProp={6,1,2744,1,0,0},nCount=1,nRate=1.974,nExpiredTime=20160},
		{szName="Ng�c Qu�n",tbProp={6,1,2311,1,0,0},nCount=1,nRate=1},
		{szName="M�c Nh�n L�nh",tbProp={6,1,30105,1,0,0},nCount=2,nRate=3},
		{szName="Ho�n H�n ��n",tbProp={6,1,2837,1,0,0},nCount=1,nRate=2,nExpiredTime=43200},
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Vi�m �� B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Vi�m �� B� B�o")
					end,
					nRate = 25,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(8000000, "Vi�m �� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(10000000, "Vi�m �� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(15000000, "Vi�m �� B� B�o")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 6", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "Vi�m �� B� B�o")
					end,
					nRate = 2,
		},
		{szName="�i�m kinh nghi�m 7", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "Vi�m �� B� B�o")
					end,
					nRate = 1,
		},
		{szName="T� M�ng Chi B�o (N�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={1,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (H�ng Li�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={0,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Gi�y)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.02,tbParam={7,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Bao Tay)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={3,0,0,0,0,0}, CallBack = _Message},
		{szName="T� M�ng Chi B�o (Nh�n Tr�n)",tbProp={6,1,30140,1,0,0},nCount=1,nRate=0.01,tbParam={2,0,0,0,0,0}, CallBack = _Message},
		{szName="Th��ng Lang Th�ch",tbProp={6,1,2712,1,0,0},nCount=1,nRate=0.01},
		{szName="Ho�ng Kim �n (C��ng h�a)",tbProp={0,3211},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
		{szName="Ho�ng Kim �n (Nh��c h�a)",tbProp={0,3221},nCount=1,nRate=0.15,nQuality = 1,nExpiredTime=10080,},
		{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nCount=1,nRate=0.008},
		{szName="�� Ph� B�ch H� V� Kh�",tbProp={6,1,3182,1,0,0},nCount=1,nRate=0.004},
		{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.001},
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
	local tbKey1 = tbYdbz_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbYdbz_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Vi�m �� B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnYdbzBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnYdbzBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnYdbzBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbYdbz_Key_Require[strKeyType]
	local tbAward = tbYdbz_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Vi�m �� B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 2805, -1) ~= 1 then
		Say("Kh�ng t�m th�y Vi�m �� B� B�o", 1, "��ng/no")
		return
	end
	tbAwardTemplet:Give(tbAward, 1, {"YDBZ", "use yandimibao"})	
end