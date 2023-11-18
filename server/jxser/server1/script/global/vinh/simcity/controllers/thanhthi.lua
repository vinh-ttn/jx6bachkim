Include("\\script\\global\\vinh\\simcity\\head.lua")

SimCityMainThanhThi = {
	_dataStorage = {}
}

SimCityWorld:initThanhThi()

function SimCityMainThanhThi:_createSingle(id, Map, bt)

	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)
	local kind = 4

	if bt == 1 then
		--kind = 0
	end


	local nListId = GroupFighter:New({


		nNpcId = id,		-- required, main char ID
		nMapId = Map,		-- required, map	
		walkMode = "random",
		walkVar = 3,	
		kind = kind,
		attackPlayerChance = attackPlayerChance,	-- co hoi tan cong nguoi choi neu di ngang qua
		attackNpcChance = fightChance,	-- co hoi bat chien dau
		joinFightChance = joinFightChance,	-- co hoi tang cong NPC neu di ngang qua NPC danh nhau
		ngoaitrang = bt or 0,
		noRevive = 0

	})

	if nListId > 0 then
		if (not self._dataStorage["n"..nW]) then
			self._dataStorage["n"..nW] = {}
		end
		tinsert(self._dataStorage["n"..nW], nListId)
	end

end



function SimCityMainThanhThi:_createTeamPatrol(nW, thonglinh, linh, N, path)
	local children5 = {}
	N = N or 16
	for i=1,N do
		tinsert(children5, {nNpcId=linh})
	end		


	local nListId = GroupFighter:New({
		nNpcId = thonglinh,						-- required, main char ID
		nMapId = nW,		-- required, map
		camp = 0,			-- optional, camp
		children = children5, -- optional, children
		walkMode = 1,	-- optional: random or 1 for formation
		tbPos = path,
		noStop = 1,				-- optional: cannot pause any stop (otherwise 90% walk 10% stop)
		leaveFightWhenNoEnemy = 0,	-- optional: leave fight instantly after no enemy, otherwise there's waiting period		
		noRevive = 0,			-- optional: 0: keep reviving, 1: dead
		attackPlayerChance = nil,	-- co hoi tan cong nguoi choi neu di ngang qua
		attackNpcChance = nil,	-- co hoi bat chien dau ~= 0 vi day la linh di tuan
		joinFightChance = 1,	-- co hoi tang cong NPC neu di ngang qua NPC danh nhau
		kind = 4

	})

	if nListId > 0 then
		if (not self._dataStorage["n"..nW]) then
			self._dataStorage["n"..nW] = {}
		end
		tinsert(self._dataStorage["n"..nW], nListId)
	end

	
end

function SimCityMainThanhThi:CreatePatrol(nW)

	local nA, nX, nY = GetWorldPos()	

	nW = nW or nA


	local worldInfo = SimCityWorld:Get(nW)

 	local allMap = worldInfo.walkAreas

 	local linh = 682
 	
	-- Them cho Tuong Duong
	if nW == 78 or nW == 37 then
		if nW == 37 then
			linh = 688
		end
		for i=1,getn(allMap) do 
			self:_createTeamPatrol(nW, linh+2, linh, 6, allMap[i])
		end


		-- Pho tuong + 9 binh
		self:_createTeamPatrol(nW, linh+3, linh, 6, allMap[1])
		self:_createTeamPatrol(nW, linh+3, linh, 6, allMap[4])
		

		-- Dai Tuong		
		self:_createTeamPatrol(nW, linh+4, linh, 9, allMap[2])
		self:_createTeamPatrol(nW, linh+5, linh+1, 9, allMap[2])
	end


end
 

function SimCityMainThanhThi:_clearMap(nW)
	if (not self._dataStorage["n"..nW]) then
		self._dataStorage["n"..nW] = {}
	end
	local tbl = self._dataStorage["n"..nW]
	for i=1,getn(tbl) do
		GroupFighter:ClearMap(nW, tbl[i])
	end
end



function SimCityMainThanhThi:createNpcSet(startNPCIndex, perPage, ngoaitrang) 	

	local mapID, nX, nY = GetWorldPos()

	for i=0,perPage do 
		local id = startNPCIndex + i
		self:_createSingle(id, mapID, ngoaitrang or 0)
	end 	
end

function SimCityMainThanhThi:removeAll()
	local nW, nX, nY = GetWorldPos()
	self:_clearMap(nW)
end


-- MAIN DIALOG FUNCTIONS
function SimCityMainThanhThi:showhideNpcId(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:Update(nW, "showingId", show)
	self:caidat()
end

function SimCityMainThanhThi:allowFighting(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:Update(nW, "allowFighting", show)
	self:caidat()
end
 

function SimCityMainThanhThi:allowChat(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:Update(nW, "allowChat", show)
	self:caidat()
end

function SimCityMainThanhThi:showFightingArea(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:Update(nW, "showFightingArea", show)
	self:caidat()
end


function SimCityMainThanhThi:showName(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:Update(nW, "showName", show)
	self:caidat()
end


function SimCityMainThanhThi:showDecoration(show)
	local nW, nX, nY = GetWorldPos()
	SimCityWorld:ShowTrangTri(nW, show)
	self:caidat()
end


function SimCityMainThanhThi:caidat()
	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)

 	local tbSay = {worldInfo.name.." V� L�m ��i H�i - Bang l�nh"} 


 	if getn(worldInfo.decoration) >= 1 then
	 	if worldInfo.showDecoration == 0 then 
		 	tinsert(tbSay, "M� h�i ch� [kh�ng]/#SimCityMainThanhThi:showDecoration(1)")
		else 	
		 	tinsert(tbSay, "M� h�i ch� [c�]/#SimCityMainThanhThi:showDecoration(0)")
		end
	end
	

	if worldInfo.allowFighting == 1 then
 		tinsert(tbSay, "��nh nhau [c�]/#SimCityMainThanhThi:allowFighting(0)")
	else
		tinsert(tbSay, "��nh nhau [kh�ng]/#SimCityMainThanhThi:allowFighting(1)")
	end

	if worldInfo.showFightingArea == 1 then
 		tinsert(tbSay, "Th�ng b�o n�i ��nh nhau [c�]/#SimCityMainThanhThi:showFightingArea(0)")
	else
		tinsert(tbSay, "Th�ng b�o n�i ��nh nhau [kh�ng]/#SimCityMainThanhThi:showFightingArea(1)")
	end

	if worldInfo.allowChat == 1 then
 		tinsert(tbSay, "Tr� chuy�n [c�]/#SimCityMainThanhThi:allowChat(0)")
	else
		tinsert(tbSay, "Tr� chuy�n [kh�ng]/#SimCityMainThanhThi:allowChat(1)")
	end


 	if worldInfo.showingId == 1 then
 		tinsert(tbSay, "H� s� b�o danh [c�]/#SimCityMainThanhThi:showhideNpcId(0)")
	else
		tinsert(tbSay, "H� s� b�o danh [kh�ng]/#SimCityMainThanhThi:showhideNpcId(1)")
	end


	if worldInfo.showName == 1 then
 		tinsert(tbSay, "T�n [t� ��ng]/#SimCityMainThanhThi:showName(0)")
	else
		tinsert(tbSay, "T�n [t�t]/#SimCityMainThanhThi:showName(1)")
	end

 	tinsert(tbSay, "Quay l�i/main")  
    tinsert(tbSay, "K�t th�c ��i tho�i./no")
    CreateTaskSay(tbSay)
	return 1
end



function SimCityMainThanhThi:createNpcCustomAsk()
	g_AskClientStringEx(GetStringTask(TASK_S_POSITION), 0, 256, "<ID> <S� L��ng>", {self.askNo_confirm, {self}})	
end
function SimCityMainThanhThi:askNo_confirm(inp)

	local szCode = split(inp, " ")
	local perPage = 1
	local id = tonumber(szCode[1])
	if szCode[2] ~= nil and szCode[2] ~= "" then
		perPage = tonumber(szCode[2])
	end

	local mapID, nX, nY = GetWorldPos()
	for i=0,perPage do 		
		self:_createSingle(id, mapID)
	end
end



function SimCityMainThanhThi:goiAnhHungThiepNgoaiTrang()
	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)


 	local tbSay = {worldInfo.name.." V� L�m ��i H�i"}
 	tinsert(tbSay, "Cao c�p 1/#SimCityMainThanhThi:createNpcSet(1000,500,1)")
 	tinsert(tbSay, "Cao c�p 2/#SimCityMainThanhThi:createNpcSet(1500,500,1)")
 	tinsert(tbSay, "Cao c�p 3/#SimCityMainThanhThi:createNpcSet(2000,500,1)")
	tinsert(tbSay, "Trung c�p/#SimCityMainThanhThi:createNpcSet(500,500,1)") 	
    tinsert(tbSay, "K�t th�c ��i tho�i./no")
    CreateTaskSay(tbSay)
	return 1

end


function SimCityMainThanhThi:goiAnhHungThiep()
	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)


 	local tbSay = {worldInfo.name.." V� L�m ��i H�i"}
 	tinsert(tbSay, "Cao c�p 1/#SimCityMainThanhThi:createNpcSet(1000,500)")
 	tinsert(tbSay, "Cao c�p 2/#SimCityMainThanhThi:createNpcSet(1500,500)")
 	tinsert(tbSay, "Cao c�p 3/#SimCityMainThanhThi:createNpcSet(2000,500)")
	tinsert(tbSay, "Trung c�p/#SimCityMainThanhThi:createNpcSet(500,500)") 	
 	--tinsert(tbSay, "T� ch�n/#SimCityMainThanhThi:createNpcCustomAsk()") 
    tinsert(tbSay, "K�t th�c ��i tho�i./no")
    CreateTaskSay(tbSay)
	return 1

end


function  SimCityMainThanhThi:thanhthiMenu()

	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)

	if not worldInfo.name then
		Say("Tri�u M�n: th�nh th� n�y ch�a ���c m�.<enter><enter>C�c h� c� th� ��ng g�p <color=yellow>b�n �� ���c ���ng �i<color> ��n t�c gi� tr�n fb h�i qu�n kh�ng?")
	else
	 	local tbSay = {worldInfo.name.." V� L�m ��i H�i"}

		tinsert(tbSay, "M�i anh h�ng thi�n h�/#SimCityMainThanhThi:goiAnhHungThiepNgoaiTrang()")
	 	tinsert(tbSay, "Th�m qu�i nh�n/#SimCityMainThanhThi:goiAnhHungThiep()")
	 	tinsert(tbSay, "Th�m quan binh/#SimCityMainThanhThi:CreatePatrol()")
		tinsert(tbSay, "Thi�t l�p/#SimCityMainThanhThi:caidat()")	
		tinsert(tbSay, "Gi�i t�n/#SimCityMainThanhThi:removeAll()") 	
	    tinsert(tbSay, "K�t th�c ��i tho�i./no")
	    CreateTaskSay(tbSay) 
    end
	return 1

end


function SimCityMainThanhThi:mainMenu()
	local nW, nX, nY = GetWorldPos()	
	local worldInfo = SimCityWorld:Get(nW)
	SimCityChienTranh:modeTongKim(0,0)
	SimCityChienTranh.nW = nW
	
	if not worldInfo.name then
		Say("Tri�u M�n: th�nh th� n�y ch�a ���c m�.<enter><enter>C�c h� c� th� ��ng g�p <color=yellow>b�n �� ���c ���ng �i<color> ��n t�c gi� tr�n fb h�i qu�n kh�ng?")
	else
	 	local tbSay = {worldInfo.name.." V� L�m ��i H�i"}

		tinsert(tbSay, "Th�nh th�/#SimCityMainThanhThi:thanhthiMenu()")
	 	tinsert(tbSay, "Chi�n lo�n/#SimCityChienTranh:mainMenu()")
	    tinsert(tbSay, "K�t th�c ��i tho�i./no")
	    CreateTaskSay(tbSay) 
    end
	return 1
end


function SimCityMainThanhThi:addNpcs()
	add_dialognpc({ 
		{1617,78,1610,3235,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- TD
		{1617,37,1719,3091,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- BK
		{1617,11,3158,5082,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- TD
		{1617,1,1569,3198,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- PT
		{1617,162,1603,3157,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- DL
		{1617,80,1785,3034,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- DC
		{1617,176,1585,2932,"\\script\\global\\vinh\\simcity\\controllers\\thanhthi.lua","Tri�u M�n"}, -- LA
	})
end


function main()
	return SimCityMainThanhThi:mainMenu()
end
