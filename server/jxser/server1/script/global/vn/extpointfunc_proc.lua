G_COIN = 20 -- 1 lan rut duoc bao nhieu tien dong, mac dinh 20, by Giangleloi
function OnExtPointChange_Proc(nExtPointIndex, nChangeValue)
	if (ExtFunTab[nExtPointIndex + 1] == nil) then
		return 0;
	end
	ExtFunTab[nExtPointIndex + 1](nChangeValue)
	return 1;
end

function OnPayYuanBao(nChangeValue)
	nValue = -nChangeValue
	if (nValue == 1) then
	
		AddStackItem(G_COIN,4,417,1,1,0,0,0)--Add G_COIN tien dong
		SaveNow();
		WriteGoldLog( GetAccount().."("..GetName()..") MAKE a SILVER with a LOW CARD", 0, 1, 0, 0 );
		local nCurValue = GetExtPoint(1)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." T�i kho�n"..GetAccount().."\t"..GetName().."\t".."�� R�t Ti�n ��ng Th�nh C�ng"..nCurValue*10)
 		Say("Kh�ch quan �� r�t th�nh c�ng 20 Ti�n ��ng! Xin ki�m tra l�i!", 0)
		Msg2Player("Nh�n ���c 20 Ti�n ��ng!");
 	elseif( nValue > 1) then
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO , MUST PAY(1) BUT PAY("..nValue..")!!!!", 0,0,0,0)
			Msg2Player("C� l�i x�y ra trong qu� tr�nh quy ��i! Xin li�n h� GM �� s�a l�i!")
	else
			WriteGoldLog(GetAccount().."("..GetName()..") PAY EXPOINT ERROR ON YUANBAO PAYVALUE <= 0", 0,0,0,0)
			Say("Xin l�i, kh�ch quan kh�ng kh�ng c� g�i Ti�n ��ng � ch� b�n trang!", 0)
	end
end

ExtFunTab=
{
	nil,
-- 	OnPayYuanBao,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil,
 	nil
};
