TB_UPGRADE_LIST = {
	tbUpgradeEquipGold = {
		[1] = {
			tbProductItem = {szName="An Bang", tbProp={0, 241}, nQuality= 1, nMoney=10000, nRate=40},
			tbNeedMaterial = {
				{szName="H�nh Hi�p L�nh", tbProp={6,1,2566,1,0,0}, nCount=20, nForbitTime=0, nForbitLock=0},
				-- {szName="Kim Nguy�n B�o", tbProp={4,343,1,1,0,0}, nCount=1, nForbitTime=1, nForbitLock=1},
				-- {szName="X�ch Th�", tbProp={0,10,5,7}, nCount=1, nForbitTime=1, nForbitLock=1},
				-- {szName="An Bang", tbProp={1, 164}, nQuality= 1, nForbitTime=1, nForbitLock=1},
			},
		},
		
		[2] = {
			tbProductItem = {szName="Ng�a", tbProp={6,1,2566,1,0,0}, nMoney=10000, nRate=100},
			tbNeedMaterial = {
				{szName="Kim Nguy�n B�o", tbProp={4,343,1,1,0,0}, nCount=10, nForbitTime=1, nForbitLock=1},
				{szName="L�nh b�i Phong L�ng ��", tbProp={4,489,1,1,0,0}, nCount=10, nForbitTime=1, nForbitLock=1},
				{szName="L�nh b�i Phong L�ng ��", tbProp={4,489,1,1,0,0}, nCount=10, nForbitTime=1, nForbitLock=1},
			},
		},
	},
};

IncludeLib("ITEM")

tbUpgradeItems = {};

tbUpgradeItems.szOptions = {
	DialogMain = "<npc>Ng��i t�m ta c� vi�c g� kh�ng?",
	
	SayNoEx = "K�t th�c ��i tho�i",
};

function tbUpgradeItems:DialogMain()
	local tbUpgradeType = TB_UPGRADE_LIST["tbUpgradeEquipGold"];
	local szTitle = self.szOptions["DialogMain"];
	local tbOptions = {};
	for i = 1, getn(tbUpgradeType) do
		tinsert(tbOptions, {format("N�ng c�p - %s", tbUpgradeType[i]["tbProductItem"]["szName"]), self.OpenBox, {self, tbUpgradeType, i}})
	end
		tinsert(tbOptions, {self.szOptions["SayNoEx"], self.OnCancel})
	CreateNewSayEx(szTitle, tbOptions)
end

function tbUpgradeItems:OpenBox(tbUpgrade, nKind)
	if not (tbUpgrade[nKind]) then
		Talk(1, "", "Kh�ng t�m th�y n�ng c�p lo�i n�y")
	return end
	
	local szDescription = "Y�u c�u nguy�n li�u:";
	local szDescCash = "";
	if (tbUpgrade[nKind]["tbProductItem"]["nMoney"]) and (tbUpgrade[nKind]["tbProductItem"]["nMoney"] > 0) then
		szDescCash = format("\n+ %d ng�n l��ng", tbUpgrade[nKind]["tbProductItem"]["nMoney"]);
	end
	local tbMaterial = tbUpgrade[nKind]["tbNeedMaterial"];
	for i = 1, getn(tbMaterial) do
		szDescription = szDescription..format("\n+ %d %s", tbMaterial[i]["nCount"] or 1, tbMaterial[i]["szName"])
	end
	g_GiveItemUI(format("N�ng c�p %s", tbUpgrade[nKind]["tbProductItem"]["szName"]), szDescription..szDescCash, {self.GetBoxUI, {self, tbUpgrade, nKind}}, nil, 1)
end

function tbUpgradeItems:GetBoxUI(tbUpgrade, nKind, nNum)
	if (nNum <= 0) then 
		local szTitle = "B�n ch�a b� v�t ph�m v�o � tr�ng, vui l�ng thao t�c l�i!";
		local tbOptions = {
			{"Nh�p l�i", self.OpenBox, {self, tbUpgrade, nKind, nNum}},
			{"Th�i �� khi kh�c �i.", self.OnCancel},
		}
		CreateNewSayEx(szTitle, tbOptions)
	return end;
	
	local tbMaterial = tbUpgrade[nKind]["tbNeedMaterial"];
	local szNotEnoughCount = "";
	local nNotEnoughCount = 0;
	
	for i = 1, getn(tbMaterial) do
		local tbProp = tbMaterial[i]["tbProp"];
		if (tbMaterial[i]["nQuality"]) then
			local nCount = 0;
			local nCountEquip, tbEquip = self:CalcEquiproomGoldCount(tbProp[1], tbProp[2]);
			local nBothCount, tbEquipBoth = self:GetItemBindState(tbEquip, tbMaterial[i]["nForbitLock"], tbMaterial[i]["nForbitTime"]);
			local nLockCount, tbEquipLock = self:GetItemLocked(tbEquip, tbMaterial[i]["nForbitLock"]);
			local nExpiredCount, tbEquipExpired = self:GetItemExpiredTime(tbEquip, tbMaterial[i]["nForbitTime"]);
			if (tbMaterial[i]["nForbitTime"] and tbMaterial[i]["nForbitTime"] ~= 0) and (tbMaterial[i]["nForbitLock"] and tbMaterial[i]["nForbitLock"] ~= 0) then
				nCount = nCountEquip - nBothCount;
				szInfoMaterial = "kh�ng kh�a, th�i h�n";
			elseif (tbMaterial[i]["nForbitTime"] ~= 0) or (not tbMaterial[i]["nForbitLock"] or tbMaterial[i]["nForbitTime"] ~= 0) then
				nCount = nCountEquip - nExpiredCount;
				szInfoMaterial = "kh�ng th�i h�n";
			elseif (tbMaterial[i]["nForbitLock"] ~= 0) or (not tbMaterial[i]["nForbitLock"] or tbMaterial[i]["nForbitLock"] ~= 0) then
				nCount = nCountEquip - nLockCount;
				szInfoMaterial = "kh�ng kh�a";
			end
			
			if (nCount < 1) or (nCount > 1) then
				nNotEnoughCount = 1;
				if (nCount < 1) then
					szNotEnoughCount = szNotEnoughCount..format("\n\t+ <color=red>1 m�n<color> %s [%s]", tbMaterial[i]["szName"], szInfoMaterial);
				elseif (nCount > 1) then
					szNotEnoughCount = szNotEnoughCount..format("\n\t+ <color=yellow>1 m�n<color> %s [%s]", tbMaterial[i]["szName"], szInfoMaterial);
				end
			end
		else
			local nCount = 0;
			local szInfoMaterial = "";
			local nCountMaterial, tbItemMaterial = self:CalcEquiproomItemCount(tbProp[1],tbProp[2],tbProp[3],tbProp[4],tbProp[5],tbProp[6]);
			local nBothCount , tbItemBoth = self:GetItemBindState(tbItemMaterial, tbMaterial[i]["nForbitLock"], tbMaterial[i]["nForbitTime"]);
			local nLockCount, tbItemLock = self:GetItemLocked(tbItemMaterial, tbMaterial[i]["nForbitLock"]);
			local nExpiredCount, tbItemExpired = self:GetItemExpiredTime(tbItemMaterial, tbMaterial[i]["nForbitTime"]);
			
			if (tbMaterial[i]["nForbitTime"] and tbMaterial[i]["nForbitTime"] ~= 0) and (tbMaterial[i]["nForbitLock"] and tbMaterial[i]["nForbitLock"] ~= 0) then
				nCount = nCountMaterial - nBothCount;
				szInfoMaterial = "kh�ng kh�a, th�i h�n";
			elseif (tbMaterial[i]["nForbitTime"] ~= 0) or (not tbMaterial[i]["nForbitLock"] or tbMaterial[i]["nForbitTime"] ~= 0) then
				nCount = nCountMaterial - nExpiredCount;
				szInfoMaterial = "kh�ng th�i h�n";
			elseif (tbMaterial[i]["nForbitLock"] ~= 0) or (not tbMaterial[i]["nForbitLock"] or tbMaterial[i]["nForbitLock"] ~= 0) then
				nCount = nCountMaterial - nLockCount;
				szInfoMaterial = "kh�ng kh�a";
			end
			print(nCount, nCountMaterial, nBothCount, nLockCount, nExpiredCount)
			if (nCount < tbMaterial[i]["nCount"]) or (nCount > tbMaterial[i]["nCount"]) then
				nNotEnoughCount = 1;
				if (nCount < tbMaterial[i]["nCount"]) then
					szNotEnoughCount = szNotEnoughCount..format("\n\t+ <color=red>(%d/%d) <color>%s [%s]", tbMaterial[i]["nCount"], nCount, tbMaterial[i]["szName"],szInfoMaterial);
				elseif (nCount > tbMaterial[i]["nCount"]) then
					szNotEnoughCount = szNotEnoughCount..format("\n\t+ <color=yellow>(%d/%d) <color>%s [%s]", tbMaterial[i]["nCount"], nCount, tbMaterial[i]["szName"],szInfoMaterial);
				end
			end
		end
	end
	
	local szMsgCash = "";
	if (tbUpgrade[nKind]["tbProductItem"]["nMoney"]) and (tbUpgrade[nKind]["tbProductItem"]["nMoney"] > 0) then
		if (GetCash() < tbUpgrade[nKind]["tbProductItem"]["nMoney"]) then
			nNotEnoughCount = 1;
			szMsgCash = format("\n\t+ <color=red>%d<color> ng�n l��ng", tbUpgrade[nKind]["tbProductItem"]["nMoney"])
		end
	end
	
	if (nNotEnoughCount == 1) then
		local szTitle = "S� l��ng nguy�n li�u b� v�o ch�a ��ng:"..szNotEnoughCount;
		local tbOptions = {
			{"Th� l�i", self.OpenBox, {self, tbUpgrade, nKind, nNum}},
			{"�� khi kh�c �i, b�y gi� ta b�n r�i.", self.OnCancel},
		}
		CreateNewSayEx(szTitle..szMsgCash.."\n<color=white>*L�u �: Ph�i b� ��ng s� l��ng, kh�ng h�n kh�ng k�m.<color>", tbOptions)
	return end
	
	-- for i = 1, 24 do
		-- local nItemIndex = GetGiveItemUnit(i);
		-- if (nItemIndex > 0) then
			-- RemoveItemByIndex(nItemIndex);
		-- end
	-- end
	
	-- local tbProduct = tbUpgrade[nKind]["tbProductItem"];
	-- self:AddItemEx(tbProduct);
	-- Pay(tbUpgrade[nKind]["tbProductItem"]["nMoney"])
end

function tbUpgradeItems:AddItemEx(tbProduct)
	local nProductIndex = self:Random(tbProduct);
	if (nProductIndex > 0) then
		AddItemByIndex(nProductIndex)
		if (tbProduct["nRate"]) then
			Msg2Player(format("Ch�c m�ng b�n �� may m�n n�ng c�p th�nh c�ng <color=yellow>%s<color>", tbProduct["szName"]))
		else
			Msg2Player(format("B�n �� n�ng c�p th�nh c�ng <color=yellow>%s<color>", tbProduct["szName"]))
		end
	else
		if (tbProduct["nRate"]) then
			Msg2Player(format("Ch�c b�n may m�n l�n sau, n�ng c�p <color=yellow>%s<color> th�t b�i!", tbProduct["szName"]))
		end
	end
end

function tbUpgradeItems:Random(tbProduct)
	if not (tbProduct) then
	return 0 end
	
	local nTotalRandom = 10000000;
	local nCurRandom = random(1, nTotalRandom);
	local nCurStep = 0;
	
	if (tbProduct["nRate"]) then
		nCurStep = floor(tbProduct["nRate"]*nTotalRandom/100);
		if (nCurRandom <= nCurStep) then
			return self:NewItemEx(tbProduct);
		end
	else
		return self:NewItemEx(tbProduct);
	end
return 0 end

function tbUpgradeItems:NewItemEx(tbItem)
	local nRow = 0;
	if tbItem["nQuality"] and (tbItem["nQuality"] == 1 or tbItem["nQuality"] == 4) then
		nRow = 1;
	end
	
	tbItem["tbParam"] = tbItem["tbParam"] or {};
	
	return NewItemEx(
	tbItem["nVersion"] or 4,
	format("%u", tbItem["nRandSeed"] or 0),
	tbItem["nQuality"] or 0,
	tbItem["tbProp"][1] or 0,
	(tbItem["tbProp"][2] or 0) - nRow,
	tbItem["tbProp"][3] or 0,
	tbItem["tbProp"][4] or 0,
	tbItem["tbProp"][5] or 0,
	tbItem["tbProp"][6] or 0,
	tbItem["tbParam"][1] or 0,
	tbItem["tbParam"][2] or 0,
	tbItem["tbParam"][3] or 0,
	tbItem["tbParam"][4] or 0,
	tbItem["tbParam"][5] or 0,
	tbItem["tbParam"][6] or 0,
	0)
end

function tbUpgradeItems:CalcEquiproomItemCount(nNeedGenre, nNeedDetail, nNeedParticular, nNeedLevel, nNeedSeries, nNeedMagic)
	---------------------------------------------------------------------------------------------------
	--							Ki�m tra s� l��ng c�a m�t item n�o ��							--
	---------------------------------------------------------------------------------------------------
		local nCount = 0;
		local tbItem = {};
		local szPropItem = "%d,%d,%d,%d,%d,%d";
		for i = 1, 24 do
			local nItemIndex = GetGiveItemUnit(i);
			local nGenre, nDetail, nParticular, nLevel, nSeries, nMagic = GetItemProp(nItemIndex);
			local nStack = GetItemStackCount(nItemIndex);
			if (nItemIndex > 0) then
				if not (nNeedLevel) or (nNeedLevel == -1) then nNeedLevel = -1; nLevel = -1; end
				if not (nNeedSeries) or (nNeedSeries == -1) then nNeedSeries = -1; nSeries = -1; end
				if not (nNeedMagic) or (nNeedMagic == -1) then nNeedMagic = -1; nMagic = -1; end
				local szNeedIndex = format(szPropItem,nNeedGenre, nNeedDetail, nNeedParticular, nNeedLevel, nNeedSeries, nNeedMagic);
				local szCurIndex = format(szPropItem, nGenre, nDetail, nParticular, nLevel, nSeries, nMagic);
				if (szNeedIndex == szCurIndex) then
					tinsert(tbItem, getn(tbItem)+1, nItemIndex);
					nCount = nCount + nStack;
				end
			end
		end
	--Gi� tr� tr� v�: s� l��ng v� b�ng item (index)
return nCount, tbItem; end

function tbUpgradeItems:GetItemLocked(tbItem, nBindState)
	local tbCurItem = {};
	local nCount = 0;
	for i = 1, getn(tbItem) do
		local nCurState = GetItemBindState(tbItem[i]);
		local nStack = GetItemStackCount(tbItem[i]);
		if (nCurState == nBindState) then
			nCount = nCount + nStack;
			tinsert(tbCurItem, getn(tbCurItem)+1, {tbItem[i], nCurState});
		end
	end
return nCount, tbCurItem; end

function tbUpgradeItems:GetItemExpiredTime(tbItem, nExpiredTime)
	local tbCurItem = {};
	local nExTime = 0;
	local nCount = 0;
	for i = 1, getn(tbItem) do
		local nCurExpiredTime = ITEM_GetExpiredTime(tbItem[i]);
		local nStack = GetItemStackCount(tbItem[i]);
		if (nCurExpiredTime > 0) then
			nExTime = 1;
		end
		
		if (nExTime == nExpiredTime) then
			nCount = nCount + nStack;
			tinsert(tbCurItem, getn(tbCurItem)+1, {tbItem[i], nExTime, nExpiredTime});
		end
	end
	--Gi� tr� tr� v�: s� l��ng item th�i h�n v� b�ng item (index, type expired time, time expired)
return nCount, tbCurItem; end

--=====================================================================================
--	Function:							 tbUpgradeItems:GetItemBindState(tbItem, nBindState, nExpiredTime)
--	Description: L�y th�ng tin tr�ng th�i c�a table index item (tbItem[1] = 1)
--		+ tbItem: table ch�a danh s�ch item c�n l�y th�ng tin v� tr�ng th�i c�a item
--		+ nBindState: tr�ng th�i kh�a item (bao g�m 3 gi� tr�)
--			+ [1]: C�m item kh�a n�y
--			+ [0]: Kh�ng c�m item kh�a n�y
--		+ nExpiredTime: tr�ng th�i th�i h�n item (1: c�m item c� th�i h�n, 0: kh�ng c�m)
--			+ [1]: C�m item c� th�i h�n n�y
--			+ [0]: Kh�ng c�m item c� th�i h�n n�y
--	=> Tr� v� gi� tr�: s� l��ng item c�n t�m v� b�ng item c�n t�m (index, value bind state, value expired time)
--=====================================================================================
function tbUpgradeItems:GetItemBindState(tbItem, nBindState, nExpiredTime)
	local tbCurItem = {};
	local nCount = 0;
	for i = 1, getn(tbItem) do
		local nState = 0
		local nExTime = 0;
		local nCurState = GetItemBindState(tbItem[i]);
		local nStack = GetItemStackCount(tbItem[i]);
		if (nCurState ~= 0) then
			nState = 1;
		end
		local nCurTime = ITEM_GetExpiredTime(tbItem[i]);
		if (nCurTime ~= 0) then
			nExTime = 1;
		end
		if (nState == nBindState) or (nExTime == nExpiredTime) then
			nCount = nCount + nStack;
			tinsert(tbCurItem, getn(tbCurItem)+1, {tbItem[i], nCurState, nCurTime}); 
		end
	end
	--Gi� tr� tr� v�: s� l��ng item th�i h�n/kh�a v� b�ng item (index, type expired time, time expired)
return nCount, tbCurItem end

function tbUpgradeItems:CalcEquiproomGoldCount(nNeedType, nNeedID)
	
	local tbEquip = {};
	for i = 1, 24 do
		local nItemIndex = GetGiveItemUnit(i)
		if (nItemIndex > 0) then
			local nQuality = GetItemQuality(nItemIndex);
			if (nQuality == nNeedType) then
				local nID = GetGlodEqIndex(nItemIndex);
				if (nID == nNeedID) then
					tinsert(tbEquip, getn(tbEquip)+1, nID);
				end
			end
		end
	end
	return getn(tbEquip), tbEquip;
end

function tbUpgradeItems:OnCancel() end