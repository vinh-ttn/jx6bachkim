
function GiaiKetNhanVat()
	local nW, nX, nY = GetWorldPos();
	if (nW == 246) then
	Msg2Player("Map n�y kh�ng th� s� d�ng t�nh n�ng n�y!")
	return 1
	end
	if (nW == 53) then
		SetPos(1626,3179);
	else
		NewWorld(53, 1626, 3179);
	end
	SetFightState(0);
	Msg2Player("Gi�i k�t nh�n v�t th�nh c�ng!")
end
