-- V��ng Th� Ngh�a � Nam Nh�c Tr�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	if ( GetTask(1256) == 1 ) then
		SetTaskTemp(111,GetTaskTemp(111)+1)

		if ( GetTaskTemp(111) > 3 ) then
		 	Talk(1,"","Nghe n�i c� m�t v� s� th�i kh�ng bi�t t� mi�u n�o ��n, ph�p l�c v� bi�n ng��i �i h�i th� xem sao.")
		 	SetTask(1256, 2)
		else
		 	Talk(1,"","Ng��i l�i h�i th�m c�i ch�t c�a Th� Lang �h? ta c� bi�t ��u? Nghe n�i ��c C� ��i Hi�p c�m con g�i �ng ta ��c C� V�n xu�ng n�i n�a ��y, �� th�y c�i d�ch b�nh n�y gh� g�m bi�t ch�ng n�o, hix......")
		return end
		return elseif ( GetTask(1256) == 2 ) then
		Talk(1,"","Nghe n�i c� m�t v� s� th�i kh�ng bi�t t� mi�u n�o ��n, ph�p l�c v� bi�n ng��i �i h�i th� xem sao.");
	return end

	i = random(0,2);

	if (i == 0) then
		Say("<color=green>V��ng Th� Ngh�a<color>: Nghe n�i phu nh�n c�a ��c C� ��i Hi�p kh�ng ch� r� v� ngh� cao c��ng, m� c�n l� m�t m� nh�n n�a."..Note("vuongthunghia_namnhactran"),0)
	return end;

	if (i == 1) then
		Say("<color=green>V��ng Th� Ngh�a<color>: Nghe n�i ��c C� ��i Hi�p v� ��c C� phu nh�n v�n l� k� th�, kh�ng ng� l�i y�u nhau v�t b� hi�m nghi,k�t th�nh gia quy�n. Tr�n giang h� c�n l�u l�i m�t giai tho�i ��y."..Note("vuongthunghia_namnhactran"),0)
	return end;

	if (i == 2) then
		Say("<color=green>V��ng Th� Ngh�a<color>: Con g�i ��c C� ��i Hi�p ��c C� V�n th��ng ��n th� tr�n ch�i, l� ng��i ngh�ch ng�m lanh l�i."..Note("vuongthunghia_namnhactran"),0)
	end;

end;

