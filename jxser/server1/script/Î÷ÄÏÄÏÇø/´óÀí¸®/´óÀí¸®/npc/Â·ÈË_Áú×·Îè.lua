Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\branch\\zhongli\\branch_zhonglitasknpc.lua")

function main()
dofile("script/��������/����/����/npc/·��_��׷��.lua")
	Uworld42 = GetTask(42)
	Uworld1057 = nt_getTask(1057)
		branch_longzhuiwu()
	if (Uworld42 == 50) then
		Talk(12,"aaa","Long Truy V�: Kh�ng c�n ph�i n�i, ta bi�t t�t c� m�i chuy�n. Ti�u huynh ��, ba m��i n�m tr��c Trung Nguy�n �� t�ng c� b�n v� nh�n, c�c b�ng h�u kh�ch kh� x�ng l� 'V� l�m t� k�' ng��i c� t�ng nghe n�i?","Ng��i ch�i: t�i h� xu�t ��o r�t mu�n n�n kh�ng r� l�m.","Long Truy V�: Giang h� r�ng l�n, kh�ng th� tr�ch ng��i ���c. Trong b�n ng��i ta b� nh�t, l�m �� long �o�t ph�p. C�ng 2 huynh �� ��o Nh�n Qu� v� V� Danh Th�n T�ng. L�o ��i c�a ch�ng ta l� Th��ng L��ng Kh�ch, trong tay n�m tuy�t k�, l�c �y kh�ng ��i th�.","Ng��i ch�i: H�a ra ti�n b�i t�ng l� V� M�c T��ng l�nh, th�t k�nh th�t k�nh","Long Truy V�: Kh�ng c� g� ph�i ng��ng m�. Ho�ng Th��ng d�ng kim b�i l�nh ti�n chi�u gi�t nguy�n so�i t�i Phong Ba ��nh, ch�ng ta b� T�n Qu�i th� h� truy s�t. L�o ��i th�m nh�t, c� gia ��nh �� b� gi�t s�ch, ph�i r�i v�o c�nh c� ��c m�t m�nh.","Ng��i ch�i: Th� s� �� r� L�o ��i c�a huynh nh� th� n�o r�i?","Long Truy V�:Hi�n gi� l�o ��i �� n�a t�nh n�a �i�n, b�t gi� con ng��i kh�c xem l� con m�nh.Ng��i kh�ng bi�t l�y c�i n�m h�n, h�n c�ng kh�ng n�. Ng��i kh�ng gi�ng ng��i.�","Ng��i ch�i: H�n l� ��a tr� b� Th��ng L�ng Kh�ch b�t �i?","Long Truy V�: ��ng. �� k� ni�m sinh th�n 90 c�a m�nh, h�n �� b�t m�t v�i ��a b� l�m con ch�u, kh�ng c� � ��nh l�m h�i ch�ng. Ng��i �i t�m ng��i, kh�ng ���c l�m h�i l�o ��i ta.","Ng��i ch�i: Long ��i hi�p n�i ��a, v� c�ng c�a t�i h� sao so s�nh ���c v�i Th��ng L�ng Kh�ch ti�n b�i.","Long Truy V�: C�c h� qu� khi�m t�n, ta th�y ng��i r� r�ng l� m�t cao th�. L�o ��i h�m �� v� th��ng t�m qu� �� d�n ��n t�u h�a nh�p ma, c�ng l�c suy gi�m. Huynh �y b�y gi� �ang �n c� � �i�m Th��ng S�n. Ng��i c� th� �i ��n ��.","Ng��i ch�i: �a t� ti�n b�i.")
		SetTask(42,60)
		AddNote("Ti�p nh�n nhi�m v�: ��n �i�m Th��ng S�n t�m Th��ng L��ng Kh�ch th�m d� tin t�c ��a b� m�t t�ch.")
		Msg2Player("Ti�p nh�n nhi�m v�: ��n �i�m Th��ng S�n t�m Th��ng L��ng Kh�ch th�m d� tin t�c ��a b� m�t t�ch.")
	elseif (Uworld42 >= 60) then
		Talk(1,"","Long Truy V�: Ng��i kh�ng l�m h�i L�o ��i c�a ta ch�?")
	else
		Talk(1,"","��ng c� su�t ng�y phi�n ta.")
	
	end
end



function aaa()
Talk(12,"","Long Truy V�:...Hi�n gi� l�o ��i �� n�a t�nh n�a �i�n, b�t gi� con n�t xem l� con ch�u m�nh...Ng��i kh�ng bi�t l�y c�i n�m h�n, h�n c�ng kh�ng n�. Ng��i kh�ng gi�ng ng��i..�","Ng��i ch�i: H�n l� ��a tr� b� Th��ng L�ng Kh�ch b�t �i?","Long Truy V�: ��ng. �� k� ni�m sinh th�n 90 c�a m�nh, h�n �� b�t m�t v�i ��a b� l�m con ch�u, kh�ng c� � ��nh l�m h�i ch�ng. Ng��i �i t�m ng��i, kh�ng ���c l�m h�i l�o ��i ta.","Ng��i ch�i: Long ��i hi�p n�i ��a, v� c�ng c�a t�i h� sao so s�nh ���c v�i Th��ng L�ng Kh�ch ti�n b�i.","Long Truy V�: C�c h� qu� khi�m t�n, ta th�y ng��i r� r�ng l� m�t cao th�. L�o ��i h�m �� v� th��ng t�m qu� �� d�n ��n t�u h�a nh�p ma, c�ng l�c suy gi�m. Huynh �y b�y gi� �ang �n c� � �i�m Th��ng S�n. Ng��i c� th� �i ��n ��.","Ng��i ch�i: �a t� ti�n b�i.")
end

