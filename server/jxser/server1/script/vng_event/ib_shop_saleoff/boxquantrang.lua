Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName="M�t n� - Anh h�ng chi�n tr��ng",tbProp={0,11,482,1,0,0},nCount=1,nExpiredTime=10080,nUsageTime=60},	
}

function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 1
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbAward, "sudungquangtrangcamhop", 1)
	return 0
end