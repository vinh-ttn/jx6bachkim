-- ��ͭǮ����������Ʒ��NPC
-- Fanghao Wu
-- 2004.11.1

function main()

	--Say("������ʿ����λ�͹٣���Ҫʲô�ö���ֱ��ȥ<color=yellow>�����<color>���������ˣ��Ϸ����ڿ��������������أ�ʲô��������ôȥ<color=yellow>�����<color>��ֱ�ӵ��<color=green>��Ϣ�ǵ��Ǹ�Բ�ε�ͼ��<color>�����ˡ�", 0);
	--return
	
	 Say ( "D�ch Dung Thu�t S� : Mu�n h�c thu�t d�ch dung ? Th�t ra th� r�t ��n gi�n, � ta ��y mua m�t ��c ch� d�ch dung m�t n� ta li�n c� th� d�y ng��i. B�t ��ng m�t n� c� th� d�ch dung ���c kh�ng c�ng ��ch d�ng v� , ��i hi�p c� mu�n hay kh�ng nh�n m�t ch�t ? ", 1, "Li�n quan t�i d�ch dung m�t n�/OnAbout" );
end

function OnBuy()
	Sale( 95, 3 );
end

function OnCancel()
end

function OnAbout()
	Say( "�em t�y � m�t n� trang b� ��n trang b�<color=yellow> m�t n� <color> m�t c�ch, ng��i ch�i nh�n v�t d�ng ngo�i s�a ��i v� n�n m�t n� ��i �ng NPC h�nh t��ng, nh�n v�t t�n c�ng t�t c� thu�c t�nh ��u <color=yellow> kh�ng thay ��i <color> , c�ng <color=yellow> kh�ng �nh h��ng <color> nh�n v�t b�nh th��ng s� d�ng c�c lo�i trang b� ��o c� c�ng ch�c n�ng. �em m�t n� t� trang b� lan g� xu�ng, nh�n v�t d�ng ngo�i thay ��i tr� v� b� d�ng l�c tr��c, m�t n� ��ch s� d�ng s� l�n <color=yellow> gi�m b�t m�t l�n <color>.", 0 );
end
