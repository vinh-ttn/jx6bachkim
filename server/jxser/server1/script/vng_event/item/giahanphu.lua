IncludeLib("ITEM")
Include("\\script\\lib\\log.lua")
tbVnGiaHanPhu = {}
tbVnGiaHanPhu.tbItem = {
	["3491"]="Tr��ng sinh",
	["3492"]="B�t H�i",
	["3493"]="V� Uy",
	["3494"]="Nh��c Th�y",
	["3495"]="Tr�n Nh�c",
	["3496"]="Y�n Ba",
	["3497"]="Th�n Tu�",
	["3498"]="Truy Anh ",
	["3499"]="Long ��m",
	["3500"]="L�u Hu�nh",
	["3501"]="Cu�ng Lan",
	["3502"]="Th�y Ng�c B�ng Huy�n",
	["3503"]="H�ng Anh",
	["3504"]="Ng�ng Tuy�t H�n S��ng",
	["3505"]="Di�u Gi�i Tr�n Duy�n",
	["3506"]="L�c Ph� Qu�n Tinh",
	["3880"]="V� �� H�",
	["3881"]="Thanh B�nh L�c",
	["3882"]="H�i Xu�n",
	["3883"]="Kh� M�c",
	["3884"]="L�u V�n",
	["3885"]="N� Tr�ch",
	["3886"]="L�i H�a Ki�p",
	["3887"]="M� T�y Thi�n H��ng",
	["3888"]="�i�p V� Hoa Phi",
}

tbVnGiaHanPhu.nExpiredTime = 10080

function tbVnGiaHanPhuGiveUIConfirm(nCount)
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")	
	if not nCheckMap then
		return
	end
	if nCount ~= 1 then
		Talk(1, "", "V�t ph�m b� v�o kh�ng ��ng, xin h�y ki�m tra l�i!")
		return
	end
	local nIDX = GetGiveItemUnit(1)
	local nQuality = GetItemQuality(nIDX)
	if nQuality ~= 1 then
		Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang b� ho�ng kim")
		return
	end
	local nGoldEquipIdx = GetGlodEqIndex(nIDX)
	if not tbVnGiaHanPhu.tbItem[tostring(nGoldEquipIdx)] then
		Talk(1, "", "Trang b� ng��i ��t v�o kh�ng ph�i l� trang s�c, xin h�y ki�m tra l�i!")
		return
	end
	local nCurItemExpiredTime = ITEM_GetExpiredTime(nIDX)
	local nCurTime = GetCurServerTime()
	if (nCurItemExpiredTime - nCurTime < 0) then
		Talk(1, "", "Trang s�c �� h�t h�n s� d�ng, kh�ng th� gia h�n.")
		return
	end
	if (nCurItemExpiredTime <= 0) or (nCurItemExpiredTime - nCurTime > tbVnGiaHanPhu.nExpiredTime*60) then
		Talk(1, "", "Ch� c� th� gia h�n trang s�c c� h�n s� d�ng d��i 7 ng�y.")
		return
	end
	if ConsumeEquiproomItem(1, 6,1,30225,1) ~= 1 then
		Talk(1, "", "Kh�ng t�m th�y v�t ph�m Gia H�n Ph�, gia h�n th�t b�i.")
		return
	end
	local strItemName = GetItemName(nIDX)
	ITEM_SetExpiredTime(nIDX, tbVnGiaHanPhu.nExpiredTime)
	SyncItem(nIDX)
	Msg2Player(format("Gia h�n v�t ph�m <color=yellow>%s<color> th�nh c�ng, v�t ph�m c� h�n s� d�ng <color=yellow>7<color> ng�y t�nh t� th�i �i�m hi�n t�i.", strItemName))
	tbLog:PlayerActionLog("SuDungVatPhamGiaHanPhu", "Gia h�n v�t ph�m "..strItemName, "H�n s� d�ng c� c�n "..(nCurItemExpiredTime - nCurTime).." gi�y")
end

function main(nItemIDX)
	local nCheckMap = DynamicExecuteByPlayer(PlayerIndex, "\\script\\vng_feature\\checkinmap.lua", "PlayerFunLib:VnCheckInCity")
	if not nCheckMap then
		return 1
	end
	GiveItemUI("Gia H�n Ph�", "Xin h�y b� 1 m�n trang s�c c� h�n s� d�ng v�o � b�n d��i", "tbVnGiaHanPhuGiveUIConfirm", "onCancel")
	return 1
end