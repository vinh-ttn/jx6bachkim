Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName = "�m D��ng Ho�t Huy�t ��n", tbProp = {6,1,2953,1,0,0}, nCount = 5, nExpiredTime=4320},	
}


function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 5
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:GiveAwardByList(%tbAward, "S� d�ng Ho�t Huy�t ��n L� Bao", 1)
	return 0
end