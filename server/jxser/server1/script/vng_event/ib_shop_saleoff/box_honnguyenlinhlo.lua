Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	{szName = "H�n Nguy�n Linh L�", tbProp = {6,1,2312,1,0,0}, nCount = 10},	
}


function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 5
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:Give(%tbAward, 1, {"GiamGia30Thang4", "SuDungHNLLLeBao"})
	return 0
end