Include("\\script\\activitysys\\config\\39\\extend.lua")
Include("\\script\\activitysys\\config\\39\\variables.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\config\\39\\seed.lua")

function main()
	if tbValenTree:IsDuring() ~= 1 then
		return 1
	end
	if PlayerFunLib:CheckTotalLevel(120,"default",">=") ~= 1 then
		return 1
	end
	if PlayerFunLib:CheckFreeBagCell(1, "default") ~= 1 then
		return 1
	end 
--By: NgaVN -- 	s� d�ng t�i �a 30 v�t ph�m S� d�ng D� H��ng Hoa H�ng v� ��u H�ng trong su�t th�i gian di�n ra event		
	if pActivity:CheckTaskDaily(TSK_AWARD_USE_TIME, 30, "S� d�ng D� H��ng Hoa H�ng v� ��u H�ng �� ��t ��n gi�i h�n","<") ~= 1 then
		return 1
	end
	pActivity:AddTaskDaily(TSK_AWARD_USE_TIME, 1)
--By: NgaVN - 2.000.000 �i�m kinh nghi�m
	local tbAward = {
		--{szName="Huy�n tinh",tbProp={6,1,147,1,0,0},nExpiredTime=20120301,},
		--{nJxb = 1},
		{szName = "�i�m kinh nghi�m", nExp=2000000};
		}
	
	tbAwardTemplet:Give(tbAward, 1, {EVENT_LOG_TITLE, "use hongdouguo"})
end