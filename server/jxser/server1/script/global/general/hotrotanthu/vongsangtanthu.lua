Include("\\script\\global\\pgaming\\configserver\\configall.lua")
IL("TITLE");
--30  *24*60 t��ng ���ng 30 ng�y, 18*60 t��ng ���ng 1 ph�t (30*24*60*18*60)
function VongSangTanThu()
	if (GetLevel() > GioiHanCapNhanHoTroVongSang) then
		Talk(1, "", "��ng c�p "..GioiHanCapNhanHoTroVongSang.." tr� xu�ng m�i c� th� nh�n ���c v�ng s�ng h� tr� n�y.")
	return end
	AddSkillState(314,12,1,60*60*18) -- 60 l� 60 ph�t --12 level skill
	local _,nX32,nY32 = GetWorldPos()
	CastSkill(1204, 1, nX32*32, nY32*32)
	Msg2Player("Nh�n tr�ng th�i h�i ph�c "..TocDoHoiPhucMauVongSangHoTro.." m�u v� "..TocDoHoiPhucManaVongSangHoTro.." mana trong v�ng 60 ph�t")
end