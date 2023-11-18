Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\fengling_ferry\\fld_head.lua")
Include("\\script\\event\\jiefang_jieri\\200904\\shuizei\\shuizei.lua");
Include("\\script\\event\\change_destiny\\mission.lua");	
-------------Ph�n Th��ng Ho�t ��ng-----------------------
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
----------------------------------------------------------
SIGNET_DROPCOUNT = 2

function OnDeath( nNpcIndex )

	local x, y, world = GetNpcPos(nNpcIndex);
	local maxcount = SIGNET_DROPCOUNT;
	local _, nTongID = GetTongName();
	if (nTongID > 0) then
		if (IsDoubledMoneyBox(nTongID)) then
			maxcount = getSignetDropRate(SIGNET_DROPCOUNT);
		end;
	end;
	local nCurtime = GetCurServerTime() + 7 * 24 *60 * 60
	local nYear = tonumber(FormatTime2String("%Y", nCurtime))
	local nMonth = tonumber(FormatTime2String("%m", nCurtime))
	local nDay = tonumber(FormatTime2String("%d", nCurtime))
	for i = 1, maxcount do
		local nItemIdx = DropItem(world, x, y, PlayerIndex, 6, 1, 1094, 1, 0, 0, 0, 0, 0, 0, 0, 0);
		SetSpecItemParam(nItemIdx, 1, nCurtime);
		SetSpecItemParam(nItemIdx, 2, nYear)
		SetSpecItemParam(nItemIdx, 3, nMonth)
		SetSpecItemParam(nItemIdx, 4, nDay)
		SyncItem(nItemIdx);
	end;
	tbChangeDestiny:completeMission_WaterThief();
	-------------Ph�n Th��ng Ho�t ��ng-----------------------
		PhanThuong_BossThuyTacPhongLangDo()
	---------------------------------------------------------
	str = "<color=red>Ch�c m�ng cao th� <color=yellow>"..GetName().."<color> <color=red>�� nh�n ���c ph�n th��ng khi ti�u di�t Th�y T�c ��u L�nh t�i Phong L�ng ��"
	AddGlobalCountNews(str, 2)
	Msg2SubWorld("Ch�c m�ng cao th� <color=yellow>"..GetName().." <color=red>�� nh�n ���c ph�n th��ng Ti�u di�t Th�y T�c ��u L�nh t�i Phong L�ng ��")
end
