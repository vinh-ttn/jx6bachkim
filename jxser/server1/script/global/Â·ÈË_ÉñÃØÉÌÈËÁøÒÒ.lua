Include( "\\script\\lib\\alonelib.lua" )
Include( "\\script\\dailogsys\\dailogsay.lua" )
Include( "\\script\\global\\fuyuan.lua" )
Include([[\script\event\mid_autumn06\head.lua]]);
Include("\\script\\vng_feature\\thuongnhanthanbi\\moruongfour\\openchestfour.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function main()
	local tbContent = {"<color=green><npc><color>Kh�ch quan mu�n mua g�? B�n ti�m kh�ng thi�u m�n g� c�!"};
		tinsert(tbContent, "Giao d�ch/OnBuy");
		tinsert(tbContent, NOTTRADE);
		if DiDenNgonNuiTruongBachThanBiThuongNhan == 1 then
		tinsert(tbContent, "�i ��n ng�n n�i Tr��ng B�ch/GotoHuanZhuan");
		end
		tinsert(tbContent, "Li�n quan ��n ph�c duy�n/OnAbout");
	if (au06_is_inperiod() == 1) then
		tinsert(tbContent, "Ho�t ��ng Trung Thu/au06_lpaw_entrance");
	end;
		tinsert(tbContent, "M� r��ng 4/#tbChectfour:main()");
	CreateTaskSay(tbContent)
end

function OnBuy()
	if OpenShopThanBiThuongNhan == 1 then
		Sale( 93, 2 );
	else
		Msg2Player("<color=yellow>C�a h�ng Th�n b� th��ng nh�n hi�n �ang ��ng, khi n�o m� l�i s� c� th�ng b�o!")
	end
end

function OnAbout()
	Talk( 3, "", "S� �i�m ph�c duy�n: Th�ng qua t�ch l�y th�i gian Online s� ��i l�y m�t s� �i�m �o, c� th� d�ng �� ��i c�c lo�i v�t ph�m ��c bi�t  � Th�n b� Th��ng Nh�n Li�u �t(T��ng D��ng) .", "��i ph�c duy�n: Sau khi online > 2 gi�, ��n V� L�m Truy�n Nh�n � c�c ��i th�nh th� �� ��i. N�u 1 ng�y ��i ph�c duy�n th�nh c�ng 2 l�n, s� nh�n ���c ph�n th��ng. N�u Online < 4 gi�, m�i gi� ��i ���c 1 �i�m. Sau ��, m�i 2 gi� ��i ���c 1 �i�m. Th�nh vi�n trong ��i c� th� nh�n �i�m gi�p cho c� ��i.", "�i�u ki�n h�n ch�: �ang � ��i lao v� ��o Hoa ��o s� kh�ng ���c t�nh t�ch l�y th�i gian online" );
end

function au06_lpaw_entrance()
	if (au06_IsPayed_player() == 0) then
		Say("Ch� c� ng��i ch�i n�p th� m�i c� th� tham gia ho�t ��ng Trung thu", 0);
		return
	end;
	Say("N�u ng��i c� <color=yellow>10 Th��ng C� l�nh b�i<color> ta s� ��i cho 1  <color=yellow>Ph�ng Nguy�t Qu� Dung<color> t�ng �i�m k� n�ng ho�c 1 <color=yellow>C�ng Nguy�t Ph� Dung<color> t�ng �i�m ti�m n�ng.", 3, "��i 10 Th��ng C� l�nh b�i l�y Ph�ng Nguy�t Qu� Dung/#shangjialingpai(1)", "��i 10 Th��ng C� l�nh b�i l�y C�ng Nguy�t Ph� Dung/#shangjialingpai(2)", "Nh�n ti�n gh� qua th�i/oncancel");
end;

function shangjialingpai(nIndex)
	if (CalcEquiproomItemCount(6, 1, 1252, -1) < 10) then
		Say("Ng��i ch�a �� 10 Th��ng C� l�nh b�i", 0);
		return
	end;
	
	--�۳���Ʒ
	if (ConsumeEquiproomItem(10, 6, 1, 1252, -1) ~= 1) then
		return
	end
	
	--���轱��
	local str = "<color=yellow>Ph�ng Nguy�t Qu� Dung<color>";
	if (nIndex == 1) then -- ����һ�����ܵ�
		AddItem(6, 1, 127, 1, 0, 0, 0);
	else -- ����5��Ǳ�ܵ�
		AddItem(6, 1, 128, 1, 0, 0, 0);
		str = "<color=yellow>C�ng Nguy�t Ph� Dung<color>";
	end;
	
	--������ʾ
	Say("Hay qu�! Xin nh�n ch�t qu� m�n ��p l�!", 0);
	Msg2Player("B�n ��t ���c"..str);
end;

function OnCancel()
end
function GotoHuanZhuan()
	NewWorld(934, 49632 / 32, 105696 /32)
end
