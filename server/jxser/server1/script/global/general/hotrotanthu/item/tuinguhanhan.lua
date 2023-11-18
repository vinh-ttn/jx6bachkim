Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

TAB_NGUHANHAN = {
	[1] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3205}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3215}, nQuality=1, nBindState=-2},
	},
	[2] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3206}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3216}, nQuality=1, nBindState=-2},
	},
	[3] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3207}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3217}, nQuality=1, nBindState=-2},
	},
	[4] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3208}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3218}, nQuality=1, nBindState=-2},
	},
	[5] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3209}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3219}, nQuality=1, nBindState=-2},
	},
	[6] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3210}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3220}, nQuality=1, nBindState=-2},
	},
	[7] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3211}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3221}, nQuality=1, nBindState=-2},
	},
	[8] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3212}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3222}, nQuality=1, nBindState=-2},
	},
	[9] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3213}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3223}, nQuality=1, nBindState=-2},
	},
	[10] = {
		{szName="Ho�ng Kim �n (C��ng h�a)", tbProp={0,3214}, nQuality=1, nBindState=-2},
		{szName="Ho�ng Kim �n (Nh��c h�a)", tbProp={0,3224}, nQuality=1, nBindState=-2},
	},
}

function main(nItemIndex)
	dofile("script/global/general/hotrotanthu/item/tuinguhanhan.lua")
	local nG,nD,nP,nL,nS,nM = GetItemProp(nItemIndex)
	print(nG,nD,nP,nL,nS,nM)
	if not (TAB_NGUHANHAN[nL]) then
		Talk(1, "", "��ng c�p ng� h�nh �n n�y kh�ng ���c h� tr�!")
	return 1 end;
	
	local szTitle = "M�i b�n l�a ch�n ng� h�nh �n:";
	local tbOpt = {}
	for i = 1, getn(TAB_NGUHANHAN[nL]) do
		tinsert(tbOpt, {format("%s", TAB_NGUHANHAN[nL][i].szName), PhiPhongConfirm, {nItemIndex, TAB_NGUHANHAN[nL][i]}})
	end
		tinsert(tbOpt, {"��ng."})
	CreateNewSayEx(szTitle, tbOpt)
return 1 end

function PhiPhongConfirm(nItemIndex, tbItem)
	tbAwardTemplet:GiveAwardByList(tbItem, "T�i ng� h�nh �n")
	RemoveItemByIndex(nItemIndex);
end