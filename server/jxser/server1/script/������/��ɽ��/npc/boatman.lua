-- Hi�u thu�c � M�c B�c Th�o Nguy�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main()
	Say("<color=green>Thuy�n phu<color>: Ng��i mu�n ng�i thuy�n ��n D��ng Ch�u �h? 500 l��ng!"..Note("xaphu_visondao"), 2, "���c th�i! �i n�o!/toyangzhou", "Kh�ng ng�i thuy�n ��u./no");
end

function toyangzhou()
	if( GetCash() >= 500 ) then
		NewWorld( 80,1369,3369 );
		DisabledUseTownP(0)	-- ���������뿪��ɽ�췵�����ݺ�ʹ�ûسǷ�
		SetFightState(1);
		Pay( 500 );
	else
		Talk( 1,"","Kh�ng ti�n kh�ng th� l�n thuy�n!");
	end
end

function no()
end