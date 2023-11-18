Include("\\script\\bonus_onlinetime\\head.lua")
Include("\\script\\vng_feature\\resetbox.lua")
Include("\\script\\item\\tianziyuxi.lua");
Include("\\script\\nationalwar\\login.lua")
Include("\\script\\tong\\tong_login.lua");
Include("\\script\\missions\\leaguematch\\wlls_login.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\activitysys\\g_activity.lua")	
Include("\\script\\misc\\extpoint_loginmsg\\login_msg.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\misc\\eventsys\\type\\player.lua")
Include("\\script\\misc\\daiyitoushi\\toushi_resetbase.lua")
Include("\\script\\global\\login_old.lua")
Include("\\script\\global\\offline_login.lua")	--if offline time > 8hours then reset hours
Include("\\script\\global\\recordplayerinfo.lua")
Include("\\script\\global\\playerlist.lua")
Include("\\script\\global\\login_hint.lua")
Include("\\script\\global\\gm\\gm_script.lua")
Include("\\script\\global\\gm\\lenhbaiadmintestserver.lua")
Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\ϴpk������.lua")
Include("\\script\\global\\limitaccount_ip.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
--=====================xep hang tinh luc===========================================
Include("\\script\\global\\pgaming\\xephang\\worldrank_hook.lua")
Include("\\script\\global\\pgaming\\xephang\\inc.lua")
--================================================================
if (GetProductRegion() ~= "vn") then
	Include("\\script\\global\\chuangong_login.lua")
	Include("\\script\\task\\lv120skill\\head.lua")
end

if (GetProductRegion() == "cn_ib") then
	Include("\\script\\item\\ib\\zimudai.lua");
end

function main(bExchangeIn)
	PlayerList:AddPlayer(PlayerIndex)
	TaskManager:ResetUseGroup()
	LoginDelaySync(1)
--============================T�t Ch�c N�ng Giao D�ch ============================
if KhoaChucNangBayBan == 1 then
DisabledStall(1)
else
DisabledStall(0)
end
--============================T�t Ch�c N�ng Giao D�ch ============================
if KhoaChucNangGiaoDich == 1 then
ForbitTrade(1)
else
ForbitTrade(0)
end
--============================Ch�nh C�p �� khi ��ng nh�p v�o Server ============================
if CapKhiLoginVaoServer == 1 then
	if GetLevel() < CapDo then
	local nCureLevel = GetLevel()
	local nAddLevel = CapDo - nCureLevel
	ST_LevelUp(nAddLevel)
	end
end
--============================Gi�i h�n account ============================
if GioiHanLoginIP == 1 then
	if (LimitAccountPerIP:Login() == 1) then
		OfflineLive(PlayerIndex)
		KickOutSelf();
		return
	end;
end
--============================Set Task �y Th�c V� 0============================
SetTask(5998,0)
--============================xep hang tinh luc ============================
	LoginMain()
--==========================================================================
if CauCa == 1 then
local nSubWorldID = GetWorldPos();
if (nSubWorldID == 1009) and GetFightState() == 1 then
SetFightState(1)
SetFightState(1)
SetPKFlag(1)
ForbidChangePK(1)
end
end
--Kick ng��i ch�i b� kh�a
		DynamicExecute("\\script\\global\\gm\\gm_script.lua", "tbAloneScript:GameServerKickOut", PlayerIndex);
--H� tr� GM khi v�o server
		tbAloneScript:GMLoginInGame();
		GMLoginInGame()
--Reset m�t kh�u r��ng
	ResetBox:AnnounceResetBoxDate()
--Online nh�n th��ng
	if (OnlineAward_StartDate() == 1 and OnlineAward_Check_TransferLife() ~= 0) then
		Msg2Player("�ang trong th�i gian ho�t ��ng Online Nh�n Th��ng")
		OnlineAward_ResetDaily()
		OnlineAward_SummaryOnlineTime()
		OnlineAward_StartTime()
	end
if (TB_LOGIN_FUN[0]) then
		for i = 1, getn(TB_LOGIN_FUN[0]) do
			local func = TB_LOGIN_FUN[0][i]
			if (func) then
				func(bExchangeIn)
			end
		end
	end

for i = 1, getn(TB_LOGIN_FILEFUN) do
		local reg = TB_LOGIN_FILEFUN[i]
		DynamicExecute(reg[1], reg[2], PlayerIndex, bExchangeIn)
	end

end

--============================xep hang tinh luc=============================================
function LoginMain()
	RankHook:GetRank(GetName())
end
--=========================================================================

function main_delaysync(nStep)	
	if (nStep < 1 or nStep > getn(TB_LOGIN_FUN)) then
		print("main_delaysync error: "..nStep.." funccount:"..getn(TB_LOGIN_FUN));
	return 1; end
	if (TB_LOGIN_FUN[nStep]) then
		for i = 1, getn(TB_LOGIN_FUN[nStep]) do
			if (TB_LOGIN_FUN[nStep][i]) then TB_LOGIN_FUN[nStep][i]() end
		end
	end

	if (nStep < getn(TB_LOGIN_FUN)) then
		return 0
	else
		return 1
	end
end
function no()
	if chuangong_login ~= nil then
		chuangong_login()
	end
end

