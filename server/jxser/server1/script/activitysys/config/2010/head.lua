---------------Youtube PGaming---------------
Include("\\script\\activitysys\\activity.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
local nMonth = tonumber(date("%m"));
if EventTuDong == 1 and nMonth==10 then
pActivity = ActivityClass:new()
pActivity.nId = 2010
pActivity.szName = "trungthu"
pActivity.nStartDate = nil
pActivity.nEndDate = nil
pActivity.szDescription = "���ڸO�����?���`����?���ֲ���ڣ�ũA񴦴�A���ϣ����λ������?�ϢA�"
pActivity.nGroupId = 20
pActivity.nVersion = 1
else
pActivity = ActivityClass:new()
pActivity.nId = 2010
pActivity.szName = "trungthu"
pActivity.nStartDate = 201210010000
pActivity.nEndDate = 201211010000
pActivity.szDescription = "���ڸO�����?���`����?���ֲ���ڣ�ũA񴦴�A���ϣ����λ������?�ϢA�"
pActivity.nGroupId = 20
pActivity.nVersion = 1
end