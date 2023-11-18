Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("<color=green>Ch�c m�ng cao th� <color=yellow>%s<color=green> �� nh�n ���c <color=yellow><%s><color=green> t� <color=yellow><Thi�n Tr� B� B�o><color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

tbTCMJ_Key_Require = {
	["chiakhoanhuy"] = {6, 1, 2744},
	["chiakhoavang"] = {6, 1, 30191},
}
tbTCMJ_Box_Award = 
{
	["chiakhoanhuy"] = 
	{
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(1000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 52,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(2000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 30,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(3000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 10,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(4000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 5,
		},
		{szName="�i�m kinh nghi�m 5", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(5000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 3,
		},		
	},	
	["chiakhoavang"] = 
	{
		{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nCount=1,nRate=0.008},
		{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nCount=1,nRate=0.008},
		{szName="B�ch H� L�nh",tbProp={6,1,2357,1,0,0},nCount=1,nRate=0.005},
		{szName="Kim Hoa Chi B�o",tbProp={6,1,3002,1,0,0},nCount=1,nRate=0.3},
		{szName="Ph� Th�y Chi B�o",tbProp={6,1,3003,1,0,0},nCount=1,nRate=0.2},
		{szName="Phong V�n Chi B�o",tbProp={6,1,3004,1,0,0},nCount=1,nRate=0.1},
		{szName="B�o R��ng Kim � Kh�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={2,0,0,0,0,0}, CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � Y",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={6,0,0,0,0,0},CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � H�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={8,0,0,0,0,0},CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � Y�u ��i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={5,0,0,0,0,0},CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � H� Uy�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={4,0,0,0,0,0},CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � H�ng Li�n",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={1,0,0,0,0,0},CallBack = _Message, nRate=0.01},
		{szName="B�o R��ng Kim � B�i",tbProp={6,1,30190,1,0,0},nCount=1,tbParam={9,0,0,0,0,0}, CallBack = _Message, nRate=0.01},
		{szName="M�t t�ch k� n�ng 150 (C�p 19)",tbProp={6,1,30170,1,0,0},nCount=1,nRate=0.02},
		{szName="M�t t�ch k� n�ng 150 (C�p 20)",tbProp={6,1,30171,1,0,0},nCount=1,nRate=0.02},
		{szName="M�t n� - Anh h�ng chi�n tr��ng",tbProp={0,11,482,1,0,0},nCount=1,nRate=0.1,nExpiredTime=10080,nUsageTime=60},
		{szName="H�i thi�n t�i t�o l� bao",tbProp={6,1,2527,1,0,0},nCount=1,nRate=1.05,nExpiredTime=43200},
		{szName="Ch�a Kh�a Nh� �",tbProp={6,1,2744,1,0,0},nCount=1,nRate=4,nExpiredTime=20160},
		{szName="C�n Kh�n Song Tuy�t B�i",tbProp={6,1,2219,1,0,0},nCount=1,nRate=0.05,nExpiredTime=43200},
		{szName="V� �� H�",tbProp={0,3880},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="Thanh B�nh L�c",tbProp={0,3881},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="H�i Xu�n",tbProp={0,3882},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="Kh� M�c",tbProp={0,3883},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="L�u V�n ",tbProp={0,3884},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="N� Tr�ch",tbProp={0,3885},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="L�i H�a Ki�p",tbProp={0,3886},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="M� T�y Thi�n H��ng",tbProp={0,3887},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},
		{szName="�i�p V� Hoa Phi",tbProp={0,3888},nCount=1,nRate=0.5,nQuality = 1,nExpiredTime=1440,},		
		{szName="�i�m kinh nghi�m 1", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(6000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 80.069,
		},
		{szName="�i�m kinh nghi�m 2", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(12000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 6,
		},
		{szName="�i�m kinh nghi�m 3", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(20000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 3,
		},
		{szName="�i�m kinh nghi�m 4", 
					pFun = function (tbItem, nItemCount, szLogTitle)
						%tbvng_ChestExpAward:ExpAward(50000000, "Thi�n Tr� B� B�o")
					end,
					nRate = 0.5,
		},	
	},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)	
	local tbKey1 = tbTCMJ_Key_Require["chiakhoanhuy"]
	local tbKey2 = tbTCMJ_Key_Require["chiakhoavang"]
	local nCount1 = CalcItemCount(3, tbKey1[1], tbKey1[2], tbKey1[3], -1) 
	local nCount2 = CalcItemCount(3, tbKey2[1], tbKey2[2], tbKey2[3], -1) 
	if nCount1 == 0 and nCount2 == 0 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Thi�n Tr� B� B�o", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end	
	local tbOpt = {}
	if nCount1 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a nh� �/#VnTCMJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoanhuy"))
	end
	if nCount2 ~= 0 then
		tinsert(tbOpt,format("S� d�ng Ch�a kh�a v�ng/#VnTCMJBoxNewAward(%d, '%s')", nIndexItem, "chiakhoavang"))
	end
	if getn(tbOpt) > 0 then
		tinsert(tbOpt, "��ng/Oncancel")
		Say("S� d�ng ch�a kh�a �� m� r��ng:", getn(tbOpt), tbOpt)
	end
	return 1
end

function Oncancel()end

function VnTCMJBoxNewAward(nItemIdx, strKeyType)
	local tbKey = tbTCMJ_Key_Require[strKeyType]
	local tbAward = tbTCMJ_Box_Award[strKeyType]
	if not tbKey or not tbAward then
		return
	end
	if ConsumeItem(3, 1, tbKey[1], tbKey[2], tbKey[3], -1) ~= 1 then
		Say("C�n ph�i c� Ch�a Kh�a V�ng ho�c Ch�a Kh�a Nh� � m�i c� th� m� ���c Thi�n Tr� B� B�o", 1, "��ng/no")
		return
	end
	
	if ConsumeItem(3, 1, 6, 1, 30193, -1) ~= 1 then
		Say("Kh�ng t�m th�y Thi�n Tr� B� B�o", 1, "��ng/no")
		return
	end	
	tbAwardTemplet:Give(tbAward, 1, {"ThienTriMatCanh", "SuDungThienTriBiBao"})	
end