-------------------------------------------------------------------------
-- FileName		:	enemy_turegirl.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-20 10:16:14
-- Desc			:   千宝库关卡的被少女脚本
-------------------------------------------------------------------------
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\tollgate\\messenger\\lib_messenger.lua") --调用组队判断
Include("\\script\\task\\tollgate\\killbosshead.lua") --调用定义头像的头文件
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");

function main()
	if ( GetSex() == 0 ) then
		Describe(DescLink_BeiKunShaoNv..": Anh h飊g cu鑙 c飊g c騨g xu蕋 hi謓. Ta b� b鋘 Th� H� Gi� b総 c鉩, xin h穣 c鴘 ta!",2,"Л琻g nhi猲 l� 頲! Theo ta!/offcouseido","Kh玭g 頲! Ta c遪 chuy謓 kh竎 ph秈 l祄!/no")
	else
		Describe(DescLink_BeiKunShaoNv..": Anh h飊g cu鑙 c飊g c騨g xu蕋 hi謓. Ta b� b鋘 Th� H� Gi� b総 c鉩, xin h穣 c鴘 ta!",2,"Л琻g nhi猲 l� 頲! Theo ta!/offcouseido","Kh玭g 頲! Ta c遪 chuy謓 kh竎 ph秈 l祄!/no")
	end
end

function offcouseido()
	local Uworld1214 = nt_getTask(1214)
	local Npcindex = GetLastDiagNpc()
	nt_setTask(1214,Uworld1214+1)   --设置被救少女数量
	Msg2Player("B筺  c鴘 頲 m閠 thi誹 n� b� b鋘 Th� H� Gi� giam gi�, n誹 an to祅 h� t鑞g c� ta ra kh醝 秈, b筺 s� nh薾 頲 ph莕 thng x鴑g ng.")
	SetTask2Team(tbBirthday0905.tbTask.tsk_msg_curtsk,tbBirthday0905.tbTask.tsk_msg_needcount, 6);
	tongaward_message(30);	--by 小山（帮会周目标贡献度，每个少女3000点）
	DelNpc(Npcindex)
end

function no()
end
