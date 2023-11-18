-- H� th�ng ti�n ��ng t�i NPC Ti�n Trang

PAYMENT_COIN_RENEWALTIME = 20; -- S� l��ng ti�n ��ng �� ��i ra th�i h�n ch�i
PAYMENT_COIN_TO_1KNB = 100;

function PaymentSystemCoin()
	local tbOpt = {"Ng��i t�m ta c� vi�c g�?"};
		tinsert(tbOpt, "Ta mu�n r�t Ti�n ��ng/WithDrawnCoin")
		tinsert(tbOpt, "Ta mu�n ki�m tra Ti�n ��ng/CheckCountCoin")
		tinsert(tbOpt, "Ta mu�n ��i ti�n ��ng ra KNB/ChangeCoinToKNB")
		tinsert(tbOpt, "Ta mu�n ��i ti�n ��ng ra ti�n v�n/ChangeCoinToCash")
		tinsert(tbOpt, "Ta mu�n d�ng "..PAYMENT_COIN_RENEWALTIME.." Ti�n ��ng ��i 7 ng�y ch�i/ChangeCoinTo7Day")
		tinsert(tbOpt, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbOpt)
end

function WithDrawnCoin()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr��c khi ti�n h�nh r�t <color=red>Ti�n ��ng<color>. Y�u c�u ng��i ch�i m� m�t kh�u r��ng tr��c!", 0)
	return end
	
	local nCoin = GetExtPoint(1);
	if (nCoin >= 100000) then
		Talk(1,"", "Ph�t hi�n c� sai s�t, vui l�ng li�n h� GM v� s� c� n�y!")
	return end
	
	if (nCoin <= 0) then
		Talk(1,"","B�n kh�ng c� g�i b�t k� <color=red>Ti�n ��ng<color> n�o � ��y c�!")
	return end
	
	AskClientForNumber("WithDrawnCoinEnter", 1, nCoin, "Nh�p s� l��ng:")
end

function WithDrawnCoinEnter(nNum)
	local n_count = GetRoomCoinCount(nNum)
	if (CalcFreeItemCellCount() < 5) then
		Talk(1, "", format("H�nh trang c�a b�n kh�ng �� %d � tr�ng, vui l�ng s�p x�p l�i.",n_count))
	return end
	
	PayExtPoint(1, nNum)
	Msg2Player("H� th�ng �ang ti�n h�nh r�t ti�n ��ng, vui l�ng kh�ng tho�t game �� tr�ch s�y ra t�nh tr�ng m�t ��.")
end

function ExtPointChange(nExtPointIndex, nChangeValue)
	nExtPoint = -nChangeValue;
	if (nExtPoint > 0) then
		for i = 1, nExtPoint do
			AddItem(4,417,1,0,0,0)
		end
		AddCardPayment(nExtPoint);
		SaveNow();
		Msg2Player(format("B�n nh�n ���c %d Ti�n ��ng t�i Ti�n Trang (L�m An)", nExtPoint))
		Say(format("B�n �� r�t th�nh c�ng %d Ti�n ��ng, c�n g�i l�i %d Ti�n ��ng", nExtPoint, GetExtPoint(nExtPointIndex)),0)
		WriteLog(format("[%s]\tT�i kho�n: %s T�n ng��i ch�i: %s �� r�t %d Ti�n ��ng, s� l��ng c�n l�i l� %d", date("%Y%m%d %H%M%S"),GetAccount(),GetName(),nExtPoint,GetExtPoint(nExtPointIndex)))
	end
end

function GetRoomCoinCount(n_count)
	local n_maxstack = 100;
	local n_roomcount = 0;
	local n_coin = 0;
	for i = 1, n_count do
		n_coin = n_coin + 1;
		if (n_coin >= n_maxstack) then
			n_roomcount = n_roomcount + 1;
			n_coin = 0;
		end
	end
return n_roomcount end

function CheckCountCoin()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end
	
	local nCount = GetExtPoint(1);
	if (nCount <= 0) then
		Talk(1,"","B�n kh�ng c� g�i Ti�n ��ng n�o cho ta c�!")
	return end
	
	Say(format("B�n �ang g�i � ��y <color=red>%d Ti�n ��ng<color>", nCount), 0)
end

function ChangeCoinTo7Day()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr��c khi ti�n h�nh r�t <color=red>Ti�n ��ng<color>. Y�u c�u ng��i ch�i m� m�t kh�u r��ng tr��c!", 0)
	return end
	
	if (CalcEquiproomItemCount(4,417,1,-1) <= 0) then
		Talk(1,"","Ng��i kh�ng mang theo <color=red>Ti�n ��ng<color>, l�m sao m� ��i ��y?")
	return end
	
	Say("Ng��i ch�c ch�n mu�n gia h�n ch�?",2,
	"��ng r�i!/ChangeCoinToDayConfirm",
	"Kh�ng ��i./no")
end

function ChangeCoinToDayConfirm()
	if (CalcEquiproomItemCount(4,417,1,-1) <= PAYMENT_COIN_RENEWALTIME) then
		Talk(1,"", format("B�n kh�ng c� �� <color=red>%d Ti�n ��ng<color>", PAYMENT_COIN_RENEWALTIME))
	return end
	
	if (CalcEquiproomItemCount(4,417,1,-1) > 0) then
		if (ConsumeEquiproomItem(1,4,417,1,-1) ~= 1) then
			Msg2Player("Quy ��i th�nh gi� ch�i th�t b�i!");
		return end
		UseSilver(1,1,1);
		SaveNow();
		Say(format("B�n �� d�ng <color=red>%d Ti�n ��ng<color> ��i l�y 7 ng�y ch�i th�nh c�ng! Vui l�ng ki�m tra l�i!", PAYMENT_COIN_RENEWALTIME), 0)
	end
end

function ChangeCoinToCash()
	local tbSay = {"Ng��i mu�n ��i bao nhi�u?"};
		tinsert(tbSay, "D�ng 100 ti�n ��ng ��i ra 1000 v�n l��ng/Coin100_Cash1000")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function Coin100_Cash1000()
	if (CalcEquiproomItemCount(4,417,1,-1) < 100) then
		Talk(1,"","B�n kh�ng �� <color=red>100 ti�n ��ng<color> �� ��i l�y <color=red>1000 v�n l��ng<color>. C� g�ng t�ch g�p ��n khi n�o �� r�i quay l�i ��ynh�!")
	return end
	
	ConsumeEquiproomItem(100,4,417,1,-1)
	Earn(1000*10000);
	Msg2Player("B�n �� d�ng <color=yellow>100 ti�n ��ng<color> ��i l�y <color=yellow>1000 v�n l��ng<color> t�i Ti�n Trang.")
end

function ChangeCoinToKNB()
	local nCoint = CalcEquiproomItemCount(4,417,1,-1);
	if (nCoint <= 0) then
		Talk(1,"","B�n kh�ng �� mang theo ti�n, kh�ng th� ti�n h�nh.")
	return end
	
	AskClientForNumber("ChangeCoinToKNBConfirm", 1, nCoint, "Nh�p s� l��ng ��i KNB:")
end

function ChangeCoinToKNBConfirm(n_count)
	local n_coincount = CalcEquiproomItemCount(4,417,1,-1);
	local n_curcount = PAYMENT_COIN_TO_1KNB*n_count;
	if (n_coincount < n_curcount) then
		Talk(1, "", format("Quy ��i th�t b�i! B�n kh�ng �� <color=red>%d ti�n ��ng<color> �� ��i th�nh <color=red>%d KNB<color>", n_curcount, n_count))
	return end
	ConsumeEquiproomItem(n_curcount,4,417,1,-1);
	for i = 1, n_count do
		AddItem(4,343,1,0,0,0);
	end
	Msg2Player(format("B�n �� ��i <color=yellow>%d ti�n ��ng<color> l�y <color=yellow>%d KNB<color>", n_curcount, n_count))
end