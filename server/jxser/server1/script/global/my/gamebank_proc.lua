-- Ǯׯ���� (Խ�ϰ汾) Banks function (Vietnamese version) 
-- by��Dan_Deng(2003-09-16)
-- Update: Dan_Deng(2004-01-06) ��ͳһ�����ƶ�������Ʊ���˶���
-- Update: Fanghao_Wu(2004-9-04) ����Ԫ���һ�ͭǮ����

-- Update: paul zhang(2005-09-06) ΪԽ�ϰ����޸ģ�ֻʹ����Ԫ����û�н�Ԫ������Ԫ���ɳ�ɰ���(7��)����25Сʱ��
--			ͭǮ��ʱ�����ţ�ͬʱ����һ��ͷ�ļ����ڿ��ƹ��ܵĿ�����ر�
-- Update: paul zhang(2005-12-28) ΪԽ�ϰ����޸ģ�����Խ�Ϸ���ԭ���޸ĳ�ֻʹ�ý�Ԫ����û����Ԫ�������ǽ�Ԫ���������޸�Ϊ�ɳ�ɰ���(7��)����25Сʱ��

-- Edited by peres
-- 2005/12/29 ����һ��Ԫ���� 15 ��ͭǮ�Ĺ���
-- Last edited by Giangleloi WwW.ClbGamesVN.COM
-- end;

Include("\\script\\global\\systemconfig.lua") -- ϵͳ����
--Include("\\script\\global\\yuanbao_head.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\jiaoyutasknpc.lua") 
Include("\\script\\misc\\maskfree\\event.lua")		--��������ȡ
Include("\\script\\event\\vnchristmas2006\\event.lua")	--ʥ���俨�����
Include("\\script\\global\\vn\\extpointfunc_proc.lua") --by Giangleloi

--Msg2Player("gamebank_proc-- vn")

function gamebank_proc()
	local msg = {
		"Ta mu�n r�t Ti�n ��ng/get_ingot", 
		"Ta mu�n ��i Ti�n ��ng l�y ng�y ch�i/pay_ingot",
		"Ki�m tra ta c�n g�i bao nhi�u Ti�n ��ng/show_ingot", 
		"Ta mu�n ��i kim nguy�n b�o th�nh ti�n ��ng/change_ingot_to_coin", 
		"Nh�n ti�n gh� qua th�i/no" 
	};
	local talk = "";  
	if (GetSex() == 0) then
		talk = "��ng r�i, thi�u hi�p c�n g�?";
	else
		talk = "��ng r�i, n� hi�p c�n g�?"; -- 
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if (nDate >= 20061223 and nDate <= 20270114) then
		tinsert(msg, 1, "Nh�n m�t n� mi�n ph� khi n�p th�/takeMaskFree"); 
	end;
	Say(talk, getn(msg), msg)
end
------------- ��ѯԪ�� --------------------
function show_ingot()
	local nMoney = GetExtPoint(1)
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("T�m th�i kh�ng th� r�t Ti�n ��ng! Xin li�n h� v�i nh� s�n xu�t �� gi�i quy�t!") 
		return
	end
	if (nMoney <= 0) then
		Say("Ch� ti�n trang: Kh�ch quan ch�a h� g�i k� tr�n b�o v�t g� � ��y",1,"Bi�t r�i/no") 
		return
	else
		local nCurVar = nMoney *20
		Say("<#> Kh�ch quan �ang g�i � ��y <color=green>"..nCurVar.."<color> Ti�n ��ng.",1,"Bi�t r�i/no") 
	end
end

------------- ȡԪ�� -----------------------
function get_ingot()
	if (SYSCFG_GAMEBANK_GOLDSILVER_OPEN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang �ang s�a ch�a, 2 ng�y sau h�y ��n.")  
		return
	end
	local nMoney = GetExtPoint(1)	
	if (nMoney >= 32768) then
		nMoney = 0
		Msg2Player("Ch�c n�ng b� l�i!")
		return
	end
	if CalcFreeItemCellCount() < 5 then
			Talk(1, "", "C�n �t nh�t 5 � tr�ng trong h�nh trang."); 
			return 1
	end
	if (nMoney <= 0) then					-- û����չ����
		Talk(1,"","Xin l�i! Kh�ch quan kh�ng c� g�i Ti�n ��ng t�i b�n trang!") 
		return
	else
		local nCurVar = nMoney *20
		Say("<#> Kh�ch quan �ang g�i � ��y t�ng c�ng <color=green>"..nCurVar.."<color> Ti�n ��ng, mu�n r�t ch�?", 2, "Ta mu�n r�t "..G_COIN.." Ti�n ��ng/get_ingot10", "Kh�ng r�t/no") 
	end
end

function get_ingot10()
	if (SYSCFG_GAMEBANK_SILVER_GET == nil) then -- ������~~
		print("get_silver have close, but something is wrong...");
		Msg2Player("Ch�c n�ng b� l�i!"); 
		return
	end
	
	if (GetExtPoint(1) < 1) then
		Talk(1,"","T�m th�i kh�ng th� r�t Ti�n ��ng! Xin li�n h� v�i nh� s�n xu�t �� gi�i quy�t!") 
		return
	end
	Say("Kh�ch quan c� ch�c mu�n r�t Ti�n ��ng ch�? (N�u ��ng �, xin ��ng tho�t kh�i tr� ch�i!) ", 2, "Ta ��ng �/get_ingot10ok", "Kh�ng r�t/no"); 
end

function get_ingot10ok()
	PayExtPoint(1,1)
	Msg2Player("�ang r�t Ti�n ��ng! Xin c�n tr�ng v� ��ng tho�t kh�i tr� ch�i!") 
end;

------------- ����Ԫ�� ---------------------
function pay_ingot()
	if (SYSCFG_GAMEBANK_SILVER_PAY ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang �ang s�a ch�a, 2 ng�y sau h�y ��n.") 
		return
	end
	-- Խ�ϵ���Ԫ����ƷID���½�汾�Ľ�Ԫ����ƷIDһ��
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 20) then
		Say("Ch� ti�n trang: Kh�ch quan mu�n ��i <color=green>Ti�n ��ng<color> th�nh d�ng g�?", 3,"Ta mu�n d�ng 20 ti�n ��ng ��i l�y 7 ng�y ch�i/pay_ingot_10a","Ta mu�n d�ng 20 ti�n ��ng ��i l�y 25 gi� ch�i/pay_ticket_10b","Kh�ng ��i/no")
	else
		Say("Kh�ch quan kh�ng �em theo Ti�n ��ng",1,"��ng r�i, ta qu�n mang theo/no")
	end
end

function pay_ingot_10a()
	if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- ������~~
		print("pay_silver10 have close, but something is wrong...");
		Msg2Player("Ch�c n�ng b� l�i!"); 
		return
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
	if (nCurTD >= 20) then
		if (ConsumeEquiproomItem(20,4,417,1,1)~= 1) then
			Msg2Player("Quy ��i th�t b�i!") 
			WriteLog(date("%Y%m%d %H%M%S").."\t".." T�i kho�n "..GetAccount().."\t"..GetName().."\t".." quy ��i 20 Ti�n ��ng th�nh 7 ng�y ch�i th�t b�i!")
			return
		end
		UseSilver(1,1,1)
		SaveNow(); -- �������� - immediately save 
		WriteLog(date("%Y%m%d %H%M%S").."\t".." T�i kho�n "..GetAccount().."\t"..GetName().."\t".." quy ��i 20 Ti�n ��ng th�nh 7 ng�y ch�i th�nh c�ng!")
		WriteGoldLog( GetAccount().."("..GetName()..") USE a 343 SILVER for 7 DAY CHARGE", 0, -1, 0 );
		Say("Ch� ti�n trang: Kh�ch quan �� s� d�ng <color=green>20 Ti�n ��ng<color> ��i l�y <color=red>7 ng�y ch�i<color> th�nh c�ng! Xin ki�m tra l�i!", 0)
	end
end

function pay_ticket_10b()
	if (SYSCFG_GAMEBANK_SILVER_PAY == nil) then -- ������~~
		print("pay_silver10 have close, but something is wrong...");
		Msg2Player("Ch�c n�ng b� l�i!"); 
		return
	end
	local nCurTD = CalcEquiproomItemCount(4,417,1,1)
		if (nCurTD >= 20) then
			if (ConsumeEquiproomItem(20,4,417,1,1)~= 1) then
				Msg2Player("Quy ��i th�t b�i!")
				WriteLog(date("%Y%m%d %H%M%S").."\t".." T�i kho�n "..GetAccount().."\t"..GetName().."\t".." quy ��i 20 Ti�n ��ng th�nh 25 gi� ch�i th�t b�i!")
				return
			end
			UseSilver(1,0,1)
			SaveNow(); -- ��������
			WriteLog(date("%Y%m%d %H%M%S").."\t".." T�i kho�n "..GetAccount().."\t"..GetName().."\t".." quy ��i 20 Ti�n ��ng th�nh 25 gi� ch�i th�nh c�ng!")
			WriteGoldLog( GetAccount().."("..GetName()..") USE a 343 SILVER for 25 HOURS CHARGE", 0, -1, 0 );
			Say("Ch� ti�n trang: Kh�ch quan �� s� d�ng <color=green>20 Ti�n ��ng<color> ��i l�y <color=green>25 gi� ch�i<color> th�nh c�ng! Xin ki�m tra l�i!", 0)
		end
end

------------- �һ�ͭǮ---------------------
function change_ingot_to_coin()	
--do return end
	local nSilverCount = GetItemCountEx(343);		-- Ԫ������
	if (SYSCFG_GAMEBANK_SILVER_COIN ~= 1) then
		Talk(1,"","Th�t xin l�i! Ti�n trang �ang s�a ch�a, 2 ng�y sau h�y ��n.")
		return
	end
	if (nSilverCount <= 0) then					-- û��Ԫ��
		Say("Kh�ch quan kh�ng mang theo kim nguy�n b�o?", 1, "��ng r�i, ta qu�n mang theo/no");
		return
	end
	if CalcFreeItemCellCount() < 5 then
			Talk(1, "", "Kh�ng �� 5 � tr�ng trong h�nh trang.");
			return 1
	end
	Say("Ch� Ti�n Trang: Kh�ch quan ��ng � ��i Kim Nguy�n b�o l�y ��ng ti�n sao?", 2, "��i Kim nguy�n b�o th�nh "..COIN_CHANGE_COUNT_OF_SILVER.."<#> ti�n ��ng/change_silver_to_coin", "Kh�ng ��i/no");
end

function change_silver_to_coin()
	if (SYSCFG_GAMEBANK_SILVER_COIN == nil) then -- ������~~
		print("coin_silver have close, but something is wrong...");
		Msg2Player("Ch�c n�ng b� l�i!"); 
		return
	end
	if (GetItemCountEx(343) > 0) then		
		DelItemEx(343);		
		AddStackItem(COIN_CHANGE_COUNT_OF_SILVER, 4, 417, 1, 1, 0, 0, 0 );
		UseSilver(1, 2, 1); -- ��Ʊ�һ�ΪͭǮ������ͳ��
		SaveNow(); -- ��������
		WriteGoldLog( GetAccount().."("..GetName()..") CHANGE a SILVER into "..COIN_CHANGE_COUNT_OF_SILVER.." COINS", 0, -1, COIN_CHANGE_COUNT_OF_SILVER );
		--local nSilverCount = GetItemCountEx( 343 );		-- Ԫ������
		--if( nSilverCount > 0 ) then
		--	Say( "Ǯׯ�ϰ壺����Ԫ���ѳɹ��һ���"..COIN_CHANGE_COUNT_OF_SILVER.."<#>��ͭǮ������ĺ˲顣", 2, "֪����/no", "�ٶһ�һЩͭǮ/change_coin" );
		-- Say ("banks Boss: Your ingot has been successfully converted into" .. COIN_CHANGE_COUNT_OF_SILVER .. "<#> months coins, treat groom verification.", 2, "know / no", "and then exchange some coins / change_coin "); 
		--else
		Say("Kh�ch quan �� ��i th�nh c�ng Kim Nguy�n B�o l�y "..COIN_CHANGE_COUNT_OF_SILVER.."<#> ti�n ��ng! Xin ki�m tra l�i!",0);
		-- Say ("banks Boss: Keguan change ingot out" .. COIN_CHANGE_COUNT_OF_SILVER .., 0 "<#> coins Keguan please check again!"); 
		--end
	end
end

------------ ����ͭǮ ------------------
function onAboutCoin()
	Talk( 2,"","Ǯׯ�ϰ壺���Դ�Ԫ�������껻��ͭǮ, 1 <color=yellow>Ԫ��<color>����<color=yellow>"..COIN_CHANGE_COUNT_OF_SILVER.."<color> ͭǮ��Ԫ������ͭǮ�󣬾Ͳ��ܻ�������","ͭǮ���Ե������е��̷����������챦.","�����������һ��ͭǮ�ϣ�������һ��ͭǮ�������棬���Ϊ<color=yellow>100��<color>. ������<color=yellow>Shift<color> �Լ�����������һ��ͭǮ�ϣ������뻻��Ǯ������ȷ������ɡ�!");
-- Talk (2, "", "banks boss: can be replaced with gold coins to shop, 1 <color=yellow> ingot <color> exchange <color=yellow>" .. COIN_CHANGE_COUNT_OF_SILVER .. "<color> gold coins After the switch to coins, you can not change back, "and" coins to traders can buy at various cities treasures. "," click on the left mouse button to a coins, pull coins stacked on top of another, up to . <color=yellow> 100 ? <color> <color=yellow> Shift <color> the keyboard and press the left mouse button to count the money on one coins, enter want to change, and press OK to finish. ")!; 
end
----------------------------------------
function no()
end