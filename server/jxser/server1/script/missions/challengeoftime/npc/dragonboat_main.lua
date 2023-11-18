Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\activitysys\\g_activity.lua")
Include("\\script\\activitysys\\playerfunlib.lua")



function want_playboat()
	OldSubWorld = SubWorld
	OldPlayer = PlayerIndex
	local totalboat = 0
	local freeboat = 0
	local startboat = 0
	local blevel = 0
	if (IsCaptain() ~= 1) then
		Say("Xin l�i! C�n ph�i l� ��i tr��ng m�i c� t� c�ch b�o danh tham gia 'Nhi�m v� Th�ch th�c th�i gian'",0)
		return
	end
	if (GetTeamSize() < SoNguoiThapNhatThamGiaVuotAi) then
		Say("Xin l�i! ��i tham gia 'Nhi�m v� Th�ch th�c th�i gian' c�n ph�i c� �t nh�t <color=red>"..SoNguoiThapNhatThamGiaVuotAi.."<color> ng��i!",0)
		return
	end
	if(GetLevel() < 50) then
		Say("Xin l�i! ��ng c�p d��i 50 kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.",0);
		return
	end
	if (GetLevel() >= 90) then
		blevel = 1
	end
	
	for i = 1, GetTeamSize() do 
		PlayerIndex = GetTeamMember(i)
		local bmbrlevel = 0
		if(GetLevel() < 50) then
			Say("Xin l�i! ��ng c�p d��i 50 kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.",0);
			Msg2Team("Xin l�i! Trong ��i b�n c� th�nh vi�n d��i c�p 50, kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.");
			return
		end
		if (GetLevel() >= 90) then
			bmbrlevel = 1
		end
		
		if (blevel ~= bmbrlevel) then
			if (blevel == 0) then
				Say(" Xin l�i! Trong ��i b�n c� th�nh vi�n v��t <color=red>c�p 90<color>, xin ki�m tra l�i r�i b�o danh!",0)
				Msg2Team("Trong ��i b�n c� th�nh vi�n tr�n c�p 90, xin h�y ki�m tra l�i r�i b�o danh!");
				return
			else
				Say("Xin l�i! Trong ��i b�n c� th�nh vi�n ch�a ��t <color=red>c�p 90<color>, xin ki�m tra l�i r�i b�o danh!",0)
				Msg2Team("Trong ��i b�n c� th�nh vi�n ch�a ��t c�p 90, xin ki�m tra l�i r�i b�o danh!");
				return
			end
		end
	end
	
	PlayerIndex = OldPlayer
	for i = 1, getn(map_map) do 
		sub = SubWorldID2Idx(map_map[i])
		if (sub >= 0) then
			--print("have "..map_map[i])
			totalboat = totalboat + 1
			SubWorld = sub
			local state = GetMissionV(VARV_STATE)
			if (state > 0) then
				startboat = 1
			end
			if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and map_isadvanced[map_map[i]] == blevel) then
				freeboat = freeboat + 1
			end
		end
	end
	--print("total"..totalboat.."free"..freeboat)
	local strlevel ="";
	if (blevel == 0) then
		strlevel = "Nhi�m v� Th�ch th�c th�i gian S� c�p"
	else
		strlevel = "Nhi�m v� Th�ch th�c th�i gian cao c�p"
	end
	
	if (startboat == 1) then
		if (freeboat == 0) then
			Say("Khu v�c n�y"..strlevel.."�� b�t ��u. Kh�ng c�n ch� n�a�.",0)
			return
		else
			Say("Khu v�c n�y"..strlevel.."giai �o�n b�o danh �ua thuy�n r�ng, v�n c�n <color=red>"..freeboat.."<color>M�t b�n �� nhi�m v� mi�n ph�, th�i gian khi�u chi�n c�n ph�i giao <color=red>1 v�n<color> ng�n l��ng, ng��i mu�n tham gia kh�ng?",2, "Ph�i! Ta mu�n d�n d�t ��i c�a ta tham gia./dragon_join", "Kh�ng c�n/onCancel")
			return
		end
	else
		Say("Xin l�i! Khu v�c n�y"..strlevel.."Hi�n t�i kh�ng c� nhi�m v� khi�u chi�n th�i gian �� tham gia. B�o danh v�o  <color=red>��ng m�i ti�ng ��ng h�<color> b�t ��u, l�" .. TIME_SIGNUP .."ph�t, xin h�y l�u � th�ng b�o c�a h� th�ng.",0)
		return
	end
	
end

function dragon_join()
	local blevel = 0
	local havesword = 0
	local nNowDate = tonumber(GetLocalDate("%y%m%d"));
	if (GetLevel() >= 90) then
		blevel = 1
	end
	if(GetTask(1551) == nNowDate) then
		if (GetTask(1550) <= 0) then
			Say("Nhi�p Th� Tr�n: H�m nay nhi�m v� th�ch ��u �� l�m h�t r�i, ��i ng�y mai h�y ��n l�i.",0);
			return
		end
	end
	if (IsCaptain() ~= 1) then
		Say("Xin l�i! C�n ph�i l� ��i tr��ng m�i c� t� c�ch b�o danh tham gia 'Nhi�m v� Th�ch th�c th�i gian'",0)
		return
	end
	if(GetLevel() < 50) then
		Say("Xin l�i! ��ng c�p d��i 50 kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.",0);
		return
	end
	if (GetTeamSize() < SoNguoiThapNhatThamGiaVuotAi) then
		Say("Xin l�i! ��i tham gia 'Nhi�m v� Th�ch th�c th�i gian' c�n ph�i c� �t nh�t <color=red>"..SoNguoiThapNhatThamGiaVuotAi.."<color> ng��i!",0)
		return
	end
	
	if (GetCash() < 10000) then
		Say("Tham gia nhi�m v� �Th�ch th�c th�i gian� c�n <color=red>1v�n l��ng<color>. Chu�n b� �� ti�n r�i h�y quay l�i!", 0)
		return
	end
	
	local OldPlayer = PlayerIndex
	
	for i = 1, GetTeamSize() do 
		PlayerIndex = GetTeamMember(i)
		local bmbrlevel = 0
		local MemberNowDate = tonumber(GetLocalDate("%y%m%d"));
		if(GetTask(1551) == MemberNowDate) then
			if(GetTask(1550) <= 0) then
				Say("Nhi�m v� Th�ch th�c th�i gian m�i ng�y ch� ���c tham gia 1 l�n. S� l�n tha gia c�a t� b�n �� ��! Ng�y mai tr� l�i nh�!",0);
				Msg2Team("Nhi�m v� Th�ch th�c th�i gian m�i ng�y ch� ���c tham gia 1 l�n. S� l�n tha gia c�a t� b�n �� ��! Ng�y mai tr� l�i nh�!");
				return
			end
		end
		if(GetLevel() < 50) then
			Say("Xin l�i! ��ng c�p d��i 50 kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.",0);
			Msg2Team("Xin l�i! Trong ��i b�n c� th�nh vi�n d��i c�p 50, kh�ng th� tham gia 'Nhi�m v� Th�ch th�c th�i gian'.");
			return
		end
		if (GetLevel() >= 90) then
			bmbrlevel = 1
		end
		
		if (blevel ~= bmbrlevel) then
			if (blevel == 0) then
				Say(" Xin l�i! Trong ��i b�n c� th�nh vi�n v��t <color=red>c�p 90<color>, xin ki�m tra l�i r�i b�o danh!",0)
				Msg2Team("Trong ��i b�n c� th�nh vi�n tr�n c�p 90, xin h�y ki�m tra l�i r�i b�o danh!");
				return
			else
				Say("Xin l�i! Trong ��i b�n c� th�nh vi�n ch�a ��t <color=red>c�p 90<color>, xin ki�m tra l�i r�i b�o danh!",0)
				Msg2Team("Trong ��i b�n c� th�nh vi�n ch�a ��t c�p 90, xin ki�m tra l�i r�i b�o danh!");
				return
			end
		end
		
		havesword = 0
		if (blevel == 0) then
			for i=20,80,10 do
				if(havesword > 1) then
					break
				else
					havesword = CalcEquiproomItemCount( 6, 1, 400, i ) + havesword
				end
			end	
		else
			havesword = CalcEquiproomItemCount( 6, 1, 400, 90 )
		end
		if (havesword < 1 and blevel == 0) then
			Say("Nhi�p Th� Th�n: Xin l��ng th�, tham gia nhi�m v� khi�u chi�n th�i gian s� c�p m�i th�nh vi�n c�n ph�i c� m�t S�t Th� Gi�n ng� h�nh b�t k� c�p 90 tr� xu�ng, xin h�y chu�n b� r�i h�y ��n ��y g�p ta",0)
			Msg2Team("Trong t� ��i c�a ng��i c� ng��i kh�ng c� S�t Th� Gi�n ng� h�nh b�t k� c�p 90 tr� xu�ng , xin  ki�m tra l�i r�i h�y b�o danh tham gia !")
			return
		elseif (havesword < 1 and blevel == 1) then
			Say("Nhi�p Th� Th�n: Xin l��ng th�, tham gia nhi�m v� khi�u chi�n th�i gian cao c�p m�i th�nh vi�n c�n ph�i c� m�t S�t Th� Gi�n ng� h�nh b�t k� c�p 90 , xin h�y chu�n b� r�i h�y ��n ��y g�p ta",0)
			Msg2Team("Trong t� ��i c�a ng��i c� ng��i kh�ng c� S�t Th� Gi�n ng� h�nh b�t k� c�p 90, xin  ki�m tra l�i r�i h�y b�o danh tham gia !")
			return
		end
	end
	
	PlayerIndex = OldPlayer
	
	OldSubWorld = SubWorld
	
	for i = 1, getn(map_map) do 
		sub = SubWorldID2Idx(map_map[i])
		if (sub >= 0) then
			SubWorld = sub
			local state = GetMissionV(VARV_STATE)
			if ( state == 1 and GetMSPlayerCount(MISSION_MATCH, 1) == 0 and blevel == map_isadvanced[map_map[i]] ) then
				local tabplayer = {}
				for i = 1, GetTeamSize() do 
					tabplayer[i] = GetTeamMember(i)
					--print("plal"..tabplayer[i])
				end
				PlayerIndex = tabplayer[1]
				w,x,y = GetWorldPos()
				SetMissionV(VARV_SIGNUP_WORLD, w)
				SetMissionV(VARV_SIGNUP_POSX, x)
				SetMissionV(VARV_SIGNUP_POSY, y)
				SetMissionS(VARS_TEAM_NAME,GetName())
				SetMissionS(VARS_TEAMLEADER_FACTION,GetLastFactionNumber())
				SetMissionS(VARS_TEAMLEADER_GENDER,GetSex())
				
				-- DEBUG
				--print(format("%s��(%d,%d,%d)λ�ý���ʱ�����ս�����ͼ", GetName(), w, x, y));

				Pay(10000)
				

				for i = 1 , getn(tabplayer) do 
					PlayerIndex = tabplayer[i]
					if (blevel == 0) then
						for i=20,80,10 do
							if(CalcEquiproomItemCount( 6, 1, 400, i ) > 0) then
								ConsumeEquiproomItem( 1, 6, 1, 400, i)
								break
							end
						end
					else
						ConsumeEquiproomItem( 1, 6, 1, 400, 90)
					end
					
					w,x,y = GetWorldPos();
					if w==208 then
					else
						local MemberNowDate = tonumber(GetLocalDate("%y%m%d"));
						if(GetTask(1551) ~= MemberNowDate) then
							SetTask(1550,SoLanVuotAiTrongNgay);  
							SetTask(1551,MemberNowDate);					
						end
						SetTask(1550,GetTask(1550)-1);
						JoinMission(MISSION_MATCH, 1)
					end
					
					G_ACTIVITY:OnMessage("SignUpChuangguan", tabplayer[i], blevel + 1)
					--Ghi log c�c t�nh n�ng key - Modified By DinhHQ - 20120410
					PlayerFunLib:AddTaskDaily(3079, 1)
					if PlayerFunLib:GetTaskDailyCount(3079) > 1 then
						tbLog:PlayerActionLog("TinhNangKey","BaoDanhVuotAiThuPhi")
					else
						tbLog:PlayerActionLog("TinhNangKey","BaoDanhVuotAiMienPhi")
					end
				end
				
				local ndate = tonumber(GetLocalDate("%H"))
				if ndate <= 22 and ndate >= 10 and blevel == 1 then
					SetMissionV(VARV_BATCH_MODEL,1)
				else
					SetMissionV(VARV_BATCH_MODEL,0)
				end
				
				tbLog:PlayerActionLog("EventChienThang042011","BaoDanhVuotAi")				
				return
			end
		end
	end
	SubWorld = OldSubWorld
	PlayerIndex = OldPlayer
	local strlevel ="";
	if (blevel == 0) then
		strlevel = "Nhi�m v� Th�ch th�c th�i gian S� c�p "
	else
		strlevel = " 'Nhi�m v� Th�ch th�c th�i gian' Cao c�p "
	end
	Say("Xin l�i! Hi�n t�i khu v�c <color=red>"..strlevel.."<color>�� kh�ng c�n ch�. Xin ��i v�ng sau!",0)
end