-- ��ʱ��һ�������������Gameserver��ϵͳ����
Include("\\script\\gb_modulefuncs.lua")
tab_GameSetting = 
{
"Vuot Ai",--����
"Phong Lang Do",--�̳�
"Tong Kim",--Msg2SubWorld
"Boss Hoang Kim",--AddLocalNews
"Boss Tieu Hoang Kim", 
--"Cong Thanh Chien 3 Tru",
"That Thanh Dai Chien",
"Doan Hoa Dang",--AddLocalNews and AddGift
--"Dau Nguu",
--"Loan Chien Cuu Chau Coc",
--"Tin Su",
"Lien Dau",
}

function TaskShedule()
	TaskName("Thi�t k�  h� th�ng tr� ch�i");
	TaskInterval(1000000);
	TaskCountLimit(0);
	OutputMsg("=====> BAT DAU KHOI DONG CAC TINH NANG CUA GAME VO LAM TRUYEN KY <=====");
end

function TaskContent()
	for i = 1, getn(tab_GameSetting) do 
		gb_AutoStartModule(tab_GameSetting[i])
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
