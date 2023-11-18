IncludeLib("BATTLE")
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\dailogsys\\g_dialog.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\global\\�����õ�\\�ν�����\\npc\\head.lua")
Include("\\script\\global\\�����õ�\\�ν�����\\npc\\songjin_shophead.lua")
Include("\\script\\global\\global_tiejiang.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\battles\\vngbattlesign.lua")
Include("\\script\\battles\\doi_diem_tong_kim.lua")
Include("\\script\\global\\pgaming\\shop\\shoptongkim\\banshoptongkim.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

battlesNpcSongJinShop = "<color=Orange>Qu�n nhu quan<color>: "
battlesNpcSongJinShopExChangeExp = 1234.5679

tbLimit_Exp = {
						[0] = 700000,
						[3] = 800000,
						[4] = 1000000, 
					};
YUEWANGHUN_STONECOUNT = 100
nState = 0;

function main(sel)
	local nWorld, _, _ = GetWorldPos()
	nOldSW = SubWorld
	SubWorld = SubWorldID2Idx(325)
	if (nState == 0) then
		bt_setnormaltask2type()
		nState = 1;
	end
	battlemapid = BT_GetGameData(GAME_MAPID);
	if (battlemapid <= 0) then
			maintalk()
			return 
	end
	SyncTaskValue(747);
	battlemap = SubWorldID2Idx(BT_GetGameData(GAME_MAPID));
	if (battlemap < 0) then
		Msg2Player("error"..battlemap)
		return
	end
	
	tempSubWorld = SubWorld;
	SubWorld = battlemap
	state = GetMissionV(MS_STATE);
	
	if (state == 0 or state == 1) then
		maintalk()
		SubWorld = tempSubWorld;
		return
	else
		Talk(1,"",battlesNpcSongJinShop.."Ph�a tr��c chi�n tr��ng �ang trong giai �o�n tranh �o�t quy�t li�t, c�c v� vui l�ng tr�nh �i m�t x�u.")
		SubWorld = tempSubWorld;
		return
	end;
	SubWorld = nOldSW;	
end;

function no()
end;

function jinshop_sell()
		Sale(98, 4);
		-- Sale(196, 4);
end;

function maintalk()
	local nNpcIndex = GetLastDiagNpc();
	local szNpcName = GetNpcName(nNpcIndex)
	if NpcName2Replace then
		szNpcName = NpcName2Replace(szNpcName)
	end
	local tbDailog = DailogClass:new(szNpcName)
	
	G_ACTIVITY:OnMessage("ClickNpc", tbDailog)
	local battlesSongJinszTitleMsg = battlesNpcSongJinShop.."N�i ��y l� chi�n tr��ng, ng��i c�n ta gi�p c�i g�?"
	local AddOption = {}
	if ShopTongKim == 0 and ScriptShopTongKim == 1 then
	tinsert(AddOption, "Ta mu�n mua ��o c�/shoptongkim")
	elseif ShopTongKim == 0 then
	else
	tinsert(AddOption, "Ta mu�n mua ��o c�/jinshop_sell")
	end
	tinsert(AddOption, "T�i h� mu�n quy ��i �i�m T�ch l�y sang ph�n th��ng/#SJ_PointExChange:Main()")
	tinsert(AddOption, "V� song m�nh t��ng chi�n tr��ng/wushuangmengjiang")
	tinsert(AddOption, "S� d�ng nh�c v��ng h�n th�ch luy�n nh�c v��ng ki�m/yuewang_want")
	tinsert(AddOption, "K�t th�c ��i tho�i/Oncanel")
	Say(battlesSongJinszTitleMsg, getn(AddOption), AddOption)
end

function xunzhang_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "Quan TiOp Li�u : ch� ca 50 c�p tr� l�n ng��i ch�i m�i ca th� nh�n l�y huy ch��ng");
		return 0
	elseif ( GetExtPoint(0)==0 ) then
		Talk( 1, "", "Quan TiOp Li�u : Ch� ca �� sung tr~ gi� ng��i ch�i m�i ca th� nh�n l�y huy ch��ng");
		return 0
	elseif ( CalcFreeItemCellCount() < 1 ) then
		Talk( 1, "", "Xin m�i chu�n b~ m�t ch� tr�ng t�i �� 1 c�i huy ch��ng");
		return 0;
	else
		Say("Quan TiOp Li�u : Ng��i ngh� d�ng 500 tUch ph�n ��i l�y huy ch��ng sao?", 2,"��i l�y huy ch��ng/xunzhang_do", "Kh�ng mu�n/no");
	end
end

function xunzhang_do()
	if nt_getTask(747) < 500 then
		Say("�i�m tUch ph�n ch�a �� 500, kh�ng th� nh�n l�y huy ch��ng",0);
		return 0;
	end
	nt_setTask(747, floor(nt_getTask(747) - 500));
	local nidx = AddItem(6,1,1412,1,0,0) 
	WriteLog(format("[GetZhanGongXunZhang]\t date:%s \t Account:%s \t Name:%s \t GetItem:%s Del:500SongJinJiFen\t",GetLocalDate("%Y-%m-%d %H:%M:%S"),GetAccount(),GetName(),GetItemName(nidx)));
	Say("�� th�nh c�ng nh�n l�y m�t huy ch��ng",0);
end

function exp_exchange()
	if( GetLevel() < 40 ) then
		Talk( 1, "", "<color=Orange>Qu�n nhu quan<color>: Ng��i kh�ng ca ��t t�i 40 c�p, kh�ng th� tham gia.");
	else
		if (GetTiredDegree() == 2) then
			Say(battlesNpcSongJinShop.."H�m nay ta m�t r�i, khi kh�c h�y ��n nh�!",0);
		else
			local tbOpt = 
			{
				"500 �i�m t�ch l�y/#wantpay(500)", 
				"1000 �i�m t�ch l�y/#wantpay(1000)",
				"2000 �i�m t�ch l�y/#wantpay(2000)",
				"5000 �i�m t�ch l�y/#wantpay(5000)",
				"T�t c� �i�m t�ch l�y/#wantpay(9999)",
				"Kh�ng mu�n ��i/no"
			}
			Say(battlesNpcSongJinShop.."Ng��i mu�n ��i bao nhi�u �i�m t�ch l�y th�nh kinh nghi�m", getn(tbOpt), tbOpt);
		end;
	end
end;


function wantpayex(mark, nStep)
	
	if GetLevel() < 120 then
		Talk(1, "", format("Y�u c�u c�n %d c�p tr� l�n m�i ca th� ��i l�y.", 120))
		return 
	end
	
	if PlayerFunLib:CheckTaskDaily(2645, 1, "Nh�n th��ng m�i ng�y ch� ca th� nh�n l�y m�t l�n.", "<") ~= 1 then
		return
	end
	local nDate = tonumber(GetLocalDate("%Y%m%d"))
				
	if gb_GetTask("songjin butianshi2009", 1) ~= nDate then
		gb_SetTask("songjin butianshi2009", 1, nDate)
		gb_SetTask("songjin butianshi2009", 2, 0)
	end
	
	if gb_GetTask("songjin butianshi2009", 2) >= 10 then
		Talk(1, "", "M�i ng�y m�i ph�c v� khU, nhanh nh�t m��i ng��i m�i ca th� ��i l�y ph�n th��ng.")
		return 
	end
	
	if( mark > nt_getTask(747) ) then
		Say("Quan TiOp Li�u : Ng�i tUch l?y �i�m ch�a ��, mu�n ��t ���c kinh nghi�m tr~ gi�.", 1, "Kh�ng/no");
	elseif (mark == 0) then
		Say("Quan TiOp Li�u : Kh�ng ca kinh nghi�m tr~ gi� c�n mu�n ��i h�c h�i kinh nghi�m nghi�m tr~ gi� a, th�t l� hoang ���ng.", 1, "Kh�ng/no");
	else
		local level = GetLevel();
		local bonus = bt_exchangeexp(level, mark)
		
		local tbItem = {szName="B� thi�n th�ch to�i phiOn ( trung ))", tbProp={6, 1, 1309, 1, 0, 0}}
		if nStep == 1 then
			if (expchange_limit(mark) == 1) then
				nt_setTask(747, floor(nt_getTask(747) - mark))
				AddOwnExp( bonus);
				Add120SkillExp(bonus);
				
				tbAwardTemplet:GiveAwardByList(tbItem, "MidAutumn,GetItemFromSongjin")
				gb_AppendTask("songjin butianshi2009", 2, 1)
				PlayerFunLib:AddTaskDaily(2645, 1)	
				Msg2Player("<#>Ng�i �� ti�u hao"..mark.."<#>tUch �i�m, ��i l�y"..bonus .."<#>kinh nghi�m.");
				WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]:�� ti�u hao"..mark.."tUch �i�m, ��i l�y"..bonus.."kinh nghi�m.");
			end
			
			
			
		elseif nStep == 0 then
			Say("Quan TiOp Li�u : Ng�i ca th� ��i l�y"..bonus.."�i�m kinh nghi�m, x�c �~nh ��i l�y ph�i kh�ng?", 2, "��i v�i ta ph�i thay ��i/#wantpayex("..mark..",1"..")", "Uh, �� cho ta suy ngh� l�i m�t ch�t/no")	
		end
		
	end	
end

function wantpay(mark)
	if (mark == 9999) then		
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(battlesNpcSongJinShop.."Ng�i ch�a �� �i�m, kh�ng th� ��i.", 0);
	elseif (mark == 0) then
		Say(battlesNpcSongJinShop.."�� kh�ng c� �i�m t�ch l�y m� c�ng ��i kinh nghi�m, th�t l� hoang ���ng.", 0);
	else
		-- local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = battles_SongJinExChangeExp(mark)
		Say(battlesNpcSongJinShop.."Ng�i c� th� ��i <color=yellow>"..mark.."<color> �i�m t�ch l�y l�y <color=green>"..floor(bonus).."<color> �i�m kinh nghi�m kh�ng th� c�ng d�n, x�c ��nh ��i ph�i kh�ng?", 2, "��ng � ��i/#paymark("..mark..")", "Uh, �� cho ta suy ngh� l�i m�t ch�t/no")
	end	
end

function paymark(mark)
	if (mark == 9999) then
		mark = nt_getTask(747)
	end
	
	if( mark > nt_getTask(747) ) then
		Say(battlesNpcSongJinShop.."Ng�i ch�a �� �i�m, kh�ng th� ��i.", 0);
	elseif (mark == 0) then
		Say(battlesNpcSongJinShop.."�� kh�ng c� �i�m t�ch l�y m� c�ng ��i kinh nghi�m, th�t l� hoang ���ng.", 0);
	else
		local level = GetLevel();
		-- local bonus = bt_exchangeexp(level, mark)
		local bonus = floor(battles_SongJinExChangeExp(mark))
		if (expchange_limit(mark) == 1) then
			nt_setTask(747, floor(nt_getTask(747) - mark))
			AddOwnExp( bonus);
			-- Add120SkillExp(bonus);
			Msg2Player("Ng�i �� t�n "..mark.."<#> �i�m, ��i l�y "..bonus .." kinh nghi�m.");
			WriteLog(date("%Y-%m-%d %H:%M:%S").." "..GetAccount()..", ["..GetName().."]: ?�����"..mark.."�i�m, ��i l�y"..bonus.." kinh nghi�m.");
		end
	end
end


function expchange_limit(cost)
	local nNumber = tbVNG2011_ChangeSign:GetTransLife()	
	local Limit_Exp = tbLimit_Exp[nNumber]
	if ( (nt_getTask(1017) + cost) <= Limit_Exp) then
		nt_setTask(1017, nt_getTask(1017) + cost)
		return 1
	else
		Say("Quan TiOp Li�u : kh�ng mu�n nh� v�y tham lam, trong v�ng m�t tu�n l� kh�ng th� ��i l�y v��t qua<color=red>"..Limit_Exp.."<color> tUch �i�m kinh nghi�m", 0)
		return -1
	end
end

function nt_setTask(nTaskID, nTaskValue)
	SetTask(nTaskID, nTaskValue)
	SyncTaskValue(nTaskID) 
end

function nt_getTask(nTaskID)
	return GetTask(nTaskID)
end

function person_change()
	Say("Quan TiOp Li�u : ? <color=yellow> ��ng h�ng b�nh lu�n b�ng th��ng <color> ��ng h�ng <color=yellow> 5 t�n <color> th� nh�t nh� ch�i �em ��t ���c ��c bi�t danh hi�u c�ng uy phong h�nh t��ng", 3, "Xem t�ng kim nam nh�n v�t h�nh t��ng/title_male","Xem t�ng kim n� nh�n v�t h�nh t��ng/title_female","Kh�ng mu�n xem !/no" )
end;

function title_male()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy208\\enemy208_at.spr>T�ng kim nam nh�n v�t h�nh t��ng <link> � ��ng h�ng b�ng tr�n ca 5 c� t�n �Uch nam nh�n v�t b�nh lu�n �em ��t ���c t��ng �ng h�nh t��ng", 1, "Kh�ng/no" );
end

function title_female()
	Describe("<link=image:\\spr\\npcres\\enemy\\enemy207\\enemy207_at.spr>T�ng kim n� nh�n v�t h�nh t��ng <link> � ��ng h�ng b�ng tr�n ca 5 c� t�n �Uch n� nh�n v�t b�nh lu�n �em ��t ���c t��ng �ng h�nh t��ng", 1, "Kh�ng/no" );
end

function effect_aura()
	Say("Quan TiOp Li�u : � <color=yellow> ��ng h�ng b�nh lu�n b�ng th��ng <color> ��ng h�ng <color=yellow>5 t�n <color> ng��i th� nh�t v�t t��ng ��t ���c ��c bi�t v�ng tr�n ��c hi�u", 6, "Xem �~nh n��c Nguy�n so�i ��c hi�u/aura_dingguo","Xem an bang ��i t��ng qu�n ��c hi�u/aura_anbang","Xem phi�u k� t��ng qu�n ��c hi�u/aura_biaoji","Xem trong ch�n v� l�m lang ��c hi�u/aura_yulin","Xem chi�u v? gi�o �y ��c hi�u/aura_zhaowu","Kh�ng!/no" );
end

function aura_dingguo()
	Describe("<link=image:\\spr\\skill\\others\\title_dg.spr>�~nh n��c Nguy�n so�i ��c hi�u <link> nh�n v�t b�nh lu�n xOp h�ng th� nh�t nai ��t ���c v�ng tr�n ��c hi�u", 1, "Kh�ng/no" );
end

function aura_anbang()
	Describe("<link=image:\\spr\\skill\\others\\title_ab.spr>An bang ��i t��ng qu�n ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th� hai �em ��t ���c v�ng tr�n ��c hi�u", 1, "Kh�ng/no" );
end

function aura_biaoji()
	Describe("<link=image:\\spr\\skill\\others\\title_bj.spr>Phi�u k� t��ng qu�n ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th� ba nai ��t ���c v�ng tr�n ��c hi�u", 1, "Kh�ng/no" );
end

function aura_yulin()
	Describe("<link=image:\\spr\\skill\\others\\title_yl.spr>Trong ch�n v� l�m lang ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th� t� nai ��t ���c v�ng tr�n ��c hi�u", 1, "Kh�ng/no" );
end

function aura_zhaowu()
	Describe("<link=image:\\spr\\skill\\others\\title_zw.spr>Chi�u v? gi�o �y ��c hi�u <link> nh�n v�t b�nh lu�n ��ng h�ng th� n�m nai ��t ���c v�ng tr�n ��c hi�u", 1, "Kh�ng/no" );
end

function yuewang_want()
	Say(battlesNpcSongJinShop.."T�p trung tinh hoa c�a Nh�c v��ng h�n th�ch c� th� ch� t�o ra Nh�c v��ng ki�m, c�n "..YUEWANGHUN_STONECOUNT.." nh�c v��ng h�n th�ch nh�t ��nh ��i ph�i kh�ng?", 2, "Mu�n/yuewang_change", "Kh�ng mu�n/no")
end

function yuewang_change()
	Say(battlesNpcSongJinShop.."Nh�c v��ng ki�m chi�m kh�ng gian <color=yellow>6 (2 X 3)<color> ch� tr�ng, ng��i x�c ��nh h�nh trang c�n ch� tr�ng ch�?", 2, "Ch�c r�i!/yuewang_sure", "�� ta ki�m tra l�i/no")
end

function yuewang_sure()
	if (CalcEquiproomItemCount(4, 507, 1, -1) >= YUEWANGHUN_STONECOUNT) then
		ConsumeEquiproomItem(YUEWANGHUN_STONECOUNT, 4, 507, 1, -1)
		AddEventItem(195)
		Say(battlesNpcSongJinShop.."C�i n�y l� Nh�c v��ng ki�m, m�t t�n v�t quan tr�ng c�a bang h�i ��y!", 0)
		Msg2Player("�� nh�n ���c Nh�c v��ng ki�m!")
	else
		Say(battlesNpcSongJinShop.."Ng��i kh�ng �� Nh�c v��ng h�n th�ch, mau ki�m tra l�i, Nh�c v��ng ki�m kh�ng ph�i ai c�ng c� th� s� h�u.", 0)
	end
end

function ore()
	Sale( 102, 4);
end

function goldenitem_menu()
	Sale( 103, 4);
end

