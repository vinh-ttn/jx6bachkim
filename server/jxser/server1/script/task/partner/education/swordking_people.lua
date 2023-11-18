-------------------------------------------------------------------------
-- FileName		:	sworldking_peolle.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-04 16:17:15
-- Desc			:  	���ʳ�����ĵ���
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\partner\\partner_head.lua") --������ͼ�����
Include("\\script\\task\\partner\\partner_problem.lua") --���� nt_getTask ͬ���������ͻ��˵���
IncludeLib("PARTNER")
IncludeLib("RELAYLADDER");	--���а�

function partner_finishanswer(nChange)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	if (partnerindex <= 0) then
		Msg2Player("Ng��i kh�ng c� b�n ��ng h�nh,xin h�y ki�m b�n ��ng h�nh.")
		partner_givetodo()
	elseif (partnerstate ~= 1) then
		Msg2Player("Xin m�i �em b�n ��ng h�nh ra m�i c� th� nh�n th��ng.")
	elseif ( PARTNER_GetLevel(partnerindex) < 10) then
		if ( nChange == 1 ) then
			PARTNER_AddExp(partnerindex ,100) --�ش��������ͬ��ȼ�<10��ʱ����100���顣
			Msg2Player("Ch�c m�ng b�n ��ng h�nh c�a ng��i thu ���c 100 ch�t kinh nghi�m")
		else
			Msg2Player("Th�t xin l�i ng��i tr� l�i ch�a ch�nh x�c y�u c�u, kh�ng th� nh�n th��ng")
		end
	else
		Msg2Player("Kinh nghi�m nh�n th��ng ch� � b�n ��ng h�nh c�p th�p h�n 10")
	end
end

function partner_jianhuangdz_fajiang1(nChange)
	if ( nChange == 1 ) then
		Msg2Player("Xin m�i l�n n�a Ki�m Ho�ng �� t� ��i tho�i nh�n l�y ph�n th��ng.")
	end
end

partner_keeponproblem = {
[1] = partner_finishanswer,
[2] = partner_jianhuangdz_fajiang1,
}

function main()
	local PlayerName = GetName()
	local Uworld1226 = nt_getTask(1226) --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227) --ͬ��������񳤸������������
	local Uworld1228 = nt_getTask(1228) --ͬ��������񳤸������������
	local Uworld1229 = nt_getTask(1228) --ͬ��������񳤸������������
	local Uworld1230 = nt_getTask(1230) --ͬ��������񳤸������������
	local Uworld1231 = nt_getTask(1231) --ͬ��������񳤸������������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
		Describe(DescLink_JianHuangDiZi..": A , ng��i qu� nhi�n l�m xong t�t c� nhi�m v�. ���c r�i , nh�n l�y ph�n th��ng c�a ng��i sau s� c�ng ta ��i tho�i.",2, 
		"Nh�n l�y ph�n th��ng /jianhuangdizi_prize1", 
		"H�y b� nhi�m v�/partner_killedu") 
	elseif ( Uworld1226 == 20 ) and ( GetBit(GetTask(1232),20) == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": ���c r�i , ta cu�i c�ng n�i cho ng��i bi�t m�t �t cao c�p ��ch thao t�c k� x�o, nh�n k�, ch� ch�t ta s� h�i ng��i m�y v�n ��. :<enter>" 
		.."<color=yellow><color=red>Ng��i c� th� ��t ���c bao nhi�u b�n ��ng h�nh, m�i ��ng b�n c� th� h�c bao nhi�u k� n�ng :<color> m�t ng��i ch�i c� 5 b�n ��ng h�nh, nh�ng ch� c� th� cho g�i ra m�t. ��ng b�n c� th� h�c ph� th�m k� n�ng theo c�p b�c, t�ng c�ng 16 c�i.<enter>" 
		.."<color=red>Nhi�u b�n ��ng h�nh �� thay ��i :<color> Ng��i ��u ti�n mu�n b�n ��ng h�nh ch�n ng��i ngh� thi�t ��i l�i ��ng b�n ��ch ng�n k�, sau �� s� �i�m l�a ch�n ��ng b�n, c�i n�t l� ���c r�i. D� nhi�n ng��i c�ng c� th� tr�c ti�p � b�n ��ng h�nh, b�n tr�i ki�n �i�m k�ch sau s� xu�t hi�n t�n b�n ��ng h�nh c�a ng��i. Ch� � : thi�t l�p b�n ��ng h�nh thao t�c kh�ng th� li�n t�c ti�n h�nh, hai l�n thao t�c gi�a �t nh�t gian c�ch n�a ph�n chu�ng ��ng h�.<enter>" 
		.."<color=red>Thay th� k� n�ng :<color> n�u mu�n thay th� k� n�ng l�c ng��i ch� c�n m� ra ��ng b�n k� n�ng gi�i m�t, �i�m qu�n l�ng c�i n�t sau l�a ch�n hy v�ng th� ti�u ��ch k� n�ng, l�c n�y h� th�ng s� h��ng ng��i x�c nh�n c� hay kh�ng th�t mu�n qu�n l�ng n�n k� n�ng, �i�m x�c ��nh l� ���c �em n�n k� n�ng qu�n l�ng r�i, sau ng��i l� ���c h�c t�p k� n�ng m�i li�u . <enter>" 
		.."<color=red> ��ng b�n h�i ph�c sinh m�ng :<color> n�u nh� ng��i mu�n cho ��ng b�n ��ch sinh m�ng h�i ph�c , �em h�n tri�u h�i l� ���c r�i , x� vu kh�ng ph�i l� cho g�i ra tr�ng th�i ��ng b�n l� c� th� t� ��ng h�i ph�c sinh m�ng . <enter><color>" 
		.."���c r�i, chu�n b� xong qua l�i ��p ��i v�i ta ba ��o v�n �� �i.",3, 
		"B�t ��u tr� l�i �i /jianhuangdizi_problem", 
		"�� cho ta l�m c�ng vi�c ��/no", 
		"H�y b� nhi�m v�/partner_killedu") 
	elseif ( Uworld1226 == 20 and GetBit(GetTask(1232),20) == 1 ) then 
		local NpcCount = PARTNER_Count() 
		if ( NpcCount >= 5 ) then 
			Describe(DescLink_JianHuangDiZi..": C�n c� th�i gian ho�n th�nh nhi�m v�, ta s� cho ng��i m�t t� ch�t b�n ��ng h�nh t�t. B�t qu� ng��i b�y gi� ��ng b�n s� l��ng �� ��y. N�u nh� ng��i kh�ng c�n ��ng b�n l�i c�a ta �em cho ng��i ph�t ra t��ng th��ng , b�t qu� kh�ng h� n�a cho ng��i b�n ��ng h�nh. N�u nh� ng��i c�n m�t v� m�i, nh� v�y xin �i�m k�ch sau n�y tr� l�i ch�n h�ng, tr��c gi�i t�n m�t b�n ��ng h�nh. ",2,
                        "Ta kh�ng c�n b�n ��ng h�nh m�i, ra nh�n th��ng �i/partner_goontofinishtask","Sau n�y tr� l�i /no") 
		else 
			Describe(DescLink_JianHuangDiZi..": c�n c� nhi�m v� ho�n th�nh th�i gian, ta s� cho ng��i m�t t� ch�t t�t h�n ��ng b�n. N�u nh� ng��i kh�ng c�n ��ng b�n l�i c�a ta �em cho ng��i ph�t ra nh�n th��ng, b�t qu� kh�ng h� n�a cho ng��i. N�u nh� ng��i c�n m�t v� m�i b�n ��ng hanh, nh� v�y xin �i�m k�ch  ta c�n m�i b�n ��ng h�nh ch�n h�ng, ta �em cho ng��i m�t v� m�i b�n ��ng h�nh. ",4, 
			"Ta kh�ng c�n b�n ��ng h�nh m�i, ra nh�n th��ng �i /partner_goontofinishtask", 
			"Ta c�n m�i b�n ��ng h�nh /partner_goontogivepartner", 
			"Sau n�y tr� l�i /no", 
			"H�y b� nhi�m v� /partner_killedu") 
		end 
	elseif ( Uworld1226 == 0 ) then 
		Describe(DescLink_JianHuangDiZi..": Hoan ngh�nh ng��i t�i ��n V�n Trung Tr�n. Ta b� s� ph� s� b�y � ch� n�y hu�n luy�n nh�m l�n tinh nhu� v� s�, ch�nh l� v� c� th� �� cho ng�i � x�ng x�o giang h� l�c c� m�t v� ��ng tin c�y b�n ��ng h�nh. T�t nh� v�y �i, �� cho ch�ng ta t�i xem m�t ch�t ng��i c�n tr� gi�p g� . ",5, 
		"��ng v�y, ta c�n ng��i cung c�p b�n ��ng h�nh/partner_givetodo", 
		"Ta mang theo ng��i ��ng b�n, mu�n cho h�n l�m nhi�m v� gi�o d�c./partner_havetodo", 
		"Ta mu�n xem tr��c m�t ch�t nhi�m v� gi�o d�c t�y thu�c n�i dung./partner_question", -- t�ng h�p li�u t�t c� npc c� th� h�i v�n �� ? ? ? ? ? ? 
		"Ta mu�n r�i kh�i v�n trung tr�n /partner_goback", 
		"C�i n�y tr�n m� kh�ng th�ng thua, ta mu�n v�o b�n trong th�m quan /no") 
	else 
		Describe(DescLink_JianHuangDiZi..": S� ph� s�m nh�n th�u giang h� ��ch m�a gi�, t� c� th� ngo�i li�u. Ta c�ng kh�ng bi�t l�o nh�n gia �ng ta b�y gi� n�i n�o. N�u nh� kia ng�y ng��i may m�n c� th� g�p ph�i h�n, c� l� s� c� � kh�ng ngh� t�i thu ho�ch �i. T�t l�m, nghi�m ch�nh m� n�i �i, trong tr�n c� m�y v� �n c� ��ch nh�n v�t v� l�m, ng��i n�u nh� mu�n hu�n luy�n b�n ��ng c�a ng��i, �i ngay t�m b�n h� gi�p m�t tay. Nh�ng ng��i n�y theo th� t� l� <color=red> L� Thanh, H�c b�ch song s�t, ���ng �nh, Thu Y Th�y <color>.N�y c�ng <color=red> kh�ng th� <color> gi�o d�c nhi�m v� hu�n luy�n. ��ng th�i ng��i c� th� <color=red> l�p t�c <color> b�t ��u d�ng gi�o d�c nhi�m v� hu�n luy�n <color=red> m�t b�n ��ng h�nh kh�c <color>.<enter>" 
		.."<color=red>Ch�n ch�nh t� ch�t t�t nh�t ��ng b�n, ��i kh�i ch� c� s� ph� ta ki�m ho�ng s� l�n thi�n t�i c� th� hu�n luy�n �i ra �i. Ng��i n�u nh� c� may m�n g�p ph�i h�n, ng�n v�n ch� d� d�ng b� qua !<color>",4, 
		"��ng v�y, ta mu�n l�y nhi�m v� gi�o d�c /partner_killedu", 
		"Ta mu�n xem tr��c m�t ch�t n�i dung nhi�m v� gi�o d�c/partner_question", 
		"Ta mu�n r�i kh�i v�n trung tr�n/partner_goback", 
		"K�t th�c ��i tho�i /no") 
	end
end

function partner_goontofinishtask()
	Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ng��i �� ho�n th�nh h�c t�p. C� th� xu�t s� ! nh�n l�y ph�n th��ng sau li�n r�i �i v�n trung �i , kh�ng n�n qu�n n�i n�y c�c b�ng h�u , c� r�nh r�i th��ng tr� l�i �i m�t ch�t �i. ��ng r�i, c� th� t�m s� huynh c�a ta long n�m nh�n m�t �t <color=red> quan h� b�n ��ng h�nh<color> k�ch t�nh nhi�m v� , h�n b�y gi� trong ngo�i ��ng k�t , tr�n vai ��ch tr�ng tr�ch qu� n�ng. G�n ��y tr�n giang h� c� m�t c� <color=red> th�n b� th� l�c <color> �ang �m th�m h�nh ��ng , trong l�ng ta c� tr�ng b�t t��ng ��ch c�m gi�c. Hy v�ng ng��i c� th� v�n cu�ng lan v�i t�c c�ng �i , h�t th�y tr�n tr�ng !",2, 
          "Nh�n l�y ph�n th��ng /jianhuangdizi_prize2", 
          "Sau n�y tr� l�i /no")
end

function partner_goontogivepartner()
	local PlayerName = GetName()
	local partnercount = PARTNER_Count()                   --��ȡ��ǰͬ������
	nt_setTask(1249,2)  --��Ϊ2��ʾ��Ҫͬ��
	if ( partnercount >= 5 ) then 
                Describe(DescLink_JianHuangDiZi..": Ng��i b�y gi� c� nhi�u b�n ��ng h�nh, xin m�i tr��c gi�i t�n m�t v� ��ng b�n s� c�ng ta ��i tho�i.",1,"K�t th�c ��i tho�i /no") 
        else 
                Describe(DescLink_JianHuangDiZi..":"..PlayerName..", Ng��i �� ho�n th�nh h�c t�p. C� th� xu�t s� ! nh�n l�y ph�n th��ng sau li�n r�i �i v�n trung �i , kh�ng n�n qu�n n�i n�y c�c b�ng h�u , c� r�nh r�i th��ng tr� l�i �i m�t ch�t �i. ��ng r�i, c� th� t�m s� huynh c�a ta long n�m nh�n m�t �t <color=red> quan h� b�n ��ng h�nh<color> k�ch t�nh nhi�m v� , h�n b�y gi� trong ngo�i ��ng k�t , tr�n vai ��ch tr�ng tr�ch qu� n�ng. G�n ��y tr�n giang h� c� m�t c� <color=red> th�n b� th� l�c <color> �ang �m th�m h�nh ��ng , trong l�ng ta c� tr�ng b�t t��ng ��ch c�m gi�c. Hy v�ng ng��i c� th� v�n cu�ng lan v�i t�c c�ng �i , h�t th�y tr�n tr�ng.",2, 
               "Nh�n l�y ph�n th��ng /jianhuangdizi_prize2", 
               "Sau n�y tr� l�i /no") 
        end
end

function jianhuangdizi_prize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,2000,1)                   			--����ǰͬ�����Ӿ��飬+2100
		nt_setTask(1226,20)
	end
end

function jianhuangdizi_problem()
	 partner_edu(3,1,100,3,1232,20,2)
end

function jianhuangdizi_prize2()
	local Uworld1234 = GetGameTime() - nt_getTask(1234)
	if ( nt_getTask(1248) == 0 ) then
		nt_setTask(1248,Uworld1234)
	elseif ( nt_getTask(1248) > Uworld1234 ) then
		nt_setTask(1248,Uworld1234)
	end
	Msg2Player("Ng��i l�n n�y ho�n th�nh nhi�m v� gi�o d�c s� d�ng h�t "..Uworld1234.."gi�y.")
	Ladder_NewLadder(10188, GetName(),-1 * Uworld1234,1);
	
	if ( nt_getTask(1249) == 2 ) then
		local w=random(1,4)
		local j=random(1,5)
		if  ( Uworld1234 >= 900 ) then
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,2)
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			end
		elseif ( Uworld1234 >= 0 ) and ( Uworld1234 < 900 ) then
			local attribute = genRandNumArray(30,6,1,7) 
			if ( j == 1 ) then
				local partneridex = PARTNER_AddFightPartner(1,4,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 2 ) then
				local partneridex = PARTNER_AddFightPartner(2,2,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 3 ) then
				local partneridex = PARTNER_AddFightPartner(3,3,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			elseif ( j == 4 ) then
				local partneridex = PARTNER_AddFightPartner(4,1,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			else
				local partneridex = PARTNER_AddFightPartner(5,0,w,attribute[1],attribute[2],attribute[3],attribute[4],attribute[5],attribute[6])
				PARTNER_CallOutCurPartner(1)
				Msg2Player("Ch�c m�ng ng��i �� thu ���c m�t b�n ��ng h�nh.")
			end
		end
	end
		
		local partnerindex,partnerstate = PARTNER_GetCurPartner()      --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		local partner_addexp = floor(15000*(900/Uworld1234))
		PARTNER_SetTaskValue(partnerindex, 1, 2 );                            --����ǰͬ������Ϊ�������״̬
		PARTNER_AddExp(partnerindex,partner_addexp,1)                   	  --����ǰͬ�����Ӿ���
		
		nt_setTask(1226,0) --ͬ��������񽣻ʵ����������
		nt_setTask(1227,0) --ͬ���������ǵ����
		nt_setTask(1228,0) --ͬ�����������Ӱ����
		nt_setTask(1229,0) --ͬ����������ɷ����
		nt_setTask(1230,0) --ͬ����������ɷ����
		nt_setTask(1231,0) --ͬ�����������Ңˮ����
		nt_setTask(1232,0) --ͬ���������ǵͳһ�ֽ�λ����
		nt_setTask(1233,0) --ͬ������ʴ����������
		nt_setTask(1234,0) --ͬ����������ʱ��
		nt_setTask(1235,0) --ͬ�������ɷ�������
		nt_setTask(1243,0) --�Ǣ���ľ׮����
		nt_setTask(1247,0) --�Ǣ����������к�ɷ��ɳ���������
		nt_setTask(1249,0) --�Ѿ����������
		
		Msg2Player("Ch�c m�ng ng��i ho�n th�nh nhi�m v� gi�o d�c b�n ��ng h�nh, h�y tr�n tr�ng, s� g�p l�i sau ! Ng��i �i t�m m�t ch�t ngh�a qu�n th� l�nh long n�m �i , h�n c� l� c� ph�i d�ng t�i ��a ph��ng c�a ng��i .")
end

-------------------------------------------------------ͬ����-----------------------------------------------

function partner_givetodo()                                --�ṩһ��ͬ��
	local partnercount = PARTNER_Count()                   --��ȡ��ǰͬ������
	if ( partnercount == -1 ) then
		Msg2player("���ܳ����쳣������GM��ϵ��")
	elseif ( partnercount == 5 ) then
		Describe(DescLink_JianHuangDiZi..": Ng��i �� c� nhi�u b�n ��ng h�nh, ��ng c� tham n�a",1, 
                "K�t th�c ��i tho�i /no")
	else
		Describe(DescLink_JianHuangDiZi.." Ng��i c� th� � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c <color=red> cho g�i b�n ��ng h�nh <color> c�i n�t , b�n tr�i m�n h�nh c�i n�t l� ���c r�i. <color=red> l�n n�a <color> �i�m k�ch  cho g�i b�n ��ng h�nh  c�i n�t l� c� th� <color=red> thu h�i b�n ��ng h�nh<color>",6, 
               "Nh�n b�n ��ng h�nh h� kim/partner_getgold", 
               "Nh�n b�n ��ng h�nh h� m�c /partner_getwood", 
               "Nh�n b�n ��ng h�nh h� th�y/partner_getwater", 
               "Nh�n b�n ��ng h�nh h� h�a /partner_getfire", 
               "Nh�n b�n ��ng h�nh h� th� /partner_getdust", 
               "K�t th�c ��i tho�i /no")
	end
end

function partner_getgold()
	Describe(DescLink_JianHuangDiZi.." ng��i mu�n ch�n lo�i n�o t�nh t�nh ��ch kim h� ��ng b�n ",5, 
                "Nh�n Anh M�nh b�n ��ng h�nh/partner_getgold1", 
                "Nh�n V� Ch� b�n ��ng h�nh/partner_getgold2", 
                "Nh�n L�u Manh b�n ��ng h�nh/partner_getgold3", 
                "Nh�n N�a Nh��c b�n ��ng h�nh /partner_getgold4", 
                "K�t th�c ��i tho�i /no")
end

function partner_getgold1()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getgold2()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getgold3()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getgold4()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(5,0,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Kim.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwood()
	Describe(DescLink_JianHuangDiZi.."��Ҫѡ�������Ը��ľϵͬ��",5,
		"Nh�n Anh M�nh b�n ��ng h�nh/partner_getwood1",
		"Nh�n V� Ch� b�n ��ng h�nh/partner_getwood2",
		"Nh�n L�u Manh b�n ��ng h�nh/partner_getwood3",
		"Nh�n N�a Nh��c b�n ��ng h�nh/partner_getwood4",
		"K�t th�c ��i tho�i/no")
end		

function partner_getwood1()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwood2()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwood3()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwood4()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(4,1,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� M�c.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwater()
	Describe(DescLink_JianHuangDiZi.."��Ҫѡ�������Ը��ˮϵͬ��",5,
		"Nh�n Anh M�nh b�n ��ng h�nh/partner_getwate1",
		"Nh�n V� Ch� b�n ��ng h�nh/partner_getwate2",
		"Nh�n L�u Manh b�n ��ng h�nh/partner_getwate3",
		"Nh�n N�a Nh��c b�n ��ng h�nh/partner_getwate4",
		"K�t th�c ��i tho�i/no")
end
		
function partner_getwate1()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwate2()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwate3()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getwate4()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(2,2,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�y.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getfire()
	Describe(DescLink_JianHuangDiZi.."��Ҫѡ�������Ը�Ļ�ϵͬ��",5,
		"Nh�n Anh M�nh b�n ��ng h�nh/partner_getfire1",
		"Nh�n V� Ch� b�n ��ng h�nh/partner_getfire2",
		"Nh�n L�u Manh b�n ��ng h�nh/partner_getfire3",
		"Nh�n N�a Nh��c b�n ��ng h�nh/partner_getfire4",
		"K�t th�c ��i tho�i/no")
end

function partner_getfire1()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getfire2()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getfire3()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getfire4()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(3,3,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� H�a.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getdust()
	Describe(DescLink_JianHuangDiZi.."��Ҫѡ�������Ը����ϵͬ��",5,
		"Nh�n Anh M�nh b�n ��ng h�nh/partner_getdust1",
		"Nh�n V� Ch� b�n ��ng h�nh/partner_getdust2",
		"Nh�n L�u Manh b�n ��ng h�nh/partner_getdust3",
		"Nh�n N�a Nh��c b�n ��ng h�nh/partner_getdust4",
		"K�t th�c ��i tho�i/no")
end

function partner_getdust1()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,1,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getdust2()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,2,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getdust3()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,3,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end

function partner_getdust4()
	local NowDate = tonumber(date("%y%m%d")) --��õ�ǰ����
	if ( nt_getTask(1271) == 0 ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1271,1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	elseif ( nt_getTask(1272) ~= NowDate ) then
		local partneridex = PARTNER_AddFightPartner(1,4,4,5,5,5,5,5,5)
		PARTNER_CallOutCurPartner(1)
		nt_setTask(1272,NowDate)
		Msg2Player("Ch�c m�ng ng��i thu ���c m�t b�n ��ng h�nh h� Th�.")
	else
		Msg2Player("Th�t xin l�i, h�m nay b�n �� nh�n qu� nhi�u b�n ��ng h�nh, ng�y mai quay tr� l�i �i.")
	end
end


-----------------------------------------------------ͬ���������ʼ---------------------------------------------

function partner_havetodo()                                     --�Ѿ�����һ��ͬ��
	local Uworld1226 = nt_getTask(1226)                         --ͬ��������񳤸������������
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	local NpcCount = PARTNER_Count()
	
	if ( NpcCount == 0 ) then -- nh� ch�i tr��c m�t m�t ��ng b�n ��u kh�ng c� 
		Describe(DescLink_JianHuangDiZi..": B�ng h�u, ng��i m�t ��ng b�n ��u kh�ng c� l�m g� nhi�m v� nha ? tr��c l�a ch�n nh�n l�y m�t ban ��ng h�nh �i.",1,"K�t th�c ��i tho�i/no") 
	elseif ( partnerstate == 0 ) then -- ��ng b�n v� kh�ng g�i ra tr�ng th�i 
		Describe(DescLink_JianHuangDiZi..": B�ng h�u, ng��i tr��c m�t kh�ng c� cho g�i b�t k� b�n ��ng h�nh , g�i ���c d�n h�n l�m nhi�m v� nha ? ",1,"C� th� l� ta ngh� sai r�i /no") 
	elseif ( partnerindex>= 1 and partnerindex <= 5 ) then 
		local partner_finishtask = PARTNER_GetTaskValue(partnerindex,1) -- ��t ���c tr��c m�t cho g�i ra t�i ��ng b�n ��ch gi�o d�c nhi�m v� ti�n h�nh tr�ng th�i 
		if ( partner_finishtask == 1 ) then 
			Describe(DescLink_JianHuangDiZi..": Ng��i c� b�n ��ng h�nh �� �ang l�m  gi�o d�c nhi�m v� , tr�c ti�p m� ra F12 nhi�m v� m�t b�n xem h�n n�n l�m c�i g� nhi�m v� �i.",1," V�ng ta hi�u /no") 
		elseif ( partner_finishtask == 2 ) then 
			Describe(DescLink_JianHuangDiZi..": B�ng h�u, ta ph�c ng��i, ng��i �� l�m xong nhi�m v� gi�o d�c b�n ��ng h�nh ?.",1,"T�t t�t, ta hi�u /no") 
		elseif ( partner_finishtask == 0 ) then 
			Describe(DescLink_JianHuangDiZi..": C�i tr�n n�y th��ng ��m r�ng hang h�, c� cho ph�p ��u cao nh�n. ��ng b�n c�a ng��i hu�n luy�n l�c n�u nh� c�ng b�n h� ��i tho�i, c� th� h�c t�p ��n r�t ��u ��ch ��. Ng��i �i t�m v� g�i <color=red>? ti�m <color> ��ch l�o nh�n �i. L�y <color=red>900 gi�y <color> v� gi�i , nhi�m v� ho�n th�nh l�c ph�n th��ng ��a cho ng��i ��ng b�n t� ch�t c�ng �em c� thi�n uy�n chi bi�t.",2,
                    "B�t ��u nhi�m v� /swordking_paiming",
                       "Sau n�y tr� l�i /no") 
		end 
	end
end

function swordking_paiming()
	nt_setTask(1226,10)									   --����ͬ���������ʼ
	nt_setTask(1234,GetGameTime())
	local partnerindex,partnerstate = PARTNER_GetCurPartner()   --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	PARTNER_SetTaskValue(partnerindex,1,1)                 --���õ�ǰͬ���������״̬Ϊ��ʼ
	Msg2Player("Ng��i �� b�t ��u nhi�m v� gi�o d�c b�n ��ng h�nh. C� th� �i trong tr�n t�m nh�ng th� kia �n c� nh�n v�t h�c t�p.")
end
-----------------------------------------------------ȡ��ͬ���������----------------------------------------------------

function partner_killedu()
	Describe(DescLink_JianHuangDiZi..": Ng��i c�n c� m�t l�n c� h�i , ng��i x�c ��nh <color=red> h�y b� <color>nhi�m v� b�n ��ng h�nh ? n�u nh� h�y b� , nh� v�y c�i n�y ��ng b�n sau n�y li�n <color=red> kh�ng th� <color> l�m ti�p ��ng b�n gi�o d�c nhi�m v�.",2, 
     "Ta nh�t ��nh ph�i h�y b� /partner_killedureal", 
     "Cho ta suy ngh� l�i m�t ch�t �i /no")
end

function partner_killedureal()
	local NpcName = GetName()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	
	if ( nt_getTask(1226) == 0 ) then
		Describe(DescLink_JianHuangDiZi..":"..NpcName.."B�ng h�u, ��ng cho l� ta l� ki�m ho�ng �� t� li�n tu d��ng t�t kh�ng ���c, ng��i c�n b�n kh�ng c� nh�n ��ng b�n gi�o d�c nhi�m v�, ��y kh�ng ph�i l� ��a b�n ta ? ch�nh l� ph�t c�ng n�i gi�n n�a r�i ! kh�ng mu�n l�i c� h�i th� l�n nga.",1,
		"K�t th�c ��i tho�i/no")
	else
			local NpcCount = PARTNER_Count()
			if ( NpcCount ~= 0 ) then
				for i=1,NpcCount do	
					if ( PARTNER_GetTaskValue(i,1) == 1 ) then   --����ĸ�ͬ�����ڽ���������
						PARTNER_SetTaskValue(i,1,2)              --���ô�ͬ���������Ϊ���״̬
					end
				end
			end
			
				nt_setTask(1226,0) --ͬ��������񽣻ʵ����������
				nt_setTask(1227,0) --ͬ���������ǵ����
				nt_setTask(1228,0) --ͬ�����������Ӱ����
				nt_setTask(1229,0) --ͬ����������ɷ����
				nt_setTask(1230,0) --ͬ����������ɷ����
				nt_setTask(1231,0) --ͬ�����������Ңˮ����
				nt_setTask(1232,0) --ͬ���������ǵͳһ�ֽ�λ����
				nt_setTask(1233,0) --ͬ������ʴ����������
				nt_setTask(1234,0) --ͬ����������ʱ��
				nt_setTask(1235,0) --ͬ�������ɷ�������
				nt_setTask(1243,0) --�Ǣ���ľ׮����
				nt_setTask(1247,0) --��ɳ���Ĵ���
				nt_setTask(1249,0) --�Ѿ����������
				
				Msg2Player("B�n ��ng h�nh c�a ng��i gi�o d�c nhi�m v� �� h�y b�, nh� v�y sau n�y h�n c�ng kh�ng c� th� l�m ti�p..")
	end
end

--------------------------------------------------------ͬ���ʴ�----------------------------------------------

function partner_question()
	Describe(DescLink_JianHuangDiZi..": T�t l�m, � ch� n�y c�a ta ng��i c� th� tu�n tra ��n t�t c� v�n �� c�u tr� l�i. C�ng c� th� m�nh m� m�i l�m m�t �t �� m�c. ��i v�i ng��i x�ng x�o v�n trung tr�n c�c c� d�n thi�t l�p ��a ��ch quan t�p c�ng l� l�n c� b� �ch ��ch nga. C�p b�c �t h�n 10 c�p ��ch ��ng b�n , � ng��i tr� l�i ��i v�i ta n�i l�n v�n �� sau , ph�i nh�n ���c m�t �t nho nh� ph�n th��ng.",3, 
          "Ta mu�n xem n�i dung nhi�m v� gi�o hu�n/partner_iwantsee", 
          "Ta mu�n l�m m�t �� m�c h�i ��p /partner_iwantdoproblem", 
          "Sau n�y tr� l�i �i /no")
end

function partner_iwantsee()
	Describe(DescLink_JianHuangDiZi..": ���c r�i , nh� v�y �� cho ch�ng ta t�i nh�n m�t ch�t c�ng ��ng b�n h� quan ��ch n�i dung c� nh�ng . ",6, 
        "B�n ��ng h�nh kh�ng ch� y�u �i�m /partner_control", 
        "B�n ��ng h�nh thu�c t�nh c�ng t� ch�t ��ch y�u �i�m /partner_property", 
        "B�n ��ng hanh th�n m�t �� ��ch y�u �i�m /partner_familiarity", 
        "B�n ��ng h�nh k� n�ng ��ch y�u �i�m /partner_skills", 
        "B�n ��ng h�nh l�n c�p thao t�c y�u �i�m /partner_advanced", 
        "Sau n�y tr� l�i nghe �i /no")
end

function partner_iwantdoproblem()
	partner_edu(10,1,100,20,0,0,1,1) 
	Msg2Player("B�t ��u h�i ��p , ng��i c� 20 l�n c� h�i, c�n ��p ��i v�i 10 ��o �� m�c m�i c� th� r�i �i ngay.")
end

function partner_control()
	Describe(DescLink_JianHuangDiZi..":<color=yellow>B�n ��ng h�nh l� m�t l�m b�n ng��i c�ng chung x�ng x�o giang h� ��ch NPC. B�n ��ng h�nh c� th� gi�p ng��i ��nh tr�ch luy�n c�p, � ng��i c�ng ng��i kh�c PK l�c gi�p ng��i m�t c�nh tay l�c , s� c�n th�nh tho�ng cho ng��i ch�t nhi�m v� t�i �� cho ng��i ��t ���c m�t �t tr�n qu� ph�n th��ng , d� nhi�n � ng��i t�ch m�ch th�i �i�m c�ng c� th� th� c�ng ��ng b�n tr� chuy�n , n�i kh�ng ch�ng s� xu�t hi�n th� v� ��ch th�nh t�nh. Ng��i c� th� � ch� ��nh NPC ch� nh�n ���c c�c lo�i ��ng b�n ��t ���c nhi�m v� , khi ng��i ho�n th�nh nh�ng nhi�m v� n�y li�n c� th� ��t ���c ��ng b�n c�a ng��i li�u. Ng��i ch� c�n � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c ��ng b�n ��ch c�n b�n thu�c t�nh c�i n�t sau �� b�n tr�i ki�n �an k�ch n� l� ���c r�i. Khi ng��i c� ��u ng��i ��ng b�n ��ch th�i �i�m ng��i ch� c�n � ��ng b�n thu�c t�nh m�t b�n ��ch ph�a tr�n �i�m ch�n ng��i mu�n tra x�t ��ch ��ng b�n ��ch ng�n k� l� ���c r�i. <color>",2, 
            "Tr� v�/partner_iwantsee", 
            "Sau n�y s� tr� l�i/no")
end

function partner_property()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
		.."<color=yellow>1. B�n ��ng h�nh c� thu�c t�nh g�, b�n h� c� �ch l�i g� ? <enter>" 
		.."Tinh l�c : th�n b� ti�m ch�t , ng�y sau m� ra ;<enter>" 
		.."T�nh t�nh : n�n ��ng b�n ��ch t�nh t�nh , b�t ��ng t�nh t�nh ��ch ��ng b�n ph��ng th�c h�nh ��ng c�ng s� b�t ��ng ; hi�n h�u ��ch t�nh t�nh �� th�a h�nh c� :<enter>" 
		.."Anh m�nh h�nh : s� c�ng k�ch c�ch h�n g�n nh�t ��ch ��i th� , c�ng kh�ng thi ? t� th�n t�n th��ng , c� kh� xa ��ch h�nh ��ng ph�m vi . <enter>" 
		.."V� ch� h�nh : nh� ch�i m�c ti�u c�ng k�ch ho�c b� c�ng k�ch l�c , ��ng b�n s� d� l�y hi�p tr� , c�ng kh�ng thi ? t� th�n t�n th��ng , m�t lo�i �ang ��a nh� ph� c�n . <enter>" 
		.."L�u manh h�nh : s� c�ng k�ch m�u thi�u ��ch ��i th� , khi t� th�n m�u �t h�n so v�i 20% l�c v�a ��nh v�a ch�y . <enter>" 
		.."H�n y�u h�nh : s� ng�u nhi�n c�ng k�ch ��i th� , b� c�ng k�ch l�c s� v�a ��nh v�a ch�y , sinh m�ng �t h�n so v�i 20% l�c s� h�n ��u ��ch n� tr�nh . <enter>" 
		.." <enter>" 
		.."Ng� h�nh thu�c t�nh : bi�u hi�n n�n ��ng b�n ��ch ng� h�nh , b�t ��ng ng� h�nh ��ch ��ng b�n c� th� c� v� c�ng c�ng tuy�t k� b�t ��ng , ��ng th�i c� m�t b� ph�n ��ch ph� th�m k� n�ng c�ng s� c� ng� h�nh ��ch h�n ch� ;<enter>" 
		.."T� ch�t : quy�t ��nh ��ng b�n ��ch thu�c t�nh � th�ng c�p l�c c� th� t�ng l�n ��u thi�u ��ch tr� gi� . <enter>" 
		.."2. B�n ��ng h�nh c� t� ch�t l� c�i g� ? <enter>" 
		.."B�n ��ng h�nh thu�c t�nh l� c� t� ch�t ��ch : sinh m�ng , l�c l��ng , m�nh trung , n� tr�nh , ch�y t�c , may m�n ; m�t thu�c t�nh ��ch t� ch�t c�ng cao � ngh�a n�n thu�c t�nh � th�ng c�p l�c t�ng l�n ph�i c�ng ��u , b�t qu� c� th� t�ng l�n ��u thi�u , c�ng t� ch�t ng��i c�a c�ng s� c� ch�t �t b�t ��ng . n�i th� d� nh� ng��i c� hai ng��i ��ng b�n sinh m�ng t� ch�t ��u l� 2 , kia khi h�n c�a th�ng c�p ��ch th�i �i�m c� th� m�t t�ng l�n 50 �i�m sinh m�ng tr� gi� , m� m�t ng��i kh�c ch� t�ng l�n 45 �i�m sinh m�ng tr� gi� . nh�ng th� n�y c� th� t�ng l�n tr� s� � ��ng b�n 10 c�p ?30 c�p ?50 c�p ?90 c�p l�c s� xu�t hi�n m�t �t ba ��ng . <color>",2, 
		"Tr� v�/partner_iwantsee", 
		"Sau n�y tr� l�i /no")
end

function partner_familiarity()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. C�i g� l� b�n ��ng h�nh �� th�n m�t ? �� th�n m�t ch�nh l� ph�n �nh ��ng b�n c�ng nh� ch�i quan h� tr� s� . <enter>",2, 
	"Tr� v�/partner_iwantsee", 
	"Sau n�y s� tr� l�i/no")
end

function partner_skills()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta nh� th� n�o �i th�m d� nh�n ��ng b�n ��ch k� n�ng gi�i m�t ? ng��i ch� c�n � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c  ��ng b�n ��ch v� c�ng k� n�ng c�i n�t sau �� b�n tr�i ki�n �an k�ch n� l� ���c r�i . <enter>" 
	.."2. B�n ��ng h�nh c� m�y lo�i k� n�ng ? b�n h� nh� th� n�o ��t ���c ? ��ng b�n ��ch k� n�ng c� b�n �� th�a :<enter>" 
	.." a. V� c�ng k� n�ng : ��ng b�n d�ng �� c�ng k�ch ��ch nh�n chi�u th�c , th�ng qua th�ng c�p ��t ���c ;<enter>" 
	.." b. B�m ph�ng k� n�ng : ��i v�i ph� b�ng l�i h�a ��c n�m lo�i kh�ng t�nh ti�n h�nh th�m ���c ��ch k� n�ng , th�ng qua l�m gi�o d�c nhi�m v� ��t ���c ;<enter>" 
	.." c. Ph� th�m k� n�ng : c�c lo�i th�m ���c c�ng ph� tr� c�ng v�i m�t �t ��c th� k� n�ng , th�ng qua k� n�ng s�ch c�ng k�ch t�nh nhi�m v� ��t ���c ;<enter>" 
	.." d. Tuy�t k� : th�ng qua k�ch t�nh nhi�m v� ��t ���c ;<enter>" 
	.."3. B�n ��ng h�nh k� n�ng nh� th� n�o th�ng c�p ? ��ng b�n ��ch v� c�ng k� n�ng l� d�ng �� thu�n th�c t�i th�ng c�p ��ch , m� nh�ng th� kh�c k� n�ng to�n b� mu�n th�ng qua s� d�ng h� �ng ��ch k� n�ng s�ch nh�c t�i th�ng . k� n�ng s�ch ��ch t�ng l�n quy t�c l� : ng��i ch� c� th� h�c t�p so ng��i mu�n t�ng l�n k� n�ng tr��c m�t c�p b�c cao 1 c�p ��ch k� n�ng s�ch . t� nh� ; hi�n h�u k� n�ng v� 6 c�p , ng��i ch� c� th� h�c t�p 7 c�p ��ch n�n k� n�ng s�ch �em n�n k� n�ng t�ng l�n t�i 7 c�p , kh�ng th� v��t c�p h�c t�p . <enter>" 
	.."4. Nh� th� n�o �� cho ��ng b�n s� d�ng k� n�ng ? � v� c�ng k� n�ng lan ��ch h�i th� m�i c� n�m ra chi�u c�ch , m�i m�t c�ch ��i bi�u n�n ��ng b�n c� 20% ��ch m�y ? s� s� d�ng c�ch d�m k� n�ng , c�ch b�n trong nh�ng b� v�o n�n ��ng b�n c� th� s� xu�t ��ch t�y � ch� ��ng k� n�ng . t� nh� : n�n ��ng b�n ��ch ra chi�u c�ch trong th� ba  k� n�ng A c�ng hai k� n�ng B nh� v�y n�n ��ng b�n s� xu�t  k� n�ng A ��ch m�y ? l� ch�nh l� 60% , s� xu�t  k� n�ng B ��ch m�y ? l� ch�nh l� 40% . <color>",2, 
	"Tr� v�/partner_iwantsee", 
	"Sau n�y tr� l�i /no")
end

function partner_advanced()
	Describe(DescLink_JianHuangDiZi..":<enter>" 
	.."<color=yellow>1. Ta c� th� ��t ���c ��u ng��i ��ng b�n ? ? c� th� , m�t nh� ch�i c� th� ��t ���c n�m ��ng b�n , nh�ng m�t l�n ch� c� th� cho g�i ra m�t . <enter>" 
	.."2. Ta cu�i c�ng c�ng c� th� h�c ��u thi�u c� ph� th�m k� n�ng ? m�t ��ng b�n c� th� h�c ph� th�m k� n�ng ��ch c� ��m s� theo c�p b�c c�a h�n gia t�ng m� gia t�ng , t�ng c�ng 16 c� . <enter>" 
	.."3. L�m ta c� ��u ng��i ��ng b�n l�c ta ph�i nh� th� n�o �i thi�t ��i b�t ��ng ��ng b�n ��y ? ng��i ��u ti�n mu�n � � ��ng b�n ��ch thu�c t�nh gi�i m�t ��ch ph�a tr�n �i�m ch�n ng��i ngh� thi�t ��i l�i ��ng b�n ��ch ng�n k� , sau �� s� �i�m ch�n gi�i m�t h�i th� ph��ng ��ch l�a ch�n ��ng b�n c�i n�t l� ���c r�i . d� nhi�n ng��i c�ng c� th� tr�c ti�p � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c ��ng b�n l�a ch�n c�i n�t , b�n tr�i ki�n �i�m k�ch sau s� xu�t hi�n ng��i c� ��ng b�n ��ch t�n , ng��i ch� c�n �i�m k�ch ng��i mu�n thi�t ��i l�i ��ng b�n ��ch t�n l� ���c r�i . Ch� � : thi�t ��i ��ng b�n thao t�c kh�ng th� li�n t�c ti�n h�nh , hai l�n thao t�c gi�a �t nh�t gian c�ch n�a ph�n chu�ng ��ng h� . <enter>" 
	.."4. Ta c� th� thay th� ph� th�m k� n�ng ? ? c� th� , n�u mu�n thay th� ph� th�m k� n�ng l�c ng��i c�n ch� c�n m� ra ��ng b�n k� n�ng gi�i m�t , �i�m qu�n l�ng c�i n�t sau l�a ch�n hy v�ng th� ti�u ��ch k� n�ng l�c n�y h� th�ng s� h��ng ng��i x�c nh�n c� hay kh�ng th�t mu�n qu�n l�ng n�n k� n�ng , l�c n�y �i�m x�c ��nh l� ���c �em n�n k� n�ng qu�n l�ng r�i , sau ng��i li�n c� th� �i h�c t�p ng��i ngh� h�c hi�u k� n�ng . <enter>" 
	.."5. N�u nh� ng��i mu�n cho ��ng b�n ��ch sinh m�ng h�i ph�c , �em h�n tri�u h�i l� ���c r�i , x� vu kh�ng ph�i l� cho g�i ra tr�ng th�i ��ng b�n l� c� th� t� ��ng h�i ph�c sinh m�ng . <color>",2, 
	"Tr� v� th��ng m�t t�ng th�c ��n /partner_iwantsee", 
	"Sau n�y tr� l�i /no")
end

----------------------------------------------------------------------------------------------------------------

function partner_checkdo()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	local NpcCount = PARTNER_Count()
	if ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then 
		Msg2Player("C�i n�y b�n ��ng h�nh kh�ng ph�i l� ng��i mang theo �� l�m nhi�m v� gi�o d�c, xin m�i �em ch�nh x�c ��ng b�n cho g�i ra t�i l�m. ") 
	elseif ( NpcCount == 0 ) then 
		Msg2Player("Ng��i tr��c m�t kh�ng c� ��ng b�n, kh�ng ���c nh�n th��ng. ") 
	elseif ( partnerstate == 0 ) then 
		Msg2Player("Ng��i tr��c m�t kh�ng c� cho g�i ra b�n ��ng h�nh, kh�ng ���c nh�n l�y ph�n th��ng. ") 
	else 
		return 10 
	end
end

function partner_goback()
	local i = random(1,7)
	if ( i == 1 ) then
		 NewWorld(1,1542,3229)  -- ����
	elseif ( i == 2 ) then
		 NewWorld(11,3127,5112) -- �ɶ�
	elseif ( i == 3 ) then
		 NewWorld(37,1658,3167) -- �꾩
	elseif ( i == 4 ) then
		 NewWorld(78,1458,3240) -- ����
	elseif ( i == 5 ) then
		 NewWorld(80,1663,2999) -- ����
	elseif ( i == 6 ) then
		 NewWorld(162,1608,3204)-- ����
	elseif ( i == 7 ) then
		 NewWorld(176,1583,2949)-- �ٰ�
	end	 	 	 	
end

function genRandNumArray(nSum, nArrayLen, nMinNum, nMaxNum)
	local aryRandNumArray = {}
	if (nMinNum * nArrayLen > nSum or nMaxNum * nArrayLen < nSum) then
		print("genRandNumArray: �������Ϸ���")
		return nil
	end	
	local nRest = nSum
	--��ѭ�������������ڶ���
	for i = 1, nArrayLen -1 do
		local nRestLen = nArrayLen - i	--ʣӵ����ĳ���
		local nAverage = nRest / (nRestLen + 1) --ʣӵ�����ƽ��ֵ
		local nRand = random(0, 10000)/10000 --�����
		local nMin, nMax
		local nGen
		--���������С��Χ
		nMin = nRest - nMaxNum * nRestLen
		if (nMin < nMinNum) then nMin = nMinNum end
		nMax = nRest - nMinNum * nRestLen
		if (nMax > nMaxNum) then nMax = nMaxNum end
		--���䵱ǰ
		--������䣬������ƽ��ֵΪ���ĵ����ֵ
		if (nRand > 0.5) then 
			nGen = nAverage + (nMax - nAverage) * (nRand - 0.5) / 0.5
		else
			nGen = nAverage - ( nAverage - nMin) * (0.5 - nRand) / 0.5			
		end
		nGen = floor(nGen + 0.5) --ȡ��
		nRest = nRest - nGen
		aryRandNumArray[i]  =  nGen
	end
	aryRandNumArray[nArrayLen] = nRest --�������һ��
	return aryRandNumArray;
end


function no()
end
