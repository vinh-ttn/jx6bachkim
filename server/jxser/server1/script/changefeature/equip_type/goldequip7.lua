Include("\\script\\changefeature\\equip_tryon.lua")

local tb = tbEquipTryOn:NewTemplate("V� Kh� Song �ao")

tb.szFile_Male = "\\settings\\changefeature\\goldequipsongdao_male.txt"
tb.szFile_Female = "\\settings\\changefeature\\goldequipsongdao_female.txt"




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
	if nP ~= 5 then
		Talk(1, "", "V� kh� n�y kh�ng ph�i l� song �ao.")
		return 
	end
	return 1
end

tb:LoadFile()