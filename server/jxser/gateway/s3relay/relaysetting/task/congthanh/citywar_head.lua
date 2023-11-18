	Include( "\\script\\gb_modulefuncs.lua")
	Include( "\\script\\gb_taskfuncs.lua")
	Include( "\\script\\mission\\citywar_global\\ladder.lua")
	
	
	
	_Ctc3truTbIsLimitOpenDay = {
	-- ng�y ��ng k�, ng�y c�ng th�nh
		{1, 2}, -- th� 2, th� 3
		{2, 3}, -- th� 3, th� 4
		{3, 4}, -- th� 4, th� 5
		{4, 5}, -- th� 5, th� 6 - Th�nh T��ng D��ng
		{5, 6}, -- th� 6, th� 7
		{6, 0}, -- th� 7, ch� nh�t - Th�nh L�m An
		{0, 1}, -- ch� nh�t, th� 2
	}

	TAB_NONE_CITYWAR =
	{
		{{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818}}, --startsignup there is no-citywar dates in phase1, you can write oneday use {yymmdd}, or somedays "from to" use {yymmdd, yymmdd}
		{{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818}}, --endsignup there is no-citywar dates in phase2, you can write oneday use {yymmdd}, or somedays use {yymmdd, yymmdd}
		{{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818}}, --startarena there is no-citywar dates in phase3, you can write oneday use {yymmdd}, or somedays use {yymmdd, yymmdd}
		{{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818},{150718,170818}}, --startcitywar there is no-citywar dates in phase4, you can write oneday use {yymmdd}, or somedays use {yymmdd, yymmdd}
	}

	LGTSK_QINGTONGDING_COUNT = 1;	-- b�o danh c�nh ��u Thanh ��ng ��nh s� l��ng
	LGTSK_CITYWAR_SIGNCOUNT = 2;	-- tr��c m�t c�nh ��u s� l�n
	LEAGUETYPE_CITYWAR_SIGN = 508;
	LEAGUETYPE_CITYWAR_FIRST = 509;

TB_CITYWAR_ARRANGE =
 {
	{3,4, "Ph��ng T��ng"},--
	{1,2, "Th�nh ��"},--
	{2,3, "��i L�"},--
	{5,6, "Bi�n Kinh"},--
	{4,5, "T��ng D��ng"},--
	{0,1, "D��ng Ch�u"},--
	{6,0, "L�m An"},--
}

Ctc3tru_S3RL_TB_CITYWAR_ARRANGE =
 {
	{3,4, "Phuong Tuong"},--
	{1,2, "Thanh Do"},--
	{2,3, "Dai Ly"},--
	{5,6, "Bien Kinh"},--
	{4,5, "Tuong Duong"},--
	{0,1, "Duong Chau"},--
	{6,0, "Lam An"},--
}

Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE = 
{
	{3,4,"����"},--Ph��ng T��ng
	{1,2,"�ɶ�"},--Th�nh ��
	{2,3,"����"},--��i L�
	{5,6,"�꾩"},--Bi�n Kinh
	{4,5,"����"},--T��ng D��ng
	-- {0,1,"���� "},--D��ng Ch�u
	{0,1,"����"},--D��ng Ch�u
	{6,0,"�ٰ�"},--L�m An
}

function Ctc3truCheckIsLimitOpenCityWar(Ctc3truType)
	-- Ctc3truType: 1 - Register, 2 - CityWar
	local Ctc3tru_1 = tonumber(date("%w"))
	local Ctc3tru_2 = getn(_Ctc3truTbIsLimitOpenDay)
	for iCheck = 1, Ctc3tru_2 do
		if _Ctc3truTbIsLimitOpenDay[iCheck][Ctc3truType] == Ctc3tru_1 then
			return 1
		end
	end
	if Ctc3truType == 1 then
		print(format("Hom nay khong cho phep _DANG KY_ CTC - W: %d", Ctc3tru_1))
	elseif Ctc3truType == 2 then
		print(format("Hom nay khong cho phep CTC - W: %d", Ctc3tru_1))
	end
	return 0
end

	function cw_CanStart(nCityId, nPhase)
		local nowday = tonumber(date( "%y%m%d "))
		local nBegin = 0
		local nEnd = 0
			for i = 1, getn(TAB_NONE_CITYWAR[nPhase]) do
				if (getn(TAB_NONE_CITYWAR[nPhase][i]) >= 2) then
					nBegin = TAB_NONE_CITYWAR[nPhase][i][1]
					nEnd = TAB_NONE_CITYWAR[nPhase][i][2]
				else
					nBegin = TAB_NONE_CITYWAR[nPhase][i][1]
					nEnd = TAB_NONE_CITYWAR[nPhase][i][1]
				end
				-- if (nowday >= nBegin and nowday <= nEnd) then
				if (nowday < nBegin and nowday > nEnd) then
					OutputMsg(format( "CityWar(%d) Can Not Start In This Phase(%d)! ! !", nCityId, nPhase));
					return 0
				end
			end
		return 1
	end

	function FALSE(nValue)
		if (nValue == nil or nValue == 0 or nValue == "") then
			return 1
		else
			return nil
		end
	end

	function GetRandomChallenger(szCityName)
		local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_SIGN, szCityName);
		local nmem = LG_GetMemberCount(nlid);
		local szMem = "";
		local tbMem = {};
		if (nmem == 0) then
			return nil;
		end;
		if (nmem == 1) then
			szMem = LG_GetMemberInfo(nlid, 0);
			if (not FALSE(szMem)) then
				return szMem;
			else
				return nil;
			end;
		end;
		for i = 0, nmem - 1 do
			szMem = LG_GetMemberInfo(nlid, i);
			ncount = LG_GetMemberTask(LEAGUETYPE_CITYWAR_SIGN, szCityName, szMem, LGTSK_QINGTONGDING_COUNT);
				if (getn(tbMem) == 0) then
					tbMem[1] = {szMem, ncount};
				else
					if (ncount == tbMem[1][2]) then
						tbMem[getn(tbMem) + 1] = {szMem, ncount};
					elseif (ncount > tbMem[1][2]) then
						tbMem = {};
						tbMem[getn(tbMem) + 1] = {szMem, ncount};
					end;
				end;
		end;
	return tbMem[random(getn(tbMem))][1];
	end;

	function cw_startsignup_fun(nweek,ncan)
		if (tonumber(date( "%w ")) == nweek and cw_CanStart(ncan,1) == 1) then
			citywar_tbLadder:Reset();
			LG_ApplySetLeagueTask(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3], 1, 1);
			GlobalExecute(format( "dw AddLocalNews([[ C�ng th�nh chi�n %s b�t ��u b�o danh, c�c v� Bang Ch� bang h�i c�p 5 tr� l�n mu�n tham gia c� th� ��n C�ng th�nh quan � t�n th� th�n �� tham gia b�o danh. ]])",TB_CITYWAR_ARRANGE[ncan][3]));
			zzMsg2SubWorld = "<color=green>C�ng th�nh chi�n<color> <color=yellow>"..TB_CITYWAR_ARRANGE[ncan][3].."<color> b�t ��u b�o danh, c�c v� <color=pink>Bang Ch�<color> bang h�i c�p <color=blue>5<color> tr� l�n c� th� ��n <color=blue>C�ng Th�nh Quan <color>� t�n th� th�n �� tham gia b�o danh.";
			GlobalExecute(format( "dw Msg2SubWorld([[%s]])", zzMsg2SubWorld));
			OutputMsg(format( "Cong Thanh Chien %s bat dau bao danh",Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3]))
		end;
	end

	function cw_start_fun(nweek,ncan)
		if (tonumber(date( "%w ")) == nweek and cw_CanStart(ncan,4) == 1) then
			StartCityWar(ncan);
		end;
	end
	
	function cw_endsignup_fun(nweek,ncan)
		LG_ApplySetLeagueTask(LEAGUETYPE_CITYWAR_SIGN, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3], 1, 0);
		local tbVotes = citywar_tbLadder:Ctc3tru_GetInfo();
		if getn(tbVotes) == 1 then
			Ctc3tru_NameFirstTong = tbVotes[1].szName;
			Ctc3tru_NameDoubleTong = "";
		end
		if getn(tbVotes) >= 2 then
			Ctc3tru_NameFirstTong = tbVotes[1].szName;
			Ctc3tru_NameDoubleTong = tbVotes[2].szName;
		end
		local Ctc3tru_szWarCityName = Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3];
		if (tonumber(date( "%w ")) == nweek and cw_CanStart(ncan,2) == 1) then
			local nlid = LG_GetLeagueObj(LEAGUETYPE_CITYWAR_FIRST, Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3]);
			szWarCityName = TB_CITYWAR_ARRANGE[ncan][3]
			if (FALSE(nlid)) then
				OutputMsg(format( "Cong thanh chien %s khong co bang hoi tham gia bao danh, tuan nay van su thai binh.",Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3]));
				GlobalExecute(format( "dw AddLocalNews([[ C�ng Th�nh Chi�n %s kh�ng c� bang h�i b�o danh, tu�n n�y v�n s� th�i b�nh ]])",szWarCityName));
				GlobalExecute(format( "dw Msg2SubWorld([[ <color=green>C�ng th�nh chi�n<color> <color=yellow>%s<color> kh�ng c� bang h�i b�o danh, tu�n n�y v�n s� th�i b�nh ]])",szWarCityName));
				return 0;
				end
			local szFirstTong = GetRandomChallenger(Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3]);
			if (FALSE(szFirstTong)) then
				OutputMsg(format( "Cong thanh chien %s khong co bang hoi tham gia bao danh, tuan nay van su thai binh.",Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3]));
				GlobalExecute(format( "dw AddLocalNews([[ C�ng Th�nh Chi�n %s kh�ng c� bang h�i b�o danh, tu�n n�y v�n s� th�i b�nh ]])",szWarCityName));
				GlobalExecute(format( "dw Msg2SubWorld([[ <color=green>C�ng th�nh chi�n<color> <color=yellow>%s<color> kh�ng c� bang h�i b�o danh, tu�n n�y v�n s� th�i b�nh ]])",szWarCityName));
				return 0;
			end;
			if (GetCityOwner(ncan) == "" or GetCityOwner(ncan) == nil) then
				if getn(tbVotes) == 1 then
					GlobalExecute(format( "dwf \\script\\missions\\citywar_global\\citywar_function.lua citywar_appointviceroy([[%s]],[[%s]])",Ctc3tru_szWarCityName,Ctc3tru_NameFirstTong));
					--n�u ch� c� 1 bang ��ng k� trong l�n ��u c�ng th�nh th� s� Set bang �� chi�m th�nh.
					zzMsg2SubWorld = "Th�nh <color=green>"..szWarCityName.."<color> l�n ��u ti�n c�ng th�nh ch� c� bang <color=yellow>"..Ctc3tru_NameFirstTong.."<color> ��ng k�, v� v�y th�nh <color=green>"..szWarCityName.."<color> s� do bang <color=yellow>"..Ctc3tru_NameFirstTong.."<color> qu�n l�."
					zzAddLocalNews = "Th�nh "..szWarCityName.." l�n ��u ti�n c�ng th�nh ch� c� bang "..Ctc3tru_NameFirstTong.." ��ng k�, v� v�y th�nh "..szWarCityName.." s� do bang "..Ctc3tru_NameFirstTong.." qu�n l�."
					GlobalExecute(format( "dw Msg2SubWorld([[%s]])", zzMsg2SubWorld));
					GlobalExecute(format( "dw AddLocalNews([[%s]])",zzAddLocalNews));
					OutputMsg(format( "Thanh %s se do bang %s lam chu.",Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3],Ctc3tru_NameFirstTong));
				end
				if getn(tbVotes) >= 2 then
					GlobalExecute(format( "dwf \\script\\missions\\citywar_global\\citywar_function.lua citywar_appointviceroy([[%s]],[[%s]])",Ctc3tru_szWarCityName,Ctc3tru_NameFirstTong));
					--n�u c� �t nh�t 2 bang trong l�n ��u �k c�ng th�nh s� Set bang Top 1 KCL l�m th�nh ch� v� Top 2 KCL l�m phe c�ng th�nh cho ng�y h�m sau.
					GlobalExecute(format( "dwf \\script\\missions\\citywar_global\\citywar_function.lua citywar_appointchallenger([[%s]],[[%s]])",Ctc3tru_szWarCityName,Ctc3tru_NameDoubleTong));
					zzMsg2SubWorld = "<color=green>C�ng th�nh chi�n<color> <color=yellow>"..szWarCityName.."<color> Top 1 Khi�u chi�n l�nh bang th� th�nh "..Ctc3tru_NameFirstTong..", Top 2 khi�u chi�n l�nh bang "..Ctc3tru_NameDoubleTong.." s� c�ng th�nh v�o ng�y mai."
					zzAddLocalNews = "C�ng th�nh chi�n "..szWarCityName.." Top 1 Khi�u chi�n l�nh bang th� th�nh "..Ctc3tru_NameFirstTong..", Top 2 khi�u chi�n l�nh bang "..Ctc3tru_NameDoubleTong.." s� c�ng th�nh v�o ng�y mai."
					GlobalExecute(format( "dw Msg2SubWorld([[%s]])", zzMsg2SubWorld))
					GlobalExecute(format( "dw AddLocalNews([[%s]])",zzAddLocalNews));
					OutputMsg(format( "Thanh %s Bang thu thanh la %s Bang cong thanh cho ngay mai la %s.",Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3],Ctc3tru_NameFirstTong,Ctc3tru_NameDoubleTong));
				end
			else
				GlobalExecute(format( "dwf \\script\\missions\\citywar_global\\citywar_function.lua citywar_appointchallenger([[%s]],[[%s]])",Ctc3tru_szWarCityName,szFirstTong));
				OutputMsg(format( "%s tranh doat lenh bai thanh cong, tro thanh khieu chien bang hoi %s vao ngay mai.",szFirstTong,Ctc3tru_S3RL_TB_CITYWAR_ARRANGE[ncan][3]))
				GlobalExecute(format( "dw AddLocalNews([[ Bang h�i %s tranh �o�t l�nh b�i th�nh c�ng, s� l� bang c�ng th�nh %s v�o ng�y mai]])", szFirstTong,szWarCityName));
				zzMsg2SubWorld = "Bang h�i <color=yellow>"..szFirstTong.."<color> tranh �o�t l�nh b�i th�nh c�ng, s� l� bang c�ng th�nh <color=green>"..szWarCityName.."<color> v�o ng�y mai."
				GlobalExecute(format( "dw Msg2SubWorld([[%s]])", zzMsg2SubWorld))
			end;
		end;
	end

	function GameSvrConnected(dwGameSvrIP)
	end

	function GameSvrReady(dwGameSvrIP)
	end


