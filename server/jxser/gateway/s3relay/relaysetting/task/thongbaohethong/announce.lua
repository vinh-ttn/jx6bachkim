-- ��ʱ��һ�������������Gameserver��ϵͳ����
-- Խ�ϰ治��������  by peres 2006/05/11

function TaskShedule()
	TaskName("THONG BAO TIN TUC TU DONG");
	
	-- 10����һ��
	TaskInterval(10);
	
	-- ����TaskTme, ����Relay����ʱ�Ϳ�ʼ
	-- x��y�ֿ�ʼ(y%10==0)
	local n_cur_h	= tonumber(date("%H"));
	local n_cur_m	= tonumber(date("%M"));
	
	if (n_cur_m > 50) then
		n_cur_h = mod((n_cur_h + 1), 24); 
	end
	
	n_cur_m = mod((n_cur_m - mod(n_cur_m, 10) + 10), 60);
	TaskTime( n_cur_h, n_cur_m );
	TaskCountLimit(0);
	
	OutputMsg("=====> THONG BAO TIN TUC TU DONG");
end

g_strTipMsg = 
	{
--		"���������š�Ϊ��ӭ�����꣬���չٸ�����֯�����ϻ���С��Ϸ���������Ż���19��00~23��00��֯����ȥ���������ά���ڻ�нܳ�����ʿ����λ��ʱ���Ե�������е����Ų��۴������μӡ�",
--		"���һ��������һ���ʿ�����򡼿�䡽���������һ���������ͬʱ���ڵ����ֲ�ͬ����������󣡴�����ɫװ�����Ӵ˸����㣡",
--		"���һ������һ����Ͽ�ʹ��(��)�׾�����С������йܡ����������ڿ��������һ������������������йܾ�����Ӽ��㣬����Ӱ��",
--		"���һ��������ߴ���еĴ����������ɵ����һ�������ҽ���ȼ�������50�����ƣ�5�����Ҳ���ڵ������󣻵�50�����µ�����޷������������",
--		--"���һ�����������������������ң������һ�������������Чʱ���Զ�ת��Ϊ���ڿ�ʱ��(�������鲻��˫��)",
--		"����ʹ�����������ڸ�����е���ٴ���ȡ��ȫ�µ���ʹ������~(����μ�������jx.xoyo.com)",
--		"��װ��ĥ���������װ���;ö�ĥ��0���Զ�������ж�£����<�𻵵�װ��>�����ڱ�����(װ������ʧ)��<�𻵵�װ��>�ɵ��ٰ����������ˡ�����ԭ",
--		"���������š����˷��������������ֳ�����7�������Χ���Ʊؽ������ֽ�����һ����Ȼ�󲨡�",
--		"����ս��֮������ǻ��ÿ���������յ�15:00~17:00���š���ҿ���ͨ����ɶ��������������ٰ��������������ݸ��ĳ��������Ի����μ��η��س�ս�ۣ�ͨ������踮���꾩���ĳ��������Ի����μӽ��س�ս�ۡ�",
--		--"�����彭����12��31�գ��ڶ����������������Ъ�ڡ������ɻ��ǰ32����ѡ�ֽ�������ȡ������������06��1��8�յ�������������������ʼ����������Ϊʦͽ˫������",
--		--"�����彭����12��8�յڶ�������������ʽ��ʼ����������Ϊ���ɵ�������������Ϊ12��8��-12��28�գ�����������ǰ32��ս�Ӿ����÷�������������������μ��������������������ؽ��ܡ�",
--		--"��������������Ƭ�����彭������2005-10-31ȫ��ȫ��ͬʱ���ţ��������⣬������μ�������",
--		--"�����彭������ͬ��ϵͳȼ�鿪�ţ���ҿ�����7����еĳ��������˴���ȡͬ������ͬʱ�ɵ��������ִ����崦��ȡͬ���������",
--		"�����彭������ͬ��ϵͳȼ�鿪�ţ���ҿ�����7����еĳ��������˴���ȡͬ������ͬʱ�ɵ��������ִ����崦��ȡͬ���������",
--		"������¼�ϵͳ��������¼�ϵͳȫ�濪�ţ�ͬ�鴦���ٻ�״̬�¼��п��ܴ�����",
--		"���Ի�֮ҹ������Ի�֮ҹ���ÿ��19:30��20:00��20:30��22:30��ʱ������(����μ�������jx.xoyo.com)",
--		"�����زر�ͼ�������زر�ͼ���ֽ��������ޱ��ؾ�����ǰ��(����μ�������jx.xoyo.com)",
--		"�������������ʿ���н����ˡ��㷷����ϻ������һ�Ұ������̡���<color=yellow>�����<color>(������½ǰ�ť)���´��ڼ���Ʒ�Ż�����(�Ż�ʱ�䣺2006��1��24����2��7��)��(����μ�������jx.xoyo.com)",
	};
	
-- �¹���Ԥ����Ϣ
g_nFutureDate = 2019010424;
STR_HEAD_FUTURE = " [Ho�t ��ng C�u Nguy�t Phong Ba]";
g_strFutureMsg = 
	{
	"9 nguy�t phong ba ho�t ��ng �ang ti�n h�nh, m�i ng�y, m�i tu�n, m�i th�ng ��u c� th��ng cho ch� ng��i. T� ��o trong th�i gian, tham gia ho�t ��ng, t� nh� t�ng kim ��i chi�n, d� t�u nhi�m v�, s�t th� nhi�m v� ��u c� th� t�ng vi t�ch ph�n. C� th� �i ki�n v� l�m truy�n th� c� l� � trang ch�nh kh�n t�nh h�nh c� th� v� t� m� ",
	"9 nguy�t phong ba ho�t ��ng �ang ti�n h�nh, m�i ng�y vi t�ch ph�n kh� d� ��i l�y th��ng cho, c� th� nh� sau: M�i tu�n t�ng vi t�ch ph�n b�i danh ti�n m��i ngo�n gia t��ng thu ���c chu th��ng cho, to�n b� ho�t ��ng trong l�c, t�ng vi t�ch ph�n b�i danh ti�n m��i, t��ng thu ���c nguy�t th��ng cho. Qu�n qu�n th��ng cho vi ��i m� n�o nh�n th��ng cho c� l� ng�u nhi�n thu ���c m�t b� ��i ho�ng kim trang b�, k� n�ng + 1!",
	"? �i�u ch�nh b�ch c�u ho�n gi�i c�ch: T� 9 nguy�t 8 nh�t kh�i, l�m an ng��i b�n h�ng rong c� m�i b�ch c�u ho�n, gi� ti�n l� 1 m�t ��ng ti�n / m�t: M�i ng�y t� 0:00 ��o 12:00 ly tuy�n kinh nghi�m v�n nh� c� t�ng b�i!",

	};
function TaskContent()
	str = "";
	local ndateH 	= tonumber(date("%H"));
	local ndateM	= tonumber(date("%M"));
	local ndateD	= tonumber(date("%Y%m%d"));
	if (ndateH < 21 and ndateM == 0 and ndateD >= 20090116 and ndateD < 20090216) then
		str	= "Hi�n nay v� l�m nh�n s� ��n NPC Th�n T�i nh�n l� v� l�nh ph�o hoa "
	elseif (ndateH == 21 and ndateM == 0 and ndateD >= 20090116 and ndateD < 20090216) then
		str	= "V� l�m nh�n s� nhanh l�n m�t ch�t lai l�nh t��ng, ��ng th�i c� c� h�i l�nh c�ng nhi�u may m�n th��ng cho!";
	else
		return
		--str = getTipMsg();
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
	nCurDate = tonumber(date("%Y%m%d%H"));
	str = "";
	if (g_nFutureDate > nCurDate) then -- �Ƿ���ָ������֮ǰ�����򲻷�
		nCount = getn(g_strFutureMsg);
		nIndex = random(1, nCount);
		str = STR_HEAD_FUTURE..(g_strFutureMsg[nIndex]);
	end
	
	return str;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
