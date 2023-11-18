Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\vng_lib\\extpoint.lua")
Include("\\script\\activitysys\\config\\1005\\tongsupport.lua")
Include("\\script\\activitysys\\config\\1005\\check_func.lua")
tbPVLBActive = {}

function tbPVLBActive:AddDialog(tbOpt)
	if tbPVLB_Check:CheckTime() ~= 1 then
		return
	end
	tinsert(tbOpt, "Ta mu�n nh�n Phong V�n L�nh B�i/#tbPVLBActive:main()")
	tinsert(tbOpt, "Ph�n th��ng bang h�i ti�p nh�n t�n th�/#tbTongSupport:main()")
end

function tbPVLBActive:main()
	if self:ActiveCondition() ~= 1 then
		return
	end
	if tbExtPointLib:SetBitValue(nEXT_POINT_ID, nEXT_POINT_BIT_USER_ACTIVE_IN_GAME, 1) ~= 1 then
		Talk(1, "", "D� li�u kh�ng c�p nh�t, xin vui l�ng li�n h� ban qu�n tr� �� ���c gi�i quy�t.")
		return
	end
	if tbExtPointLib:GetBitValue(nEXT_POINT_ID, nEXT_POINT_BIT_USER_ACTIVE_IN_GAME) ~= 1 then
		Talk(1, "", "D� li�u kh�ng c�p nh�t, xin vui l�ng li�n h� ban qu�n tr� �� ���c gi�i quy�t.")
		return
	end
	local tbItem = {szName="Phong V�n L�nh B�i",tbProp={6,1,30141,1,0,0},nCount=1,nExpiredTime=86400,nBindState=-2};	
	local tbTranslog = {strFolder = "201109_EventPhongVanLenhBai/", nPromID = 11, nResult = 1}
	tbAwardTemplet:Give(tbItem, 1, {"PhongVanLenhBai", "NhanVatPhamPhongVanLenhBai", tbTranslog})
end

function tbPVLBActive:ActiveCondition()
	local nBitVal1 = tbExtPointLib:GetBitValue(nEXT_POINT_ID, nEXT_POINT_BIT_NEW_ACCOUNT) --n�p code t�i kho�n m�i
	local nBitVal2 = tbExtPointLib:GetBitValue(nEXT_POINT_ID, nEXT_POINT_BIT_OLD_ACCOUNT)--n�p code t�i kho�n c�
	if nBitVal1 == 0 and nBitVal2 == 0 then
		Talk(1, "", "C�c h� ch�a n�p code kh�ng th� nh�n th��ng, xin h�y ki�m tra l�i!")
		return nil
	end
	local nBitVal3 = tbExtPointLib:GetBitValue(nEXT_POINT_ID, nEXT_POINT_BIT_USER_ACTIVE_IN_GAME)--�� nh�n th��ng
	if nBitVal3 ~= 0 then
		Talk(1, "", "Xin th� l�i, c�c h� �� nh�n ph�n th��ng n�y r�i.")
		return nil
	end
	if GetRoleCreateDate() >= 20110928 then		
		return 1
	end
	local nTranLife = ST_GetTransLifeCount()
	if nTranLife == 0 then
		return 1
	end
	if nTranLife == 1 then
		return 1
	end
	if nTranLife == 2 and GetLevel() < 180 then
		return 1
	end
	Talk(1, "", "Xin th� l�i, c�c h� kh�ng �� �i�u ki�n tham gia ch��ng tr�nh, h�y gh� th�m trang ch� c�a tr� ch�i �� bi�t th�m th�ng tin.")
end