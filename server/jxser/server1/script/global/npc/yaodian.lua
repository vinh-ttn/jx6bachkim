Include("\\script\\dailogsys\\dailogsay.lua")

function main()
	local szTitle = "<npc>Ng��i c�n mua thu�c sao ?"
	local tbOpt = {}
	tinsert(tbOpt, {"Giao d�ch", yes}) 
	tinsert(tbOpt, {"�� ta �i l�y ti�n !"}) 
	CreateNewSayEx(szTitle, tbOpt);
	Sale(176)
end

function yes()
	Sale(176)
end
