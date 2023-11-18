-- 武当接引弟子 模板 武当道人
-- By: Dan_Deng(2003-10-28) 由人物对话修改而来
-- Update: Dan_Deng(2004-05-25) 体服技能全开修改（调用外部文件方式）
Include("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")
Include("\\script\\global\\skills_table.lua")
Include( "\\script\\missions\\freshman_match\\head.lua" )
npc_name = "V� ng Чo Nh﹏"

function default_talk()
	check_WDtask()
	player_Faction = GetFaction()
	Uworld1000 = nt_getTask(1000)
	if (( Uworld1000 == 240 ) or ( Uworld1000 == 250 )) and ( GetLastFactionNumber() == 8 ) then
			nt_setTask(1000,250)
			Talk(1,"Uworld1000_jiaoyuwudang","Ngi  l�  t� c馻 b鎛 ph竔, kh玭g c莕 甶 n鱝, c� th� tr鵦 ti誴 g苝 Long Ng� n鉯 chuy謓.")
	elseif (player_Faction == "emei") then
		Talk(1,"","Nga My n� hi謕! Ti觰 o xin k輓h l�! S� ph� Thanh Hi觰 S� Th竔 c� kh醗 kh玭g?")
	elseif (player_Faction == "cuiyan") then
		Talk(1,"","Ti觰 o r蕋 b閕 ph鬰 c玭g phu Th髖 Y猲 m玭! Kh玭g bi誸 c� nng c� g� ch� gi竜!?")
	elseif (player_Faction == "tangmen") then
		Talk(1,"","Tuy chng m玭 qu� ph竔 t輓h t譶h n鉵g n秠, h祅h s� kh玭g theo qui t綾, nh璶g r蕋 th糿g th緉! Kh玭g h� danh ch﹏ qu﹏ t�!")
	elseif (player_Faction == "wudu") then
		Talk(1,"","B秐 l躰h d飊g c cao si猽 th� cu鑙 c飊g c騨g l� h� ng  h蘮! Kh玭g c� tinh th莕 v� h鋍!")
	elseif (player_Faction == "tianwang") then
		Talk(1,"","S韒 nghe n鉯 huynh  Thi猲 vng bang ai c騨g l� anh h飊g h秓 h竛! H玬 nay g苝 m苩 qu� nhi猲 danh b蕋 h� truy襫!")
	elseif (player_Faction == "shaolin") then
		Talk(1,"","Th� ra l� ti觰 s� ph� Thi誹 l﹎! Kh玭g bi誸 c� g� ch� gi竜!")
	elseif (player_Faction == "wudang") then
		Say("Ta lu玭 nh� v� s� ph�! g 蕐 kh玭g bi誸 c� kh醗 kh玭g!?",4,"Nh� s� huynh a ta v� n骾!/return_yes","T譵 hi觰 khu v鵦 luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","S� ph� l� ngi ng k輓h!/no")
--		Say("武当道人：不好意思，因为有些人的任务状态不正确，我们正在重新为门下弟子进行检查。你要检查你的任务状态吗？如果你认为你的状态是正确的就不必检查了。",2,"检查/wd_check_yes","不用了/wd_check_no")
	elseif (player_Faction == "kunlun") then
		Talk(1,"","Th� ra l�  t� C玭 L玭 ph竔! Kh玭g bi誸 c� g� ch� gi竜!")
	elseif (player_Faction == "tianren") then
		Talk(1,"","K� ╪ m祔 n祔 v鑞 t� l﹗ ngng m� Nga My ki誱 thu藅. H玬 nay 頲 g苝 n� hi謕 y, th藅 th醓 l遪g mong c!")
	elseif (player_Faction == "gaibang") then
		Talk(1,"","Bang ch� c馻 qu� bang v� chng m玭 c馻 t� ph竔 v鑞 l� b籲g h鱱 tri giao! Qu� bang c� vi謈 g� t� ph竔 nh蕋 nh l藀 t鴆 gi髉 !")
	elseif (nt_getTask(75) == 255) then		-- 学了野球拳的，不允许再入门派
		Talk(1,"","T� h鋍 kh� luy謓! T筰 h� v� c飊g b閕 ph鬰!")
	else
		UTask_wd = nt_getTask(5)
		if ((UTask_wd > 5*256) and (UTask_wd < 10*256)) then		-- 入门任务中
			Talk(1,"","Ngi  ti誴 nh薾 nhi謒 v� nh藀 m玭 nh璶g v蒼 ch璦 ho祅 th祅h! H穣 mau t譵 v� cho Thanh Phong chi誧 th飊g b� r琲 xu鑞g gi課g!")
		elseif (UTask_wd >= 70) and (player_Faction ~= "wudang") then					--已经出师
			Say("Tuy ngi  xu蕋 s� nh璶g ch髇g ta v蒼 thng nh� n! D筼 n祔 c� kh醗 kh玭g?",3,"T譵 hi觰 s� trng luy謓 c玭g/map_help","T譵 hi觰 v� ngh� b鎛 m玭/skill_help","K誸 th骳 i tho筰/no")
		else
			Talk(3, "select", "Thi猲 h� v� h鋍, B綾 t玭 Thi誹 l﹎, nam s飊g V� ng. Ch綾 ngi  t鮪g nghe qua?", "V� c玭g b鎛 ph竔 l蕐 t躰h ch� ng, l蕐 nhu kh綾 cng, l蕐 ng緉 th緉g d礽, l蕐 ch薽 nh nhanh, l蕐 � v薾 kh�, l蕐 kh� v薾 th﹏, nh sau t韎 trc. Khi猰 t鑞 甶襪 m, l蕐 v� h譶h th緉g h鱱 h譶h,  l� c秐h gi韎 v� h鋍 t鑙 cao!", "V� ngh� b鎛 m玭 c� 'ng� b蕋 truy襫': y誹 畊鑙, hi觤 c, h竜 th緉g, cu錸g t鰑, gian d﹎ s� kh玭g truy襫 v� c玭g")
		end
	end
end;

function select()
	UTask_wd = nt_getTask(5)
	UTask_kl = nt_getTask(9)
	if ((UTask_kl > 5*256) and (UTask_kl < 10*256)) then		-- 已接了昆仑入门任务
		Talk(1,"","Th� ra ngi v鑞 mu鑞 n C玭 L玭 h鋍 ph� ph竝 o thu藅!")
	elseif (GetSeries() == 4) and (GetCamp() == 0) and (UTask_kl < 5*256) and (UTask_wd < 5*256) then		--火系、未入昆仑武当
		if (GetLevel() >= 10) then						--等级达到十级
			Say("N誹 mu鑞 gia nh藀 b鎛 ph竔 ph秈 thay i t﹎ t輓h, chuy觧 t﹎ tu h祅h, tng lai c� r蕋 nhi襲 c� h閕 ch� n ngi!", 3, "Gia nh藀 V� ng/go", "в ta suy ngh� k� l筰 xem/no","T譵 hi觰 tinh hoa v� ngh� c竎 m玭 ph竔/Uworld1000_knowmagic")
		else
			Say("C╪ b秐 c馻 ngi c遪 k衜 l緈! H穣 甶 luy謓 t藀 th猰, bao gi� n <color=Red>c蕄 10<color> l筰 n t譵 ta", 0)
		end
	end
end;

function go()
	Uworld1000 = nt_getTask(1000)
	if ( Uworld1000 == 240 ) or ( Uworld1000 == 250 ) then
		nt_setTask(1000,260)
	end
	SetRevPos(81,40)	 					--设置重生点
	nt_setTask(5, 10*256)
	SetFaction("wudang")      				--玩家加入武当
	SetCamp(1)
	SetCurCamp(1)
--	SetRank(7)
	nt_setTask(137,65)
	SetLastFactionNumber(8)
-- 直接处理流程
	-- nt_setTask(5,80*256)
	SetRank(73)
	-- Msg2Player("欢迎你加入武当派，直接学会本门所有技能。")
	add_wd(10)			-- 调用skills_table.lua中的函数，参数为学到多少级技能。
-- 结束
	Msg2Player("Hoan ngh猲 b筺 gia nh藀 V� ng ph竔! H穣 b総 u t� m閠 Чo ng! H鋍 頲 v� c玭g N� L玦 Ch�, Thng h秈 Minh Nguy謙!")
	AddNote("gia nh藀 V� ng ph竔, tr� th祅h Чo ng!")
	Msg2Faction("wudang",GetName().." t� h玬 nay gia nh藀 V� ng ph竔, trc ti猲 n b竔 ki課 c竎 v� s� huynh, s� t�!",GetName())
	NewWorld(81, 1574, 3224)				--把玩家传送到门派入口

end;

function return_yes()
	NewWorld(81, 1574, 3224)			--把玩家传送到门派入口
end;

function wd_check_yes()
	if (GetSeries() ~= 4) then
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� 甶 nh薾 nhi謒 v� xu蕋 s�.")
	elseif (HaveMagic(164) >= 0) then		-- 做完了50级任务,剥及而复
		nt_setTask(5,60*256)
		Talk(1,"","Ta  ph鬰 h錳 l筰 tr筺g th竔 nhi謒 v� c馻 ngi! B﹜ gi� ngi c� th� 甶 nh薾 nhi謒 v� xu蕋 s� ")
	elseif (HaveMagic(161) >= 0) then		-- 做完了40级任务,两仪心法
		nt_setTask(5,50*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 40.")
	elseif (HaveMagic(158) >= 0) then		-- 做完了30级任务,剑飞惊天
		nt_setTask(5,40*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 30.")
	elseif (HaveMagic(156) >= 0) then		-- 做完了20级任务,纯阳心法
		nt_setTask(5,30*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 20.")
	elseif (HaveMagic(151) >= 0) then		-- 做完了10级任务,武当剑法
		nt_setTask(5,20*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  ho祅 th祅h nhi謒 v� c蕄 10.")
	else
		nt_setTask(5,10*256)
		Talk(1,"","Ta  ch豱h l� l筰 tr筺g th竔 nhi謒 v� c馻 ngi. Ngi  c� th� nh薾 nhi謒 v� c蕄 10.")
	end
end

function wd_check_no()
	Say("Ta lu玭 nh� v� s� ph�! g 蕐 kh玭g bi誸 c� kh醗 kh玭g!?",2,"Nh� s� huynh a ta v� n骾!/return_yes","S� ph� l� ngi ng k輓h!/return_no")
end

function check_WDtask()
	if (nt_getTask(5) == 30*256+50) then		-- 任务变量错误
		if (GetFaction() == "wudang") then		-- 未出师重做所有任务
			nt_setTask(5,10*256)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! Ngi h穣 ch辵 kh� th鵦 hi謓 l筰 nhi謒 v� c蕄 10 nh�!",1,"Xin 產 t� /no")
		elseif (HaveMagic(164) >= 0) then			-- 已出师(学会了“剥及而复”并且不在门派中)的设为正常出师
			nt_setTask(5,70*256)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! Ta  gi髉 ngi ch豱h s鯽! Hi謓 gi� ngi  xu蕋 s�!",1,"Xin 產 t� /no")
		else										-- 其它设为未入武当派
			nt_setTask(5,0)
			Say("D� li謚 c馻 ngi c� ch髏 sai s鉻! B﹜ gi� ngi 產ng trong t譶h tr筺g ch璦 gia nh藀 m玭 ph竔",1,"Xin 產 t� /no")
		end
	end
end

function Uworld1000_jiaoyuwudang()
	nt_setTask(1000,260)
	Msg2Player("е t� ti誴 d蒼 V� ng b秓 b筺  l�  t� c馻 m玭 pah�, c� th� tr鵦 ti誴 甶 g苝 Long Ng� n鉯 chuy謓.")
end

function no()
end;
