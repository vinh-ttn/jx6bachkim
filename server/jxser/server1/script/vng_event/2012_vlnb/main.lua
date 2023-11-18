Include("\\script\\global\\titlefuncs.lua");
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
tbVngVLNB2012 = 
{
	nStartDate = 201204190000,
	nEndDate = 201204212400,
	nExtPointID = 3,
	nExtPointBit = 13,
	nTittleID = 3003,
	nTittleExpiredTime = 30 * 24 * 60 * 60 * 18,
	tbAccountID = {
		[1] = "crisbao",
		[2] = "tuanbdp",
		[3] = "huong12071988",
		[4] = "lam7981",
		[5] = "trungthanthonglaongoandong",
	},
}

function tbVngVLNB2012:IsActive()
	local nCurDate = tonumber(date("%Y%m%d%H%S"))
	if nCurDate < self.nStartDate or nCurDate >= self.nEndDate then
		return nil
	end
	return 1
end

function tbVngVLNB2012:CompareID(tbAccount)--CompareAccount ID
	local strAccount = GetAccount()
	for i=1, getn(tbAccount) do
		if (strAccount == tbAccount[i]) then
			return 1;
		end
	end
	return 0
end

function tbVngVLNB2012:AddDialog(tbDialog)
	if not self:IsActive() then
		return
	end
	tinsert(tbDialog, "Nh�n V�ng H�o Quang V� L�m Ng� B�/#tbVngVLNB2012:main()")
end

function tbVngVLNB2012:main()
	if (self:IsActive() ~= 1) then
		Talk(1,"","Ho�t ��ng �� k�t th�c!")
		return
	end	
	local bRet = self:CompareID(self.tbAccountID)
	if bRet < 1 then
		Talk(1,"","��i hi�p s� d�ng kh�ng ��ng t�i kho�n, xin ki�m tra l�i !")
		return	
	end
	if PlayerFunLib:CheckTotalLevel(150, "default", ">=") ~= 1 then
		return
	end
	if (tbExtPointLib:GetBitValue(self.nExtPointID, self.nExtPointBit) ~= 1) then
 		Talk(1,"","Xin l�i! ��i hi�p �� nh�n th��ng r�i, kh�ng th� nh�n th�m.")
 		return
 	end
	if (GetExtPoint(self.nExtPointID) < 0) then
		Talk(1,"","��i hi�p ch�a th� nh�n th��ng l�c n�y,  xin h�y  li�n h� Bang Qu�n Tr�")
		return
	end	
	 if (tbExtPointLib:SetBitValue(self.nExtPointID, self.nExtPointBit, 0) ~= 1) then
	 	return
	 end
	local nServerTime = GetCurServerTime()+ 90*24*60*60; --90 ngay
	local nDate	= FormatTime2Number(nServerTime);
	
	local nDay	= floor(mod(nDate,1000000) / 10000);
	local nMon	= mod(floor(nDate / 1000000) , 100)
	local nTime	= nMon * 1000000 + nDay * 10000
	 SetTask(TASK_ACTIVE_TITLE, self.nTittleID);
	Title_AddTitle(self.nTittleID, 2, nTime);
	Title_ActiveTitle(self.nTittleID);
 	local sz_title = Title_GetTitleName(self.nTittleID);		
	Msg2Player(format("Ch�c m�ng b�n �� nh�n ���c danh hi�u <color=yellow>%s<color>", sz_title));
end