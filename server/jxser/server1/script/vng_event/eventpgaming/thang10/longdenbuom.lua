---------------Youtube PGaming---------------
IncludeLib("ITEM")
-----------------------------------------------------------
nTSK_USE_TIMES_LIMIT	 = 5769
nTSK_USE_COUNT_LIMIT	 = 5768
nUSE_COUNT_LIMIT	 = 5
-------------------------------
if (not __H_ITEM_LIGHTCAGE__) then
	__H_ITEM_LIGHTCAGE__ = 1;
	
Include([[\script\event\mid_autumn06\head.lua]]);

AU06_MINUTE = 18 * 60;
tab_light = {
	{1241, "L�ng ��n b��m b��m", 10},
	{1242, "L�ng ��n ng�i sao", 20},
	{1243, "L�ng ��n �ng", 30},
	{1244, "L�ng ��n tr�n", 40},
	{1245, "L�ng ��n c� ch�p", 50},
	{1246, "L�ng ��n k�o qu�n", 60}
}
end

function main(sel)
local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));

	local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(nTSK_USE_TIMES_LIMIT) ~= nDate) then
		SetTask(nTSK_USE_TIMES_LIMIT, nDate)
		SetTask(nTSK_USE_COUNT_LIMIT, 0)
	end
	
	if (GetTask(nTSK_USE_COUNT_LIMIT) >= nUSE_COUNT_LIMIT) then
		Talk(1,"","M�i Ng�y Ch� ���c s� d�ng 5 l�ng �`n b��m b��m")
		return 1
	end
local nYear  = tonumber(date("%y"));
local nTime  = "20"..nYear..""
local nTime1 = "20"..nYear.."1101"
local nTime2 = "20"..nYear.."1001"
local nYMD  = tonumber(date("%y%m%d%H%M"))
local nDayNow = "20"..nYMD..""
	if (nDayNow >= nTime1 or nDayNow < nTime2 or gb_GetTask("midautumn2006_city_all", 1) ~= 0) then --
		Say("Ho�t ��ng k�t th�c kh�ng th� s� d�ng.", 0);
		return 1;
	end;
	
	if GetLevel() < 50 then
	Talk(1,"","Ch�a �� c�p 50 kh�ng th� s� d�ng")
	return 1 end
	
	
	w, x, y = GetWorldPos();
	world = SubWorldID2Idx(w);
	DropItem(world, x * 32, y * 32, -1, 6, 1, tab_light[1][1], 1, 0, 0, 0);

		AddSkillState(440, 1, 1, 64800 * 0.1);
	SetTask(nTSK_USE_COUNT_LIMIT, GetTask(nTSK_USE_COUNT_LIMIT) + 1)
end

function IsPickable( nItemIndex, nPlayerIndex )
    if (1 == GetItemParam(nItemIndex, 1)) then
       return 1;
    end
    Msg2Player("<color=yellow> s�c m�u lung linh r�c r�<color>")
	return 0;
end

function PickUp( nItemIndex, nPlayerIndex )
    return 1;
end