Include("\\script\\battles\\inc.lua")

SJ_PointExChange = {
	Task = {
		Point = 747,
		Date = 5876,
		TotalExp = 5875,
	},
	ExpPerOne = 500,
	NeedLevel = 40,
	LimitPerDay = 10000000,
	--LimitLevelPercent = {80, 10},
}

function SJ_PointExChange:Main()
	return Say("Ph�n th��ng chi�n tr��ng ch� d�nh cho c�c chi�n s� t�n t�m nh�t!", 2, 
		"T�i h� mu�n �� �i�m T�ch l�y th�nh �i�m Kinh nghi�m/#SJ_PointExChange:ExChange()",
		"Ta l� 1 chi�n s� t�n t�m!/#SJ_PointExChange:No()")
end

function SJ_PointExChange:ExChange(_1)
	local a = GetTask(self.Task.Point)
	local b = GetLevel()
	
	if a <= 0 then
		return battles.Talk("Ch� chi�n s� �� tham gia chi�n tr��ng v� ph�i c� �i�m t�ch l�y m�i c� th� s� d�ng c�ng n�ng n�y!")
	end

	if b < self.NeedLevel then
		return battles.Talk("C�ng n�ng n�y ch� d�nh cho c�c chi�n s� �� tham gia chi�n tr��ng ho�c ��ng c�p t� "..self.NeedLevel.." tr� l�n!")
	end
	
	if _1 and _1 > 0 then
		local c, d, e = GetTask(self.Task.Date), GetTask(self.Task.TotalExp), tonumber(GetLocalDate("%y%m%d"))
		local h = ((GetLevelExp(b, 0) / 100) )
		local f = floor(_1*self.ExpPerOne)
		local i = 0
		
		if c ~= e then
			SetTask(self.Task.Date, e)
			SetTask(self.Task.TotalExp, 0)
		end
		
		if d >= h then
			return battles.Talk("Hi�n t�i nh�n v�t c�a b�n ch� c� th� ��i t�i �a "..h.." �i�m kinh nghi�m trong 1 ng�y, xin h�y ��i ��n ng�y mai!")
		elseif self.LimitPerDay > 0 and d >= self.LimitPerDay then
			return battles.Talk("Hi�n t�i nh�n v�t c�a b�n ch� c� th� ��i t�i �a "..self.LimitPerDay.." �i�m kinh nghi�m trong 1 ng�y, xin h�y ��i ��n ng�y mai!")
		elseif a < _1 then
			return battles.Talk("Hi�n t�i c�c h� kh�ng �� ".._1.." �i�m t�ch l�y, c� th� c�c h� c�n: "..a.." �i�m t�ch l�y, xin nh�p l�i s� l��ng �i�m!")
		end
		
		i = (((d + f) > self.LimitPerDay) and 1 or 0)
		
		if i ~= 0 then
			return battles.Talk("L��ng kinh nghi�m b�n mu�n ��i v� t�ng l��ng �� ��i h�m nay s� v��t gi�i h�n ��i trong ng�y, kinh nghi�m �� ��i h�m nay l� "..d..", xin ki�m tra l�i!")
		end
		
		SetTask(self.Task.Point, floor(a - _1))
		AddOwnExp(f)
		
		SetTask(self.Task.TotalExp, (GetTask(self.Task.TotalExp) + f))
		
		Msg2Player(battles.C(11, "��i th�nh c�ng ".._1.." �i�m t�ch l�y TK l�y: "..f.." �i�m kinh nghi�m!"))
		
		local g = openfile("script/battles/battles_log/mis_SJ_PointExChange.log", "a")
			write(g, GetLocalDate("[%d-%m-%y %H:%M:%S]").."\tAcc: "..GetAccount().."\tName: "..GetName().."\tPoint: ".._1.."\tToExp: "..f.."\tLeftPoint: "..GetTask(self.Task.Point).."\n")
		closefile(g)
		return
	end

	if _1 and _1 == -1 then
		return AskClientForNumber("SJ_PointExChange_ReturnExC",0,GetTask(self.Task.Point),"1 T�ch l�y = "..self.ExpPerOne)
	end
	
	return Talk(1, "#SJ_PointExChange:ExChange(-1)", "T� l� quy ��i hi�n t�i 1 �i�m T�ch l�y b�ng "..self.ExpPerOne.." �i�m Kinh nghi�m (<color=0x00ffff>kh�ng c�ng d�n<color>), xin chi�n s� h�y nh�p s� �i�m t�ch l�y c�n quy ��i!")
end
function SJ_PointExChange_ReturnExC(_1)
	return SJ_PointExChange:ExChange(_1)
end

function SJ_PointExChange:No()
	return
end


































