-- H� th�ng KNB t�i NPC Ti�n Trang

PAYMENT_KNB_RENEWALTIME = 1; -- S� l��ng KNB �� ��i ra th�i h�n ch�i
PAYMENT_VALUE_COIN = 100; --S� l��ng ti�n ��ng ���c ��i ra t� KNB

function PaymentSystemKNB()
	local tbOpt = {"Ng��i t�m ta c� vi�c g�?"};
		tinsert(tbOpt, "Ta mu�n r�t KNB/WithDrawnKNB")
		tinsert(tbOpt, "Ta mu�n ki�m tra KNB/CheckCountKNB")
		tinsert(tbOpt, "Ta mu�n ��i KNB ra ti�n ��ng/ChangeKNBToCoin")
		--tinsert(tbOpt, "Ta mu�n ��i KNB ra ti�n v�n/ChangeKNBToCash")
		tinsert(tbOpt, "Ta mu�n d�ng "..PAYMENT_KNB_RENEWALTIME.." KNB ��i 7 ng�y ch�i/ChangeKNBTo7Day")
		tinsert(tbOpt, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbOpt)
end

function WithDrawnKNB()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr��c khi ti�n h�nh r�t <color=red>KNB<color>. Y�u c�u ng��i ch�i m� m�t kh�u r��ng tr��c!", 0)
	return end
	
	local nKNB = GetExtPoint(1);
	if (nKNB >= 32768) then
		Talk(1,"", "Ph�t hi�n c� sai s�t, vui l�ng li�n h� GM v� s� c� n�y!")
	return end
	
	if (nKNB <= 0) then
		Talk(1,"","B�n kh�ng c� g�i b�t k� <color=red>KNB<color> n�o � ��y c�!")
	return end
	
	AskClientForNumber("WithDrawnKNBEnter", 1, nKNB, "Nh�p s� l��ng:")
end

function WithDrawnKNBEnter(nNum)
	if (CalcFreeItemCellCount() < nNum) then
		Talk(1, "", format("H�nh trang c�a b�n kh�ng �� %d � tr�ng, vui l�ng s�p x�p l�i.",nNum))
	return end
	
	PayExtPoint(1, nNum)
	Msg2Player("H� th�ng �ang ti�n h�nh r�t KNB, vui l�ng kh�ng tho�t game �� tr�ch s�y ra t�nh tr�ng m�t ��.")
end

function ExtPointChange(nExtPointIndex, nChangeValue)
	nExtPoint = -nChangeValue;
	if (nExtPoint > 0) then
		for i = 1, nExtPoint do
			AddItem(4,343,1,0,0,0)
		end
		AddCardPayment(nExtPoint);
		SaveNow();
		Msg2Player(format("B�n �� r�t %d KNB t�i Ti�n Trang (L�m An)", nExtPoint))
		Say(format("B�n �� r�t th�nh c�ng %d KNB, c�n g�i l�i %d KNB", nExtPoint, GetExtPoint(nExtPointIndex)),0)
		WriteLog(format("[%s]\tT�i kho�n: %s T�n ng��i ch�i: %s �� r�t %d KNB, s� l��ng c�n l�i l� %d", date("%Y%m%d %H%M%S"),GetAccount(),GetName(),nExtPoint,GetExtPoint(nExtPointIndex)))
	end
end

function CheckCountKNB()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end
	
	local nCount = GetExtPoint(1);
	if (nCount <= 0) then
		Talk(1,"","B�n kh�ng c� g�i KNB n�o cho ta c�!")
	return end
	
	Say(format("B�n �ang g�i � ��y <color=red>%d KNB<color>", nCount), 0)
end

function ChangeKNBTo7Day()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang hi�n �ang ���c s�a ch�a, l�n sau sau h�y ��n.")  
	return end

	if (GetBoxLockState() ~= 0) then
		Say("Tr��c khi ti�n h�nh r�t <color=red>KNB<color>. Y�u c�u ng��i ch�i m� m�t kh�u r��ng tr��c!", 0)
	return end
	
	if (CalcEquiproomItemCount(4,343,1,-1) < 1) then
		Talk(1,"","Ng��i kh�ng mang theo <color=red>KNB<color>, l�m sao m� ��i ��y?")
	return end
	
	Say("Ng��i ch�c ch�n mu�n gia h�n ch�?",2,
	"��ng r�i!/ChangeKNBToDayConfirm",
	"Kh�ng ��i./no")
end

function ChangeKNBToDayConfirm()
	if (CalcEquiproomItemCount(4,343,1,-1) <= PAYMENT_KNB_RENEWALTIME) then
		Talk(1,"", format("B�n kh�ng c� �� <color=red>%d Ti�n ��ng<color>", PAYMENT_KNB_RENEWALTIME))
	return end
	
	if (CalcEquiproomItemCount(4,343,1,-1) > 0) then
		if (ConsumeEquiproomItem(1,4,343,1,-1) ~= 1) then
			Msg2Player("Quy ��i th�nh gi� ch�i th�t b�i!");
		return end
		UseSilver(1,1,1);
		SaveNow();
		Say(format("B�n �� d�ng <color=red>%d KNB<color> ��i l�y 7 ng�y ch�i th�nh c�ng! Vui l�ng ki�m tra l�i!", PAYMENT_KNB_RENEWALTIME), 0)
	end
end

function ChangeKNBToCash()
	local tbSay = {"Ng��i mu�n ��i bao nhi�u?"};
		tinsert(tbSay, "D�ng 1 KNB ��i ra 1000 v�n l��ng/KNB100_Cash1000")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function KNB100_Cash1000()
	if (CalcEquiproomItemCount(4,343,1,-1) < 1) then
		Talk(1,"","B�n kh�ng �� <color=red>1 KNB<color> �� ��i l�y <color=red>1000 v�n l��ng<color>. C� g�ng t�ch g�p ��n khi n�o �� r�i quay l�i ��ynh�!")
	return end
	
	ConsumeEquiproomItem(1,4,343,1,-1)
	Earn(1000*10000);
	Msg2Player("B�n �� d�ng <color=yellow>1 KNB<color> ��i l�y <color=yellow>1000 v�n l��ng<color> t�i Ti�n Trang.")
end

function ChangeKNBToCoin()
	local nKNB = CalcEquiproomItemCount(4,343,1,-1);
	if (nKNB <= 0) then
		Talk(1,"","B�n kh�ng �� mang theo ti�n, kh�ng th� ti�n h�nh.")
	return end
	
	AskClientForNumber("ChangeKNBToCoinConfirm", 1, nKNB, "Nh�p s� l��ng KNB ��i:")
end

function ChangeKNBToCoinConfirm(n_count)
	local n_coincount = CalcEquiproomItemCount(4,343,1,-1);
	if (n_coincount < n_count) then
		Talk(1, "", format("Quy ��i th�t b�i! B�n kh�ng �� <color=red>%d KNB<color> �� ��i th�nh <color=red>%d ti�n ��ng<color>", n_count, n_count*PAYMENT_VALUE_COIN))
	return end
	ConsumeEquiproomItem(n_count,4,343,1,-1);
	for i = 1, n_count*PAYMENT_VALUE_COIN do
		AddItem(4,417,1,0,0,0);
	end
	Msg2Player(format("B�n �� ��i <color=yellow>%d KNB<color> l�y <color=yellow>%d ti�n ��ng<color>", n_count, n_count*PAYMENT_VALUE_COIN))
end