Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\common.lua")

tbGoodsList = 
{
	{ szName="H�nh Qu�n ��n ��c bi�t", nJxb = 0, tbItem = { tbProp={6,1,1957,1,0,0},}},
	{ szName="C�m nang thay ��i tr�i ��t", nJxb = 500000, tbItem = { tbProp={6,1,1781,1,0,0}, tbParam={60}}},
	{ szName="H�i Thi�n T�i T�o ��n", nJxb = 10000, tbItem = { tbProp={1,8,0,4,0,0},}},
}

--�����
function main()
	local szTitle = "Ng��i c� c�n g� kh�ng? <enter>"..format("%s%s<enter>", strfill_left("v�t ph�m ", 30), strfill_left("Gi� c� ( l��ng )", 20))
	local tbOpt = {}
	for i=1, getn(tbGoodsList) do
		
		local pGoods = tbGoodsList[i]
		local pOpt = {}
		szTitle = szTitle..format("%s%s<enter>", strfill_left(pGoods.szName, 30), strfill_left(pGoods.nJxb, 20))
		pOpt = {pGoods.szName, _buy_ask_number, {pGoods}}
		tinsert(tbOpt, pOpt)
	end
	tinsert(tbOpt, {"Kh�ng c�n ��u! C�m �n!"})
	CreateNewSayEx(szTitle, tbOpt)
end

function _buy_ask_number(pGoods)
	local nMaxCount = CalcFreeItemCellCount()
	if pGoods.nJxb > 0 then
		local nCount = floor(GetCash() / pGoods.nJxb)
		if nMaxCount > nCount then
			nMaxCount = nCount
		end
	end
	
	g_AskClientNumberEx(1, nMaxCount, "Xin m�i nh�p s�", {_buy_call_back, {pGoods}})
end

function _buy_call_back(pGoods, nCount)
	if CalcFreeItemCellCount() < nCount then
		return Talk(1, "", format("�t nh�t c�n ph�i c� <color=yellow>%d<color> � tr�ng h�nh trang", nCount))
	end
	if nCount <= 0 then
		return
	end
	
	local nMoney = nCount * pGoods.nJxb
	if GetCash() < nMoney then
		return Talk(1, "", format("Xin ��i hi�p l��ng th� ng�n l��ng trong h�nh trang kh�ng �� �� mua %d c�i %s", nCount, pGoods.szName))
	end
	if nMoney == 0 or Pay(nMoney) == 1 then
		tbAwardTemplet:Give(pGoods.tbItem, nCount, {"TRIP", "BUY"})
	end
end