
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\missions\\challengeoftime\\include.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\config\\32\\talkdailytask.lua")

map_posfiles = {
	[8] = {"\\settings\\maps\\challengeoftime\\lineup8.txt", 1},	
	[16] = {"\\settings\\maps\\challengeoftime\\lineup16.txt", 1},	
	[20] = {"\\settings\\maps\\challengeoftime\\lineup20.txt", 1},
	[24] = {"\\settings\\maps\\challengeoftime\\lineup24.txt", 1},
	[32] = {"\\settings\\maps\\challengeoftime\\lineup32.txt", 1},
	[40] = {"\\settings\\maps\\challengeoftime\\lineup40.txt", 1},
	[56] = {"\\settings\\maps\\challengeoftime\\lineup56.txt", 1}
};

LEVEL_NPC_EASY	=	20
LEVEL_NPC_HIGH	=	35
LEVEL_BOSS_EASY	=	40
LEVEL_BOSS_HIGH	=	50

map_lnpc = {
	-- 1
	{1, {1.5, 0, nil},
		{nil, 975, "S��ng �ao ", LEVEL_NPC_EASY, -1, 0, 16, func_npc_getpos}},
	-- 2
	{1, {1.5, 0, nil},
		{nil, 976, "Phi Sa", LEVEL_NPC_EASY, -1, 0, 16, func_npc_getpos}},
	-- 3
	{1, {3, 0, nil},
		{nil, 977, "S��ng Li�m", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 4
	{2,	{9, 0, nil},
		{nil, 975, "S��ng �ao ", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 5
	{1, {3, 0, nil},
		{nil, 978, "Th�a Phong", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 6
	{1, {4.5, 0, nil},
		{nil, 979, "Th�y H�n", LEVEL_NPC_EASY, 1, 0, 24, func_npc_getpos}},
	-- 7
	{1, {4.5, 0, nil},
		{nil, 980, "Th�n T� ", LEVEL_NPC_EASY, 3, 0, 24, func_npc_getpos}},
	-- 8
	{2,	{6, 10, nil},
		{nil, 976, "Phi Sa", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 9
	{1, {5, 0, nil},
		{nil, 981, "Tranh H�n", LEVEL_NPC_EASY, 2, 0, 32, func_npc_getpos}},
	-- 10
	{1, {5, 0, nil},
		{nil, 982, "Ph� Lang", LEVEL_NPC_EASY, 4, 0, 32, func_npc_getpos}},
	-- 11
	{2,	{9, 0, nil},
		{nil, 977, "S��ng Li�m", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 12
	{1, {6, 0, nil},
		{nil, 983, "�nh C�n", LEVEL_NPC_EASY, 0, 0, 40, func_npc_getpos}},
	-- 13
	{2,	{6, 10, nil},
		{nil, 978, "Th�a Phong", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 14
	{1,	{4.5, 0, nil},
		{nil, 987, "Giang Tr�m Y�n", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 15
	{1,	{6, 0, nil},
		{nil, 984, "�ao T� ", LEVEL_NPC_EASY, -1, 0, 32, func_npc_getpos}},
	-- 16
	{2,	{9, 0, nil},
		{nil, 979, "Th�y H�n", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 17
	{1,	{4.5, 0, nil},
		{nil, 988, "C� D�  T�u", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 18
	{2,	{6, 10, nil},
		{nil, 980, "Th�n T� ", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 19
	{1,	{4.5, 0, nil},
		{nil, 989, "Ch��ng B�t Ph��ng", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 20
	{1,	{6, 0, nil},
		{nil, 985, "Lang b�ng", LEVEL_NPC_EASY, -1, 0, 24, func_npc_getpos}},
	-- 21
	{2,	{10.5, 0, nil},
		{nil, 981, "Tranh H�n", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 22
	{1,	{4.5, 0, nil},
		{nil, 990, "Ti�n Than Th� ", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 23
	{1,	{4.5, 0, nil},
		{nil, 991, "Nh�m T�ng Ho�nh", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 24
	{1,	{7.5, 30, nil},
		{nil, 992, "�� T�n Sinh", LEVEL_NPC_EASY, -1, 0, 20, func_npc_getpos}},
	-- 25
	{2,	{9, 0, nil},
		{nil, 984, "�ao T� ", LEVEL_NPC_EASY, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_EASY, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 26
	{1, {7.5, 0, nil},
		{nil, 986, "H�c C�n", LEVEL_NPC_EASY, -1, 0, 56, func_npc_getpos}},
	-- 27
	{2, {24, 15, nil},
		{nil, 1006, "Nhi�p Th� Tr�n", LEVEL_BOSS_EASY, -1, 0, 1, {1568, 3227}},
		{nil, 985, "Lang b�ng", LEVEL_NPC_EASY, -1, 0, 16, func_npc_getpos}},
	-- 28
	{1, {0, 0, nil},
		{nil, 993, func_npc_get_eachname, LEVEL_NPC_EASY, -1, 1, 8, func_npc_getpos}},
};

map_hnpc = {
	-- 1
	{1, {2, 0, nil},
		{nil, 1007, "S��ng �ao ", LEVEL_NPC_HIGH, -1, 0, 16, func_npc_getpos}},
	-- 2
	{1, {2, 0, nil},
		{nil, 1008, "Phi Sa", LEVEL_NPC_HIGH, -1, 0, 16, func_npc_getpos}},
	-- 3
	{1, {3, 0, nil},
		{nil, 1009, "S��ng Li�m", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 4
	{2, {9, 0, nil},
		{nil, 1007, "S��ng �ao ", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 5
	{1, {3, 0, nil},
		{nil, 1010, "Th�a Phong", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 6
	{1, {5, 0, nil},
		{nil, 1011, "Th�y H�n", LEVEL_NPC_HIGH, 1, 0, 24, func_npc_getpos}},
	-- 7
	{1, {5, 0, nil},
		{nil, 1012, "Th�n T� ", LEVEL_NPC_HIGH, 3, 0, 24, func_npc_getpos}},
	-- 8
	{2, {9, 15, nil},
		{nil, 1008, "Phi Sa", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 9
	{1, {6, 0, nil},
		{nil, 1013, "Tranh H�n", LEVEL_NPC_HIGH, 2, 0, 32, func_npc_getpos}},
	-- 10
	{1, {6, 0, nil},
		{nil, 1014, "Ph� Lang", LEVEL_NPC_HIGH, 4, 0, 32, func_npc_getpos}},
	-- 11
	{2, {12, 0, nil},
		{nil, 1009, "S��ng Li�m", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 12
	{1, {9, 0, nil},
		{nil, 1015, "�nh C�n", LEVEL_NPC_HIGH, 0, 0, 40, func_npc_getpos}},
	-- 13
	{2, {9, 15, nil},
		{nil, 1010, "Th�a Phong", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 14
	{1, {6, 0, nil},
		{nil, 1019, "Giang Tr�m Y�n", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 15
	{1, {9, 0, nil},
		{nil, 1016, "�ao T�", LEVEL_NPC_HIGH, -1, 0, 32, func_npc_getpos}},
	-- 16
	{2, {14, 0, nil},
		{nil, 1011, "Th�y H�n", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 17
	{1, {6, 0, nil},
		{nil, 1020, "C� D�  T�u", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 18
	{2, {12, 20, nil},
		{nil, 1012, "Th�n T� ", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 19
	{1, {6, 0, nil},
		{nil, 1021, "Ch��ng B�t Ph��ng", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 20
	{1, {8, 0, nil},
		{nil, 1017, "Lang b�ng", LEVEL_NPC_HIGH, -1, 0, 24, func_npc_getpos}},
	-- 21
	{2, {14, 0, nil},
		{nil, 1013, "Tranh H�n", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 22
	{1, {6, 0, nil},
		{nil, 1022, "Ti�n Than Th� ", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 23
	{1, {6, 0, nil},
		{nil, 1023, "Nh�m T�ng Ho�nh", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 24
	{1, {10, 20, nil},
		{nil, 1024, "�� T�n Sinh", LEVEL_NPC_HIGH, -1, 0, 20, func_npc_getpos}},
	-- 25
	{2, {15, 0, nil},
		{nil, 1016, "�ao T� ", LEVEL_NPC_HIGH, func_npc_getseries, 0, 16, func_npc_getpos},
		{func_npc_proceed, func_npc_getid, func_npc_getname, LEVEL_BOSS_HIGH, func_npc_getseries, 1, 1, {1568, 3227}}},
	-- 26
	{1, {9, 0, nil},
		{nil, 1018, "H�c C�n", LEVEL_NPC_HIGH, -1, 0, 56, func_npc_getpos}},
	-- 27
	{2, {32, 32, nil},
		{nil, 1038, "Nhi�p Th� Tr�n", LEVEL_BOSS_HIGH, -1, 1, 1, {1568, 3227}},
		{nil, 1017, "Lang b�ng", LEVEL_NPC_HIGH, -1, 0, 16, func_npc_getpos}},
	-- 28
	{1, {0, 0, nil},
		{nil, 1025, func_npc_get_eachname, LEVEL_NPC_HIGH, -1, 1, 8, func_npc_getpos}},
};

map_lo_hidden_npc = {
	{1,	{0, 0, nil}, {nil, {994, 1001}, {func_ladder_getname, 10119}, 75, func_npc_getseries, 1, 1, {1568, 3227}}},
	{1,	{0, 0, nil}, {nil, {994, 1001}, {func_ladder_getname, 10179}, 75, func_npc_getseries, 1, 1, {1568, 3227}}}
};

map_hi_hidden_npc = {
	{1,	{0, 0, nil}, {nil, {1026, 1033}, {func_ladder_getname, 10119}, 95, -1, 1, 1, {1568, 3227}}},
	{1,	{0, 0, nil}, {nil, {1026, 1033}, {func_ladder_getname, 10180}, 95, -1, 1, 1, {1568, 3227}}}
};

--Boss �i Vip
map_new_Ncp = {
	[1] = {nil, 1673, "Ti�u Nhi�p Th� Tr�n", 95, -1, 1, 1, {1568, 3227}},
	[2] = { nNpcId = 1674, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_C� B�ch",	nIsboss = 1,},
	[3] = { nNpcId = 1675, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_Huy�n Gi�c ��i S�",	nIsboss = 1,},
	[4] = { nNpcId = 1676, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_���ng B�t Nhi�m",	nIsboss = 1,},
	[5] = { nNpcId = 1677, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_Lam Y Y",	nIsboss = 1,},
	[6] = { nNpcId = 1678, nLevel = 5,	bNoRevive = 1, szName = "V��t �i _Thanh Hi�u S� Th�i",	nIsboss = 1,},
	[7] = { nNpcId = 1679, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_Chung Linh T�",	nIsboss = 1,},
	[8] = { nNpcId = 1680, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_H� Nh�n Ng�",	nIsboss = 1,},
	[9] = { nNpcId = 1681, nLevel = 5,	bNoRevive = 1, szName = "V��t �i _�oan M�c Du�",	nIsboss = 1,},
	[10] = { nNpcId = 1682, nLevel = 5,	bNoRevive = 1, szName = "V��t �i_��o Thanh Ch�n Nh�n",	nIsboss = 1,},
	[11] = { nNpcId = 1683, nLevel = 5,	bNoRevive = 1, szName = "V��t �i _To�n C� T�",	nIsboss = 1,},
};

map_transfer_npc = {
	[1] = { nNpcId = 1684,	bNoRevive = 1, szName = "V��t �i_Ng��i ti�p d�n M�t Ph�ng", szScriptPath = "\\script\\missions\\challengeoftime\\npc\\transfer.lua"},
}

function lo_exp_award(time)
	local min = floor(time / 60);
	if (min >= 25) then
		return 15;
	else
		return floor(172 * (1 - min / 25)) + 10;
	end
end

map_laward_success = {
	lo_exp_award, 0, nil
};

function hi_exp_award(time)
	local min = floor(time / 60);
	if (min >= 25) then
		return 30;
	else
		return floor(233 * (1 - min / 25)) + 20;
	end
end

map_haward_success = {
	hi_exp_award, 0, nil
};

map_random_awards = {
	100000,													
	{0.005, 	{"Tinh H�ng B�o Th�ch",		353}},					
	{0.005, 	{"Lam Th�y Tinh", 			238}},					
	{0.005, 	{"T� Th�y Tinh", 			239}},					
	{0.005, 	{"L�c Th�y Tinh", 			240}},					
	{0.0005, 	{"V� L�m M�t T�ch", 		6, 1, 26, 1, 0, 0}},	
	{0.0005, 	{"T�y T�y Kinh",			6, 1, 22, 1, 0, 0}},	
	{0.2, 		{"Ph�c Duy�n L� (��i) ",	6, 1, 124, 1, 0, 0}},	
	{0.19587, 	{"Ph�c Duy�n L� (Trung) ", 	6, 1, 123, 1, 0, 0}},	
	{0.18, 	{"Ph�c Duy�n L� (Ti�u) ",	6, 1, 122, 1, 0, 0}},	
	{0.15, 	{"Ti�n Th�o L� ",			6, 1, 71, 1, 0, 0}},	
	{0.1, 		{"Thi�n s�n  B�o L� ",		6, 1, 72, 1, 0, 0}},	
	{0.1, 		{"B�ch Qu� L� ",			6, 1, 73, 1, 0, 0}},	
	{0.05, 	{"L�nh b�i Phong L�ng ��",		489}},					
};

function get_npc_id(item, index)
	local id = item[NPC_ATTRIDX_ID];
	local id_type = type(id);
	if (id_type == "function") then
		return id(item, index);
	elseif (id_type == "number") then
		return id;
	elseif (id_type == "table") then
		local pos = random(1, getn(id));
		return id[pos];
	end
end

function get_npc_name(item, index)
	local name = item[NPC_ATTRIDX_NAME];
	local name_type = type(name);
	-- DEBUG
--	print(format("get_npc_name(): item is %s", name_type));
	
	if (name_type == "string") then
		return name;
	elseif (name_type == "function") then
		return name(item, index);
	elseif (name_type == "table") then
		local func = name[1];
		return func(item, index);
	else
		return nil;
	end
end

function get_npc_level(item, index)
	-- DEBUG
--	print(format("get_npc_level():%d", item[NPC_ATTRIDX_LEVEL]));
	return item[NPC_ATTRIDX_LEVEL];
end

function get_npc_series(item, index)
	local series = item[NPC_ATTRIDX_SERIES];
	local series_type = type(series);
	if (series_type == "function") then
		return series(item, index);
	elseif (series_type == "number") then
		if (series < 0) then
			local pos = random(1, getn(map_series));
			return map_series[pos];
		else
			return series;
		end
	else
		return nil;
	end
end

function npc_proceed(item)
	local proceed = item[NPC_ATTRIDX_PROCEED];
	local proceed_type = type(proceed);
	if (proceed_type == "function") then
		proceed(item);
	end
end

function get_npc_count(item)
	return item[NPC_ATTRIDX_COUNT];
end

function get_npc_pos(item, index)
	local pos = item[NPC_ATTRIDX_POSITION];
	local pos_type = type(pos);
	if (pos_type == "table") then
		return pos[1], pos[2];
	elseif (pos_type == "function") then
		return pos(item, index);
	else
		return nil;
	end
end

function get_npc_isboss(item)
	return item[NPC_ATTRIDX_ISBOSS];
end

function advanced()
	world = SubWorldIdx2ID(SubWorld);
	return map_isadvanced[world] ~= 0;
end

function current_npc_map()
	if (advanced()) then
		return map_hnpc;
	else
		return map_lnpc;
	end
end

function get_batch_count()
	return getn(current_npc_map());
end

function add_npc(item)
	local npc_count = get_npc_count(item)
	local res_count = 0
	
	for index = 1, npc_count do
		local id = get_npc_id(item, index)
		local level = get_npc_level(item, index)
		local isboss = get_npc_isboss(item, index)
		local series = get_npc_series(item, index)
		local name = get_npc_name(item, index)
		local px, py = get_npc_pos(item, index)
		npc_proceed(item)
		
		-- DEBUG
--		print("AddNpcEx");
--		print(format("id:%d", id));
--		print(format("level:%d", level));
--		print(format("series:%d", series));
--		print(format("isboss:%d", isboss));
--		print(format("name:%s", name));
--		print(format("pos: %d, %d", px, py));

		local npc_index = AddNpcEx(
			id,			-- ID
			level,		-- �ȼ�
			series,		-- ����
			SubWorld,	-- ��ͼ
			px * 32,	-- X����
			py * 32,	-- Y����
			1,			-- ������
			name,		-- ����
			isboss);	-- �Ƿ�BOSS
		if (npc_index ~= nil and npc_index > 0) then
			res_count = res_count + 1;
			SetNpcDeathScript(npc_index, SCRIPT_NPC_DEATH);
		else
			-- DEBUG
			local msg = format("Failed to AddNpcEx(%d,%d,%d,%d,%d,%d,%d,%s,%d)!!!",
				id, level, series, SubWorld, px, py, 1, name, isboss);
			print(msg);
		end
	end
	
	return res_count;
end

function create_all_npc(npcs)
	local times = npcs[1];
	local count = 0;
	for i = 1, times do
		count = count + add_npc(npcs[i + 2]);
	end
	-- DEBUG
	--print(format("������%dֻ��", count));
	
	SetMissionV(VARV_NPC_COUNT, count);
	return count;
end

function create_batch_npc(batch)
	local map = current_npc_map();
	npc = map[batch]

	local npc_count = create_all_npc(npc);	
	if batch == GetMissionV(VARV_XIAONIESHICHEN_BATCH) and GetMissionV(VARV_BATCH_MODEL) == 1 then
		add_npc(map_new_Ncp[1])
		SetMissionV(VARV_NPC_COUNT, npc_count + 1);
		WriteLog("Ti�u Nhi�p Th� Tr�n �� tham gia chi�n cu�c!")
		Msg2MSAll(MISSION_MATCH, "Ti�u Nhi�p Th� Tr�n �� tham gia chi�n cu�c!");
	end

	local msg = "<color=metal>T�ng th� "..batch.." xu�t hi�n " .. npc_count .. " con qu�i!<color>";
	Msg2MSAll(MISSION_MATCH, msg);

	if (batch == 11) then
		%tbTalkDailyTask:AddTalkNpc(SubWorldIdx2ID(SubWorld), SubWorldIdx2ID(SubWorld))
	elseif (batch == 21) then
		local nOldPlayerIdx = PlayerIndex
		local tbPlayerList = GetMapPlayerList( -1, 1)
		for i=1,getn(tbPlayerList) do
			PlayerIndex = tbPlayerList[i]
			if ( PlayerIndex > 0 ) then
				local TAB_KML = {
					--{szName="<color=pink>Kim M� L�nh", tbProp={6,1,4090}, nCount = 1, nExpiredTime = 1440, nBindState = -2},
				}
	
				--for i = 1,getn(TAB_KML) do
					--tbAwardTemplet:GiveAwardByList(TAB_KML[i], "Ph�n th��ng Kim M� L�nh");
				--end
			end
		end
		PlayerIndex = nOldPlayerIdx
	end
end

function add_transfer_npc()
	local nX,nY, nMapIndex = GetPos()
	basemission_CallNpc(map_transfer_npc[1], SubWorldIdx2ID(nMapIndex),1568*32, 3227*32)
end