Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName="Ph� Tang Di�n Tr�o",tbProp={0,11,494,1,0,0},nCount=2,nExpiredTime=180},
}


function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 2
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbAward, "S� d�ng Ph� Tang C�m H�p", 1)
	return 0
end