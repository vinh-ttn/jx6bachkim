Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

function main()
local nNam = tonumber(GetLocalDate("%Y")); 
local nThang = tonumber(GetLocalDate("%m")); 
local nNgay = tonumber(GetLocalDate("%d")); 
dofile("/script/global/hoanghuan/item/hoangkimcl.lua")
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", "<#>Xin h�y s�p x�p l�i h�nh trang �t nh�t c�n tr�ng 5 � r�i h�y m� B�o R��ng")
		return 1
	end
    	--ConsumeEquiproomItem(1, 6, 2812, 1, -1);--�۳���ʹ����
    	local tbAward = 
    	{
	{szName="T�y T�y Kinh",  tbProp={6,1,22,90,0,0},nRate=1,nBindState = -2},
	{szName="V� L�m M�t T�ch", tbProp={6,1,26,90,0,0},nRate=1,nBindState = -2},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=1,nBindState = -2,nCount = 100},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=2,nBindState = -2,nCount = 50},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=5,nBindState = -2,nCount = 40},
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 30},
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 20},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 10},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 9},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 8},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 7},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 6},
	{szName="Ti�n ��ng", tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 5},
	{szName="Ti�n ��ng",  tbProp={4,417,1,1,0,0,0},nRate=10,nBindState = -2,nCount = 1},	
    	}
    	tbAwardTemplet:GiveAwardByList(tbAward, format("USE %s", "B�o R��ng Ho�ng Kim"))
    	return
end