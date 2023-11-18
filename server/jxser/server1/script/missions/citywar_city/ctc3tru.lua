
--==================================================-- City War --====================================================--

Include("\\script\\missions\\citywar_global\\infocenter.lua");
Include("\\script\\missions\\citywar_global\\citywar_function.lua");

TB_CITYWAR_ARRANGE = {{3,4, "Ph��ng T��ng"},{1,2, "Th�nh ��"},{2,3, "��i L�"},{5,6, "Bi�n Kinh"},{4,5, "T��ng D��ng"},{0,1, "D��ng Ch�u"},{6,0, "L�m An"},}		
Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE = {{3,4,"����"},{1,2,"�ɶ�"},{2,3,"����"},{5,6,"�꾩"},{4,5,"����"},{0,1,"���� "},{6,0,"�ٰ�"},}

function Ctc3tru_GetNameCityWithnnCan_LG_CN(ncan)
	return Ctc3tru_LG_CN_TB_CITYWAR_ARRANGE[ncan][3];
end	

function Ctc3tru_GetNameCityWarWithnCan1to7(ncan)
	return TB_CITYWAR_ARRANGE[ncan][3];
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

function Ctc3tru_WhichWarBegin()
	for i = 1,7 do
		if (HaveBeginWar(i) ~= 0) then
			return i;
		end;
	end;
	return 0;
end;		

function Ctc3tru_GetSignUpStateWithnCityId()
	local nCityId = getSigningUpCity(1);
	local statectw = getSignUpState(nCityId);
	local zstatectw = statectw;
	if(zstatectw==1) then
		checkstatectw = "<color=yellow>Cho ph�p b�o danh  <pic=135><color>";
	elseif (zstatectw == 0) then
		checkstatectw = "<color=yellow>K�t th�c b�o danh  <pic=137><color>";
	end
	return "getSignUpState(<color=green>"..nCityId.."<color>): <color=green>"..getSignUpState(nCityId).."<color> - "..checkstatectw.."";
end

function Ctc3tru_CityNameDaywnCityId()
	local daywctw = tonumber(date("%w"))
	local nCityId = getSigningUpCity(1);
	return "Th�nh: <color=green>"..TB_CITYWAR_ARRANGE[nCityId][3].."<color> - DayW: <color=green>"..daywctw.."<color> - nCityId: <color=green>"..nCityId.."<color>";
end

function Ctc3tru_NameAndValueFirstvsDoubleTong()
	local tbVotes = citywar_tbLadder:GetInfo();
	if getn(tbVotes) == 0 then
		NameFirstTong = "<color=red>Kh�ng c� bang n�o<color>";
		NameDoubleTong = "<color=red>Kh�ng c� bang n�o<color>";
		ValueFirstTong = "<color=red>__<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) ==1 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=red>Kh�ng c� bang th� 2<color>";
		ValueDoubleTong = "<color=red>__<color>";
	end
	if getn(tbVotes) >= 2 then
		NameFirstTong = "<color=green>"..tbVotes[1].szName.."<color>";
		ValueFirstTong = "<color=green>"..tbVotes[1].nValue.."<color>";
		NameDoubleTong = "<color=green>"..tbVotes[2].szName.."<color>";
		ValueDoubleTong = "<color=green>"..tbVotes[2].nValue.."<color>";
	end
	return "Bang h�ng 1: "..NameFirstTong.." - S� l��ng: "..ValueFirstTong.." KCL<enter>Bang h�ng 2: "..NameDoubleTong.." - S� l��ng: "..ValueDoubleTong.." KCL";
end

function Ctc3tru_GetRandomChallenger()
	local ncan = getSigningUpCity(1);
	local CityName = Ctc3tru_GetNameCityWithnnCan_LG_CN(ncan);
	local RandomChallenger = GetRandomChallenger(CityName);
	if (FALSE(RandomChallenger)) then
		RandomChallenger = "<color=red>Ch�a x�c ��nh ���c<color>";
	else
		RandomChallenger = "<color=pink>"..RandomChallenger.."<color> <pic=135>";
	end
	return "GetRandomChallenger: "..RandomChallenger.."";
end
	
function Ctc3tru_GetNameTong1vs2CityWarNowDay()
	local CityWarCityID = Ctc3tru_WhichWarBegin();
	if (CityWarCityID ~= 0) then
		local NameCityWar = Ctc3tru_GetNameCityWarWithnCan1to7(CityWarCityID);
		local Ctc3tru_NameCityWarTong1, Ctc3tru_NameCityWarTong2 = GetCityWarBothSides(CityWarCityID);
		return "Bang c�ng th�nh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Ctc3tru_NameCityWarTong1.."<color><enter>Bang th� th�nh <color=yellow>"..NameCityWar.."<color>: <color=green>"..Ctc3tru_NameCityWarTong2.."<color>";
	elseif (CityWarCityID == 0) then
		return "Bang c�ng th�nh <color=red>ch�a x�c ��nh<color>: <color=red>ch�a x�c ��nh<color><enter>Bang th� th�nh <color=red>ch�a x�c ��nh<color>: <color=red>ch�a x�c ��nh<color>";
	end
end	

function ViewNameCityOwner()
	local NameCityOwner = "";
	for i = 1, 7 do
		local NameCityOwner = GetCityOwner(i);
		if NameCityOwner == "" then
			NameCityOwner ="<color=yellow>Ch�a c� Th�i Th�<color>"
		end
		Msg2Player(""..TB_CITYWAR_ARRANGE[i][3].." - <color=green>"..NameCityOwner.."<color>")
	end
end

--===============================================-- END City War --=================================================--

--================================================-- Ctc3tru:Func --=================================================--

function Ctc3tru_GetSexName(Value)
	if Value == 0 then
		return "v� thi�u hi�p"
	else
		return "v� thi�u hi�p"
	end
end

function FALSE(nValue)
	if (nValue == nil or nValue == 0 or nValue == "") then
		return 1
	else
		return nil
	end
end

--================================================-End- Ctc3tru:Func --=================================================--