---------------Youtube PGaming---------------
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

tab_material = {
{	"Gi�y ki�ng v�ng (V�t li�u l�m l�ng ��n)"	,	1221	,	2635	}	,
{	"Gi�y ki�ng �� (V�t li�u l�m l�ng ��n)"	,	1224	,	50	}	,
{	"Gi�y ki�ng l�c (V�t li�u l�m l�ng ��n)"	,	1223	,	300	}	,
{	"Gi�y ki�ng cam (V�t li�u l�m l�ng ��n)"	,	1225	,	15	}	,
{	"Gi�y ki�ng lam (V�t li�u l�m l�ng ��n)"	,	1222	,	1000	}	,
{	"Thanh tre (V�t li�u l�m l�ng ��n)"	,	1226	,	2000	}	,
{	"D�y cai (V�t li�u l�m l�ng ��n)"	,	1227	,	2000	}	,
{	"N�n"	,	1228	,	2000	}	,
}

function IsPickable( nItemIndex, nPlayerIndex )
	return 1;
end

function PickUp( nItemIndex, nPlayerIndex )
local nYear  = tonumber(date("%y"));
local nTime = "20"..nYear.."1101"
	local nSeed = random(1, 10000);
	local nSum = 0;
	for i = 1, getn(tab_material) do
		nSum = nSum + tab_material[i][3];
		if (nSeed < nSum) then
			tbAwardTemplet:GiveAwardByList({tbProp = {6,1,tab_material[i][2],1,0,0}, nExpiredTime=nTime}, "test", 1);
			Msg2Player("B�n nh�n ���c <color=yellow>"..tab_material[i][1]..". <color>");
			return 0;
		end;
	end;
	AddItem(6, 1, tab_material[1][2], 1, 0, 0, 0);
	Msg2Player("B�n nh�n ���c <color=yellow>"..tab_material[1][1]..". <color>");
    return 0;
end
