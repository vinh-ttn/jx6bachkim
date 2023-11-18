Include("\\script\\lib\\awardtemplet.lua")

local tbAward = 
{
	--{szName = "K�ch C�ng Tr� L�c Ho�n", tbProp = {6,1,2952,1,0,0}, nCount = 5, nExpiredTime=4320},	
	{szName = "Long Huy�t Ho�n", tbProp = {6,1,2117,1,0,0}, nCount = 1,nExpiredTime=1440},	
	{szName = "Vi�m �� L�nh", tbProp = {6,1,1617,1,0,0}, nCount = 1,nExpiredTime=1440},	
	{szName = "Thi�n B�o Kh� L�nh", tbProp = {6,1,2813,1,0,0}, nCount = 1,nExpiredTime=1440},	
	{szName = "L�nh B�i Th�y T�c", tbProp = {6,1,2745,1,0,0}, nCount = 1,nExpiredTime=1440},	
}

function main(nItemIndex)
	local nWidth = 1
	local nHeight = 1
	local nCount = 5
	if CountFreeRoomByWH(nWidth, nHeight, nCount) < nCount then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nCount, nWidth, nHeight))
		return 1
	end
	tbAwardTemplet:Give(%tbAward, 1, {"GiamGia30Thang4", "SuDungBachQuanLeBao"})
	return 0
end