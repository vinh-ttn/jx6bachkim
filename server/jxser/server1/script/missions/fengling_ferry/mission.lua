Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\taskctrl.lua");
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
-------------Ph�n Th��ng Ho�t ��ng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
----------------------------------------------------------
function InitMission()
	for i = 1, 100 do 
		SetMissionV(i , 0);
	end
	worldid= SubWorldIdx2ID(SubWorld)
	ClearMapNpc(worldid)	
	ClearMapTrap(worldid) 
	ClearMapObj(worldid)
	StartMissionTimer(MISSIONID, 29, FLD_TIMER_1)		--20���ʱ
	StartMissionTimer(MISSIONID, 28, FLD_TIMER_2)		--ȫ��
end

function RunMission()
	for i=1, 30 do
		posx, posy = fld_getadata(npcthiefpos)
		local npcindex	= AddNpc(724, 95, SubWorld, posx, posy, 0, "Th�y T�c");
		SetNpcDeathScript(npcindex, "\\script\\missions\\fengling_ferry\\shuizeideath.lua");
	end
	idx = 0
	for i = 1 , 100 do 
 		idx, pidx = GetNextPlayer(MISSIONID,idx, 0);

 		if (pidx > 0) then
   			PlayerIndex = pidx;
 		end
		--��ʱΪGM��������
		SetFightState(1)
		PutMessage("Thuy�n �i r�i! 30 ph�t sau s� ��n b� B�c Phong L�ng ��.")
		if (idx == 0) then 
 			break
 		end 
 	end
 	JiluAttendCount()		-- ��������һ��
end

function JiluAttendCount()
	-- �õ���ǰ���������� 
 	local nCount = GetMSPlayerCount(MISSIONID, 0)
	local mapid = SubWorldIdx2ID(SubWorld)
	if (mapid == 337) then
		AddStatData("fld_chuan1canjiarenshu", nCount)
	elseif (mapid == 338) then
		AddStatData("fld_chuan2canjiarenshu", nCount)
	elseif (mapid == 339) then
		AddStatData("fld_chuan3canjiarenshu", nCount)
	end
end

function EndMission()
	StopMissionTimer(MISSIONID, 28)
	StopMissionTimer(MISSIONID ,29)
	Landing()
	for i = 1, 100 do 
		SetMissionV(i , 0);
	end
end

function OnLeave(RoleIndex)
	oldPlayerIndex = PlayerIndex
	PlayerIndex = RoleIndex
	Msg2MSAll(MISSIONID, GetName().." kh�ng may t� vong trong l�c �i thuy�n.")
	SetCreateTeam(1)
	ForbidEnmity(0);
--	SetTaskTemp(200,0);
	SetDeathScript("")
	SetFightState(0)		
	ForbidChangePK(0)
	SetPKFlag(0)
	PlayerIndex = oldPlayerIndex
end

function Landing()
	Msg2MSAll(MISSIONID, "�� ��n b� B�c Phong L�ng ��.")
	
	local nDate = tonumber(GetLocalDate("%Y%m%d"));		-- by bel �����Ժ󷢳�������ˮ��������콱����
	if (nDate >= jf0904_act_dateS and nDate < jf0904_act_dateE) then
		local szNews = "Quan ph� v� c�c cao th� �� ho�n t�t chi�n d�ch ti�u di�t Th�y T�c, h�y nhanh ch�ng giao [Truy C�ng L�nh] cho Thuy�n Phu �� nh�n th��ng!";
		AddGlobalNews(szNews);
	end
	
	local tbPlayer = {}
	idx = 0
	for i = 1 , 100 do 
		idx, pidx = GetNextPlayer(MISSIONID,idx, 0)
		
		if (pidx > 0) then
   			tbPlayer[i] = pidx;
 		end
 		
		if (idx == 0) then 
	 		break
	 	end
	 	
	end
	
	worldid= SubWorldIdx2ID(SubWorld)
	
	G_ACTIVITY:OnMessage("FinishFengLingDu",tbPlayer);
	
 	for i= 1, getn(tbPlayer) do 
	 	PlayerIndex = tbPlayer[i]
		camp = GetCamp()
		SetCurCamp(camp)
		SetCreateTeam(1)
		SetDeathScript("")
--		SetTaskTemp(200, 0)
		ForbidEnmity(0);
--============Ph�n th��ng khi s� d�ng l�nh b�i th�y t�c l�n thuy�n, � c�c khung gi�: 10:00, 14:00, 16:00, 18:00, 20:00===================================================================================			
		if (check_new_shuizeitask() == 1) then
		local nRuong = CalcFreeItemCellCount() 
		if nRuong < SoLuongRuongTrongNhanThuong then
			Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
			return 1
		else
			for i = 1,getn(TAB_LBTT) do
			tbAwardTemplet:GiveAwardByList(TAB_LBTT[i], "Ph�n th��ng Kim B�i Phong L�ng ��");
			end
		end
		end
--===============================================================================================	
		local nRuong = CalcFreeItemCellCount() 
			if nRuong < SoLuongRuongTrongNhanThuong then
				Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
				return 1
			else
				for i = 1,getn(TAB_LBPLD) do
				tbAwardTemplet:GiveAwardByList(TAB_LBPLD[i], "Ph�n th��ng Kim B�i Phong L�ng ��");
				end
			end	
--===============================================================================================		
		local mapid = SubWorldIdx2ID(SubWorld)
		if (mapid == 337) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(1))
			SetFightState(1)
			DisabledUseTownP(1) -- ������������ɱ���ʹ�ûسǷ�
			SetRevPos(175,1)	--�趨����������Ϊ��ɽ��
		elseif (mapid == 338) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(2))
			SetFightState(1)
			DisabledUseTownP(1) -- ������������ɱ���ʹ�ûسǷ�
			SetRevPos(175,1)	--�趨����������Ϊ��ɽ��
		elseif (mapid == 339) then
			SetLogoutRV(0)
			NewWorld(fld_landingpos(3))
			SetFightState(1)
			DisabledUseTownP(1) -- ������������ɱ���ʹ�ûسǷ�
			SetRevPos(175,1)	--�趨����������Ϊ��ɽ��
		else
			print("error:i don't know why")
		end
		
	end
	
	ClearMapNpc(worldid)	
	ClearMapTrap(worldid) 
	ClearMapObj(worldid)
end

