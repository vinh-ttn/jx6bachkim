
function HoTroLanDau()
	if (GetLevel() > 150) then
		Talk(1,"", "��ng c�p c�a b�n �� v��t qu� ��ng c�p h� tr�!")
	return end

	if (GetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE) ~= 0) then
		Talk(1,"", "B�n �� nh�n ph�n th��ng h� tr� n�y t� tr��c �� r�i!")
	return end

	ST_LevelUp(150 - GetLevel());
	
	-- local tbSupportList = {
		-- {szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nExpiredTime=7*24*60, nBindState=-2},
		-- {szName="Th� ��a ph� (s� d�ng v� h�n)", tbProp={6,1,438,1,0,0}, nExpiredTime=7*24*60, nBindState=-2},
		-- {szName="Ti�n Th�o L�", tbProp={6,1,71,1,0,0}, nCount=3, nBindState=-2},
		-- {szName="Ti�n Th�o L� (��c bi�t)", tbProp={6,1,1181,1,0,0}, nCount=2, nBindState=-2},
	-- };
	-- tbAwardTemplet:GiveAwardByList(tbSupportList, "H� tr� t�n th� l�n ��u tham gia v�o game");
	SetTaskModule(SUPPORT_PLAYER, GetName(), TASKMODULE_NEWBIE, 1)
end