---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==7 then
pActivity = ActivityClass:new()
pActivity.nId = 2007
pActivity.szName = "M�ng phi�n b�n m�i"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "Vu Lan B�o Hi�u"
pActivity.nGroupId = nil
pActivity.nVersion = nil
else
pActivity = ActivityClass:new()
pActivity.nId = 2007
pActivity.szName = "M�ng phi�n b�n m�i"
pActivity.nStartDate = 201207010000
pActivity.nEndDate = 201208010000
pActivity.szDescription = "Vu Lan B�o Hi�u"
pActivity.nGroupId = nil
pActivity.nVersion = nil
end