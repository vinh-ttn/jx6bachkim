Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")

TAB_PHIPHONG = {
	[1] = {
		{szName="Phi phong L�ng V�n", tbProp={0,3465}, nQuality=1, nBindState=-2},
	},
	[2] = {
		{szName="Phi phong Tuy�t Th�", tbProp={0,3466}, nQuality=1, nBindState=-2},
	},
	[3] = {
		{szName="Phi phong c�p Ph� Qu�n ( d�ch chuy�n t�c th�i )", tbProp={0,3467}, nQuality=1, nBindState=-2},
	},
	[4] = {
		{szName="Phi phong Ngao tuy�t (D�ch chuy�n t�c th�i)", tbProp={0,3468}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ng�o Tuy�t (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3469}, nQuality=1, nBindState=-2},
	},
	[5] = {
		{szName="Phi phong Kinh L�i (D�ch chuy�n t�c th�i)", tbProp={0,3470}, nQuality=1, nBindState=-2},
		{szName="Phi phong Kinh L�i (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3471}, nQuality=1, nBindState=-2},
		{szName="Phi phong Kinh L�i ( Tr�ng k�ch )", tbProp={0,3472}, nQuality=1, nBindState=-2},
	},
	[6] = {
		{szName="Phi phong Ng� Phong (D�ch chuy�n t�c th�i )", tbProp={0,3473}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ng� Phong (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3474}, nQuality=1, nBindState=-2},
		{szName="Phi phong Ng� Phong (Tr�ng k�ch)", tbProp={0,3475}, nQuality=1, nBindState=-2},
	},
	[7] = {
		{szName="Phi Phong Ph� Quang ( d�ch chuy�n t�c th�i)", tbProp={0,3476}, nQuality=1, nBindState=-2},
		{szName="Phi Phong Ph� Quang (h�a gi�i s�t th��ng)", tbProp={0,3477}, nQuality=1, nBindState=-2},
		{szName="Phi Phong Ph� Quang ( tr�ng k�ch)", tbProp={0,3478}, nQuality=1, nBindState=-2},
	},
	[8] = {
		{szName="Phi Phong Kh�p Th�n (d�ch chuy�n t�c th�i)", tbProp={0,3479}, nQuality=1, nBindState=-2},
		{szName="Phi Phong Kh�p Th�n (H�a Gi�i S�t Th��ng)", tbProp={0,3480}, nQuality=1, nBindState=-2},
		{szName="Phi Phong Kh�p Th�n (Tr�ng K�ch)", tbProp={0,3481}, nQuality=1, nBindState=-2},
	},
	[9] = {
		{szName="Phi phong K�nh Thi�n ( D�ch chuy�n t�c th�i)", tbProp={0,3482}, nQuality=1, nBindState=-2},
		{szName="Phi phong K�nh Thi�n (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3483}, nQuality=1, nBindState=-2},
		{szName="Phi phong K�nh Thi�n ( Tr�ng k�ch)", tbProp={0,3484}, nQuality=1, nBindState=-2},
	},
	[10] = {
		{szName="Phi phong V� C�c ( D�ch chuy�n t�c th�i)", tbProp={0,3485}, nQuality=1, nBindState=-2},
		{szName="Phi phong V� C�c (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3486}, nQuality=1, nBindState=-2},
		{szName="Phi phong V� C�c ( Tr�ng k�ch)", tbProp={0,3487}, nQuality=1, nBindState=-2},
	},
}

function main(nItemIndex)
	dofile("script/global/general/hotrotanthu/item/tuiphiphong.lua")
	local nG,nD,nP,nL,nS,nM = GetItemProp(nItemIndex)
	print(nG,nD,nP,nL,nS,nM)
	if not (TAB_PHIPHONG[nL]) then
		Talk(1, "", "��ng c�p phi phong n�y kh�ng ���c h� tr�!")
	return 1 end;
	
	local szTitle = "M�i b�n l�a ch�n phi phong:";
	local tbOpt = {}
	for i = 1, getn(TAB_PHIPHONG[nL]) do
		tinsert(tbOpt, {format("%s", TAB_PHIPHONG[nL][i].szName), PhiPhongConfirm, {nItemIndex, TAB_PHIPHONG[nL][i]}})
	end
		tinsert(tbOpt, {"��ng."})
	CreateNewSayEx(szTitle, tbOpt)
return 1 end

function PhiPhongConfirm(nItemIndex, tbItem)
	tbAwardTemplet:GiveAwardByList(tbItem, "T�i phi phong")
	RemoveItemByIndex(nItemIndex);
end