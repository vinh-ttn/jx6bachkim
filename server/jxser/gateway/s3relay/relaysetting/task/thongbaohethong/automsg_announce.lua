-- ��ʱ��һ�������������Gameserver��ϵͳ����
function TaskShedule()
	TaskName("THONG BAO TIN TUC TU DONG");
	
	-- 20����һ��
	TaskInterval(20);
	
	-- ����TaskTme, ����Relay����ʱ�Ϳ�ʼ
	-- 0��00�ֿ�ʼ
	-- TaskTime(0, 0);
	
	TaskCountLimit(0);
	
	OutputMsg("=====> THONG BAO TIN TUC TU DONG");
end

g_strTipMsg = 
	{
		--"ÿ��������2-3�������ļ��ܷ�չ���ߣ��������ߵ��ص��Ϊ����",
		--"����Ϸ�������������еĳ���������Т�ִ�����ɽ������ӶԻ������˽Ȿ�ŵļ��ܷ�չ���ߺ����ʺ������ĳ���",
		--"����Ϸ�������������еĳ���������Т�ִ�����ɽ������ӶԻ������˽Ȿ�ŵļ��ܷ�չ���ߺ����ʺ������ĳ���",
		--"����Ϸ�������������еĳ���������Т�ִ�����ɽ������ӶԻ������˽Ȿ�ŵļ��ܷ�չ���ߺ����ʺ������ĳ���",
		--"����Ϸ�������������еĳ���������Т�ִ�����ɽ������ӶԻ������˽Ȿ�ŵļ��ܷ�չ���ߺ����ʺ������ĳ���",
		"� tr� ch�i tr�n th� gi�i c�ng c�c ��i th�nh th� ��ch c�a th�nh v� binh c�ng tay m�i th�n ��ch m�n ph�i ti�p d�n �� t� ��i tho�i , nh�ng hi�u r� b�n m�n ��ch k� n�ng ph�t tri�n l� tuy�n c�ng th�ch h�p nh�t luy�n c�p ��ch tr�ng s�",
		--"���롼���ܼӳɡ��ĸ���ȼ��߼��ܵ㶵�Ľ�ɫ�����ƽ����ӵõ�����",
		--"�����ܼӳɡ��ͼ�ս�����ܶԸ߼�ս��������ָ�ӳɸ߼����ܵ��˺�",
		--"ȫТ�ġ�����ϵ�ˡ�ϵͳ���κ������ںͱ��Լ��˵�����PKʱ����ӵ�и������Ե�����",
		--"7Ԣ16��֮���һ�εǢ���Ϸ���磬ϵͳ����ݽ�ɫ�ľɼ���״���Զ�����ΪТ�ļ��ܣ�Ǳ�ܵ�ָ���ԭʼδ����״̬",
		--"�����������ȡ�ͨ������ʹ�ô˼��ܹ������˻������������˵ȼ�����һ�õ����������޹�",
		--"����Ƶ�NPC���ϣ�����ʾ����������ͼ�꡽",
		--"NPCֻ����ϵӦ�������Եı������Ҫ�õ���ǹ������ȥ��ˮϵ��NPC",
		--"NPCֻ����ϵӦ�������Եı������Ҫ�õ�����װ��������ȥ��ľϵ��NPC",
		--"NPC��������ͼ�꣺��ɫ-��ϵ����ɫ-ˮϵ����ɫ-ľϵ����ɫ-��ϵ����ɫ-��ϵ",
		--"��NPC������ɳĮ�Թ�NPC�����ȼ��ߡ����鶵��ˢТ�죬���ҵ���������ͨNPC�Ķ�������",
		-- "����ӡ����һ������ҵõ��ľ��齫�ǵ��˾����1.3��",		
		--"����ӡ������Ա������ֵ�����ݶ����������õ�ϵӦ����",
		--"����ӡ������Ա������ֵ�����ݶ����������õ�ϵӦ����������װ�������Խ��������һ����ҽ�ɫ����ֵ������",
		--"����ӽ��顽�ߵȼ���Ҵ��͵ȼ���ң��ȼ�ϵ��70������ʱ�����Ե������ٶȽ����20������",
		--"����������ͷ����������Խ������������ľ���Խ�٣��������������ﵽ���ˣ������󽫲�������",
		--"���һ��������һ���ʿ��������ֵ�����ŵ��ϵ�����������ֵ�����湦Ч����������������",
		"n�u nh� ph�t tri�n m�nh �� h�c ���c k� n�ng b� m�t , xin/m�i tr� v� s� , �em h�c ���c c�c lo�i k� n�ng , nh� , huy�t chi�n b�t ph��ng , kh�ng l�ng d� n�o ch�m , Thi�n v��ng chi�n y ( Thi�n v��ng gi�p ), l�ng d� , c�ng v�i la ��a m�t ( ���ng m�n ).",
		--"��ϴ�赺����ʽ���ţ�50�������ϵķǰ�������С�һ����ѡ�������ᡣ�����������ϴ��Ǳ�ܵ㡽�롼���ܵ㡽�������ڵ��ϻ�����붴����ӵ�Ч��",
		--"��ѽ��롼ϴ�赺���Ļ���ֻ��һ�Ρ��뿪ϴ�赺����ġ�Ǳ��/���ܡ����佫�ʹ�ȷ�����뿪ʱ����˼����˼����",	
		"m�t ph�n nh� ch�i ho�n th�nh 90 c�p nhi�m v� sau , v�n kh�ng th� ��t ���c k� n�ng , tr� v� s� sau , tr� v� tr��c khi an ch�nh c�i [183,182])",
		" m�t ph�n ���ng m�n nh� ch�i � h�c [ t� t�i b�n cung . m�a sa l� hoa ] g�p ph�i kh�ng th� s� d�ng m�a sa l� hoa ��ch t�nh hu�ng , tr� v� s� sau , ��n tr��c khi an �i�u ch�nh [183,182]) ",
		"m�t ph�n V� ���ng nh� ch�i g�p ph�i m�t �i k� n�ng �i�m ��ch t�nh hu�ng , tr� v� s� sau , ��n tr��c khi an �i�u ch�nh [183,182])",
		--"��������ѯ���뵽������е����������������졽��������[192,193]",
		--"��ˮ���籩��2004��7Ԣ22����11��00�Ժ󣬳�ֵ35Ԫ�鿨����ʵ����������Т�ִ�Ұ�����������ȡһ��ˮ������ӳٵ�2004��8Ԣ8�ս���",
		--"������ͼ�ס�����ԭ���ֵ����桼ˮ�������������������˻�ȡ������ͼ�ס������á�����������ͼ�ף��ٷְٵذ������������һ���ȼ�",
		--"������ͼ�ס������������˳���������[207,193]���ٰ�[164,177]���أ�Ҫ��ͼ����������������������ж�",
		--"������������ֽ���(������ʾΪ��ɫ)��Я�����ٽ�Ǯ��װ���������ܴ��С�ˮ���������ɺ챦ʯ�������ƽ�װ�������������顽",
		--"���ƽ�װ������������������ƽ�װ����װ��������������������л����á��μӰ��˾������ÿ��Ҳ�����һ��",
		" [ �o v�n t��ng b�i ��a ��i l� ] m�i l�n Trung qu�c ��i ��t ���c t��ng th��ng , nh� ch�i c� th� ��n [ l� quan ] ch� d�n t��ng : kim b�i - kim c� l� , ng�n b�i - b�ch c�u ho�n , ��ng b�i - l� hoa ", 
		"[�o v�n t��ng b�i ��a ��i l�] nh�n l�y l� ph�m tr��c ti�n �o�n : B�c Kinh th�i gian 10:00~14:00 nh�n l�y tr��c m�t ng�y 22:00~ ng�y �� 4:00 ��ch ph�n th��ng ", 
		"[ �o v�n t��ng b�i ��a ��i l� ] nh�n l�y l� ph�m th� hai th�i gian �o�n :19:00~20:00 nh�n l�y ng�y �� 14:00~18:00 ��ch ph�n th��ng ", 
		"[ �o v�n t��ng b�i ��a ��i l� ] nh�n l�y l� ph�m th� ba th�i gian �o�n :23:00~ ng�y k� 0:00 nh�n l�y ng�y �� 18:00~22:00 ��ch ph�n th��ng ", 
		" [ �o v�n t��ng b�i ��a ��i l� ] d�n t��ng c� l�c h�n , nh� ch�i h�n ch� � v�n ��i ��ch tranh t�i , ��n [ l� quan ] ch� k�p th�i d�n t��ng .", 
		" s� d�ng [ kim c� l� ] � m�t gi� n�i luy�n c�p , �em ��t ���c g�p ��i kinh nghi�m tr� gi� : � trong v�ng m�t canh gi� s� d�ng [ b�ch c�u ho�n ] �em ��t ���c [ t� ��ng ��nh tr�ch ].2 lo�i thu�c men ch�c n�ng �em � ng�y �� m� ra ", 
		" [ d� �o�n �o v�n cu�c so t�i chuy�n ] � th�nh ph� ��ch [ l� quan ] ch� tham gia �o v�n cu�c so t�i chuy�n d� �o�n ", 
		"[ �o v�n cu�c so t�i chuy�n c�nh �o�n ] c�nh �o�n tr�ng t��ng ��ch nh� ch�i � ��t ���c ti�n th��ng h�i b�o ��ch ��ng th�i , c�n c� c� th� ��t ���c ? ��nh n��c ?? an bang ? h� li�t ho�ng kim trang b� trung ��ch m�t m�n ", 
		" t�t c� cu�c so t�i chuy�n sau khi k�t th�c , h� th�ng �em � �o�n tr�ng Trung qu�c ��i ��t ���c ��ch kim ? ng�n ? ��ng b�i s� l��ng ��ch nh� ch�i trung sinh ra m�t v� si�u c�p may m�n nh� ch�i , t��ng th��ng �o v�n h� li�t ho�ng kim trang b� s�o trang ", 
		"[�o v�n t��ng b�i c�nh �o�n ] Trung qu�c t��ng b�i s� l��ng c�nh �o�n , �em � 2004.8.17 ng�y bu�i s�ng duy tr� tr��c ch�n ch� . mu�n tham gia nh� ch�i xin/m�i n�m ch�c th�i gian mua lo�i n�y v� s� ", 
		" [ �o v�n ho�ng kim trang b� ] bao g�m 2 b�/v� [ nh� �i�n chi h�n ], [ B�c Kinh chi m�ng ]", 
		"[ �o v�n chi h�n ] �o v�n l�ng  thu�c t�nh ��u v� ? t�t c� v� c�ng c�p b�c th�m 1? , ��i �� sau t� ��ng k�ch ho�t to�n th�n trang b� ��ch t�t c� th�m thu�c t�nh ", 
		" [ ph�c duy�n h� th�ng ] th�ng qua ch�i th�i gian gia t�ng �� ��i l�y ph�c duy�n tr� gi� , d�ng ph�c duy�n tr� gi� ��n [ th�n b� th��ng nh�n li�u �t ] ch� ��i l�y c�c lo�i ��c bi�t v�t ph�m ", 
		" [ ph�c duy�n h� th�ng ] c�ng th�nh ph� ��ch [ v� l�m truy�n nh�n ] ��i tho�i , hi�u r� c�n k� tin t�c .", 
		" [ trung thu ho�t ��ng ] �n trung thu b�nh Trung thu , ng�m tr�ng , m� m� ng� ---- ho�t ��ng �ang to�n di�n ti�n h�nh , ph�n th��ng ch� ng��i . m�i ���c l� quan ch� h�i c�n k� tin t�c .", 
		" [ hoa ��o ��o ] �o v�n v�n ng��i c�ng nh�c , � h� th�ng d�ng ky b�o tu , t� 14/8/2004 ��n 30/8/2004, mi�n ph� � hoa ��o ��o tu luy�n ."
	};
	
-- �¹���Ԥ����Ϣ
g_nFutureDate = 20240723;
STR_HEAD_FUTURE = " [Giang H� truy�n r�ng]";
g_strFutureMsg = 
	{
		"chuc �������š�������ͼ�������򱦵�ͼ��",
		"mung ��ϴ�赺��ϴ���ܵ㹦�ܽ���2004��7��24�տ��ţ�50�������ϵķǰ��������һ����ѽ������",
		"nam ��������ˮ���������ء�����ͼ�ס��������������ȼ�",
		"moi ���������(������ʾΪ��ɫ)������������˵��Я�����ٽ�Ǯ��װ����ɽ�������ܴ��С�ˮ���������ɺ챦ʯ�������ƽ�װ�������������顽",
		"2013���ƽ�װ������������������ƽ�װ����װ��������������������л�����",
		"2014��˫����Ǯ˫�����顽90�����ܾ���Ψ����������ӳɷ磬��������𱬡���л������ң����ڽ�����˫����Ǯ˫������",
		
	};
function TaskContent()
	str = "";
	nFutureCount = getn(g_strFutureMsg);
	nCount = getn(g_strTipMsg) + nFutureCount;
	nIndex = random(1, nCount);
	if (nIndex <= nFutureCount) then -- 1-ȡԤ����Ϣ��2-ȡ��ʾ��Ϣ
		str = getFutureMsg();
		if (strlen(str) <= 0) then -- û��Ԥ����Ϣ����ȡ��ʾ��Ϣ
			str = getTipMsg();
		end
	else
		str = getTipMsg();
	end
	
	GlobalExecute(format("dw Msg2SubWorld([[%s]])", str));
end

-- ȡ��ʾ��Ϣ
function getTipMsg()

	nCount = getn(g_strTipMsg);
	nIndex = random(1, nCount);

	return g_strTipMsg[nIndex];
end

-- ȡԤ����Ϣ
function getFutureMsg()
	nCurDate = tonumber(date("%Y%m%d"));
	str = "";
	if (g_nFutureDate > nCurDate) then -- �Ƿ���ָ������֮ǰ�����򲻷�
		nCount = getn(g_strFutureMsg);
		nIndex = random(1, nCount);
		str = STR_HEAD_FUTURE..(g_strFutureMsg[nIndex]);
	end
	
	return str;
end
