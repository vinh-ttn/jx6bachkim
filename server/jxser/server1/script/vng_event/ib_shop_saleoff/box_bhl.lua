Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{	
	{szName = "B�ch H� L�nh", tbProp = {6,1,2357,1,0,0}, nCount = 10},	
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