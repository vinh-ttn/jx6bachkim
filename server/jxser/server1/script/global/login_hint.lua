Include("\\script\\lib\\common.lua")
Include("\\script\\global\\rename_head.lua")

--�����
EVENTS_TB = {
--	{
--		--��ʾ�����
--		ndate = {051101, 051131},	--��ֹ���ڣ���ѡ
--		ntime = {2000, 2359},		--��ֹʱ�䣬��ѡ
--		level = {1, 200},			--��ֹ���𣬿�ѡ
--		taskequal = {taskid, taskvalue},	--�������ϵ�ȣ���ѡ
--		tasknot = {taskid, taskvalue},		--����������ȣ���ѡ
--		checkfunc = func			--��⺯������ѡ����������nil��ʾ�����������򴥷�
--		
--		--�����
--		name = "ĳĳ�",			--����ƣ�����
--		describe = "��˵������",	--�˵����Ҳ������һ�����������ַ�������ѡ
--		detail =
--[[�����������д�ܶ����֣���ϸ������Ļ��
--���������ŵ���ʽ�������ɻ��С�
--����Ҳ������һ�����������ַ���]],	--����飬��ѡ \___����ֻ��ѡ��һ
--		callback = nil,				--�ص���������ѡ /
--		link = nil,					--Describe�Ի�link��Ϣ����ѡ��ʹ��detailʱ��Ч��
--	},
	{
		ndate = {070414,070424},
		name = "Ng�y 3 th�ng 3",
		describe = "T� <color=yellow>14/4/2007<color> ��n <color=yellow>24/4/2007<color>, ho�t ��ng th�i gian b�n trong, t�t c� �ang ��nh tr�ch luy�n c�ng trong qu� tr�nh ��ch nh� ch�i �em c� c� h�i nh�t ���c <color=yellow> h�ng h�a ��i <color>. C�m h�ng h�a ��i c�ng ng�n l��ng ��n c�c th�nh ph� NPC th��ng phi�n ch� ��i l�y <color=yellow> nguy�n li�u ch�a ��ng t�i <color>.",
	},
	{	--3����ǰ�����������
		level = {1, 3},
		tasknot = {1014, 2},
		name = "Nhi�m v� gi�o hu�n",
		describe = "Long ng� nhi�m v� s� nh�p",
		callback = Uworld1000_word,
	},
	{	--������������Т��
		level = {80, 119},
		name = "V� l�m li�n ��u, v� l�m li�n cu�c so t�i V� L�m T�n T�",
		describe = "Ng��i c� th� ��n quan vi�n ch� ghi danh tham gia v� l�m li�n ��u.",
		detail =
[[ V� l�m li�n ��u �ang �ang chu�n b� giai �o�n, c�p b�c c�a ng��i c� th� tham gia <color=yellow>V� L�m Li�n ��u<color>.
li�n cu�c so t�i v� tr� : <color=yellow>Bi�n kinh(222, 191)<color>, <color=yellow>L�m An(182, 204)<color>.]],
	},
	{	--�������������߼�
		level = {120, 200},
		name = "V� l�m li�n ��u, v� l�m li�n cu�c so t�i V� L�m T�n T�",
		describe = "Ng��i c� th� ��n quan vi�n ch� ghi danh tham gia v� l�m li�n ��u.",
		detail =
[[ V� l�m li�n ��u �ang �ang chu�n b� giai �o�n, c�p b�c c�a ng��i c� th� tham gia <color=yellow>V� L�m Li�n ��u<color>.
li�n cu�c so t�i v� tr�<color=yellow>��i L�(200, 197)<color>, <color=yellow>D��ng Ch�u(219, 190)<color>.]],
	},
	{	--�Ի�֮ҹ
		name = "��m huy ho�ng", 
describe = "Minh ch� v� l�m ��c c� ki�m ma ho�t ��ng t�n ��m Huy Ho�ng m�i ��m 7:30 ph�t.",
		detail =
[[Tr��c m�t l� gi� �i�u m�a thu�n th�i gian, v� th�nh t�nh ��p t� giang h� v� l�m nh�n s�, minh ch� v� l�m truy�n nh�n c� h�nh ho�t ��ng ��m Huy Ho�ng. Ho�t ��ng t� m�i ng�y 19 gi� 30 ph�t, m�i l�n ho�t ��ng 30 ph�t. C� th� n�i dung c� th� �i t�m l� quan m� .]],
	},

	-- {
	-- 	name = "<#>��ɫ����",
	-- 	describe = "<#>�����ڲ��������У����Ľ�ɫ����������ҵĽ�ɫ��������������������ϵͳ�Ѱ����Զ��������������Ҫ��Т�ı��ɫ���Ļ����뵽��Т�ִ��Т���ƹ�Ա��ѡ���޸Ľ�ɫ������ֻ�ܸ���һ�ν�ɫ������������ϸ�Ķ�ϵӦ˵����",
	-- },
	-- {
	-- 	name = "<#>������",
	-- 	describe = "�����ڲ��������У������ڵİ�ᣬ����������������������������������ϵͳ�Ѱ������ڵİ���Զ����������������Ҫ��Т�ı������Ļ����뵽��Т�ִ��Т���ƹ�Ա��ѡ���޸İ����������ֻ�ܸ���һ�ΰ��������������ϸ�Ķ�ϵӦ˵����",
	-- },
}

EVENT_HINT_LINK = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy060\\enemy060_st.spr>Ho�t ��ng c� th� l�m : <link>"
EVENT_HINT_TIMES = 3	--ÿ��������ʾ����

--����нϸ��ӵĻ��Ҫ�Զ���һЩ����������Ϣ��Include����ʹ�ã�
--	if EVENTS_TB then EVENTS_TB[getn(EVENTS_TB)+1] = {����} end
--�ķ�ʽ���
--=================================================================
Include("\\script\\task\\newtask\\education\\dragonfive.lua")
Include("\\script\\event\\great_night\\huangzhizhang\\event.lua")
--=================================================================

--�Ǣ�ʱ���õĺ���
function event_hint_login(bExchangeIn)
	-- ��������ľͲ�������ʾ��
	if (bExchangeIn == 1) then
		return
	end
	local n_date = tonumber(GetLocalDate("%y%m%d"));
	local n_time = tonumber(GetLocalDate("%H%M"));
	local n_times;
	if (GetTask(2308) ~= n_date) then	--���ǽ���Ǣ���
		SetTask(2308, n_date);
		SetTask(2309, 0);
		n_times = 0;
	else
		n_times = GetTask(2309);
	end
	if (n_times >= EVENT_HINT_TIMES) then	--�Ѵﵽ��ʾ������������ʾ
		return
	end
	
	local n_level = GetLevel();
	local tb = {};
	for i = 1, getn(EVENTS_TB) do
		if event_hint_check(EVENTS_TB[i], n_date, n_time, n_level) then	--��������
			tb[getn(tb)+1] = i;
		end
	end
	if (getn(tb) == 1) then	--ֻ��һ�����ֱ����ʾ����
		event_show_detail(tb, 1);
	elseif (getn(tb) > 0) then	--�����
		event_show_all(tb);
	end
	
	SetTask(2309, n_times + 1)
	
	bingfu_hint()	--������������ʱ��ӵĸ����ȼ�������ʾ�������ڹ淶��ʹ��
end

--���ĳ����Ƿ���Ҫ֪ͨ��ǰ���
function event_hint_check(tb_event, n_date, n_time, n_level)
	local tb = tb_event.ndate;
	if (tb) then	--�޶�����
		if (n_date < tb[1] or n_date > tb[2]) then	--���ڲ���
			return
		end			
	end
	tb = tb_event.ntime;
	if (tb) then	--�޶�ʱ��
		if (n_time < tb[1] or n_time > tb[2]) then	--���ڲ���
			return
		end			
	end
	tb = tb_event.level;
	if (tb) then	--�޶�����
		if (n_level < tb[1] or n_level > tb[2]) then	--���𲻷�
			return
		end			
	end
	tb = tb_event.taskequal
	if (tb) then	--�������ϵ��
		if (GetTask(tb[1]) ~= tb[2]) then
			return
		end			
	end
	tb = tb_event.tasknot
	if (tb) then	--�����������
		if (GetTask(tb[1]) == tb[2]) then
			return
		end			
	end
	local func = tb_event.checkfunc
	if (func) then	--�����ж�
		if (not func()) then
			return
		end			
	end
	return 1
end

--��ʾ���л
function event_show_all(tb)
	local str = "<enter>";
	local tb_option = {};
	for i = 1, getn(tb) do
		local tb_event = EVENTS_TB[tb[i]];
		str = str .. "<color=red>" .. tb_event.name .. "<color><enter>";
		if (tb_event.describe) then
			local str_des
			if (type(tb_event.describe) == "function") then
				str_des = tb_event.describe()
			else
				str_des = tostring(tb_event.describe)
			end
			str = str .. "  " .. str_des .. "<color><enter>";
		end
		if (tb_event.detail or tb_event.callback) then
			tb_option[getn(tb_option)+1] = tb_event.name..", Xem Chi Ti�t/#event_show_detail({"..join(tb).."},"..i..")";
		end
	end
	tb_option[getn(tb_option)+1] = "H�m nay kh�ng c�n nh�c nh� ta/event_hint_stop";
	tb_option[getn(tb_option)+1] = "K�t th�c ��i tho�i!/no";
	Describe(EVENT_HINT_LINK..str, getn(tb_option), tb_option);
end

--��ʾĳһָ������飨ȫ������ǰ�ڼ�����
function event_show_detail(tb, n)
	local tb_event = EVENTS_TB[tb[n]];
	if (tb_event.callback) then
		tb_event.callback();
	else
		local str = "<enter><color=red>"..tb_event.name.."<color><enter>"
		local tb_option = {};
		if (getn(tb) > 1) then
			tb_option[1] = "Ta mu�n t�m hi�u r� ho�t ��ng./#event_show_all({"..join(tb).."})";
		end
		tb_option[getn(tb_option)+1] = "H�m nay kh�ng c�n nh�c nh� ta./event_hint_stop";
		tb_option[getn(tb_option)+1] = "K�t th�c ��i tho�i!/no";
		if (tb_event.link) then
			str = tb_event.link .. str
		else
			str = EVENT_HINT_LINK .. str
		end
		if (tb_event.detail) then
			if (type(tb_event.detail) == "function") then
				str = str .. tb_event.detail()
			else
				str = str .. tb_event.detail
			end
		elseif (tb_event.describe) then
			if (type(tb_event.describe) == "function") then
				str = str .. tb_event.describe()
			else
				str = str .. tostring(tb_event.describe)
			end
		end
		Describe(str, getn(tb_option), tb_option);
	end
end

function event_hint_stop()
	SetTask(2309, EVENT_HINT_TIMES);
end

function bingfu_hint()
	-- ��ɫ������ʾ
	local msg = ""
	if (check_renamerole() == 1) then 
msg = msg .. "<#>B�i v� � c�ng d�ng trong qu� tr�nh, h� th�ng �� gi�p ng�i t� ��ng h�n t�n, m�i ���c c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n <color=red> s�a ��i vai tr� t�n <color>." 
end 
-- bang h�i ��i t�n �� k� 
if (check_renametong() == 1) then 
msg = msg .. "<#>B�i v� � c�ng d�ng trong qu� tr�nh, h� th�ng �� gi�p ng�i ch� � bang h�i t� ��ng h�n t�n, m�i ���c c�c tay m�i th�n tay m�i ph� bi�n r�ng r�i vi�n ch� l�a ch�n <color=red> s�a ��i bang h�i t�n<color>." 
end 
if (check_castellan_remedy() == 1) then 
msg = msg .. "<#>B�i v� c�ng d�ng trong qu� tr�nh h� th�ng t� ��ng thu v� li�u ng�i ch� � bang h�i ��ch th�nh ph� qu�n l� quy�n, ng�i c� th� ��n c�c tay m�i th�n ��ch tay m�i ph� bi�n r�ng r�i vi�n ch� <color=red> nh�n l�y t��ng �ng b�i th��ng <color> , nh�n l�y bang h�i b�i th��ng ch�c n�ng � <color=red> c�ng d�ng sau trong v�ng m�t th�ng <color> h�u hi�u . " 
end 

if (msg ~= "") then 
Say(msg, 1, "<#> bi�t /cancel") 
end
end

if login_add then login_add(event_hint_login, 0) end

