-- script viet hoa By http://tranhba.com  xbjinglianshi.lua hi�u b�o 2014-2-15 
Include("\\script\\global\\jingli.lua")

function main() 
return Use(PlayerIndex) 
end 

function Use(playerindex) 
local nEnergy = 5 
local tbRealyAward = {} 

local player = Player:New(PlayerIndex) 
local potion = HunyuanPotion:New(player) 
if (potion:Use(nEnergy) == 1) then 
-- script viet hoa By http://tranhba.com - tbAwardTemplet:GiveAwardByList(tbRealyAward,"S� d�ng tinh luy�n th�ch ", 1) 
return 0 
else 
return 1 
end 
end
