---------------Youtube PGaming---------------
IncludeLib("SETTING");
-----------------------------------------------------------
nTSK_USE_TIMES_LIMIT	 = 5775
nTSK_USE_COUNT_LIMIT	 = 5774
nUSE_COUNT_LIMIT	 = 5
-------------------------------
function main()

	local nDate = tonumber(GetLocalDate("%d"))
	if (GetTask(nTSK_USE_TIMES_LIMIT) ~= nDate) then
		SetTask(nTSK_USE_TIMES_LIMIT, nDate)
		SetTask(nTSK_USE_COUNT_LIMIT, 0)
	end
	
	if (GetTask(nTSK_USE_COUNT_LIMIT) >= nUSE_COUNT_LIMIT) then
		Talk(1,"","M�i Ng�y Ch� ���c s� d�ng 5 ng��i tuy�t th��ng")
		return 1
	end
		AddSkillState(440, 1, 1, 64800 * 0.1);
		SetTask(nTSK_USE_COUNT_LIMIT, GetTask(nTSK_USE_COUNT_LIMIT) + 1)
end