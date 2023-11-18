-------------------------------------------------------------------------
-- FileName		:	changge_people.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-07-04 14:17:15
-- Desc			:  	������г���������
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --���� nt_getTask ͬ���������ͻ��˵���
Include("\\script\\task\\partner\\partner_head.lua") --������ͼ�����
Include("\\script\\task\\partner\\reward\\partner_reward.lua") --�����˽���������Ľű�
Include("\\script\\task\\partner\\reward\\partner_reward2.lua") 
Include("\\script\\task\\partner\\reward\\partner_reward3.lua") 
Include("\\script\\global\\titlefuncs.lua")  --�������ĳƺŵĽű�
Include("\\script\\task\\partner\\train\\partner_changgejindi.lua")

function main()

	Describe(DescLink_ChangGeMen..": Giang h� m��i n�m gi� th�i l�, c��i d�i khi ca kh� l�m ng�t. N�m �� c�i m�n ch� hi�p ngh�a t�n t�i, qu�ng n�p thi�n h� h�o ki�t, ta tr��ng ca c�a ra sao ch� th�nh s�. Sau �� m�n ch� b� kim t�c gi�t h�i, ch�ng ta ng��i trong c�ng ch�a t�ng m�t ng�y bu�ng tha cho thi�n h� th��ng sinh v� m�y ��m nhi�m t�n s�. H�m nay tr��ng ca h�i sinh, ch�nh l� mu�n c�n ng��i trong thi�n h� m�t c�ng ��o!",7, 
                "Nh�n nhi�m v� gi�o hu�n B�n ��ng H�nh/Getpartner_education", 
                "Nhi�m v� tu luy�n B�n ��ng H�nh/Getpartner_allpractice", 
                "Nhi�m v� ��c th� B�n ��ng H�nh/Getpartner_especial", 
                "Thu� B�n ��ng H�nh/Getpartner_paymoney", 
                "S�a ��i danh hi�u ng��i ch�i/change_title", 
                "�i Tr��ng Ca M�n C�m ��a/Goto_jindichangge", 
                "Ta mu�n �i V�n Trung Tr�n c� ch�t chuy�n./Goto_townyunzhong", 
                "Ta ch�ng qua gh� th�m th�i./no")
end

function Getpartner_allpractice()
	Describe(DescLink_ChangGeMen..": Ng��i mu�n l�m g� c�ng b�n ��ng h�nh tu luy�n nhi�m v� ? ",5, 
               "Ta mu�n mua B�n ��ng H�nh tu luy�n nhi�m v�./Getpartner_practice", 
               "Ta mu�n ��ng B�n ��ng H�nh tu luy�n nhi�m v�./Getpartner_goonpractice", 
               "Ta l� t�i h�y b� B�n ��ng H�nh tu luy�n nhi�m v�./Getpartner_finishpractice", 
               "Ta mu�n t�m hi�u r� tu luy�n nhi�m v� B�n ��ng H�nh./Getpartner_knowpractice", 
               "Ta ch�ng qua gh� th�m ch�i th�i./no")
end

function Getpartner_goonpractice()
	if ( nt_getTask(1245) >=0 and nt_getTask(1245) <= 3 ) then
		reward_givetask()
	elseif ( nt_getTask(1245) == 4 ) then
		reward_givetask2()
	elseif ( nt_getTask(1245) == 5 ) then
		reward_givetask3()
	end
end

function Getpartner_knowpractice()
Describe(DescLink_ChangGeMen..":<color=yellow> Nhi�m v� b�n ��ng h�nh tu luy�n l� c�a Tr��ng Ca v� thay v� l�m di�t tr� nguy h�i m� ban b� m�t lo�t nhi�m v�. Khi ng��i mua tu luy�n quy�n tr�c sau li�n c� th� x�c ph�t �i t��ng �ng ��a ph��ng  nhi�m v� gi�t qu�i. Gi�t tr�ch quy�n tr�c tr��c m�t chia l�m <color=red>50 ch�, 100 ch�, c�ng 150 ch� <color> ba lo�i. L�c m�i b�t ��u ng��i ch� c� th� mua ���c gi�t <color=red>50<color> ch� �� th�a quy�n tr�c, h�n n�a m�i ng�y nhi�u nh�t ho�n th�nh <color=red>5<color> l�n. Ho�n th�nh sau n�y ng��i c�ng b�n ��ng h�nh ng��i s� l�y ���c <color=red> phong ph� h�i b�o <color>. ��ng th�i, theo ng��i ho�n th�nh nhi�m v� <color=red> s� l�n <color> c�ng nhi�u, c�a tr��ng ca s� cho ng��i <color=red>Thanh Long V� S� , Thanh Long Ki�m S�t<color> danh hi�u. Theo nh�ng th� n�y t� c�ch t�ng l�n, ng��i �em c� th� mua gi�t ch�t nhi�u h�n qu�i v�t quy�n tr�c, ��ng th�i m�i ng�y ho�n th�nh s� l�n c�ng �em nhi�u h�n. ��i �ng, l�y ���c h�i b�o c�ng �em c�ng l�c c�ng l�n. <color>",2,
                     "Tr� v�/Getpartner_allpractice","R�i kh�i/no")
end

function Getpartner_education()    --��������ȡͬ��Ľ�������
	Describe(DescLink_ChangGeMen..": T�t, n�u nh� ng��i ngh� l�m tho�i, nh� v�y ��n V�n Trung Tr�n sau n�y t�m ki�m Ho�ng �� �� ��i tho�i, h�n s� ch� d�n cho ng��i.",2, 
           "T�t, ta �� r� r�ng. �� cho ta �i V�n Trung Tr�n. /Goto_townyunzhong", 
           "Cho ta suy ngh� l�i ch�t/no")
end


function Getpartner_paymoney()
	Describe(DescLink_ChangGeMen..": Th�t xin l�i, nh�m l�n tinh nhu� v� s� c�n � trong khi hu�n luy�n, tr��c m�t kh�ng c� c� th� cung ng��i thu� b�n ��ng h�nh, xin m�i sau n�y tr� l�i. C�m �n. ",1," K�t th�c ��i tho�i/no")
end

function Getpartner_especial()
	Describe(DescLink_ChangGeMen..": H�c H�c, nh�ng th� kia ki�m thu�t th�n th�ng b�n ��ng h�nh c�ng kh�ng ph�i l� d� d�ng li�n c� th� ��t ���c. Ng��i c�n n�a h�c h�i kinh nghi�m, ch�t n�a tr� l�i �i. ",1,"K�t th�c ��i tho�i /no")
end

function Goto_townyunzhong()
	local i = random(8);
	local pos = {{1682,3290},{1694,3306},{1669,3320},{1655,3332},{1650,3340}};
	local j = random(5);
	if (random(2) == 1) then
		i = -i;
	end
	NewWorld(512,pos[j][1] + i,pos[j][2])   --ȥ�����򣿣���
	--blackScreen();
end

function blackScreen()
	if(GetGameTime() <= 1800) then
		Say("Quan Ph��ng �� K� : N�u nh� ng��i ��n V�n Trung Tr�n b�n �� b� �en, xin h�y v�o <enter><color=yellow>http://jx.kingsoft.com/zt1/2ye/2005/09/08/64217.shtml<color> k� ti�p th� ba t�i li�u phi�n. N�u nh� ��i v�i ��ng b�n h� th�ng c� b�t k� � ki�n c�ng � t��ng, m�i ���c <color=yellow>bbs.jx.kingsoft.com<color> ph�t bi�u.",0);
	end
end

function Getpartner_practice()
	local Name = GetName()
	Describe(DescLink_ChangGeMen..":"..Name.."��i nh�n, ng��i ngh� mua lo�i n�o tu luy�n quy�n tr�c ��y ? ",4, 
            "Gi�t qu�i 50 ch� /practice_kill50", 
            "Gi�t qu�i 100 ch� /practice_kill100", 
            "Gi�t qu�i 150 ch� /practice_kill150", 
            "Ch�t n�a ta tr� l�i/no")
end


function practice_kill50()
	if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
		Sale(110)
	elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
		Sale(113)
	elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
		Sale(116)
	elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
		Sale(119)
	elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
		Sale(122)
	elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
		Sale(125)
	elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
		Sale(128)
	end
end

function practice_kill100()
	if ( nt_getTask(1245) < 2 ) then
		Describe(DescLink_ChangGeMen..": Th�t xin l�i, ng�i tr��c m�t danh hi�u c�n kh�ng c� ��t t�i <color=red>Thanh Long V� S�<color> t�i c�nh gi�i, kh�ng c�ch n�o mua gi�t <color=red>100<color> ch� t�i quy�n tr�c. Ph�i l�y g�i ���c Thanh Long V� S�, nh�t ��nh ph�i �t nh�t � <color=red>5<color> ng�y b�n trong ho�n th�nh m�i ng�y t�t c� tu luy�n nhi�m v�. M�i ng�y t�t c� tu luy�n nhi�m v� s� l�n v� <color=red>5<color> l�n. ",2,"Tr� v�/Getpartner_practice","K�t th�c ��i tho�i/no")
	elseif ( nt_getTask(1245) >= 2 ) then
		if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
			Sale(111)
		elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
			Sale(114)
		elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
			Sale(117)
		elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
			Sale(120)
		elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
			Sale(123)
		elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
			Sale(126)
		elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
			Sale(129)
		end
	end
end

function practice_kill150()
	if ( nt_getTask(1245) < 3 ) then
		Describe(DescLink_ChangGeMen..": Th�t xin l�i, ng�i tr��c m�t danh hi�u c�n kh�ng c� ��t t�i <color=red> Thanh Long ki�m s�t <color> ��ch c�nh gi�i, kh�ng c�ch n�o mua <color=red>150<color> ch� �� th�a ��ch quy�n tr�c. Ph�i l�y g�i ���c Thanh Long ki�m s�t, nh�t ��nh ph�i �t nh�t � <color=red>20<color> ng�y b�n trong ho�n th�nh m�i ng�y t�t c� tu luy�n nhi�m v�. M�i ng�y t�t c� tu luy�n nhi�m v� s� l�n v� <color=red>5<color> l�n. ",2,"Tr� v�/Getpartner_practice","K�t th�c ��i tho�i /no")
	elseif ( nt_getTask(1245) >= 3 ) then
		if ( SubWorldIdx2ID( SubWorld ) == 1 ) then
			Sale(112)
		elseif ( SubWorldIdx2ID( SubWorld ) == 11 ) then
			Sale(115)
		elseif ( SubWorldIdx2ID( SubWorld ) == 37 ) then
			Sale(118)
		elseif ( SubWorldIdx2ID( SubWorld ) == 78 ) then
			Sale(121)
		elseif ( SubWorldIdx2ID( SubWorld ) == 80 ) then
			Sale(124)
		elseif ( SubWorldIdx2ID( SubWorld ) == 162 ) then
			Sale(127)
		elseif ( SubWorldIdx2ID( SubWorld ) == 176 ) then
			Sale(130)
		end
	end
end

function Getpartner_finishpractice()
	local Uworld1237 = nt_getTask(1237)
	local partnerindex,partnerstate = PARTNER_GetCurPartner()       --����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
	local NpcCount = PARTNER_Count()
	
	if ( NpcCount == 0 ) then
		Msg2Player("Ng��i kh�ng c� mang b�n ��ng hanh, kh�ng th� h�y nhi�m v� ?")
	end
	
	if ( Uworld1237 ~= 0 ) then
		if ( PARTNER_GetTaskValue(partnerindex, 2) ~= 0  )  then
			RemovePlayerEvent(Uworld1237) --ȡ����ʢ��
			nt_setTask(1237,0)
			PARTNER_SetTaskValue(partnerindex,2,0) 
			Msg2Player("Ng��i �� h�y b� nhi�m v� tu luy�n.")
		elseif ( PARTNER_GetTaskValue(partnerindex, 2) == 0  ) then
			local j = 0
			for i=1, NpcCount do
				if (PARTNER_GetTaskValue(i,2) ~= 0 ) then
					Msg2Player("Ng��i mang theo l�m tu luy�n nhi�m v� l� th� "..i.." s� b�n ��ng h�nh. ")
					j = j+1
				end
			end
			if ( j == 0 ) then
				RemovePlayerEvent(Uworld1237) --ȡ����ʢ��
				nt_setTask(1237,0)
				nt_setTask(1244,0)
				Msg2Player("Ng��i �� h�y b� nhi�m v� tu luy�n.")
			end
		end
	else
		Describe(DescLink_ChangGeMen..": Ng��i kh�ng c� b�t ��u tu luy�n nhi�m v�, th� n�o h�y b� ��y ?",1,"K�t th�c ��i tho�i/no")
	end
end

function no()
end
