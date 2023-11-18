-- Author by AloneScript (Linh Em)
-- Date: 09/09/2018 - 21:24
-- Script: Nh�n trang b� xanh
-- Function: GetItemBlue()

Include("\\script\\dailogsys\\dailogsay.lua")

ITEM_BLUE = {
	["D�y chuy�n"] = {
		{szName="To�n Th�ch H�ng Li�n", tbProp={0,4,0}, nWidth=2, nHeight=1},
		{szName="L�c Ph� Th�y H� Th�n Ph�", tbProp={0,4,1}, nWidth=2, nHeight=1},
	},
	
	["Gi�p y"] = {
		{szName="Th�t B�o C� Sa", tbProp={0,2,0}, nWidth=2, nHeight=3},
		{szName="Ch�n V� Th�nh Y", tbProp={0,2,1}, nWidth=2, nHeight=3},
		{szName="Thi�n Nh�n M�t Trang", tbProp={0,2,2}, nWidth=2, nHeight=3},
		{szName="Gi�ng Sa B�o", tbProp={0,2,3}, nWidth=2, nHeight=3},
		{szName="���ng Ngh� Gi�p", tbProp={0,2,4}, nWidth=2, nHeight=3},
		{szName="V�n L�u Quy T�ng Y", tbProp={0,2,5}, nWidth=2, nHeight=3},
		{szName="Tuy�n Long B�o", tbProp={0,2,6}, nWidth=2, nHeight=3},
		{szName="Long Ti�u ��o Y", tbProp={0,2,8}, nWidth=2, nHeight=3},
		{szName="C�u V� B�ch H� Trang", tbProp={0,2,9}, nWidth=2, nHeight=3},
		{szName="T�ch L�ch Kim Ph�ng Gi�p", tbProp={0,2,11}, nWidth=2, nHeight=3},
		{szName="V�n Ch�ng T� T�m Y", tbProp={0,2,12}, nWidth=2, nHeight=3},
		{szName="L�u Ti�n Qu�n", tbProp={0,2,13}, nWidth=2, nHeight=3},
	},
	
	["Th�t l�ng"] = {
		{szName="Thi�n T�m Y�u ��i", tbProp={0,6,0}, nWidth=2, nHeight=1},
		{szName="B�ch Kim Y�u ��i", tbProp={0,6,1}, nWidth=2, nHeight=1},
	},
	
	["Gi�y"] = {
		{szName="C�u Ti�t X��ng V� Ngoa", tbProp={0,5,0}, nWidth=2, nHeight=2},
		{szName="Thi�n T�m Ngoa", tbProp={0,5,1}, nWidth=2, nHeight=2},
		{szName="Kim L� h�i", tbProp={0,5,2}, nWidth=2, nHeight=2},
		{szName="Phi Ph�ng Ngoa", tbProp={0,5,3}, nWidth=2, nHeight=2},
	},
	
	["Bao tay"] = {
		{szName="Long Ph�ng Huy�t Ng�c Tr�c", tbProp={0,8,0}, nWidth=1, nHeight=2},
		{szName="Thi�n T�m H� Uy�n", tbProp={0,8,1}, nWidth=1, nHeight=2},
	},
	
	["N�n"] = {
		{szName="T� L� M�o", tbProp={0,7,0}, nWidth=2, nHeight=2},
		{szName="Ng� L�o Qu�n", tbProp={0,7,1}, nWidth=2, nHeight=2},
		{szName="Tu La Ph�t K�t", tbProp={0,7,2}, nWidth=2, nHeight=2},
		{szName="Th�ng Thi�n Ph�t Qu�n", tbProp={0,7,3}, nWidth=2, nHeight=2},
		{szName="Y�m Nh�t Kh�i", tbProp={0,7,4}, nWidth=2, nHeight=2},
		{szName="Tr�ch Tinh Ho�n", tbProp={0,7,5}, nWidth=2, nHeight=2},
		{szName="� T�m M�o", tbProp={0,7,6}, nWidth=2, nHeight=2},
		{szName="Quan �m Ph�t Qu�n", tbProp={0,7,7}, nWidth=2, nHeight=2},
		{szName="�m D��ng V� C�c Qu�n", tbProp={0,7,8}, nWidth=2, nHeight=2},
		{szName="Huy�n T� Di�n Tr�o", tbProp={0,7,9}, nWidth=2, nHeight=2},
		{szName="Long Huy�t ��u Ho�n", tbProp={0,7,10}, nWidth=2, nHeight=2},
		{szName="Long L�n Kh�i", tbProp={0,7,11}, nWidth=2, nHeight=2},
		{szName="Thanh Tinh Thoa", tbProp={0,7,12}, nWidth=2, nHeight=2},
		{szName="Kim Ph�ng Tri�n S�", tbProp={0,7,13}, nWidth=2, nHeight=2},
	},
	
	["Ng�c b�i"] = {
		{szName="Long Ti�n H��ng Nang", tbProp={0,9,0}, nWidth=1, nHeight=2},
		{szName="D��ng Chi B�ch Ng�", tbProp={0,9,1}, nWidth=1, nHeight=2},
	},
	
	["Nh�n"] = {
		{szName="To�n Th�ch Gi�i Ch�", tbProp={0,3,0}, nWidth=1, nHeight=1},
	},
	
	["V� kh� c�n chi�n"] = {
		{szName="Huy�n Thi�t Ki�m", tbProp={0,0,0}, nWidth=1, nHeight=3},
		{szName="��i Phong �ao", tbProp={0,0,1}, nWidth=1, nHeight=3},
		{szName="Kim C� B�ng", tbProp={0,0,2}, nWidth=1, nHeight=3},
		{szName="Ph� Thi�n K�ch", tbProp={0,0,3}, nWidth=1, nHeight=4},
		{szName="Ph� Thi�n ch�y", tbProp={0,0,4}, nWidth=2, nHeight=2},
		{szName="Th�n Nh�t Tr�m", tbProp={0,0,5}, nWidth=2, nHeight=3},
	},
	
	["V� kh� t�m xa"] = {
		{szName="B� V��ng Ti�u", tbProp={0,1,0}, nWidth=1, nHeight=1},
		{szName="To�i Nguy�t �ao", tbProp={0,1,1}, nWidth=1, nHeight=1},
		{szName="Kh�ng T��c Linh", tbProp={0,1,2}, nWidth=2, nHeight=2},
	},
}

SAYENDNOW = {"K�t th�c ��i tho�i.", no};

function GetItemBlue()
	local szTitle = "B�n mu�n l�y trang b� lo�i n�o?"
	local tbOpt = {};
	for x, y in ITEM_BLUE do
		tinsert(tbOpt, {x, GoTypeGetItemBlue, {x}})
	end
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoTypeGetItemBlue(szKind)
	local szTitle = "B�n mu�n l�y trang b� ki�u n�o?";
	local tbOpt = {};
	for i = 1, getn(ITEM_BLUE[szKind]) do
		tinsert(tbOpt, {ITEM_BLUE[szKind][i].szName, GoSeriesGetItemBlue, {szKind, i}})
	end
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoSeriesGetItemBlue(szKind, nType)
	local szTitle = "B�n mu�n l�y trang b� h� n�o?";
	local tbOpt = {};
		tinsert(tbOpt, {"Kim", GoInputCountGetItemBlue, {szKind, nType, 0}})
		tinsert(tbOpt, {"M�c", GoInputCountGetItemBlue, {szKind, nType, 1}})
		tinsert(tbOpt, {"Th�y", GoInputCountGetItemBlue, {szKind, nType, 2}})
		tinsert(tbOpt, {"H�a", GoInputCountGetItemBlue, {szKind, nType, 3}})
		tinsert(tbOpt, {"Th�", GoInputCountGetItemBlue, {szKind, nType, 4}})
	tinsert(tbOpt, SAYENDNOW)
	CreateNewSayEx(szTitle, tbOpt)
end

function GoInputCountGetItemBlue(szKind, nType, nSeries)
	g_AskClientNumberEx(0, 10, "Nh�p s� l��ng:", {GoGetItemBlue, {szKind, nType, nSeries}})
end

function GoGetItemBlue(szKind, nType, nSeries, nCount)
	local nWidth = ITEM_BLUE[szKind][nType].nWidth
	local nHeight = ITEM_BLUE[szKind][nType].nHeight
	local nCountRoom = CountFreeRoomByWH(nWidth,nHeight)
	if (nCountRoom < nCount) then
		Talk(1, "", format("H�nh trang c�a b�n kh�ng �� %d (%dx%d) ch� tr�ng.", nCountRoom, nWidth,nHeight))
	return end
	local tbItemBlue = ITEM_BLUE[szKind][nType].tbProp;
	for i = 1, nCount do
		--AddItem(tbItemBlue[1], tbItemBlue[2], tbItemBlue[3], 10, nSeries, 250, 10)
		AddItemEx(0,random(),0,tbItemBlue[1],tbItemBlue[2],tbItemBlue[3],10,nSeries,127,10,10,10,10,10,10,0)
		
	end
end