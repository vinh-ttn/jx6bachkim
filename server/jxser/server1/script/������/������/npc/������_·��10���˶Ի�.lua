--������ ������ ·��10��ŶԻ�
--�������������񣺰����ļ�ױ
--suyu
-- Update: Dan_Deng(2003-08-10)
--ע�⣺Խ��ֻ��һ��Ԫ�����൱�����ǵ���Ԫ�������ƽн�Ԫ����ǧ��ע�⣬����� 343

function main()
	UTask_world20 = GetTask(48)
	if (CheckStoreBoxState(1) == 0 and  UTask_world20 == 1) then			-- ���������ӵ������������򸽼Ӵ�����
		Say(11256,4,"Mua /buy_addibox", "Ta ��n l�m nhi�m v� A Ph��ng/task_ring","T�m hi�u/box_help", "Kh�ng mua/no")
	elseif (UTask_world20 == 1) then
		task_ring()
	elseif (CheckStoreBoxState(1) == 0) then
		Say(11256,3,"Mua/buy_addibox", "T�m hi�u/box_help", "Kh�ng mua/no")
	else
		other_chat()
	end
end;

function task_ring()
	UTask_world20 = GetTask(48);
	if (UTask_world20 == 1) then
		Say("Mu�n mua gi�m c� n��ng �y c�a h�i m�n �? H�ng h�a c�n l�i c�a ta kh�ng nhi�u, ch� c�n l�i ��i b�ng tai v�ng n�y l� kh� r�, ch� c� 200 l��ng",2,"Mua/yes", "T�n g�u/other_chat","Kh�ng mua/no")
	end
end

function other_chat()
	Talk(3,"","Ta t� T� Xuy�n ��n, tr�n ���ng c� r�t nhi�u th� ph�,th�t l� nguy hi�m!", "Th�t kh�ng th� ng� ���c ta c� th� ��n khu v�c h� ��ng ��nh n�y m� kh�ng h� b� c��p! Ng��i th�y c� l� kh�ng?","ta nghe ng��i ta n�i m�i bi�t, � ��y kh�ng ch�u s� qu�n l� c�a quan ph�, m� t� m�t ph�i t�n Thi�n V��ng Bang g� ��, h�n g� � ��y th�t y�n b�nh!")
end

function yes()
	if(GetCash() >= 200)then
		Talk(1,"",11260)
		Pay(200);
		AddEventItem(181);
		AddNote("B�n nh�n ���c 1 ��i khuy�n tai...")
		Msg2Player("B�n nh�n ���c 1 ��i khuy�n tai.");
--		SetTask(48, 2);
	else
		Talk(1,"",11261)
	end
end;

function buy_addibox()
		local szMsg = 
		{
				"C�i r��ng n�y ���c l�m t� san h� d��i bi�n s�u, c� th� ch�a nhi�u �� ��c, h�n n�a l� n�i c�t gi� �� an to�n. V� th� gi� c� h�i ��t m�t ch�t. M�i c�i gi� <color=yellow>40 Ti�n ��ng<color>.",	--1
				"D�ng 40 ti�n ��ng �� m� r�ng r��ng/#buy_addibox_yes(40)",	--2
				"D�ng 20 ti�n ��ng �� m� r�ng r��ng/#buy_addibox_yes(20)",	--3
				"K�t th�c ��i tho�i/no",			--4
		};
		
		local nDate = tonumber(GetLocalDate("%Y%m%d"));
		
		if (nDate >= 20080202 and nDate <= 20080302) then	--���ڻ�ڼ���
			Say(szMsg[1], 2, szMsg[3], szMsg[4]);
		else
			--tinhpn 20100803: Patch Request
			Say(szMsg[1], 2, szMsg[2], szMsg[4]);
			--Say(szMsg[1], 2, szMsg[3], szMsg[4]);
		end;
				
end

function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;
	
	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	
	if (nCount < nNedCount) then
		Talk(1,"","Kh�ch quan ch�a �� ti�n! Khi n�o c� �� ti�n h�y quay l�i. ")
		return 1;
	end
	ConsumeEquiproomItem(nNedCount, 4, 417, 1, 1)
	
	WriteGoldLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName()..format("]: ���� %d ͭǮ, �õ�1����չ��.",nNedCount),-2,0,0,0);
	OpenStoreBox(1)
	
	UseSilver(1, 2, nNedCount); -- ��Ԫ���һ�ΪͭǮ������ͳ��(ֱ�����ĵ�Ԫ����Ʊ����ͭǮ�һ���ͬ����)
	SaveNow(); -- ��������
	  	
	Talk(1,"","T�t qu�! �� ti�n r�i! Ta s� l�p t�c l�p ��t r��ng! V� sau kh�ch quan ch� c�n ��n n�i c� r��ng ch�a �� c�a m�nh m� <color=yellow>r��ng m� r�ng<color> l� c� th� d�ng ���c. ")
	Msg2Player("M� r�ng r��ng th�nh c�ng!")
end


function box_help()
	str=
	{
	"<#>R��ng m� r�ng co 60 � tr�ng c� th� s� d�ng ch�a c�c v�t ph�m nh�ng kh�ng th� gi� ti�n!",
	"<#>B�n c� th� thi�t l�p m� kh�a cho r��ng h�nh! Nh�m b�o v� c�c t�i s�n c�a b�n!",
	};
	Talk(2,"",str[1],str[2]);
end
	
	
function no()
end;
