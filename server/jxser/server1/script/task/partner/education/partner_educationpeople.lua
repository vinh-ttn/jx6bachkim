------------------------------------------------------------------------
-- FileName		:	partner_educationpeople.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-06 14:34:15
-- Desc			:  	��ͬ���������npc�Ի�
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\partner\\partner_problem.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\partner\\partner_head.lua") --������ͼ�����
IncludeLib("PARTNER")

partner_birthday={"Th�","Ng�u"," h� ","Th�","Long","X�","M�","D��ng","H�u","K�","C�u","Tr� "} 
partner_caimei ={"B�a","K�o","Bao"}

function partner_keepjiguan1(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng��i kh�ng c� h�p c�ch, cho ta ngoan ngo�n tr� l�i v�n �� b�n ��ng h�nh �i.")
		partner_edu(3,1,29,3,1228,2,1,1)
	elseif ( nChange == 1 ) then
		jiguan1_giveprize()
	end
end

function partner_keepjiguan2(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng��i kh�ng c� h�p c�ch, cho ta ngoan ngo�n tr� l�i v�n �� b�n ��ng h�nh �i")
		partner_edu(3,1,29,3,1228,4,1,2)
	elseif ( nChange == 1 ) then
		jiguan2_giveprize()
	end
end

function partner_keepjiguan3(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng��i kh�ng c� h�p c�ch, cho ta ngoan ngo�n tr� l�i v�n �� b�n ��ng h�nh �i.")
		partner_edu(3,1,29,3,1228,6,1,3)
	elseif ( nChange == 1 ) then
		jiguan3_giveprize()
	end
end

function partner_keepjiguan4(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng��i kh�ng c� h�p c�ch, cho ta ngoan ngo�n tr� l�i v�n �� b�n ��ng h�nh �i.")
		partner_edu(3,1,29,3,1228,8,1,4)
	elseif ( nChange == 1 ) then
		jiguan4_giveprize()
	end
end

function partner_keepzhuofeifan(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Ng��i kh�ng c� h�p c�ch, cho ta ngoan ngo�n tr� l�i v�n �� b�n ��ng h�nh �i.")
		partner_edu(3,1,29,3,1228,10,1,5)
	elseif ( nChange == 1 ) then
		zhuofeifan_giveprize()
	end
end

function partner_keepheishadizi(nChange)
	if ( nChange == 0 ) then
		Msg2Player("Th�t xin l�i, ng��i kh�ng tr� l�i ch�nh x�c, ta kh�ng th� n�i cho ng��i bi�t c�i g� ")
	elseif ( nChange == 1 ) then
		local Uworld1235 = nt_getTask(1235)
			  nt_setTask(1235,Uworld1235-1)
			if ( Uworld1235 - 1 <= 0 ) then 
                               nt_setTask(1230,12) 
                               Describe(DescLink_HeiShaDizi..": Kh�ng sai, b�ng h�u, ng��i mu�n b� t�ch �ang � tr�n tay c�a ta ! ta l�p t�c �em b� t�ch ��a ��n ch� L�o S�, ng��i c� th� tr� v� �i t�m H�c S�t l�o s� h�c t�p ba �o�n ��nh. C� g�ng l�n ",1,"K�t th�c ��i tho�i /heishadizi_chenggong") 
                        else 
                               Describe(DescLink_HeiShaDizi..": Th�t xin l�i b�ng h�u, b� t�ch kh�ng c� � ��y trong tay ta, ng��i h�y t�m ng��i kh�c �i. B�t qu� nh� ng��i v�y c�c kh� ��p ��, ta l� h�n cho ng��i ch�t t��ng th��ng.",2,"Nh�n l�y ph�n th��ng /heishadizi_giveprize","K�t th�c ��i tho�i /heishadizi_geiyujiangli") 
                        end
	end
end

function partner_moxiaofeng_fajiang1(nChange)
	if ( nChange == 1 ) then
		moxiaofeng_giveprize()
	end	
end

function partner_xiaoding_fajiang1(nChange)
	if ( nChange == 1 ) then
		xiaoding_giveprize()
	end	
end

function partner_quwan_fajiang1(nChange)
	if ( nChange == 1 ) then
		quwan_getprize()
	end	
end

function partner_xieqinger_fajiang1(nChange)
	if ( nChange == 1 ) then
		xieqinger_getprize()
	end	
end

partner_keeponproblem = {
[1] = partner_keepjiguan1,
[2] = partner_keepjiguan2,
[3] = partner_keepjiguan3,
[4] = partner_keepjiguan4,
[5] = partner_keepzhuofeifan,
[6] = partner_keepheishadizi,
[7] = partner_moxiaofeng_fajiang1,
[8] = partner_xiaoding_fajiang1,
[9] = partner_quwan_fajiang1,
[10] = partner_xieqinger_fajiang1,
}



----------------------------------------------------------��ǵ�Ի�---------------------------------------------------
function pe_luqing()   
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	local Uworld1228 = nt_getTask(1228)                        --ͬ�����������Ӱ�������
	local Uworld1229 = nt_getTask(1229)                        --ͬ����������ɷ�������
	local Uworld1230 = nt_getTask(1230)                        --ͬ����������ɷ�������
	local Uworld1231 = nt_getTask(1231)                        --ͬ�����������Ңˮ�������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
              Describe(DescLink_LuQing..": M�y ng��i ch�ng ta gi�o d�c c�ng k�t th�c. Ng��i b�y gi� c� th� �i t�m ki�m Ho�ng �� t�.",1,"K�t th�c ��i tho�i /no") 
        elseif ( Uworld1226 == 10 ) and (Uworld1227 == 0) then 
              Describe(DescLink_LuQing..": Nh� ng��i l� t�i l�m nhi�m v� gi�o d�c. Ta y�u c�u x�ch �nh ng� b�nh, �ang ph�t ��ng tu luy�n c�c v� s� gi�p m�t tay t�m th�o d��c ��y. Ng��i c� th� � <color=red> b�n tr�i xu�ng n�i tr�n s�n ��o <color> t�m ���c <color=red> ba nam m�t n� <color> b�n v� s�. Kia gi�p ng��i ��n ph�i c� th�, n�u nh� ng��i c� th� gi�p ta �em tr� li�u x�ch �nh ��ch th�o d��c <color=red> mang v� <color>, ta s� cho ng��i m�t m�t v� s� l�m, c� th� mang cho ng��i r�t nhi�u ch� t�t nga.<enter>" 
            .."<color=green> nhi�m v� t��ng th��ng : B�n ��ng h�nh k� n�ng kim c��ng kh�ng ph�, L�i ��nh t� gi�p <color>",2,"B�t ��u nhi�m v�/luqing_findmedicin","K�t th�c ��i tho�i /no") 
       elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
             Describe(DescLink_LuQing..": Th�o d��c ng��i c�ng l�y ���c ? th�t t�t qu�, ng�a c�a ta m� ���c c�u r�i. T�t l�m, ta s� n�i cho ng��i bi�t m�t �t khi�u m�n �i :<enter>,t�t l�m, � ch� n�y c�a ta ng��i �� h�c kh�ng t�i nhi�u th� h�n, �i t�m nh�ng ng��i kh�c �i.B�o tr�ng ! nh�n th�y ta ��c c� s� huynh ��ch th�i �i�m , xin m�i thay ta th�m h�i h�n.",2,"Nh�n l�y ph�n th��ng /luqing_getprize","Sau n�y tr� l�i /no") 
       elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) then 
            Describe(DescLink_LuQing..": Kh�ng ph�i l� n�i cho ng��i bi�t sao, ng��i c� th� � <color=red> b�n tr�i xu�ng n�i tr�n s�n ��o <color> t�m ���c <color=red> ba nam m�t n� <color> b�n v� s�. Kia gi�p ng��i ��n ph�i c� th�, n�u nh� ng��i c� th� gi�p ta �em tr� li�u x�ch �nh ��ch th�o d��c <color=red> mang v� <color> , ta s� cho ng��i m�t m�t v� s� l�m, c� th� mang cho ng��i r�t nhi�u ch� t�t.",1, 
            "K�t th�c ��i tho�i /no") 
       else 
            Describe(DescLink_LuQing..": R�t nhi�u n�m tr��c ��c c� s� huynh ��ng � giang h� cao nh�t ng�n n�i kia tr�n ��nh n�i, ta nh� v� l�m c�c �� t� nh�t t� r�t ra ba th��c ki�m phong ��i v�i h�n th� hi�u m�nh , �� l� m�t th�n tho�i �i. N�m ngo�i ta ngo�i � mu�n nh�n ���c m�t phong t�n s�, h�n n�i g�n nh�t H�nh S�n �ang tuy�t, tr�i l�nh nhanh h�n kh�ng ch�u n�i. R�t mu�n t�m ng��i u�ng r��u, l�i ph�t gi�c kh�ng c� ng��i n�o nh�ng kh�m c�ng �m. H�n n�i s� m�t m�c �n tr� kia v� h�nh t�ng r��u ch� ta. A a, ��ng v�y, ta ch� n�y l� l�a th�nh v��ng m�y th�p ni�n, v�ch n�i b�n ��ch �� quy�n c�ng khai c�m �n m�y th�p ni�n, ta mu�n n�m x�a nh�ng th� kia h�m m� suy ngh� c�ng h�a l�m gi� r�t th�i v�o s� huynh ��ch trong th�n th� li�u �i. Ta ��y s� ph�i �i b�i h�n, c�ng kh�ng bi�t tr�n ���ng c� hay kh�ng b�nh t�nh, thi�n h� lung tung ph�i qu� l�u.<enter>",1,"K�t th�c ��i tho�i /no") 
       end
		
end

function luqing_findmedicin()
	if ( partner_checkdo() == 10 ) then
		nt_setTask(1227,10)
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,100 ,1)                   			--����ǰͬ�����Ӿ��飬+100
		Msg2Player("L� Thanh cho ng��i �i b�n tr�i ���ng xu�ng n�i th��ng, n�i �� c� ba nam m�t n� b�n v� v� s�.")
	end
end

function luqing_getprize()                                          --����ڢ�ǵ�����ܽ���
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()   --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddSkill(partnerindex,0,549,1)                      --����ͬ�鿹�Լ��ܡ���ղ��ơ�    
		Msg2Player("Ch�c m�ng ng��i thu ���c b�n ��ng h�nh k� n�ng ?Kim c��ng kh�ng ph�?")
		nt_setTask(1227,20)											--��ǵ�������������ѽ���
		Msg2Player("Ng��i �� ho�n th�nh � L� Thanh ch� ta h�c t�p, c� th� �i H�c b�ch song s�t, ���ng ?nh, thu y n��c v� ch�ng n�i �� nh�n m�t ch�t.")
	end
end

----------------------------------------------------------����ĪЦ��Ի�-----------------------------------------

function pe_moxiaofeng()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),1) ~= 1 ) then 
               Describe(DescLink_MoXiaoFeng..":<color=green>Phanh d� l�m th�t b� th� l�m th� vui, s� tu m�t u�ng ba tr�m ch�n. S�m phu t�, �an kh�u sinh, �em v�o r��u, qu�n s� d�ng. C�ng qu�n ca m�t kh�c, xin m�i qu�n v� ta l�ng tai nghe. Chu�ng ��ng h� c� so�n ng�c ch�a �� ��t, ch� mong tr��ng say kh�ng ph�c t�nh. X�a nay th�nh hi�n t�t c� t�ch m�ch, duy c� u�ng ng��i l�u k� danh.<color><enter>" 
             .." ��y l� ���ng tri�u ��i thi nh�n l� b�ch ��ch ki�t t�c, say r��u cu�c s�ng, l�u danh d� s�. D��ng n�o th�ch �, ta ch� c��i phong n�u c� th� th�nh t�u m�t phen ho�i b�o, c�ng coi l� kh�ng c� u�ng ��n th� gian n�y �i m�t l�n. C�i g� ? ng��i l� l� thanh l�o ��u kia t�m t�i mu�n th�o d��c ��ch? H� h�, mu�n th�o d��c c�ng kh�ng ��n gi�n nh� v�y. Ta c� ba v�n ��, n�u nh� ng��i c�ng c� th� ��p ��i v�i, li�n �em tr�n tay th�o d��c cho ng��i. ��p kh�ng ��ng l�i c�a, c�a ��u kh�ng c�.",2, 
               "Ng��i c� h�i /moxiaofeng_taskproblem", 
               "Sau n�y l�i t�i t�m ng��i �i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),1) == 1 ) and ( GetBit(GetTask(1232),2) == 0 ) then 
               Describe(DescLink_MoXiaoFeng..": ���c r�i, ta �em ta ch� n�y nh�n th��ng cho ng��i . ",2,"Nh�n l�y ph�n th��ng /moxiaofeng_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_MoXiaoFeng..": Ng��i �� ho�n th�nh � ch�ng ta b�n ng��i ng��i n�i n�y tu h�nh, d��c th�o c�m xong tr� v� t�m L� Thanh l�o ��u �i.",1,"K�t th�c ��i tho�i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) then 
                Describe(DescLink_MoXiaoFeng..": Uh, ta ��y m�t c�a �i ng��i �� th�ng qua, �i t�m ph�a d��i v� s� �i. B�n h� c�ng kh�ng ta nh� v�y h�o n�i chuy�n, m�nh c�n th�n.",1,"K�t th�c ��i tho�i /no") 
        else 
               Describe(DescLink_MoXiaoFeng..": Ch� c��i �i�n cu�ng ch� c��i phong, m��i n�m t�p ki�m m��i n�m t�ng. Th� sinh ta �� s�m mu�n ki�m th� giang h�, k�t long m�t bu�i s�ng ph�i c�i, v�y c�n kh�ng bay �i c�u thi�n, th�nh h�nh v� b� sao ? c�p c�p c�p c�p ha ha ..",1,"K�t th�c ��i tho�i /no") 
       end
end

function moxiaofeng_taskproblem()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ3������Ϊ����1~����29���������ʴ��ֵΪ20�Σ���ɻش��1232�ű����ֽ�1��1
	partner_edu(3,1,29,3,1232,1,1,7)
end

function moxiaofeng_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,430,1 )                   			--����ǰͬ�����Ӿ��飬+430
		nt_setTask(1232,SetBit(GetTask(1232),2,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� ta, �i nh�ng ng��i kh�c �i.",0)
	end
end

----------------------------------------------------------����ţ�����Ի�-----------------------------------------
function pe_niumanman()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ţ�����������
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),3) ~= 1 ) then 
              Describe(DescLink_NiuManMan..": Ta l� m�t s�t th�, thu ti�n b�n m�ng. Ng��i l� mu�n gi�t heo ��y, hay l� mu�n gi�t ng��i ? <enter>" 
            .."A ? ng��i l� c�n d��c li�u ! Ta ng�t, ng��i t�i b�t thi�n kia ! Uh! �� nh� v�y, v�y ng��i nh�t ��nh ph�i theo ta ch�i m�t tr� ch�i. Ch�i b�t qu� ta l�i c�a ph�i tr� v� ��p v�n ��, <color=red> b�t lu�n ��p r�t ��ng ��i v�i l�i ��u ph�i s� c�ng ta ch�i <color>. Cho ��n <color=red> th�ng <color> nh�n ta m�i c� th� xu�t quan. C�i g� c�i g� ? ta b� ��o ! Li�n b� ��o, ng��i n�i ng��i c� �i.",3, 
              "H�o, b�t ��u �i /niumanman_startcaimei", 
              "Nghe gi�ng thu�t quy t�c tr� ch�i/niumanman_guize", 
              "Sau n�y l�i t�i t�m ng��i �i/no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),3) == 1 ) and ( GetBit(GetTask(1232),4) == 0 ) then 
                Describe(DescLink_NiuManMan..": ���c r�i, ta �em ta ch� n�y nh�n th��ng cho ng��i. ",2,"Nh�n l�y ph�n th��ng /niumanman_giveprize","Sau n�y tr� l�i/no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_NiuManMan..": Ng��i �� ho�n th�nh � ch�ng ta b�n ng��i ng��i n�i n�y tu h�nh, d��c th�o c�m xong tr� v� t�m L� Thanh l�o ��u �i . ",1,"K�t th�c ��i tho�i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),4) == 1 ) then 
                Describe(DescLink_NiuManMan..": Uhm, ta ��y m�t c�a �i ng��i �� th�ng qua, �i t�m ph�a d��i v� s� �i. B�n h� �i�m t� c�ng kh�ng thi�u, ng��i ph�i c�n th�n. ",1," K�t th�c ��i tho�i /no") 
        else 
                Describe(DescLink_NiuManMan..": Gi�t m�t �ao, gi�t ng��i c�ng l� m�t �ao. Nh� v�y th� n�o, nh�n h�a heo c� c�i g� kh�c nhau ? Thay v� gi�t heo, kh�ng b�ng gi�t ch�t heo ch� kh�ng b�ng ng��i c�a. Ng��i n�i ��ng kh�ng ? t�i t�i t�i , ch�ng ta ch�i c� tr� ch�i nh� th� n�o ? ",2, 
             "Ch�i li�n/niumanman_startcaimei", 
             "Kh�ng r�nh kh�ng r�nh /no") 
        end
end

function niumanman_startcaimei()
	Describe(DescLink_NiuManMan..": ���c r�i, nh� v�y b�y gi� ng��i l�a ch�n m�t t� sinh ti�u b�t ��u c�ng ta tranh t�i �i, h� h�. Thua ng��i !",3, 
         "Ta l�a ch�n th� ng�u h� th� long x� c�i n�y t�/niumanman_bisai1", 
         "Ta l�a ch�n m� d� h�u g� ch� heo c�i n�y t�/niumanman_bisai2", 
         "Ch� ch�t tr� l�i ch�i /no")
end

function niumanman_guize()
Describe(DescLink_NiuManMan..": Ta ch� n�y c� <color=red> t� th�, x�u x� b�, d�n h�, m�o th�, th�n long, t� x�, ng� m�, kh�ng d�, th�n h�u, d�u g�, tu�t ch�, h�i heo <color> m��i hai sinh ti�u. Ch�ng ta t�i so l�n nh�, c� th� quy t�c l� : Ch�ng ta �em m��i hai sinh ti�u chia l�m hai t�, tr��c s�u th� ng�u h� th� long x� l�m m�t t�. Sau s�u m� d� h�u g� ch� heo l�m m�t t�. Ng��i t�y � ch�n l�a m�t t� t�i c�ng ta so l�n nh�. T� nh� ng��i l�a ch�n th� ng�u h� th� long x� c�i n�y m�t t�, nh� v�y n�u nh� ta ra c� h�, ng��i ra c� th�, nh� v�y ng��i so v�i ta ��i. N�u nh� ta ra c� long, ng��i ra c� x�, v�y th� ng��i ��i. C�ng ch�nh l� d�a theo th� t� c�ng ��ng h�ng ph�a sau c�ng l�n. B�t qu� ��y ng��i cu�i c�ng l� so th� nh�t nh�  ti�u nh�n, c�ng ch�nh l� th� c� th� so v�i x� ��i. Ch�ng ta hai m�t ng��i ra m�t sinh ti�u, xem ai ��ch ��i. N�u nh� trung gian xu�t hi�n hai sinh ti�u kh�ng ph�i l� t�a v�o c�ng nhau t�nh hu�ng, nh� ta ra c� h�, ng��i ra c� x�, nh� v�y coi l� ta th�ng.?",2,
                   "�� hi�u, �� cho ta tr� v�/pe_niumanman",
                   "Qu� kh� kh�n, kh�ng ch�i /no")
end

function niumanman_bisai1()
	SetTaskTemp(190,0)
	local i = random (1,6)
	SetTaskTemp(190,i)
	Describe(DescLink_NiuManMan..": ���c r�i ���c r�i , b�t ��u ch�n b�t ��u ch�n, c�p c�p c�p c�p, nhanh l�n m�t ch�t nhanh l�n m�t ch�t. Ng��i ra c�i g� ? ",6, 
      "Th� /niumanman_num1", 
      "Ng�u /niumanman_num2", 
      "H� /niumanman_num3", 
      "Th� /niumanman_num4", 
      "Long /niumanman_num5", 
      "X� /niumanman_num6")
end

function niumanman_bisai2()
	SetTaskTemp(190,0)
	local i = random (7,12)
	SetTaskTemp(190,i)
	Describe(DescLink_NiuManMan..": ���c r�i ���c r�i, b�t ��u ch�n b�t ��u ch�n, c�p c�p c�p c�p, nhanh l�n m�t ch�t nhanh l�n m�t ch�t. Ng��i ra c�i g� ? ",6, 
       "M� /niumanman_num7", 
       "D��ng /niumanman_num8", 
       "H�u /niumanman_num9", 
       "K� /niumanman_num10", 
       "C�u /niumanman_num11", 
       "Tr� /niumanman_num12")
end

function niumanman_bisaijieguo(partner_personnum)
	local partner_systnum = GetTaskTemp(190)
	if ( partner_personnum == 1 or partner_personnum == 7 ) then 
               if ( partner_systnum == 6 or partner_systnum == 12 ) then 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", A ! Ng��i l�i nh� n�y l�i h�i, th�t b� ng��i ��nh b�i. ���c r�i, ng��i qua ta ��y ��ng. ",1," K�t th�c ��i tho�i /niumanman_taskfinish") 
               else 
                    Describe(DescLink_NiuManMan..": ta ra "..partner_birthday[partner_systnum]..", H�c h�c, ng��i thua n�a r�i ! Tr� l�i v�n �� �i.",1,"���c r�i, ta tr� l�i /niumanman_shule") 
               end 
        else 
              if ( partner_personnum == partner_systnum + 1 ) then 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", A ! ng��i l�i nh� n�y l�i h�i, th�t b� ng��i ��nh b�i. ���c r�i, ng��i qua ta ��y ��ng.",1,"K�t th�c ��i tho�i /niumanman_taskfinish") 
              else 
                    Describe(DescLink_NiuManMan..": Ta ra "..partner_birthday[partner_systnum]..", H�c h�c, ng��i thua n�a r�i ! Tr� l�i v�n �� �i. ",1,"���c r�i, ta tr� l�i /niumanman_shule") 
              end 
        end
end

function niumanman_taskfinish()
	if ( nt_getTask(1226) == 10 ) and ( nt_getTask(1227) == 10 ) and ( GetBit(GetTask(1232),3) == 0 ) then
		nt_setTask(1232,SetBit(GetTask(1232),3,1))  --ţ������������ɣ���δ��ȡ����
		niumanman_giveprize()
	end
end

function niumanman_shule()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ1������Ϊ����1~����20���������ʴ��ֵΪ100�Σ�����������ֽ�
	if ( partner_edu(1,1,29,1,0) == 10 ) then 
             Describe(DescLink_NiuManMan..": L�i b� ng��i ��p ��ng r�i , h�o , tr� l�i ch�i tr� ch�i, ng��i c� th� th�ng ta li�n v��t qua ki�m tra",1,"T�i th� t�i/niumanman_startcaimei") 
        else 
            Msg2Player("��p sai l�m r�i li�n tr� l�i.") 
        end
end

function niumanman_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,430,1)                   			--����ǰͬ�����Ӿ��飬+430
		PARTNER_AddSkill(partnerindex,0,553,1)                          --����ͬ�鿹�Լ��ܡ��������ס�
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ?L�i ��nh h� gi�p ?") 
                   nt_setTask(1232,SetBit(GetTask(1232),4,1)) -- ph�t t��ng xong 
                Say("Ng��i �� ho�n th�nh nhi�m v� ta ch� n�y, �i nh�ng ng��i kh�c n�i �� �i.",0)
	end
end

----------------------------------------------------------�ɻ�����С���Ի�----------------------------------------------
function pe_xiaoding()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),5) ~= 1 ) then 
          Describe(DescLink_XiaoDing..":Ta l� c�ng t� h�i hoa, kh�ng ph�i l� kh� d�y d�a c�ng t�. B�n ��ng h�nh c�a ta kh�ng ��nh cho ng��i x�p ��t r�t ��u b�y r�p �i, ��n ta ch� n�y kh�ng c�n. An t�m tr� l�i ��i v�i ba ��o �� m�c li�n �em th�o d��c cho ng��i.",2, 
              "V�n �� g� ? Ng��i c� h�i/xiaoding_taskproblem", 
              "Sau n�y l�i t�i t�m ng��i/no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),5) == 1 ) and ( GetBit(GetTask(1232),6) == 0 ) then 
             Describe(DescLink_XiaoDing..": ���c r�i, ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i.",2,"Nh�n l�y ph�n th��ng /xiaoding_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
             Describe(DescLink_XiaoDing..": Ng��i �� ho�n th�nh � ch�ng ta b�n ng��i ng��i n�i n�y tu h�nh, d��c th�o c�m xong tr� v� t�m ti�m l�o ��u �i.",1,
             "K�t th�c ��i tho�i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),6) == 1 ) then 
             Describe(DescLink_XiaoDing..": Uh, ta ��y m�t c�a �i ng��i �� th�ng qua, �i t�m h�i th� m�t ��ch v� s� �i. B�n h� c�ng kh�ng ta nh� v�y h�o n�i chuy�n, m�nh c�n th�n.",1,"K�t th�c ��i tho�i /no") 
       else 
          if ( GetSex() == 0 ) then 
              Describe(DescLink_XiaoDing..": Ai , ai ai , ai ai ai .. ta oan kia ? ���c x�ng c�ng t� h�i hoa, l�i m�t ��a hoa c�ng kh�ng th�i qu�. M�i v�a � giang h� x�ng ra danh ti�ng, li�n b� tr��ng ca c�a c�ng r�n ���c thu v�o c�a trong , qu� tr� t�i t�m kh�ng m�t tr�i , luy�n c�ng t�p v� ��ch ng�y . ��i hi�p , ��p trai , ng��i nh�t ��nh ph�i c�u ta �i ra ngo�i a !",1,"K�t th�c ��i tho�i /no") 
         else 
              Describe(DescLink_XiaoDing..": Ai , ai ai , ai ai ai .. ta oan kia ? ���c x�ng c�ng t� h�i hoa, l�i m�t ��a hoa c�ng kh�ng th�i qu�. M�i v�a � giang h� x�ng ra danh ti�ng, li�n b� tr��ng ca c�a c�ng r�n ���c thu v�o c�a trong , qu� tr� t�i t�m kh�ng m�t tr�i , luy�n c�ng t�p v� ��ch ng�y . m� n� , t� t� , ng��i nh�t ��nh ph�i c�u ta �i ra ngo�i a !",1,"K�t th�c ��i tho�i /no") 
         end 
    end
	
end

function xiaoding_taskproblem()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ3������Ϊ����1~����20���������ʴ��ֵΪ20�Σ���ɻش��1232�ű����ֽ�5��1
	partner_edu(3,1,29,3,1232,5,1,8)
end

function xiaoding_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,430,1 )                   			--����ǰͬ�����Ӿ��飬+430
		nt_setTask(1232,SetBit(GetTask(1232),6,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� ta, �i nh�ng ng��i kh�c �i.",0)
	end
end
----------------------------------------------------------�ɰ�Ů����ȸ���Ի�---------------------------------------------
function pe_yunqueer()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	
	if ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),7) ~= 1 ) then 
            Describe(DescLink_YunQueEr..": ha ha , ng��i c�ng ch�t gi�t heo ��ch c�i �� ��u heo ba n�i chuy�n nhi�u kh�ng c� ? h�n c� ph�i hay kh�ng �� cho ng��i c�ng sinh ti�u ��ch l�n nh� ? c�i n�y kh�ng c� h�c qu� s�ch ��ch . b�n ti�u th� thu� nh� li�n ��c thu�c t� th� ng� kinh , n�i n�o l� h�n c� th� h� so . ch�ng ta t�i ch�i cao c�p c�ng mai tr� ch�i : �� k�o t� b� . h� h� ...... ng��i thua gi�ng nhau l� ph�i v� ��p b�n ti�u th� n�i ��ch v�n �� , nh� th� n�o ? ",3, 
            "B�t ��u �i/yunqueer_wenti", 
            "Cho ta gi�ng gi�i m�t h�i th� quy t�c /yunqueer_guize", 
            "Sau n�y l�i t�i t�m ng��i �i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),7) == 1 ) and ( GetBit(GetTask(1232),8) == 0 ) then 
                Describe(DescLink_YunQueEr..": ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i. ",2,"Nh�n l�y ph�n th��ng /yunqueer_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),2) == 1 ) and ( GetBit(GetTask(1232),4) == 1 ) and ( GetBit(GetTask(1232),6) == 1 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_YunQueEr..": Ng��i �� ho�n th�nh � ch�ng ta b�n ng��i ng��i n�i n�y tu h�nh , d��c th�o c�m xong tr� v� t�m ti�m l�o ��u �i.",1,"K�t th�c ��i tho�i /no") 
        elseif ( Uworld1226 == 10 ) and ( Uworld1227 == 10 ) and ( GetBit(GetTask(1232),8) == 1 ) then 
                Describe(DescLink_YunQueEr..": Uh, ta ��y m�t c�a �i ng��i �� th�ng qua , �i t�m h�i th� m�t ��ch v� s� �i. B�n h� c�ng kh�ng ta nh� v�y h�o n�i chuy�n, m�nh c�n th�n.",1,"K�t th�c ��i tho�i /no") 
        else 
            if ( GetSex() == 0 ) then 
                  Describe(DescLink_YunQueEr..": H� h�, ta �ang c�ng tr�n c�y ��ch con chim n�i chuy�n ��y. Ng��i c� th� nghe hi�u b�n h� n�i g� ? b�n h� n�i n�i n�y r�t ��p , c� s�n ��ch v�n h� , c�n c� so v�n h� ��p h�n ��ch v�n t��c m� ��y. Ca ca mang ta �i ra ngo�i ch�i, c� ���c hay kh�ng ? ",1,"K�t th�c ��i tho�i /no") 
            else 
                  Describe(DescLink_YunQueEr..": H� h�, ta �ang c�ng tr�n c�y ��ch con chim n�i chuy�n ��y. Ng��i c� th� nghe hi�u b�n h� n�i g� ? b�n h� n�i n�i n�y r�t ��p , c� s�n ��ch v�n h� , c�n c� so v�n h� ��p h�n ��ch v�n t��c m� ��y. T� t� mang ta �i ra ngo�i ch�i, c� ���c hay kh�ng ? ",1,"K�t th�c ��i tho�i /no")
            end 
        end
end

function yunqueer_guize()
	Describe(DescLink_YunQueEr..": Quy t�c l� nh� v�y : �� k�o t� b� ��y , �� th�ng k�o t� , k�o t� th�ng b� , b� th�ng ��. �� hi�u kh�ng c� ? ng��i th�ng ta li�n v��t qua ki�m tra , kh�ng c� th�ng ta ho�c l� ��nh ngang tay , t� nh� ng��i ra k�o t� ta c�ng ra k�o t� , v�y c�ng coi l� ta th�ng. H� h�. B�t qu� ta th�ng c�ng kh�ng ph�i l� kh� kh�n ng��i, ��p ��i v�i ta ba ��o �� m�c l� t�t r�i.",1,"Ta mu�n tr� v�/pe_yunqueer")
end

function yunqueer_wenti()
	Describe(DescLink_YunQueEr..": t�i t�i t�i , b�t ��u vung quy�n l�c. Ng��i ra c�i g� ? ",3, 
	"B�a/yunqueer_shitou", 
        "K�o/yunqueer_jianzi", 
        "Bao/yunqueer_bu")
end

function yunqueer_shitou()
	local i = random(1,3)
	if ( i ~= 2 ) then 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! Ta th�ng n�a r�i , h� h� , tr� l�i v�n �� �i ",1,"Tr� l�i v�n ��/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! B� ng��i th�ng n�a r�i , ���c r�i. Coi nh� ng��i qu� n�a/r�i . ",1,"Coi nh� ng��i qu� quan /yunqueer_finish") 
       end
end

function yunqueer_jianzi()
	local i = random(1,3)
	if ( i ~= 3 ) then 
             Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! Ta th�ng n�a r�i , h� h� , tr� l�i v�n �� �i ",1,"Tr� l�i v�n ��/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! B� ng��i th�ng n�a r�i , ���c r�i. Coi nh� ng��i qu� n�a/r�i . ",1,"Coi nh� ng��i qu� quan /yunqueer_finish") 
       end
end

function yunqueer_bu()
	local i = random(1,3)
	if ( i ~= 1 ) then
	   Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! Ta th�ng n�a r�i , h� h� , tr� l�i v�n �� �i ",1,"Tr� l�i v�n ��/yunqueer_problem") 
       else 
            Describe(DescLink_YunQueEr..": Ta ra "..partner_caimei[i]..", �i nha ! B� ng��i th�ng n�a r�i , ���c r�i. Coi nh� ng��i qu� n�a/r�i . ",1,"Coi nh� ng��i qu� quan /yunqueer_finish") 
       end
end

function yunqueer_problem()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ3������Ϊ����1~����20���������ʴ��ֵΪ100�Σ�����������ֽ�
	if  ( partner_edu(3,1,29,3,0) == 10 ) then
		Msg2Player("T�t, n� l�c li�n t�c v� �o�n n�o c�a n�. Hee hee.")
	else
		Msg2Player("Thua c�ng kh�ng c�n n�i gi�n, ti�p t�c. H� h�.")
	end
end

function yunqueer_finish()
	if ( nt_getTask(1226) == 10 ) and ( nt_getTask(1227) == 10 ) and ( GetBit(GetTask(1232),7) == 0 ) then
		nt_setTask(1232,SetBit(GetTask(1232),7,1))  --��ȸ����������ɣ���δ��ȡ����
		yunqueer_giveprize()
	end
end


function yunqueer_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,430,1 )                   			--����ǰͬ�����Ӿ��飬+430
		nt_setTask(1232,SetBit(GetTask(1232),8,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c n�i �� �i",0)
	end
end



-----------------------------------------------------------------��Ӱ�Ի�-----------------------------------------------------

function pe_tangying()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	local Uworld1228 = nt_getTask(1228)                        --ͬ�����������Ӱ�������
	local Uworld1229 = nt_getTask(1229)                        --ͬ����������ɷ�������
	local Uworld1230 = nt_getTask(1230)                        --ͬ����������ɷ�������
	local Uworld1231 = nt_getTask(1231)                        --ͬ�����������Ңˮ�������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
                Describe(DescLink_TangYing..": M�y ng��i ch�ng ta gi�o d�c c�ng k�t th�c. Ng��i b�y gi� c� th� �i t�m ki�m ho�ng �� ��.",1,"K�t th�c ��i tho�i /no") 
        elseif ( partner_getpartnerlevel(4) ~= 10 ) then 
                return 
        elseif ( Uworld1226 == 10 ) and ( Uworld1228 == 0 ) then -- ���ng �nh ch� nhi�m v� kh�ng c� x�c ph�t ? ? ? ? ? kh�ng c� �em nhi�m v� t��ng th��ng n�i cho nh� ch�i 
               Describe(DescLink_TangYing..": Ai , v�y ph�i l�m sao b�y gi� ��y ? thu nghi�u ��a nh� n�y qu� kh�ng nghe l�i.<enter>" 
               .."ng��i l� ki�m ho�ng �� �� gi�i thi�u t�i. V�y c�ng t�t , con trai c�a ta ���ng thu nghi�u b� tr�n tr�n m�t qu�i nh�n �i r�i , ta b�y gi� l�i v�i v�ng th�i ch� m�t lo�i k� l� d��c li�u , hy v�ng ng��i c� th� thay ta �em thu nghi�u c�u ra , ph�i c� h�i b�o. C�i �� qu�i nh�n �ang � b�n ph�i treo ti�n n�i �� thi�t tr� m�t c�i kh�ng th�y ���c kh�ng trung s�n ��o , ng��i c�n t�m ���c �i�u n�y, h�n n�a c�u ra con trai c�a ta. Kia ch� � treo ti�n b�n tr�n s� c� m�t vi�n k� qu�i c�y. Tr�n c� cho ph�p ��u kh�ng trung th�ch s�n , m�i ng�n n�i th��ng ��u ph�i m� ra m�t c� quan , ng��i m�y s� h�i ng��i ch�t v�n ��. T�m l�i v� c�ng kh�ng d� d�ng , ng��i ph�i c�n th�n.<enter>" 
               .."<color=green> nhi�m v� t��ng th��ng : ��ng b�n k� n�ng ' b�ch ��c b�t x�m '?' ch�n h�a kh�ng l�c '<color>",2, 
               "Ta ti�p nh�n khi�u chi�n /tangying_findchildren", 
               "Ta c�n kh�ng c� l�m h�o chu�n b� ��y /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1228 == 8191 ) then 
              Describe(DescLink_TangYing..": Thu nghi�u ch� h�i th� s� tr� l�i ? th�t t�t qu� ! C�m �n ng��i. T�t l�m , ta s� n�i cho ng��i bi�t m�t �t khi�u m�n �i :<enter>" 
              .."<color=yellow> khi ng��i x� vu ch� ��ng c�ng k�ch tr�ng th�i th� ��ch nh�n � ��ng b�n ��ch h�nh ��ng trong ph�m vi l�c , n�u nh� l� anh m�nh h�nh l�u manh h�nh h�n y�u h�nh ��ch ��ng b�n , s� g�p t� ��ng c�ng k�ch n�, c�n c� ��ng b�n b�t ��ng t�nh t�nh h�nh ��ng c�a h�n ph�m vi c�ng ph��ng th�c c�ng k�ch c�ng s� kh�ng gi�ng nhau. Khi ng��i kh�ng mu�n �� cho ��ng b�n c�a ng��i �i c�ng k�ch ��ch nh�n th�i �i�m, ng��i ch� c�n � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c c�i n�t sau �� b�n tr�i ki�n �an k�ch n� l� ���c r�i. N�u nh� ng��i mu�n cho ��ng b�n c�a ng��i c�ng k�ch l�n n�a ��ch nh�n tho�i, v�y ng��i li�n c�n � ��ng b�n ��ch kho�i ti�p lan trong t�m ���c c�i n�t c�ng �i�m k�ch n�. Kh�ng mu�n c�i n�y ��ng b�n l�c , ta ph�i nh� th� n�o gi�i t�n h�n ��y ? ng��i ��u ti�n mu�n � ��ng b�n thu�c t�nh gi�i m�t t�m ���c gi�i t�n ��ng b�n c�i n�t <color><enter>" 
              .."T�t l�m , � ch� n�y c�a ta ng��i �� h�c kh�ng t�i h�n ��u ��ch ��, �i t�m nh�ng ng��i kh�c �i. Thu nghi�u n��c l� c�a ta l�o b� , ng��i th�y n�ng l�c c�n th�n m�t ch�t , ng�n v�n ��ng n�i cho n�ng con trai n�m qu� a , n�u kh�ng bu�i t�i ta s� b� giam � c�a . nh� c�y nh� c�y . ",2,"Nh�n l�y ph�n th��ng /tangying_getprize","Sau n�y tr� l�i /no") 

      elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1228),1) == 1 ) then -- m�i v�a nh�n ���c ���ng �nh ch� nhi�m v� 
              Describe(DescLink_TangYing..": �i <color=red> b�n ph�i treo ti�n <color> n�i �� t�m ���c m�t c�i <color=red> ti�u ?<color> , th�ng qua ng��i m�y tr�n , �em ta h�i t� t� c�i �� ch�t qu�i v�t tr�c phi ph�m trong tay c�u ra . ",1, 
              "K�t th�c ��i tho�i /no") 
      else 
             Describe(DescLink_TangYing..": Nghe n�i b�y gi� ���ng m�n ch��ng m�n l� ���ng th� ? ��a nh� n�y t�m t�nh h�p h�i kh� l��ng c� h�n , l�m g� ph�i ba th�c �� nh�t gia ��ch ch� ��y ? c� l� ��i tr��c ch��ng m�n l� xem th�u ? ��i , c� � ch�n c� kh�ng bi�t ti�n th� h�ng ng��i th� nh� �i . nh�c t�i n�m �� n�u kh�ng ph�i Nam Cung thi�u hi�p th�nh to�n , h�m nay ta ���ng �nh �� s�m l� kh� c�t m�t c� . c� ch�t th�nh ng��i kh�ng th� kh�ng tranh , r�i l�i tranh kh�ng th� tranh , c� th� th�y ���c tr�n ��i s� m�ng m�t ��o , cu�i c�ng t�n c� may m�n .. hy v�ng ng�y h�u ta ���ng gia b�o v��t qua nh�ng th� n�y phong kh�i �i. <enter>",1,"K�t th�c ��i tho�i /no") 
      end
	
end

function tangying_findchildren()
	nt_setTask(1228,SetBit(GetTask(1228),1,1))  --��������
	Msg2Player("���ng �nh cho ng��i �i b�n ph�i m�t th�n b� trong l�i �i c�u ra con h�n ���ng thu nghi�u.")
end

function tangying_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddSkill(partnerindex,0,550,1)                          --����ͬ�鿹�Լ��ܡ��ٶ����֡�
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ? b�ch ��c b�t x�m ?")
		nt_setTask(1228,20)
		Msg2Player("Ng��i �� ho�n th�nh � ���ng �nh ch� h�c t�p, c� th� �i H�c b�ch song s�t, thu nghi�u n��c, ti�m n�i �� nh�n m�t ch�t .")
	end
end

----------------------------------------------------------------�����˶Ի�--------------------------------------------------

function pe_jiguan1()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),2) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": N�i n�y l� ta ��y c� quan l�o ��i khai <enter>" 
                  .." n�y c�y l� ta ��y c� quan l�o ��i t�i <enter>" 
                  .." n�u mu�n ��nh ta ��y c� quan l�o ��i c�i n�y qu� <enter>" 
                  .." th� ph�i cho ta ��y c� quan l�o ��i c� hi�u <enter>" 
                  .." mu�n h�i ng��i qu� qu� ��n gi�n . tr� l�i ta ��y c� quan l�o ��i m�y ��o kh�ng hi�u ��ch ph��ng ng�n �� m�c , kh�ng tr� l�i ���c s� ph�i tr�ng ph�t ng��i !",2, 
                  "��n gi�n, ta qua l�i ��p/jiguanren_problem1", 
                  "L�m c�i g�, tr��c kh�ng �� � t�i ng��i/no") 
        elseif ( GetBit(GetTask(1228),2) == 1 ) and ( GetBit(GetTask(1228),3) == 0 ) then 
                 Describe(DescLink_JiGuanRen..": ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i . ",2,"Nh�n l�y ph�n th��ng /jiguan1_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        else 
                Describe(DescLink_JiGuanRen..": Ta l� m�t ng��i m�y , y nha y nha nga.",1,"Ng��i l� g� ng��i m�y a, ng��i l� m�t ng��i �i�n /no") 
        end
end

function pe_jiguan2()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),4) == 0 ) then 
                Describe(DescLink_JiGuanRen..":N�i n�y v� ta c� quan l�o , a l�o , a l�o l�o Nh� khai <enter>" 
              .."n�y c�y v� ta c� quan l�o a , l�o a , l�o Nh� t�i <enter>" 
              .."n�u mu�n ��nh ta c� quan l�o Nh� c�i n�y qu� <enter>" 
              .."th� ph�i cho ta c� quan l�o Nh� , a hai , a hi�u r� <enter>" 
              .."mu�n h�i ng��i qu� qu� ��n gi�n. Tr� l�i ta c� quan l�o Nh� m�y ��o kh�ng hi�u ��ch ph��ng ng�n �� m�c , kh�ng tr� l�i ���c s� ph�i tr�ng ph�t ng��i !",2, 
             "��n gi�n, ta qua l�i ��p /jiguanren_problem2", 
            "L�m c�i g�, tr��c kh�ng �� � t�i ng��i /no") 
       elseif ( GetBit(GetTask(1228),4) == 1 ) and ( GetBit(GetTask(1228),5) == 0 ) then 
              Describe(DescLink_JiGuanRen..": ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i.",2,"Nh�n l�y ph�n th��ng /jiguan2_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
       else 
              Describe(DescLink_JiGuanRen..": Ta l� m�t ng��i m�y , y nha y nha nga . ",1,"Ng��i l� g� ng��i m�y a , ng��i l� m�t ng��i �i�n /no") 
       end
end

function pe_jiguan3()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),6) == 0 ) then 
               Describe(DescLink_JiGuanRen..": n�i n�y l� c� quan l�o Tam khai <enter>" 
              .."n�y c�y l� c� quan l�o Tam lo�i gi�t <enter>" 
              .."n�u mu�n ��nh ta ��y c� quan l�o Tam c�i n�y qu� <enter>" 
              .."th� ph�i cho ta c� quan l�o Tam ��p hi�u <enter>" 
              .."mu�n h�i ng��i qu� qu� ��n gi�n. Tr� l�i c� quan l�o Tam m�y ��o kh�ng hi�u ��ch ph��ng ng�n �� m�c , kh�ng tr� l�i ���c s� ph�i tr�ng ph�t ng��i !",2, 
               "��n gi�n, ta qua l�i ��p /jiguanren_problem3", 
               "L�m c�i g�, tr��c kh�ng �� � t�i ng��i /no") 
        elseif ( GetBit(GetTask(1228),6) == 1 ) and ( GetBit(GetTask(1228),7) == 0 ) then 
                Describe(DescLink_JiGuanRen..": ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i.",2,"Nh�n l�y ph�n th��ng /jiguan3_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        else 
               Describe(DescLink_JiGuanRen..": Ta l� m�t ng��i m�y , y nha y nha nga.",1,"Ng��i l� g� ng��i m�y, ng��i l� m�t ng��i �i�n /no") 
        end
end

function pe_jiguan4()
	if ( GetBit(GetTask(1228),1) == 1 ) and ( GetBit(GetTask(1228),8) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": n�i n�y l� ta ��y c� quan l�o T� khai <enter>" 
                 .."n�y c�y l� ta ��y c� quan l�o T� t�i <enter>" 
                 .."n�u mu�n ��nh ta ��y c� quan l�o T� c�i n�y qu� <enter>" 
                 .."th� ph�i cho ta ��y c� quan l�o T� c� hi�u <enter>" 
                 .."mu�n h�i ng��i qu� qu� ��n gi�n. Tr� l�i ta ��y c� quan l�o ��i m�y ��o kh�ng hi�u ��ch ph��ng ng�n �� m�c , kh�ng tr� l�i ���c s� ph�i tr�ng ph�t ng��i !",2, 
                 "��n gi�n, ta qua l�i ��p /jiguanren_problem4", 
                 "L�m c�i g�, tr��c kh�ng �� � t�i ng��i /no") 
        elseif ( GetBit(GetTask(1228),8) == 1 ) and ( GetBit(GetTask(1228),9) == 0 ) then 
                  Describe(DescLink_JiGuanRen..": ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i.",2,"Nh�n l�y ph�n th��ng /jiguan4_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        else 
                  Describe(DescLink_JiGuanRen..": Ta l� m�t ng��i m�y , y nha y nha nga . ",1,"Ng��i l� g� ng��i m�y � , ng��i l� m�t ng��i �i�n /no") 
        end
end

function jiguanren_problem1()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ2������Ϊ����101~����118���������ʴ��ֵΪ2�Σ��ش���ȷ��1228��2λ��1������ش���ȷ������partner_keeponproblem[1]
	partner_edu(2,101,118,2,1228,2,1,1) 
end

function jiguanren_problem2()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ2������Ϊ����101~����118���������ʴ��ֵΪ2�Σ��ش���ȷ��1228��4λ��1������ش���ȷ������partner_keeponproblem[2]
	partner_edu(2,101,118,2,1228,4,1,2)
end

function jiguanren_problem3()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ2������Ϊ����101~����118���������ʴ��ֵΪ2�Σ��ش���ȷ��1228��6λ��1������ش���ȷ������partner_keeponproblem[3]
	partner_edu(2,101,118,2,1228,6,1,3) 
end

function jiguanren_problem4()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ2������Ϊ����101~����118���������ʴ��ֵΪ2�Σ��ش���ȷ��1228��8λ��1������ش���ȷ������partner_keeponproblem[4]
	partner_edu(2,101,118,2,1228,8,1,4) 
end

function jiguan1_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		nt_setTask(1228,SetBit(GetTask(1228),3,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

function jiguan2_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		nt_setTask(1228,SetBit(GetTask(1228),5,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

function jiguan3_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		nt_setTask(1228,SetBit(GetTask(1228),7,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

function jiguan4_giveprize ()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		nt_setTask(1228,SetBit(GetTask(1228),9,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

-----------------------------------------------------------------׿�Ƿ��Ի�---------------------------------------------------

function pe_zhuofeifan()
	if ( nt_getTask(1228) == 511 ) then 
               Describe(DescLink_ZhuoFeiFan..": Ha ha ! m�t ki�m l� phong , �i giang h� l�. Ta tr�c phi ph�m n�m �� c�ng l� trong ch�n v� l�m nh�t ��ng m�t ��ch cao th�. C�i g� ? ta l� ai ? ��ng v�y , ta l� ai a , ta , ta l� ai ? ai nha , b�t k� n�a r�i. Ng��i ph�i c�u c�i �� h�ng h�i nhi ? h�n l� Ng�u ma v��ng ��ch con trai , �� kh�ng ph�i ��ch. A ! ta nh� ra r�i, ta l� T� thi�n ��i th�nh , ha ha ha , l�n tr�i xu�ng ��t th�n ma �� nh�t m� h�u v��ng. Uh, n�u ng��i nh�t ��nh ph�i c�u h�n , ta m� h�u v��ng d� nhi�n c�p cho ng��i m�t c�i c� h�i , t�i t�i t�i , ��p ta <color=red> n�m ��o <color> v�n �� t�i.",2, 
              "T�i th� t�i /zhuofeifan_problem", 
              "C�i n�y tr�c phi ph�m b�nh th�t t�t n�ng , ta c�n l� sau n�y tr� l�i �i /no") 
        elseif ( GetBit(GetTask(1228),11) == 1 )then 
                Describe(DescLink_ZhuoFeiFan..": ng��i t�i t�m c� g�i ���ng thu nghi�u ��ch ��a tr� ? ���ng c�i g� nghi�u a , ch�a t�ng nghe qua . ng��i xem m�t ch�t ph�a sau n�i h�i t� kia c� ph�i hay kh�ng ng��i mu�n t�m. C�n ��n c�n ��n.",1,"K�t th�c ��i tho�i /no") 
        elseif ( GetBit(GetTask(1228),10) == 1 ) and ( GetBit(GetTask(1228),11) == 0 ) then 
               Describe(DescLink_ZhuoFeiFan..": h� h� , h�m nay l�ng ta t�nh h�o , ch� h�i ng��i v�n �� . n�u kh�ng tuy�t ��i �em ng��i ��ng b�n ��nh ch�t , h�c h�c . <color=yellow> ng��i bi�t s� c� c�i g� tr�ng ph�t ? ��ng b�n s� kh�ng ch�t nh�ng l� khi ��ng b�n ��ch sinh m�ng tr� gi� l� 0 l�c l� ti�n v�o tr�ng th�i h�n m� , t� ��ng th�i lui ra chi�n ��u , ph�i ���c qu� 5 ph�t sau m�i c� th� l�n n�a cho g�i , h�n n�a ��ng b�n k�t th�c tr�ng th�i h�n m� sau , sinh m�ng tr� gi� kh�i ph�c v� l�n nh�t tr� gi� ��ch 100% . b�y gi� bi�t �i . <color> ���c r�i , ta �em ta ch� n�y ��ch t��ng th��ng cho ng��i . ",2,"Nh�n l�y ph�n th��ng /zhuofeifan_giveprize","Sau n�y tr� l�i /no") -- nh�n l�y t��ng th��ng ? ? ? ? ? ? ? ? ? 
        else  
               Describe(DescLink_ZhuoFeiFan..":Ta l� T� thi�n ��i th�nh , ha ha ha. Tr�c phi ph�m ? tr�c phi ph�m l� ai ? ",1,"Khi h�n tr�n ng��i c�a c� l� x�y ra chuy�n g� th�nh t�nh /no") 
        end
end

function zhuofeifan_problem()
	--���ù�������⣬�ش���ȷ��Ҫ��Ϊ2������Ϊ����101~����118���������ʴ��ֵΪ2�Σ��ش���ȷ��1228��4λ��1������ش���ȷ������partner_keeponproblem[2]
	partner_edu(5,101,118,5,1228,10,1,5)
end

function zhuofeifan_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		PARTNER_AddSkill(partnerindex,0,552,1)                          --����ͬ�鿹�Լ��ܡ��������
		Msg2Player("Ch�c m�ng ng��i thu ���c k� n�ng b�n ��ng h�nh ? ch�n h�a kh�ng l�c ?")
		nt_setTask(1228,SetBit(GetTask(1228),11,1))  --�������
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end


-----------------------------------------------------------------����Ң--------------------------------------------------------

function pe_tangqiuyi()
	
	if ( ( GetBit(GetTask(1228),12) == 1 ) and ( GetBit(GetTask(1228),13) == 0 ) ) then 
               Describe(DescLink_TangQiuYi..": D�, cho ng��i �t th� ch�i �i . ",2,"Nh�n l�y ph�n th��ng /tangqiuyi_giveprize","Sau n�y tr� l�i /no") 
        elseif ( GetBit(GetTask(1228),11) == 1 ) and ( GetBit(GetTask(1228),12) == 0 ) then 
             if ( GetSex() == 0 ) then 
                Describe(DescLink_TangQiuYi..": A , Tr�c th�c th�c kh�ng b�i thu nghi�u ch�i n�a r�i , ng� ...... m�t h�ng. ���c r�i , ��i ca ca ta l�n tr��c �i. Ng��i c� th� tr� v� �i n�i cho ta bi�t ph� th�n. <color=red> n�a c�ng ta ��i tho�i ta ��a ng��i m�t �t �� nga. <color>",1,"K�t th�c ��i tho�i /tangqiuyi_finish") 
             else 
                Describe(DescLink_TangQiuYi..": A , Tr�c th�c th�c kh�ng b�i thu nghi�u ch�i n�a r�i , ng� ...... m�t h�ng. ���c r�i , ��i t� t� ta l�n tr��c �i. Ng��i c� th� tr� v� �i n�i cho ta bi�t ph� th�n. <color=red> n�a c�ng ta ��i tho�i ta ��a ng��i m�t �t �� nga . <color>",1,"K�t th�c ��i tho�i /tangqiuyi_finish") 
             end 
        elseif ( GetBit(GetTask(1228),13) == 1 ) then 
             if ( GetSex() == 0 ) then 
                Describe(DescLink_TangQiuYi..": A , Tr�c th�c th�c kh�ng b�i thu nghi�u ch�i n�a r�i , ng� ...... m�t h�ng. ���c r�i , ��i ca ca ta l�n tr��c �i. Ng��i c� th� tr� v� �i n�i cho ta bi�t ph� th�n. ",1,"K�t th�c ��i tho�i /tangqiuyi_finish") 
             else 
                Describe(DescLink_TangQiuYi..": A , Tr�c th�c th�c kh�ng b�i thu nghi�u ch�i n�a r�i , ng� ...... m�t h�ng. ���c r�i , ��i t� t� ta l�n tr��c �i. Ng��i c� th� tr� v� �i n�i cho ta bi�t ph� th�n . ",1,"K�t th�c ��i tho�i /tangqiuyi_finish") 
             end 
      else 
             Describe(DescLink_TangQiuYi..": Tr�c th�c th�c n�i mang ta �i b�u tr�i th�y th��ng nga t� t� ��y , ng��i kh�ng mu�n s�o n�a/r�i , ta s� kh�ng c�ng ng��i �i . ng��i ph�i n�i c�ng Tr�c th�c th�c n�i �i . ",1,"K�t th�c ��i tho�i /no") 
       end
end

function tangqiuyi_finish()
	nt_setTask(1228,SetBit(GetTask(1228),12,1))  --����Ң���������
end

function tangqiuyi_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,800 ,1)                   			--����ǰͬ�����Ӿ��飬+800
		nt_setTask(1228,SetBit(GetTask(1228),13,1))  --�������
	end
end










-----------------------------------------------------------------��ɷ�Ի�------------------------------------------------------
function pe_baisha()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	local Uworld1228 = nt_getTask(1228)                        --ͬ�����������Ӱ�������
	local Uworld1229 = nt_getTask(1229)                        --ͬ����������ɷ�������
	local Uworld1230 = nt_getTask(1230)                        --ͬ����������ɷ�������
	local Uworld1231 = nt_getTask(1231)                        --ͬ�����������Ңˮ�������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
                   Describe(DescLink_BaiSha..": M�y ng��i ch�ng ta ��ch gi�o d�c c�ng k�t th�c. Ng��i b�y gi� c� th� �i t�m ki�m ho�ng �� �� . ",1,"K�t th�c ��i tho�i /no") 
        elseif ( partner_getpartnerlevel(6) ~= 10 ) then 
                 return 
        elseif ( Uworld1226 == 10 ) and ( Uworld1229 == 0 ) then -- b�ch s�t ch� nhi�m v� kh�ng c� x�c ph�t ? ? ? ? ? kh�ng c� �em nhi�m v� t��ng th��ng n�i cho nh� ch�i 
            Describe(DescLink_BaiSha..": B� ��o r��u ngon ng� quang ch�n <enter>" 
            .." mu�n u�ng t� b� th��ng th�c gi�c <enter>" 
            .." say n�m sa tr��ng qu�n ch� c��i <enter>" 
           .." x�a nay chinh chi�n m�y ng��i tr� v� <enter>" 
           .." l�c c�n tr� t�ng th�ch n�m m� , h�c c� nh�n u�ng Tr��ng giang , m�t thanh c�nh ki�m m�t chi�c nh� h� b� ch�y �i b�c t�c nh�n ��i m�c ng�y. ��ng ti�c nh�ng th� kia giang h� ��ch m�a gi� kh�ng c� ��ng ph�i ta , n�a ��o m�t ng��i c�ng l�o l�c . giang h� l� c�c ng��i ng��i tu�i tr� ��ch li�u , n�u l� ki�m ho�ng �� t� �� cho ng��i t�i , ta chung quy kh�ng th� g�i ng��i tay kh�ng tr� v�. ? n�i n�y <color=red> v�n trung tr�n ��ch nam ph��ng <color> c� hai n�i ��a ph��ng , chia ra k�u l� <color=red> ba ��o s� th�p , T� qu� ph� b�i ph��ng <color> . ta c� hai b�t th�nh kh� ��ch �� �� � n�i n�o �n c� , ng��i �i t�m b�n h� , t� s� h�i ch�t v�n �� tr�ch kh� kh�n ng��i . n�u ng��i c� th� qu� li�u c�i n�y hai quan , ta ch� n�y ��ch �� c�ng li�n h�c ���c k�m kh�ng ��u li�u . <enter>" 
          .."<color=green> nhi�m v� t��ng th��ng : ��ng b�n k� n�ng ' b�ng tuy�t s� dung '<color>",2, 
        "V�y ch�ng ta b�y gi� b�t ��u �i /baisha_starttask", 
       "K�t th�c ��i tho�i /no") 

       elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) and ( nt_getTask(1229) ~= 20 )then -- nhi�m v� �� ho�n th�nh 

                 Describe(DescLink_BaiSha..": ���c r�i , ta s� n�i cho ng��i bi�t m�t �t khi�u m�n :<enter>" 
               .." ��ng b�n ��ch l�y h�i th� thu�c t�nh l� c� t� ch�t ��ch :<color=red> sinh m�ng , l�c l��ng , m�nh trung , n� tr�nh , ch�y t�c , may m�n <color>; m�t thu�c t�nh ��ch t� ch�t c�ng cao � ngh�a n�n thu�c t�nh � th�ng c�p l�c t�ng l�n ph�i c�ng ��u , b�t qu� c� th� t�ng l�n ��u thi�u , <color=red> c�ng t� ch�t <color> ng��i c�a c�ng s� c� <color=red> ch�t �t b�t ��ng <color> . n�i th� d� nh� ng��i c� hai ng��i ��ng b�n sinh m�ng t� ch�t ��u l� 2 , kia khi h�n c�a th�ng c�p ��ch th�i �i�m c� th� m�t t�ng l�n 50 �i�m sinh m�ng tr� gi� , m� m�t ng��i kh�c ch� t�ng l�n 45 �i�m sinh m�ng tr� gi� . nh�ng th� n�y c� th� t�ng l�n tr� s� � ��ng b�n <color=red>10 c�p ?30 c�p ?50 c�p ?90 c�p l�c s� xu�t hi�n m�t �t ba ��ng . <color><enter>" 
               .." t�t l�m , � ch� n�y c�a ta ng��i �� h�c kh�ng t�i h�n ��u ��ch �� , �i t�m nh�ng ng��i kh�c �i . huynh �� ta h�c s�t c�ng kh�ng ph�i l� ��p ph�i , b� ph�i h� khi . ng��i n�i chuy�n v�i h�n th�i �i�m gi�ng ng�n v�n ch� qu� l�n , h�n b�y gi� c�n �ang nh� k� l�o ch� nh�n t� nh� m�ng ti�n sinh c�ng Nam Cung ti�u th� ��y . ",2," nh�n l�y ph�n th��ng /baisha_getprize","Sau n�y tr� l�i /no") 
                
       elseif ( Uworld1226 == 10 ) and ( GetBit(GetTask(1229),1 ) == 1 ) then -- m�i v�a nh�n ���c b�ch s�t ch� nhi�m v� 
              Describe(DescLink_BaiSha..": � n�i n�y v�n trung tr�n ��ch nam ph��ng c� hai n�i ��a ph��ng , chia ra k�u l� ba ��o s� th�p , T� qu� ph� b�i ph��ng . ta c� hai b�t th�nh kh� ��ch �� �� � n�i n�o �n c� , ng��i �i t�m b�n h� , t� s� h�i ch�t v�n �� tr�ch kh� kh�n ng��i . n�u ng��i c� th� qu� li�u c�i n�y hai quan , ta ch� n�y ��ch �� c�ng li�n h�c ���c k�m kh�ng ��u",1, 
             "K�t th�c ��i tho�i /no") 
      else 
             Describe(DescLink_BaiSha..": Ng��i c�n t�i n�i n�y l�m c�i g� ? x�ng x�o giang h� ? t�m ki�m ��ng b�n ? ng��i l�i bi�t giang h� l� c�i g� ��y . l�o nh�n n�i v�a v�o giang h� tu�i ng� th�c gi�c , th�c gi�c ��ch kh�ng ch� l� nh�n m�ng , c�n ng��i n�a l�ng c�a a . th�i , n�i c�ng ng��i nghe th� c� �ch l�i g� ? mu�n x�ng ��ch , chung quy ph�i m�nh x�ng qua m�i hi�u ���c. C� ch�t th�nh c�ng c�i n�y v�n trung ��ch tuy�t m�t lo�i h�ng n�m th�i qua. L�ng c�a ta c�ng �� c�ng nh�c. <enter>",1,"K�t th�c ��i tho�i /no") 
       end
   
end

function baisha_starttask()
	nt_setTask(1229,SetBit(GetTask(1229),1,1))  
	Msg2Player("B�ch s�t cho ng��i �i v�n trung tr�n ph�a nam ��ch ba ��o s� th�p c�ng T� qu� ph� b�i ph��ng t�m h�n hai v� �� �� .")
end

function baisha_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddSkill(partnerindex,0,551,1)                          --����ͬ�鿹�Լ��ܡ���ѩ���ڡ�
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ? B�ng tuy�t s� dung ?")
		nt_setTask(1229,20)
		Msg2Player("B�ch s�t kh�ng c� g� c� th� d�y ng��i, �i h�c s�t, ���ng �nh,thu nghi�u n��c v� ch�ng, c�ng ti�m n�i �� xem m�t ch�t �i . ")
	end
end

---------------------------------------------------------------�е�����������-------------------------------------------------

function pe_menshenquwan()
	if ( GetBit(GetTask(1229),1) == 1 ) and ( GetBit(GetTask(1229),2) == 0 ) then 
              Describe(DescLink_QuWan..": Ng��i l� s� ph� l�o nh�n gia �ng ta gi�i thi�u t�i . ���c r�i , ta th� tr��c n�i cho ng��i bi�t m�t �t y�u �i�m :<enter>" 
             .." <color=red> ng� h�nh thu�c t�nh <color>:<color=yellow> bi�u hi�n n�n ��ng b�n ��ch ng� h�nh , b�t ��ng ng� h�nh ��ch ��ng b�n c� th� c� v� c�ng c�ng tuy�t k� b�t ��ng , ��ng th�i c� m�t b� ph�n ��ch ph� th�m k� n�ng c�ng s� c� ng� h�nh ��ch h�n ch� ;<color><enter>" 
             .." <color=red> t� ch�t <color>:<color=yellow> quy�t ��nh ��ng b�n ��ch thu�c t�nh � th�ng c�p l�c c� th� t�ng l�n ��u thi�u ��ch tr� gi� . <color><enter>" 
             .." <color=red> tinh l�c <color>:<color=yellow> th�n b� ti�m ch�t , ng�y sau m� ra ;<color><enter>" 
            .." <color=red> t�nh t�nh <color>:<color=yellow> n�n ��ng b�n ��ch t�nh t�nh , b�t ��ng t�nh t�nh ��ch ��ng b�n ph��ng th�c h�nh ��ng c�ng s� b�t ��ng ; hi�n h�u ��ch t�nh t�nh �� th�a h�nh c� :<color><enter>" 
            .." <color=red> anh m�nh h�nh <color>:<color=yellow> s� c�ng k�ch c�ch h�n g�n nh�t ��ch ��i th� , c�ng kh�ng thi ? t� th�n t�n th��ng , c� kh� xa ��ch h�nh ��ng ph�m vi . <color><enter>" 
            .." <color=red> v� ch� h�nh <color>:<color=yellow> nh� ch�i m�c ti�u c�ng k�ch ho�c b� c�ng k�ch l�c , ��ng b�n s� d� l�y hi�p tr� , c�ng kh�ng thi ? t� th�n t�n th��ng , m�t lo�i �ang ��a nh� ph� c�n . <color><enter>" 
            .." <color=red> l�u manh h�nh <color>:<color=yellow> s� c�ng k�ch m�u thi�u ��ch ��i th� , khi t� th�n m�u �t h�n so v�i 20% l�c v�a ��nh v�a ch�y . <color><enter>" 
           .." <color=red> h�n y�u h�nh <color>:<color=yellow> s� ng�u nhi�n c�ng k�ch ��i th� , b� c�ng k�ch l�c s� v�a ��nh v�a ch�y , sinh m�ng �t h�n so v�i 20% l�c s� h�n ��u ��ch n� tr�nh . <color><enter>" 
           .." ���c r�i , bi�t r� nh�ng th� n�y sau n�y , ng��i t�i tr� l�i ta <color=red> ba <color> v�n �� , ��p ��ng r�i m�i c� th� qu� ta ��y quan . ",2,"Tr� l�i v�n �� /quwan_problem","Tr��c chu�n b� m�t h�i th� �i /no") 
         elseif ( GetBit(GetTask(1229),1 ) == 1 ) and ( GetBit(GetTask(1229),2) == 1) and ( GetBit(GetTask(1229),3) ~= 1) then 
           Describe(DescLink_QuWan..": ���c r�i , ng��i � ��y ta ch� n�y ��ch h�c t�p �� qu� quan . nh�n l�y t��ng th��ng c�a ng��i �i . ",2,"Nh�n l�y ph�n th��ng /quwan_getprize","Sau n�y tr� l�i /no") 
            elseif ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) then 
       Describe(DescLink_QuWan..": ���c r�i , ng��i t� ta h�a thanh m� n�i n�y c�ng h�c kh�ng t�i h�n ��u ��ch �� . tr� v� t�m s� ph� l�o nh�n gia �ng ta �i. ",1,"K�t th�c ��i tho�i /no") 
           else 
         Describe(DescLink_QuWan..": Ta d�c l�ng � n�i n�y trong th�p t�m ki�m th��ng c� ��ch b�o b�i qu� k�nh , h�i l�u kh�ng c� tr� v� �i t�m s� ph�. Ng��i th�y l�o nh�n gia �ng ta , xin m�i thay ta v�n an . c�n c� Thanh nhi ...... n�ng , ai , t�nh  ch�n , ng��i �i �i . ",1,"K�t th�c ��i tho�i /no") 
     end
end

function quwan_problem()
	partner_edu(3,30,66,3,1229,2,1,9)
end

function quwan_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,2100,1)                   			--����ǰͬ�����Ӿ��飬+2100
		nt_setTask(1229,SetBit(GetTask(1229),3,1))  
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

--------------------------------------------------------------- Ů����л���--------------------------------------------------

function pe_xieqinger()
	if ( GetBit(GetTask(1229),1) == 1) and ( GetBit(GetTask(1229),4) == 0) then 
             Describe(DescLink_XieQingEr..": Ai , m� a , �� cho n� nhi h�i th� t�i c�ng ng��i �i . <enter>" 
        .." ng��i l� ai ? nga , l� s� ph� l�o nh�n gia �ng ta �� cho ng��i t�i . ���c r�i , ng��i th� tr� l�i ��i v�i ta ba v�n �� . <enter>",2,"Tr� l�i v�n �� /xieqinger_problem","Tr��c chu�n b� m�t h�i th� �i /no") 
        elseif ( GetBit(GetTask(1229),1 ) == 1 ) and ( GetBit(GetTask(1229),4) == 1) and ( GetBit(GetTask(1229),5) ~= 1) then 
             Describe(DescLink_XieQingEr..": Ng��i � ��y ta ch� n�y ��ch h�c t�p �� qu� quan . nh�n l�y t��ng th��ng c�a ng��i �i . ",2,"Nh�n l�y ph�n th��ng /xieqinger_getprize","Sau n�y tr� l�i /no") 
        elseif ( GetBit(GetTask(1229),3) == 1) and ( GetBit(GetTask(1229),5) == 1 ) then 
            Describe(DescLink_XieQingEr..": Ng��i t� ta c�ng s� huynh n�i n�y c�ng h�c kh�ng t�i h�n ��u ��ch �� . tr� v� t�m s� ph� l�o nh�n gia �ng ta �i . ",1,"K�t th�c ��i tho�i /no") 
       else 
           Describe(DescLink_XieQingEr..": ��ng v�y , m� ta l� m�t qu� ph� , c�i n�y ch�ng l� ch�nh l� nh�ng nam nh�n kia khi d� ta l� do ? nh�ng n�m n�y n�u nh� kh�ng c� s� ph� , s� huynh , ta c�ng qu� kh�ng ng�ng �i ��ch . ",1," K�t th�c ��i tho�i /no") 
        end
end

function xieqinger_problem()
	partner_edu(3,30,66,3,1229,4,1,10)
end

function xieqinger_getprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,2100,1)                   			--����ǰͬ�����Ӿ��飬+2100
		nt_setTask(1229,SetBit(GetTask(1229),5,1))  
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end

-----------------------------------------------------------------��ɷ�Ի�-----------------------------------------------------
function pe_heisha()

	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	local Uworld1228 = nt_getTask(1228)                        --ͬ�����������Ӱ�������
	local Uworld1229 = nt_getTask(1229)                        --ͬ����������ɷ�������
	local Uworld1230 = nt_getTask(1230)                        --ͬ����������ɷ�������
	local Uworld1231 = nt_getTask(1231)                        --ͬ�����������Ңˮ�������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
            Describe(DescLink_HeiSha..": m�y ng��i ch�ng ta ��ch gi�o d�c c�ng k�t th�c . ng��i b�y gi� c� th� �i t�m ki�m ho�ng �� �� . ",1,"K�t th�c ��i tho�i /no") 
            elseif ( partner_getpartnerlevel(7) ~= 10 ) then 
           return 
       elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 0 ) then -- h�c s�t ch� nhi�m v� kh�ng c� x�c ph�t ? ? ? ? ? kh�ng c� �em nhi�m v� t��ng th��ng n�i cho nh� ch�i 
              Describe(DescLink_HeiSha..": n�u nh� l�o t� sinh ra s�m m�y n�m , �� s�m ra tr�n �i gi�t quang kim ch� ��p ��n nh� n��c , n�i n�o ? ��n c�c ng��i c�i n�y gi�p ti�u qu� . b�y gi� l�o l�c , ch� c� th� n�c nu�i t�t h�n v� s� , c�ng coi l� qu�c gia ra m�t ph�n l�c , chu�c chu�c l�c tu�i c�n tr� ph�m qu� l�i �i . <enter>" 
            .." ki�m ho�ng �� �� ? c�i �� t�c ti�u t� , l�i t�i ki�m l�o phu ��ch ti�n nghi . ng��i n�u t�i , c�ng kh�ng th� �� cho ng��i tay kh�ng tr� v� . h�n l� mu�n cho ��ng b�n c�a ng��i t�i h�c l�o phu ��ch tuy�t k� :<color=red> nam minh ba �o�n k�ch <color> . mu�n h�c c� th� , l�o phu c�i n�y ? v� c�ng chi�u s� bi�n h�a ��u b�ng , m�i m�t chi�u ��u �n gi�u v� c�ng lo�i bi�n h�a , �m h�p tinh �� . ng��i mu�n h�c l�i c�a ch� c� th� �em ba �o�n k�ch ph�n h�y �i th�nh ba t�ng th� , tr�c t�ng d�y cho ng��i . h�c ph�i kh�ng h�c ? <enter>" 
             .."<color=green> nhi�m v� t��ng th��ng : ��ng b�n k� n�ng ' nam minh ba �o�n k�ch '<color>",2, 
                "D� nhi�n mu�n h�c /heisha_starttask", 
           "K�t th�c ��i tho�i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 10 ) then -- m�i v�a nh�n ���c h�c s�t ch� nhi�m v� 
           Describe(DescLink_HeiSha..": �i t�m �� �� c�a l�o phu c�a ��i tho�i nha , ng��i ng��i b�ng ��a ngu xu�n ��y ? ",1, 
         "K�t th�c ��i tho�i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 12 ) then -- h�c t�p ba �o�n k�ch nhi�m v� �� ho�n th�nh 
          Describe(DescLink_HeiSha..": d�/� , k� n�ng c�ng �� quen thu�c �i . ���c r�i , ta s� n�i cho ng��i bi�t m�t �t khi�u m�n , ��ng b�n ��ch k� n�ng chia l�m h�i th� nh�m m�y lo�i :<enter>" 
           .." <color=yellow>a) V� c�ng k� n�ng : ��ng b�n d�ng �� c�ng k�ch ��ch nh�n chi�u th�c , th�ng qua th�ng c�p ��t ���c ;<enter>" 
         .." b) N�m ph�ng k� n�ng : ��i v�i ph� b�ng l�i h�a ��c n�m lo�i kh�ng t�nh ti�n h�nh th�m ���c ��ch k� n�ng , th�ng qua l�m gi�o d�c nhi�m v� ��t ���c ;<enter>" 
         .." c) Ph� th�m k� n�ng : c�c lo�i th�m ���c c�ng ph� tr� c�ng v�i m�t �t ��c th� k� n�ng , th�ng qua k� n�ng s�ch c�ng k�ch t�nh nhi�m v� ��t ���c ;<enter>" 
         .." d) Tuy�t k� : th�ng qua k�ch t�nh nhi�m v� ��t ���c ;<enter>" 
         .." t�t l�m , c�ng t�n khang ng��i. B�y gi� �� d�y cho ng��i �ang l�m gi�o d�c nhi�m v� ��ng b�n nam minh ba �o�n k�ch !<color>",2,"Nh�n l�y ph�n th��ng /heisha_giveprize1","Sau n�y tr� l�i /no") 

      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 13 ) then -- �� h�c ���c ba �o�n k�ch , b�t ��u h�i th� c� giai �o�n ��ch gi�o d�c 
         Describe(DescLink_HeiSha..":���c r�i, nam minh ba �o�n k�ch �� d�y cho ng��i, nh� v�y ng��i bi�t nh�n h�i th� t�i ph�i nh� th� n�o s� d�ng c�i n�y ph� th�m k� n�ng trung ��ch c�ng k�ch k� n�ng ? ? �� cho ta t�i n�i cho ng��i bi�t. <enter>" 
         .." nh� th� n�o , b�y gi� bi�t �i . b�y gi� �i b�n trong bao c�t n�i �� luy�n t�p m�t h�i th� c�ng k�ch ph��ng ph�p �i. Sau n�y t�i t�m ta n�a . <color=red> nh� , ng��i ph�i t� m�nh t� m�nh �i ��nh , ��ng b�n c�a ng��i �ang gi�o d�c nhi�m v� trung , h�n v�n ch�a c� ho�n to�n luy�n th�nh c�ng phu , ��nh bao c�t l� kh�ng c� hi�u qu� ��ch . <color><enter>",1,"K�t th�c ��i tho�i /heisha_starttask3") 
      elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 14 ) then 
             Describe(DescLink_HeiSha..": b�y gi� �i b�n trong bao c�t n�i �� luy�n t�p m�t h�i th� c�ng k�ch ph��ng ph�p �i. sau n�y t�i t�m ta n�a . <enter>",1,"K�t th�c ��i tho�i /no") 
             elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 15 ) then -- bao c�t �� �� k�ch ho�n , mu�n ph�t ra t��ng th��ng 
            Describe(DescLink_HeiSha..": Ng��i bao c�t c�ng ��nh xong r�i. R�t t�t , b�y gi� t��ng th��ng cho ng��i m�t quy�n nam minh ba �o�n k�ch ��ch c�p ba k� n�ng s�ch. L�y ���c t��ng th��ng sau s� c�ng ta ��i tho�i , ta c�n c� l�i n�i. ",2," Nh�n l�y ph�n th��ng /heisha_giveprize2","Sau n�y tr� l�i /no") 

     elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 16 ) then -- �� thu ���c ba �o�n k�ch ��ch k� n�ng s�ch 
         Describe(DescLink_HeiSha..":<color=yellow> b�y gi� d�y ng��i cu�i c�ng m�t ch�t �� . ��ng b�n ��ch v� c�ng k� n�ng l� d�ng �� thu�n th�c t�i th�ng c�p ��ch , m� nh�ng th� kh�c k� n�ng to�n b� mu�n th�ng qua s� d�ng h� �ng ��ch k� n�ng s�ch nh�c t�i th�ng . n�i n�y c�n ch� � m�t �i�m , n�u nh� ph� th�m k� n�ng c� v� c�ng k� n�ng , nh� v�y c�n th�ng qua s� d�ng k� n�ng s�ch t�ng l�n c�p b�c m� kh�ng ph�i l� �� thu�n th�c . k� n�ng s�ch ��ch t�ng l�n quy t�c l� : ng��i ch� c� th� h�c t�p so ng��i mu�n t�ng l�n k� n�ng tr��c m�t c�p b�c cao 1 c�p ��ch k� n�ng s�ch . t� nh� ; hi�n h�u k� n�ng v� 6 c�p , ng��i ch� c� th� h�c t�p 7 c�p ��ch n�n k� n�ng s�ch �em n�n k� n�ng t�ng l�n t�i 7 c�p , kh�ng th� v��t c�p h�c t�p . <color><enter>" 
        .." ���c r�i , ta ch� n�y �� kh�ng c� g� nh�ng d�y cho ng��i li�u. ��u b�o tr�ng , �i nh�ng ng��i kh�c n�i �� nh�n m�t ch�t �i . ",1,"K�t th�c ��i tho�i /heisha_finishtask") 
     else 
       Describe(DescLink_HeiSha..": C�y kh�i, l�o ch� nh�n v� ch�ng ch�t � ��i m�c n�m �y , l�o t� li�n d�i ��n c�i n�y v�n trung tr�n nh� trong qu� ��m cho ra �i�u ��ch cu�c s�ng . nghe n�i bay V�n nhi b� c�u nh�t ��ch kim qu�c ng�y nh�n t�c m�t ch��ng ��nh h�i th� s�n ti�n , l�c �y kh�c ��n c�i �� th��ng t�m kia . g�n nh�t l�i nghe n�i h�n kh�ng c� ch�t , c�n t��ng l� li�u c�i g� �i�u v� l�m kh�ch s�n ��ch ��u m�c , ho khan , ��a nh� n�y c�ng kh�ng t�i xem m�t ch�t ta ��y , h�n h�c th�c th�c c�ng tu�i m�t x�p d�y n�a r�i . nh� n�m �� khi�ng h�n �u�i lang th�i �i�m c��i c�ng con g� con t�a nh� , b�y gi� n�a g�nh ch� n�nh ph�i �p v� ta ��y b� vai l�c . <enter>",1,"K�t th�c ��i tho�i /no") 
end
   
end

function heisha_starttask()
	Describe(DescLink_HeiSha..":Ch�o ! L�o gia t� ta ch�nh l� th�ch ng��i s�ng kho�i. ? ta sau l�ng c�i n�y phi�n gi�o v� tr�ng trong c� hai m��i t�n tinh nhu� v� s� �ang tu h�nh , trong b�n h� <color=red> c� m�t ng��i <color> tr�n ng��i c�a mang theo l�o phu ��ch ba �o�n k�ch b� t�ch . ng��i �em ng��i kia <color=red> t�m ra <color> , b�t ���c b� t�ch t�i t�m ta , ta s� d�y cho ng��i tinh kh�ng chi nam minh ba �o�n k�ch . ng��i th�y kh� nghi ��ch li�n c�ng h�n ��i tho�i , th�m th�nh h� th�t , t�ng c� th� t�m t�i ��ch.",1,"K�t th�c ��i tho�i /heisha_starttask2")
end

function heisha_starttask2()
	local Uworld1235 = random(10,20)
	nt_setTask(1235,Uworld1235)
	nt_setTask(1230,10)
	Msg2Player("L�o gia t� �� cho ng��i t� gi�o v� tr�ng t�m ra mang theo h�n b� t�ch ��ch �� �� t�i .")
end

function heisha_starttask3()
	Msg2Player("L�o gia t� �� cho ng��i � tr��ng v� tr�ng trong ��nh bao c�t. xem ra kh�ng ��nh nh�t ��nh s� l�n l� ��ng kh�ng ���c k�m .")
	nt_setTask(1230,14)  --��2�׶δ�ɳ��
end

function heisha_giveprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddSkill(partnerindex,2,621,2)                          --����ͬ�鸽�Ӽ��ܡ���ڤ���λ���
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ? nam minh ba �o�n k�ch ?")
		nt_setTask(1230,13)   
		Msg2Player("Ng��i thu ���c nam minh ba �o�n k�ch. C� th� s� c�ng l�o gia t� ��i tho�i.")
	end
end

function heisha_giveprize2()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		AddItem(6,1,884,3,0,0)												--����ͬ�鸽�Ӽ��ܡ���ڤ���λ���
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ? nam minh ba �o�n k�ch ? ��ch th� 3 c�p k� n�ng s�ch")
		PARTNER_AddExp(partnerindex,2600,1)                   			--����ǰͬ�����Ӿ��飬+2600
		nt_setTask(1230,16)     
		Msg2Player("Ng��i thu ���c nam minh ba �o�n k�ch ��ch 3 c�p k� n�ng s�ch. C� th� s� c�ng l�o gia t� ��i tho�i.")
	end
end

function heisha_finishtask()
	nt_setTask(1230,20)
	Msg2Player("Ng��i �� ho�n th�nh � h�c s�t ch� ��ch h�c t�p , c� th� �i b�ch s�t , ���ng �nh ? thu nghi�u n��c v� ch�ng c�ng ti�m n�i �� nh�n m�t ch�t.")
end

-----------------------------------------------------------��ɷ����-----------------------------------------------------

function pe_heishadizi()
	local Uworld1226 = nt_getTask(1226)
	local Uworld1230 = nt_getTask(1230)
	if ( Uworld1226 == 10 ) and ( Uworld1230 == 11 ) then 
               Describe(DescLink_HeiShaDizi..": t�t , cho ng��i m�t ph�n nho nh� � t� . ",1," Ph�t ra ph�n th��ng /heishadizi_giveprize") 
         elseif ( Uworld1226 == 10 ) and ( Uworld1230 == 10 ) then 
               Describe(DescLink_HeiShaDizi..": Ch�o , s� ph� ta �� cho ng��i ��n t�m b� t�ch. Ng��i c� th� t�m t�i ta �� l� �� m�t ta , n�u kh�ng n�i cho ng��i bi�t tr�n ng��i ta c� hay kh�ng v�y ta c�n coi l� cao nh�n. ���ng nhi�n r�i , ta l�i kh�ng th� d� d�ng n�i cho ng��i bi�t , nh� v�y ta c�n coi l� cao nh�n, cho n�n ��y , ng��i c�n tr� l�i ��i v�i ta n�i n�y <color=red> m�t ��o <color> �� m�c. Ta s� n�i cho ng��i bi�t ta r�t cu�c <color=red> c� hay kh�ng n�m gi� b� t�ch !<color>",2, 
            "Ng��i ng��i n�y th� n�o nh� v�y ��u danh ���ng a , ���c r�i b�t ��u h�i �i /heishadizi_problem", 
           "Qu� t�i tin ng��i, ta kh�ng c�n bi�t ng��i c� ph�i hay kh�ng /no" ) 
        else 
         Describe(DescLink_HeiShaDizi..": b�ng h�u , m�i �i ra m�t �t . ch�ng ta � ch� n�y luy�n t�p th��ng th�a v� thu�t , coi ch�ng ng� th��ng li�u ng��i . ",1,"K�t th�c ��i tho�i /no") 
   end
end

function heishadizi_problem()
	partner_edu(1,76,91,1,0,0,1,6) 
end

function heishadizi_geiyujiangli()
	nt_setTask(1230,11)
	Msg2Player("V� ng��i c�ng b�t k� m�t c�i n�o h�c s�t �� t� ��i tho�i , ��u ��a l�y ���c m�t ph�n ti�u ph�n th��ng .")
end

function heishadizi_giveprize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,1500,1)                   			--����ǰͬ�����Ӿ��飬+1000
		nt_setTask(1230,10)
	end
end

function heishadizi_chenggong()
	nt_setTask(1230,12)
	Msg2Player("Ng��i c� th� tr� v� �i t�m h�c s�t h�c t�p nam minh ba �o�n ��nh .")
end

---------------------------------------------------------У�䳡ɳ���Ի�--------------------------------------------------

function pe_wuchangshadai()
	local Uworld1230 = nt_getTask(1230)
	local Uworld1247 = nt_getTask(1247)
	if ( Uworld1230 == 14 ) then
		nt_setTask(1247,Uworld1247+1)
	end
	
	if ( Uworld1247 + 1 >= 30 ) and ( nt_getTask(1230) == 14 ) then
		Msg2Player("Ng��i �� th�nh c�ng n�m gi� k� n�ng ph��ng th�c c�ng k�ch , c� th� tr� v� �i t�m h�c s�t nh�n l�y ph�n th��ng .")
		nt_setTask(1230,15)
	end
end


----------------------------------------------------------��Ңˮ�Ի�-----------------------------------------------------

function pe_qiuyishui()
	local Uworld1226 = nt_getTask(1226)                        --ͬ��������񳤸������������
	local Uworld1227 = nt_getTask(1227)                        --ͬ���������ǵ�������
	local Uworld1228 = nt_getTask(1228)                        --ͬ�����������Ӱ�������
	local Uworld1229 = nt_getTask(1229)                        --ͬ����������ɷ�������
	local Uworld1230 = nt_getTask(1230)                        --ͬ����������ɷ�������
	local Uworld1231 = nt_getTask(1231)                        --ͬ�����������Ңˮ�������
	
	if ( Uworld1226 == 10 and Uworld1227 == 20 and Uworld1228 == 20 and Uworld1229 == 20 and Uworld1230 == 20 and Uworld1231 == 20) then 
             Describe(DescLink_QiuYiShui..": m�y ng��i ch�ng ta ��ch gi�o d�c c�ng k�t th�c. Ng��i b�y gi� c� th� �i t�m ki�m ho�ng �� ��.",1,"K�t th�c ��i tho�i /no") 
       elseif ( partner_getpartnerlevel(9) ~= 10 ) then 
                      return 
       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 0 ) then -- thu nghi�u n��c ch� nhi�m v� kh�ng c� x�c ph�t ? ? ? ? ? kh�ng c� �em nhi�m v� t��ng th��ng n�i cho nh� ch�i 
               Describe(DescLink_QiuYiShui..": � n�i n�y trong n�i h� phu d�y con , n�u nh� kh�ng ph�i l� h�c s�t c�i �� l�o ti�u t� ng�y ng�y mang theo m�t ��m �� k�u ��nh k�u gi�t , ch� n�nh ��u kh�ng nh� giang h� l� d�ng g� t� n�a r�i . <enter>"
             .." ng��i l� t�i h�c t�p ? n�u t�i , ta li�n �em m�nh v�n th�nh c�ng truy�n th� cho ng��i �i . ch� y�u l� c�ng ��ng b�n <color=red> tu luy�n nhi�m v� <color> h� quan ��ch . <enter>" 
             .." ��ng b�n tu luy�n nhi�m v� c� th� th�ng qua � c�c th�nh ph� ��ch tr��ng ca m�n nh�n ch� <color=red> c�u ? quy�n tr�c <color> ��t ���c. Tu luy�n nhi�m v� v� � tr� ch�i th� gi�i t�y � tr�n b�n �� l�a ch�n gi�t ��u thi�u con qu�i v�t . m�i l�n kh�i ��ng m�t tu luy�n nhi�m v� , khi sau khi ho�n th�nh kh�i ��ng m�t ng��i kh�c . m�i ng�y c� th� kh�i ��ng <color=red> n�m <color> tu luy�n nhi�m v� , kh�ng c� ��t khu h�n ch� . ng��i c� th� s� d�ng n�m t� c�ng ��a �i�m ��nh tr�ch ��ch quy�n tr�c , c�ng c� th� s� d�ng n�m b�t ��ng ��a �i�m gi�t qu�i quy�n tr�c . <color=red> ng��i c�n t�ng th�m ch� � ��a ph��ng l� : m�i ng�y nh�n ��ch nhi�m v� nh�t ��nh ph�i � ng�y �� ho�n th�nh ng�y �� ��ng , n�u b� nh�n l�m th�t b�i <color> . ���c r�i , h�y c�ng ng��i n�i nh� v�y ��u , b�y gi� ng��i �i Long v��ng thai t�m m�t g�i long t�m ��ch nam nh�n , n�i l� ta cho ng��i �i ��ch . t� h�n n�i n�y c�m n�m �i Long v��ng thai ��nh c�i c�c g�<color=red><color><enter>" 
             .."<color=green> nhi�m v� t��ng th��ng : ��ng b�n k� n�ng ' l�ng ba vi b��c '<color>",2, 
               "T�t, ta bi�t/qiuyishui_starttask1", 
              "Sau n�y tr� l�i /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 18 ) then -- nhi�m v� �� ho�n th�nh 
            Describe(DescLink_QiuYiShui..": t�t l�m , � ch� n�y c�a ta ng��i �� h�c kh�ng t�i h�n ��u ��ch �� , nh�n c�n c� c�i g� kh�c ng��i n�i �� kh�ng c� �i qua �i. Ng��i nh�n th�y ta tr��ng phu ���ng �nh , xin m�i thay ta chuy�n c�o h�n , �� cho h�n th�t t�t mang theo h�i t� , ��ng c� ng�y ch� �� m�nh th�i t�i luy�n thu�c , v� tr��ng th��ng ��ch. Ta c�i n�y s��ng �� c�m �n !",2,"Nh�n l�y ph�n th��ng /qiuyishui_prize","Sau n�y tr� l�i /no") 

       elseif ( Uworld1226 == 10 ) and ( Uworld1231 == 10 ) then -- m�i v�a nh�n ���c thu nghi�u n��c ch� nhi�m v� 
            Describe(DescLink_QiuYiShui..": Kh�ng ph�i n�i cho ng��i �i Long v��ng thai ��nh c�i c�c g� ? ? Long v��ng thai �ang � b�n �� ��ch trung h�i th� ph��ng . ",1,"K�t th�c ��i tho�i /no") 
       else 
            Describe(DescLink_QiuYiShui..": Cho ph�p ��u ng��i h�i ta v� sao �� th�y kh�i c�a ��ch ��i s� t� kh�ng l�m , c�ng c� ��a ng�c t�i ��y trong n�i t� gi� m�y th�p ni�n . a a , ���ng �nh c�i n�y ��a ng�c l� c� ph�c kh� nga . n�m �� ng�y h�i th� ��ch c� g�i trong , ta c�ng kh�ng ra tr��c ba �i ? nh�ng quay ��u l�i suy ngh� m�t ch�t , th�t m�t ch�t ��u kh�ng h�i h�n . tr�n giang h� phong tuy�t ��i , nh�ng th� kia n�m ��m ? lu�n c� ng��i ��n �ng ph�ng b�i ta �i , hu�ng chi ta c�n m�t m�c th�ch h�n , coi nh� h�n ngu n�a , c�ng l� c�a ta ph�c kh� �i . ��u n�i ng��i trong giang h� , th�n b�t do k� , c� th� �i ra ngo�i , l�o Thi�n ��i v�i ch�ng ta �� chi�u c� li�u . ",1,"K�t th�c ��i tho�i /no") 
        end
end

function qiuyishui_starttask1()
	nt_setTask(1231,10)
	Msg2Player("Thu nghi�u n��c cho ng��i �i Long v��ng thai t�m m�t g�i long t�m ��ch nam nh�n .")  
end

function qiuyishui_prize()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddSkill(partnerindex,2,629,1)                          --����ͬ�鸽�Ӽ��ܡ��貨΢����
		Msg2Player("Ch�c m�ng ng��i thu ���c ��ng b�n k� n�ng ? l�ng ba vi b� ?")
		nt_setTask(1231,20)
	end
end

--------------------------------------------------------���˶Ի�--------------------------------------------

function pe_longba()
	if ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) then 
             Describe(DescLink_LongBa..": Ng��i l� Thu t� gi�i thi�u t�i, ���c r�i . ta ch� n�y l� c� ch�t quy�n tr�c nhi�m v� , ta cho ng��i c�n k� gi�ng gi�i m�t h�i th� :<enter>" 
            .."<color=yellow> ng��i c� th� c�u ? b�t ��ng ��a ph��ng ��ch b�t ��ng gi�t tr�ch nhi�m v� , c�ng c� th� c�u ? c�ng ��a ph��ng ��ch gi�t tr�ch nhi�m v� . ng��i c� th� v� h�n c�u ? quy�n tr�c , nh�ng m�i ng�y nh�t ��u ch� c� th� kh�i ��ng c�ng ho�n th�nh 5 c�i. Quy�n tr�c nhi�m v� kinh nghi�m t��ng th��ng l� m�t m�i th�m ��ch , c�ng ch�nh l� n�i , ng��i l�m nhi�m v� c�ng ��u , l�y ���c t��ng th��ng c�ng li�n c�ng ��u . cu�i c�ng , ng�y �� l�m xong ��ch nhi�m v� ph�i nh� th�ch ��ng ng�y ��ng , n�u kh�ng v�n s� b� nh�n l�m nhi�m v� th�t b�i . <color> ch�nh l� nh� v�y ��u li�u , b�y gi� ng��i nh�n l�y m�t quy�n tr�c nhi�m v� �i l�m l�m �i . <color=red> nh� , ng��i ph�i t� m�nh t� m�nh �i ��nh , ��ng b�n c�a ng��i �ang gi�o d�c nhi�m v� trung , h�n v�n ch�a c� ho�n to�n luy�n th�nh c�ng phu , ��nh c�i c�c g� l� kh�ng c� hi�u qu� ��ch . <color>",3, 
           "��ng v�y , ta mu�n ��t ���c ��nh c�i c�c g� ��ch quy�n tr�c nhi�m v� /longba_starttask1", 
            "Ta quy�n tr�c m�t , ta mu�n n�a nh�n l�y m�t /longba_starttask1", 
            "Ta c�n l� sau n�y tr� l�i �i /no") 
        elseif ( nt_getTask(1231) == 15 ) then 
               Describe(DescLink_LongBa..": T�t l�m , ng��i qu� th�t �� l�m xong quy�n tr�c nhi�m v� , nh�n l�y t��ng th��ng c�a ng��i �i . s� c�ng ta ��i tho�i . ",2,"Nh�n l�y ph�n th��ng /longba_getprize1","Sau n�y tr� l�i /no") 
         elseif ( nt_getTask(1231) == 16 ) then 
              Describe(DescLink_LongBa..": Ng�y �em h�ng ��i ��m nhi�m v�i t� nh�n , ng��i tr� l�i tr� l�i ��i v�i ta n�m v�n �� , li�n c� th� tr� v� t�m thu c� ph�c m�nh . ",1,"K�t th�c ��i tho�i /longba_starttask2") 
         elseif ( nt_getTask(1231) == 17 ) then 
                Describe(DescLink_LongBa..": ���c r�i , ng��i �� ho�n th�nh ta ch� n�y ��ch ��i tho�i , d�n ho�n t��ng th��ng tr� v� �i t�m thu c� �i . ",1,"K�t th�c ��i tho�i /longba_getprize2") 
         elseif ( nt_getTask(1231) == 18 ) then 
                  Describe(DescLink_LongBa..": Ta ch� n�y ��ch nhi�m v� �� ho�n th�nh , ng��i tr� v� t�m thu c� �i . ",1,"K�t th�c ��i tho�i /no") 
         else 
               Describe(DescLink_LongBa..": Long n�m ? h�n l� ta h�i l�u tr��c kia m�t huynh �� . khi �� huynh �� ch�ng ta ch�n ng��i l�p ch� � tr�n giang h� x�ng ra l�n m�t c�i th�nh nghi�p , ai c� th� ngh� t�i sau �� x�y ra nh� v�y m�t m�n th�nh t�nh ��y ? ",1,"K�t th�c ��i tho�i /no") 
         end
end

function longba_starttask1()
	AddItem(6,1,829,0,0,0)
	Msg2Player("Ng��i thu ���c m�t ��nh c�i c�c g� ��ch quy�n tr�c. xin k�p th�i m� ra c�ng ho�n th�nh n�.")	
end

function longba_getprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,4000,1)                   			--����ǰͬ�����Ӿ��飬+4000
		nt_setTask(1231,16)
	end
end

function longba_starttask2()
	if ( partner_edu(5,67,91,5,0) == 10 ) then
		nt_setTask(1231,17)
	end
end

function longba_getprize1()
	if ( partner_checkdo() == 10 ) then
		local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
		PARTNER_AddExp(partnerindex,4500,1)                   			--����ǰͬ�����Ӿ��飬+4500
		nt_setTask(1231,18)
		Say("Ng��i �� ho�n th�nh nhi�m v� ch� n�y, �i nh�ng ng��i kh�c �i.",0)
	end
end
--------------------------------------------------------��������-------------------------------------------

function pe_juanzhouqidong()
	if ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243)  == 0 ) then
		nt_setTask(1243,10) --���ᱻ����
		Msg2Player("Ng��i �� kh�i ��ng ��nh c�i c�c g� 30 l�n quy�n tr�c nhi�m v� .")
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243) >= 10 and  nt_getTask(1243) < 40 ) then
		Msg2Player("Ng��i �� �ang l�m ��nh c�i c�c g� nhi�m v�, xin m�i ti�p t�c c� g�ng l�n .")
	elseif ( nt_getTask(1231) == 15 )then
		Msg2Player("Ng��i �� ho�n th�nh ��nh c�i c�c g� nhi�m v� , xin m�i �i c�ng long t�m ��i tho�i.")
	else
		Msg2Player("Th�t xin l�i, ��y l� ��c th� nhi�m v� ��o c� , ng��i c�m kh�ng c� b�t c� t�c d�ng g�.")
	end
end	

------------------------------------------------------����̨����ľ׮---------------------------------------

function pe_liangongmuzhuang()
	local Uworld1243 = nt_getTask(1243)
	if   ( nt_getTask(1231) == 15 ) then
		Msg2Player("Ng��i �� ho�n th�nh ��nh c�i c�c g� nhi�m v� , xin m�i �i c�ng long t�m ��i tho�i")
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( Uworld1243 >= 10 and  Uworld1243 < 40 ) then
		nt_setTask(1243,Uworld1243+1)
	elseif ( nt_getTask(1231) == 10 ) and ( nt_getTask(1226) == 10 ) and ( nt_getTask(1243) >= 40 ) then
		nt_setTask(1231,15)
		Msg2Player("Ng��i �� ho�n th�nh ��nh c�i c�c g� nhi�m v� , xin m�i �i c�ng long t�m ��i tho�i")
	else
		if ( GetSex() == 0 ) then
			Msg2Player("��p trai, ta ng��i kh�ng th� kh�ng o�n , nh� l�o ��nh ta ki�n ?")
		else
			Msg2Player("M� n�, ta ng��i kh�ng th� kh�ng o�n, nh� l�o ��nh ta ki�n ?")
		end
	end
end


------------------------------------------------------ţ�������ʴ���---------------------------------------
function niumanman_num1()
	niumanman_bisaijieguo(1)
end
function niumanman_num2()
	niumanman_bisaijieguo(2)
end
function niumanman_num3()
	niumanman_bisaijieguo(3)
end
function niumanman_num4()
	niumanman_bisaijieguo(4)
end
function niumanman_num5()
	niumanman_bisaijieguo(5)
end
function niumanman_num6()
	niumanman_bisaijieguo(6)
end
function niumanman_num7()
	niumanman_bisaijieguo(7)
end
function niumanman_num8()
	niumanman_bisaijieguo(8)
end
function niumanman_num9()
	niumanman_bisaijieguo(9)
end
function niumanman_num10()
	niumanman_bisaijieguo(10)
end
function niumanman_num11()
	niumanman_bisaijieguo(11)
end
function niumanman_num12()
	niumanman_bisaijieguo(12)
end

function partner_getpartnerlevel(partnerlevel)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	local NpcCount = PARTNER_Count()
	if ( NpcCount == 0 ) then
		Msg2Player("Ng��i tr��c m�t kh�ng c� b�n ��ng h�nh, kh�ng th� ti�p t�c nhi�m v� gi�o d�c. Xin m�i nh�n l�y b�n ��ng h�nh.")
		return
	elseif ( PARTNER_GetLevel(partnerindex) < partnerlevel ) then
		Msg2Player("B�n ��ng h�nh c�a ng��i ko �� "..partnerlevel.." c�p, v�n kh�ng th� l�m ta nhi�m v�")
		return
	elseif ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then
		Msg2Player("C�i n�y ��ng b�n c�ng kh�ng ph�i l� ng��i mang theo �� l�m ��ng b�n gi�o d�c nhi�m v� c�i �� b�n ��ng h�nh, xin m�i �em ch�nh x�c ��ng b�n cho g�i ra t�i .")  
		return
	elseif ( partnerstate == 0 ) then
		Msg2Player("Ng��i tr��c m�t kh�ng c� cho g�i ra ��ng b�n t�i, kh�ng th� ti�p t�c gi�o d�c nhi�m v�. xin m�i tr��c cho g�i ra l�m gi�o d�c nhi�m v� ��ng b�n .") 
		return
	else
		return 10
	end
end

function partner_checkdo()
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	local NpcCount = PARTNER_Count()
	if ( PARTNER_GetTaskValue(partnerindex, 1) ~= 1 ) then
	Msg2Player("C�i n�y ��ng b�n c�ng kh�ng ph�i l� ng��i mang theo �� l�m ��ng b�n gi�o d�c nhi�m v� c�i �� b�n ��ng h�nh, xin m�i �em ch�nh x�c ��ng b�n cho g�i ra t�i .")  
		for i=1,NpcCount do 
			if ( PARTNER_GetTaskValue(i, 1) == 1 ) then
				Msg2Player("Ng��i �ang l�m ��ng b�n gi�o d�c nhi�m v� l� th� "..i.." s� ��ng b�n . ")
			end
		end
	elseif ( NpcCount == 0 ) then
		Msg2Player("Ng��i tr��c m�t kh�ng c� b�n ��ng h�nh, kh�ng ���c nh�n th��ng. ")
	elseif ( partnerstate == 0 ) then
		Msg2Player("Ng��i tr��c m�t kh�ng c� cho g�i ra ��ng b�n t�i,  kh�ng ���c nh�n th��ng.") 
	else
		return 10
	end
end

function no()
end
