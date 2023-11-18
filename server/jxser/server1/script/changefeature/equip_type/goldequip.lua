Include("\\script\\changefeature\\equip_tryon.lua")

local tb = tbEquipTryOn:NewTemplate("V� Kh� Ki�m")

tb.szFile_Male = "\\settings\\changefeature\\goldequipkiem_male.txt"
tb.szFile_Female = "\\settings\\changefeature\\goldequipkiem_female.txt"




function tb:TryOn(nNo)
	self:ChangeFeature(-1, -1,nNo,-1)
end

function tb:CheckEquip(nItemIndex)
	
	local nG, nD,nP = GetItemProp(nItemIndex)
	local nQuality = GetItemQuality(nItemIndex)
	--if nQuality ~= 1 and nQuality ~= 4 then
		--Talk(1, "", "��y kh�ng ph�i l� trang b� ho�ng kim.")
		--return
	--end
	if nG ~= 0 then
		Talk(1, "", "��y kh�ng ph�i l� trang b�")
		return 
	end
	if nP ~= 0 then
		Talk(1, "", "V� kh� n�y kh�ng ph�i l� ki�m.")
		return 
	end
	return 1
end

tb:LoadFile()