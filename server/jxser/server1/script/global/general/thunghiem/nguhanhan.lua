
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_NGUHANHAN = {
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 1", tbProp={0,3205}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 2", tbProp={0,3206}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 3", tbProp={0,3207}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 4", tbProp={0,3208}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 5", tbProp={0,3209}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 6", tbProp={0,3210}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 7", tbProp={0,3211}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 8", tbProp={0,3212}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 9", tbProp={0,3213}, nQuality=1},
	{szName="Ho�ng Kim �n (C��ng h�a) - C�p 10", tbProp={0,3214}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 1", tbProp={0,3215}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 2", tbProp={0,3216}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 3", tbProp={0,3217}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 4", tbProp={0,3218}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 5", tbProp={0,3219}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 6", tbProp={0,3220}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 7", tbProp={0,3221}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 8", tbProp={0,3222}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 9", tbProp={0,3223}, nQuality=1},
	{szName="Ho�ng Kim �n (Nh��c h�a) - C�p 10", tbProp={0,3224}, nQuality=1},
};

function NguHanhAn()
	AddItemByTable("B�n mu�n l�y �n lo�i n�o?", TAB_NGUHANHAN)
end


-- pEventType:Reg("T�nh n�ng th� nghi�m", "Ng� h�nh �n", NguHanhAn);