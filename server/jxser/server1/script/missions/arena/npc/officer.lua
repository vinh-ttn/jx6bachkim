Include("\\script\\missions\\arena\\player.lua")
Include("\\script\\global\\titlefuncs.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\maps\\checkmap.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\dicegame.lua")

IncludeLib("TITLE")


function open_credits_shop()
	local szTitle = "<color=red>Mu�n th� v�n may kh�ng n�o?<color>."
	local tbOpt = {
		{"C��c 1 v�n l��ng", motvluong},	
		{"C��c 5 v�n l��ng", namvluong},
		{"C��c 10 v�n l��ng", muoivluong},
		{"C��c 20 v�n l��ng", haimuoivluong},
		{"C��c 50 v�n l��ng", nammuoivluong},
		{"C��c 100 v�n l��ng", mottramvluong},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)	
end

function motvluong()	
	if (GetCash() < 10000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end
	OpenDice(10000)
end

function namvluong()	
if (GetCash() < 50000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end
	OpenDice(50000)
end

function muoivluong()
if (GetCash() < 100000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end	
	OpenDice(100000)
end

function haimuoivluong()	
if (GetCash() < 200000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end
	OpenDice(200000)
end

function nammuoivluong()
if (GetCash() < 500000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end	
	OpenDice(500000)
end

function mottramvluong()
if (GetCash() < 1000000) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end		
	OpenDice(1000000)
end
