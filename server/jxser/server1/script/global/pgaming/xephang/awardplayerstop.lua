Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\pgaming\\xephang\\xephang_log\\awardplayertop_tb.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")

IncludeLib("RELAYLADDER");
IL("TITLE");

_TbFac = {{"shaolin", "Thi�u L�m"},{"tianwang", "Thi�n V��ng"},{"tangmen", "���ng M�n"},{"wudu", "Ng� ��c"},{"emei", "Nga My"},{"cuiyan", "Th�y Y�n"},{"gaibang", "C�i Bang"},{"tianren", "Thi�n Nh�n"},{"wudang", "V� �ang"},{"kunlun", "C�n L�n"},}

-----------------------------------------------------------
nThuongTop_1	 = 5755
nThuongTop_1_2 	 = 5754
nThuongTop_2	 = 5753
nThuongTop_3	 = 5752
-------------------------------

function UpdateTOPPlayerPrivWeek()
	local OpenFileTopWrite = openfile("script/global/pgaming/xephang/xephang_log/awardplayertop_tb.lua", "w")
	write(OpenFileTopWrite, "_PlayersNameTb = \n{\n\TopCaoThu = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10287, i);
		write(OpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	end
	write(OpenFileTopWrite, "\t\t},\n\TopPhuHo = \n\t\t{", "\n")
	for i = 1, 4 do
		local szName, nValue = Ladder_GetLadderInfo(10288, i);
		write(OpenFileTopWrite, "\t\t\t["..i.."] = {Name = '"..szName.."', Money = "..nValue..",},", "\n")
	end
	write(OpenFileTopWrite, "\t\t},\n\TopMonPhai = \n\t\t{", "\n")
	
	local szName, nValue = Ladder_GetLadderInfo(10277, 1);
	write(OpenFileTopWrite, "\t\t\tshaolin = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10278, 1);
	write(OpenFileTopWrite, "\t\t\ttianwang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10279, 1);
	write(OpenFileTopWrite, "\t\t\ttangmen = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10280, 1);
	write(OpenFileTopWrite, "\t\t\twudu = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10281, 1);
	write(OpenFileTopWrite, "\t\t\temei = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10282, 1);
	write(OpenFileTopWrite, "\t\t\tcuiyan = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10283, 1);
	write(OpenFileTopWrite, "\t\t\tgaibang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10284, 1);
	write(OpenFileTopWrite, "\t\t\ttianren = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10285, 1);
	write(OpenFileTopWrite, "\t\t\twudang = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	local szName, nValue = Ladder_GetLadderInfo(10286, 1);
	write(OpenFileTopWrite, "\t\t\tkunlun = {Name = '"..szName.."', Level = "..nValue..",},", "\n")
	
	write(OpenFileTopWrite, "\t\t},\n}", "\n")
	closefile(OpenFileTopWrite)
	LoadScript("\\script\\global\\pgaming\\xephang\\xephang_log\\awardplayertop_tb.lua")
	for i=10277, 10286 do -- m�n ph�i cao th�
		Ladder_ClearLadder(i)
	end
	for i=10265, 10275 do -- m�n ph�i ph� h�
		Ladder_ClearLadder(i)
	end
	Ladder_ClearLadder(10288) -- ph� h�
end

function GetAwardTOPPlayers()
	local TbOp = {}
	tinsert(TbOp, "> Ta ��n �� nh�n th��ng TOP cao th� tu�n tr��c!/#ReceiveAward(1)")
	tinsert(TbOp, "Ta mu�n xem danh s�ch cao th� tu�n tr��c!/#ViewTOP(1)")
	--tinsert(TbOp, "> Ta ��n �� nh�n th��ng TOP ph� h� tu�n tr��c!/#ReceiveAward(2)")
	--tinsert(TbOp, "Ta mu�n xem danh s�ch ph� h� tu�n tr��c!/#ViewTOP(2)")
	--tinsert(TbOp, "> Ta ��n �� nh�n th��ng TOP m�n ph�i tu�n tr��c!/#ReceiveAward(3)")
	--tinsert(TbOp, "Ta mu�n xem danh s�ch cao th� m�n ph�i tu�n tr��c!/#ViewTOP(3)")
	tinsert(TbOp, "Ta ��n �� h�i th�m ng�i th�i!/OnCancel")
	Say("<color=Orange>L� quan: <color>".."Tu�n m�i �� ��n, t�t c� c�c cao th� c�a tu�ntr��c �� ���c ghi danh, �� t�n vinh c�c v� cao th�,  b�n trang s� ��t bi�t trao th��ng cho nh�ng nh�n t�i n�y!", getn(TbOp), TbOp)
end

_TitleTopMoney =
{
	{TitleID = 216, TitleName = "Gi�u N�t V�ch �� T��ng", Xu = 300,},
	{TitleID = 217, TitleName = "Ph� Kh� ��nh Qu�c", Xu = 200,},
	{TitleID = 218, TitleName = "Nh�t ��i Ph� Gia", Xu = 100,},
	{TitleID = 219, TitleName = "Ti�n Mu�n B�c V�n", Xu = 50,},
}
--0 l� nam, 1 l� n�
_TitleFaction = 
{
	shaolin = 
		{
			[0] = {TitleID = 220, TitleName = "Thi�u l�m Cao Th�", Xu = 200,}, 
			[1] = {TitleID = 220, TitleName = "Thi�u l�m Cao Th�", Xu = 200,},
			
		},
	tianwang = 
		{
			[0] = {TitleID = 221, TitleName = "Thi�n v��ng Cao Th�", Xu = 200,},
			[1] = {TitleID = 221, TitleName = "Thi�n v��ng Cao Th�", Xu = 200,},
			
		},
	tangmen = 
		{
			[0] = {TitleID = 222, TitleName = "���ng m�n Cao Th�", Xu = 200,},
			[1] = {TitleID = 222, TitleName = "���ng m�n Cao Th�", Xu = 200,},
			
		},
	wudu = 
		{
			[0] = {TitleID = 223, TitleName = "Ng� ��c Cao Th�", Xu = 200,},
			[1] = {TitleID = 223, TitleName = "Ng� ��c Cao Th�", Xu = 200,},
			
		},
	emei = 
		{
			[0] = {TitleID = 224, TitleName = "Nga my Cao Th�", Xu = 200,},
			[1] = {TitleID = 224, TitleName = "Nga my Cao Th�", Xu = 200,},
			
		},
	cuiyan = 
		{
			[0] = {TitleID = 225, TitleName = "Th�y y�n Cao Th�", Xu = 200,},
			[1] = {TitleID = 225, TitleName = "Th�y y�n Cao Th�", Xu = 200,},
			
		},
	gaibang = 
		{
			[0] = {TitleID = 226, TitleName = "C�i bang Cao Th�", Xu = 200,},
			[1] = {TitleID = 226, TitleName = "C�i bang Cao Th�", Xu = 200,},
		},
	tianren = 
		{
			[0] = {TitleID = 227, TitleName = "Thi�n nh�n Cao Th�", Xu = 200,},
			[1] = {TitleID = 227, TitleName = "Thi�n nh�n Cao Th�", Xu = 200,},
		},
	wudang = 
		{
			[0] = {TitleID = 228, TitleName = "V� �ang Cao Th�", Xu = 200,},
			[1] = {TitleID = 228, TitleName = "V� �ang Cao Th�", Xu = 200,},
		},
	kunlun = 
		{
			[0] = {TitleID = 229, TitleName = "C�n l�n Cao Th�", Xu = 200,},
			[1] = {TitleID = 229, TitleName = "C�n l�n Cao Th�", Xu = 200,},
		},
}

function ReceiveAward(Sel)
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	if Sel == 1 then
		for i = 1, 3 do
			if _PlayersNameTb["TopCaoThu"][i].Name == GetName() then
				return ReceiveAwardActive(Sel, i)
			end
		end
		return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
	elseif Sel == 2 then
		for i = 1, 3 do
			if _PlayersNameTb["TopPhuHo"][i].Name == GetName() then
				return ReceiveAwardActive2(Sel, i)
			end
		end
		return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
	elseif Sel == 3 then
		local CheckFac = 0
		for facloop = 1, 10 do
			if _SectTable[facloop][1] == GetFaction() then
				if _PlayersNameTb["TopMonPhai"][GetFaction()].Name == GetName() then
					return ReceiveAwardActive3(Sel, GetFaction())
				else
					CheckFac = 1
				end
			end
		end
		if CheckFac == 1 then
			return Talk(1, "", "��i hi�p kh�ng c� trong danh s�ch nh�n th��ng c�a <enter>tu�n n�y, ��i hi�p c� th� v�o ph�n xem danh s�ch �� <enter>bi�t ai ���c nh�n th��ng!")
		end
		return Talk(1, "", "<color=metal>��i hi�p ch�a l� �� t� c�a gi�o ph�i n�o c� n�n kh�ng th� nh�n th��ng � m�c n�y!<color>")
	end
end

_SectTable = 
{
	[1] = {"shaolin", "Thi�u L�m ph�i", 0, 0, 1, 72},
	[2] = {"tianwang", "Thi�n V��ng Bang", 0, 1, 3, 79},
	[3] = {"tangmen", "���ng M�n", 1, 2, 3, 76},
	[4] = {"wudu", "Ng� ��c Gi�o", 1, 3, 2, 80},
	[5] = {"emei", "Nga My ph�i", 2, 4, 1, 74},
	[6] = {"cuiyan", "Th�y Y�n m�n", 2, 5, 3, 67},
	[7] = {"gaibang", "C�i Bang", 3, 6, 1, 78},
	[8] = {"tianren", "Thi�n Nh�n Gi�o", 3, 7, 2, 81},
	[9] = {"wudang", "V� �ang ph�i", 4, 8, 1, 73},
	[10] = {"kunlun", "C�n L�n ph�i", 4, 9, 3, 75},
}

--==================================================================================

function ReceiveAwardActive(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end
	
	if (GetTask(nThuongTop_1) >= 1) then
		Talk(1,"","C�c h� �� nh�n th��ng r�i")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_1, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	tbAwardTemplet:GiveAwardByList(tbAwardRank[RankNum], "Ph�n th��ng �ua top")
	Say("Ch�c m�ng ��i hi�p �� nh�n th��ng Top Cao Th� th�nh c�ng")
--------------------------------------------------------------------------------------------
end
-------
function ReceiveAwardActive2(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopMoney[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleFaction[GetFaction()][GetSex()][RankNum].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end

	
	if (GetTask(nThuongTop_2) >= 1) then
		Talk(1,"","C�c h� �� nh�n th��ng r�i")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_2, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	Say("Ch�c m�ng ��i hi�p �� nh�n th��ng Top Ph� h� th�nh c�ng")
--------------------------------------------------------------------------------------------
end
-------
function ReceiveAwardActive3(RankType, RankNum)
	local TitleIDAward
	local TitleIDName
	local Xu1
	if RankType == 1 then
		TitleIDAward = _TitleTopLvl[RankNum].TitleID
		TitleIDName = _TitleTopLvl[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 2 then
		TitleIDAward = _TitleTopMoney[RankNum].TitleID
		TitleIDName = _TitleTopMoney[RankNum].TitleName
		Xu1 = _TitleTopLvl[RankNum].Xu
	elseif RankType == 3 then
		TitleIDAward = _TitleFaction[GetFaction()][GetSex()].TitleID
		TitleIDName = _TitleFaction[GetFaction()][GetSex()].TitleName
		Xu1 = _TitleFaction[GetFaction()][GetSex()].Xu
	end
	local TimeActive = ((7 - tonumber(date("%w"))) * 24) + (24 - tonumber(GetLocalDate("%H")))
	if tonumber(date("%w")) == 0 then
		TimeActive = (24 - tonumber(GetLocalDate("%H")))
	end
-----------------------------------------------------------------------------------
	local nDate = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local n_item_date = tonumber(FormatTime2String("%Y%m%d%H%M",ITEM_GetExpiredTime(nItemIndex)));
	local n_cur_date = tonumber(GetLocalDate("%Y%m%d%H%M"));
	local nWeekDay = tonumber(GetLocalDate("%w"))
	local nServerTime = GetCurServerTime()+ (7*24*60*60); 
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 

	if (GetTask(nThuongTop_1_2) ~= nWeekDay) then
	SetTask(nThuongTop_1_2, nWeekDay)
	SetTask(nThuongTop_1, 0)
	SetTask(nThuongTop_2, 0)
	SetTask(nThuongTop_3, 0)
	end

	
	if (GetTask(nThuongTop_3) >= 1) then
		Talk(1,"","C�c h� �� nh�n th��ng r�i")
		return 1
	end
	
	Title_AddTitle(TitleIDAward, 2, nTime)
	Title_ActiveTitle(TitleIDAward)
	SetTask(nThuongTop_3, 1)
	SetTask(1122, TitleIDAward)
	for i = 1, Xu1 do
	AddStackItem(1,4,417,1,1,0,0,0)
	end
	Say("Ch�c m�ng ��i hi�p �� nh�n th��ng Top m�n ph�i th�nh c�ng")
--------------------------------------------------------------------------------------------
end

--==================================================================================

function ViewTOP(sel)
	local Str = ""
	if sel == 1 then
		if FALSE(_PlayersNameTb["TopCaoThu"][1].Name) then
			Str = "<color=Orange>L� quan: <color>Hi�n t�i ch�a c� x�p h�ng, xin ��i hi�p ��i th�ng b�o!\n"
		else
			for i = 1, 4 do
				Str = Str.."Cao th� Top [<color=yellow>"..i.."<color>]: <color=fire>".._PlayersNameTb["TopCaoThu"][i].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopCaoThu"][i].Level.."<color>\n"
			end
		end
	elseif sel == 2 then
		if FALSE(_PlayersNameTb["TopPhuHo"][1].Name) then
			Str = "<color=Orange>L� quan: <color>Hi�n t�i ch�a c� x�p h�ng, xin ��i hi�p ��i th�ng b�o!\n"
		else
			for i = 1, 4 do
				Str = Str.."Ph� h� TOP [<color=yellow>"..i.."<color>]: <color=fire>".._PlayersNameTb["TopPhuHo"][i].Name.."<color> - Ti�n: <color=green>".._PlayersNameTb["TopPhuHo"][i].Money.."<color> l��ng\n"
			end
		end
	elseif sel == 3 then
		if FALSE(_PlayersNameTb["TopMonPhai"]["shaolin"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�u l�m<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Thi�u l�m<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["shaolin"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["shaolin"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tianwang"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�n v��ng<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Thi�n v��ng<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tianwang"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["tianwang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tangmen"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a ���ng m�n<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>���ng m�n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tangmen"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["tangmen"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["wudu"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Ng� ��c<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Ng� ��c<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["wudu"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["wudu"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["emei"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Nga my<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Nga my<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["emei"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["emei"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["cuiyan"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Th�y y�n<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Th�y y�n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["cuiyan"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["cuiyan"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["gaibang"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a C�i bang<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>C�i bang<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["gaibang"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["gaibang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["tianren"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a Thi�n nh�n<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>Thi�n nh�n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["tianren"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["tianren"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["wudang"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a V� �ang<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>V� �ang<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["wudang"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["wudang"].Level.."<color>\n"
		end
		if FALSE(_PlayersNameTb["TopMonPhai"]["kunlun"].Name) then
			Str = Str.."<color=white>Hi�n ch�a c� danh s�ch c�a C�n l�n<color>\n"
		else
			Str = Str.."Cao th� <color=yellow>C�n l�n<color>: <color=fire>".._PlayersNameTb["TopMonPhai"]["kunlun"].Name.."<color> - ��ng c�p: <color=green>".._PlayersNameTb["TopMonPhai"]["kunlun"].Level.."<color>\n"
		end
	end
	CreateNewSayEx("<link=image:\\spr\\skill\\others\\title_dg.spr><link><color>"..Str, {{"Quay l�i", GetAwardTOPPlayers}, {"K�t th�c ��i tho�i", OnCancel}})
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

function OnCancel()
end
