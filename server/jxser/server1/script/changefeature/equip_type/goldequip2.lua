Include("\\script\\changefeature\\equip_tryon.lua")

local tb = tbEquipTryOn:NewTemplate("V� Kh� ���ng M�n")

tb.szFile_Male = "\\settings\\changefeature\\goldequipduongmon_male.txt"
tb.szFile_Female = "\\settings\\changefeature\\goldequipduongmon_female.txt"




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
	if nD ~= 1 then
		Talk(1, "", "Trang b� n�y kh�ng ph�i l� v� kh� ���ng M�n.")
		return 
	end
	return 1
end

tb:LoadFile()