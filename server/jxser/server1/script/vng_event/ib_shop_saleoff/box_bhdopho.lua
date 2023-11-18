Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{	
	{szName="�� Ph� B�ch H� Kh�i",tbProp={6,1,3173,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� Y",tbProp={6,1,3174,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� H�i",tbProp={6,1,3175,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� Y�u ��i",tbProp={6,1,3176,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� H� Uy�n",tbProp={6,1,3177,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� H�ng Li�n",tbProp={6,1,3178,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� B�i",tbProp={6,1,3179,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� Th��ng Gi�i",tbProp={6,1,3180,1,0,0},nCount=8},
	{szName="B�ch H� �� Ph� H� Gi�i",tbProp={6,1,3181,1,0,0},nCount=8},
	{szName="�� Ph� B�ch H� V� Kh�",tbProp={6,1,3182,1,0,0},nCount=8},
}

function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 10
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:Give(%tbAward, 1)
	return 0
end