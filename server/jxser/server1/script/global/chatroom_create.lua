MONEY_CREATECHATROOM = 50000

function Checkup()
	if (GetCash() < MONEY_CREATECHATROOM) then
		Msg2Player("Trong h�nh trang c�a b�n kh�ng c� �� <color=yellow>" .. MONEY_CREATECHATROOM.." l��ng<color> �� t�o ph�ng t�n g�u n�y!")
	return 0 end
return 1 end

function Consume()
	return Pay(MONEY_CREATECHATROOM)
end
