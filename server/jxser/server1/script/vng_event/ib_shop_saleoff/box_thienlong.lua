Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName = "Thi�n Long L�nh", tbProp = {6,1,2256,1,0,0}, nCount = 2, nExpiredTime=4320},	
}


function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 2
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbAward, "S� d�ng Thi�n Long L� H�p", 1)
	return 0
end