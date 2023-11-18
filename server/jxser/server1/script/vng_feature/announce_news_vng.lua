
Include("\\script\\lib\\common.lua")
Include("\\script\\global\\login_head.lua")

AnnounceNews = {
	nStartDate = 201205030000,
	nEndDate = 201205312400,	
	strMsg = "<color=green>Hi�n t�i �ang di�n ra c�c ho�t ��ng c�a event th�ng 5, m�i chi ti�t xem t�i trang ch� volam.zing.vn<color>", 
}

function AnnounceNews:IsActive()
	local nCurDate = tonumber(date("%Y%m%d%H%M"))
	if nCurDate < self.nStartDate or nCurDate > self.nEndDate then
		return nil
	end
	return 1
end

function AnnounceNews:AnnounceUpdate()
	if %AnnounceNews:IsActive() then
		Msg2Player(%AnnounceNews.strMsg)
	end
end

if login_add and  AnnounceNews:IsActive() then login_add(AnnounceNews.AnnounceUpdate, 2)  end
