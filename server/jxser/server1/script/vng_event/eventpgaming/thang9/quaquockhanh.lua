---------------Youtube PGaming---------------
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\item\\newyear_2009\\head.lua");
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1001"
tb_bluebox_item	=
{
	[1]	= {szName="M�nh b�n �� 1",	tbProp={4, 490, 1, 0, 0, 0},	nRate = 10},
	[2]	= {szName="M�nh b�n �� 2",	tbProp={4, 491, 1, 0, 0, 0},	nRate = 10},
	[3]	= {szName="M�nh b�n �� 3",	tbProp={4, 492, 1, 0, 0, 0},	nRate = 10},
	[4]	= {szName="M�nh b�n �� 4",	tbProp={4, 493, 1, 0, 0, 0},	nRate = 10},
	[5]	= {szName="M�nh b�n �� 5",	tbProp={4, 494, 1, 0, 0, 0},	nRate = 10},
	[6]	= {szName="M�nh b�n �� 6",	tbProp={4, 495, 1, 0, 0, 0},	nRate = 10},
	[7]	= {szName="M�nh b�n �� 7",	tbProp={4, 496, 1, 0, 0, 0},	nRate = 10},
	[8]	= {szName="M�nh b�n �� 8",	tbProp={4, 497, 1, 0, 0, 0},	nRate = 5},
	[9]	= {szName="M�nh b�n �� 9",	tbProp={4, 498, 1, 0, 0, 0},	nRate = 5},
	[10]	= {szName="M�nh b�n �� 10",	tbProp={4, 499, 1, 0, 0, 0},	nRate = 5},
	[11]	= {szName="M�nh b�n �� 11",	tbProp={4, 500, 1, 0, 0, 0},	nRate = 5},
	[12]	= {szName="M�nh b�n �� 12",	tbProp={4, 501, 1, 0, 0, 0},	nRate = 5},
	[13]	= {szName="huy ch��ng qu�c kh�nh",	tbProp={6, 1, 1496, 1, 0, 0},	nRate = 5, nExpiredTime = nTime},
};

function main()
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."1001"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime2) then
		Msg2Player("V�t ph�m n�y �� qu� h�n.");
		return 0;
	end
	
	if (CalcFreeItemCellCount() < 6) then
		Msg2Player("H�nh trang c�a ��i hi�p kh�ng �� ch� tr�ng!");
		return 1;
	end
	tbAwardTemplet:GiveAwardByList(tb_bluebox_item, "Bao L� X�");
end

function IsPickable( nItemIndex, nPlayerIndex )
local nYear  = tonumber(date("%y"));
local nTime2 = "20"..nYear.."1001"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow > nTime2) then
		return 0;
	end
	if( IsMyItem( nItemIndex ) ) then
		if (ITEM_GetExpiredTime(nItemIndex) == 0) then
			ITEM_SetExpiredTime(nItemIndex, nTime2);
			SyncItem(nItemIndex);
		end
		return 1;
	end
end