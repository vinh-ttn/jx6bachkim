IncludeLib("TIMER")
Include("\\script\\script_protocol\\protocol_def_gs.lua")
Include("\\script\\lib\\objbuffer_head.lua")
--================================================================
Include("\\script\\global\\namcung\\xephang\\top10_all.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\gmroleitem_player.lua")
Include("\\script\\global\\namcung\\namcung_say.lua")

--================================================================


function login()
------------------------------------------------H� th�ng x�p h�ng------------------------------------------
	Ladder_ClearLadder(10296)	
	XepHang()
--LoginNew()
nhanvongsanght()
---------------------------------------Skills ph�c h�i 3s------------------------------------------------------------------------------

	SetProtectTime(18*3) --���뱣��ʱ��
	AddSkillState(963, 1, 0, 18*3) 

-----------------------------------------------------------th�ng b�o nh�n v�t Online----------------------------------------------------------
		
	--Msg2SubWorld("<color=yellow>��i hi�p<color><color=orange> "..GetName().."<color> �� <color=green>Online <color> !.")
-------------------------------------------------------------L�u thong tin nhan v�t--------------------------------------------------------
	
	--WriteLogPro("Login_Log/Info_"..tonumber(date("%d")).."-"..tonumber(date("%m")).."-20"..tonumber(date("%y"))..".txt","["..date().."]\t"..GetName().."\t"..GetAccount().."\t"..GetLevel().."\n");
	logplayer("dulieu/thongtintaikhoan-nhanvat.txt",format("[IP : %s ] - Th�i gian : %s  - T�i kho�n [ %s] - Nh�n v�t : [%s ] ��ng nh�p th�nh c�ng ! ",GetIP(),GetLocalDate("%m/%d/%Y_%H:%M:%S"),GetAccount(),GetName()))

------------------------------------------------------L�u danh s�ch qu�n ly c�a GM---------------------------------------------------------------	

	tbGMJX:KickYourAss(GetAccount());
	tbGMJX:GetInfoPlayer(GetAccount());	
	tbGMJX:KickVinhVien(GetAccount());
 end