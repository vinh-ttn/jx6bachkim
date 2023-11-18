Include("\\script\\event\\tongwar\\headinfo.lua")
Include("\\script\\event\\tongwar\\tongwar_signup.lua")
Include("\\script\\task\\random\\treasure_head.lua");
Include("\\script\\tong\\tong_header.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
IL("TONG");
_TONGWAR_CITYOWNER = {}


--���Ϊnil��0������1�����򷵻�0
function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

--����7��������ʱ����
function tongwar_create()
	if (getn(_TONGWAR_CITYOWNER) ~= 0 and _TONGWAR_CITYOWNER[1][3] == get_tongwar_season()) then
		return
	end
	local nseason = get_tongwar_season();
	local n_lid = LG_GetFirstLeague(TONGWAR_LGTYPE)
--	if (FALSE(n_lid)) then
--		return
--	end
	for i = 1, 7 do
		_TONGWAR_CITYOWNER[i] = {}
		_TONGWAR_CITYOWNER[i][1] = TONGWAR_CITY[i]
		_TONGWAR_CITYOWNER[i][2] = tongwar_getmember(TONGWAR_CITY[i])
		_TONGWAR_CITYOWNER[1][3] = nseason;
	end
end

--���ĳ�����е����� ����table
function tongwar_getmember(s_lname)
	local tb_member = {}
	local n_lid = LG_GetLeagueObj(TONGWAR_LGTYPE, s_lname)
	local n_count = LG_GetMemberCount(n_lid)
	for i = 0, (n_count - 1) do
		local tongname, n_job = LG_GetMemberInfo(n_lid, i)
		tb_member[getn(tb_member) + 1] = {tongname, n_job}
	end
	return tb_member
end

--���������󣬸�7���������ּ�������������
_TONGWAR_ARRRANK = {};
_TONGWAR_ROLELADDER = {};
function tongwar_bigger(lg1, lg2)
	if (lg1[2] == lg2[2]) then
		return lg1[3] > lg2[3];
	end;
	return lg1[2] > lg2[2];
end;

function tongwar_cityrank()
--��ս��������
	for i = 1, 7 do
		_TONGWAR_ARRRANK[i] = {};
		_TONGWAR_ARRRANK[i][1] = _TONGWAR_CITYOWNER[i][1];
		_TONGWAR_ARRRANK[i][2] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_RESULT);
		_TONGWAR_ARRRANK[i][3] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_POINT);
		_TONGWAR_ARRRANK[i][4] = LG_GetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_CITYOWNER[i][1], TONGWAR_LGTASK_TONGID);
	end;
	sort(_TONGWAR_ARRRANK, tongwar_bigger);
	for i = 1, 7 do
		LG_ApplySetLeagueTask(TONGWAR_LGTYPE, _TONGWAR_ARRRANK[i][1], TONGWAR_LGTASK_RANK, i, "", "");
	end;
--	gb_SetTask("TONGWAR_STATION", 1, _TONGWAR_ARRRANK[1][4]);
end;

function get_tongwar_phase()
	return gb_GetTask("TONGWAR_STATION", 2);
end;

function tongWar_SelectCity(strCityName, strCityTongName)
	if tongWar_CanSelectCity() ~= 1 then
		return
	end
	if get_tongwar_phase() ~= 1 then
		return
	end
	
	nseason = get_tongwar_season()
	if (FALSE(LG_GetLeagueObj(TONGWAR_LGTYPE, strCityName))) then
		local nLeagueID = LG_CreateLeagueObj()
		LG_SetLeagueInfo(nLeagueID, TONGWAR_LGTYPE, strCityName)
		LG_ApplyAddLeague(nLeagueID, "", "")
		LG_FreeLeagueObj(nLeagueID)
		LG_ApplySetLeagueTask(TONGWAR_LGTYPE, strCityName, TONGWAR_LGTASK_SEASON, nseason);
		
		if (not FALSE(strCityTongName))then
				nMemberID = LGM_CreateMemberObj()
				--�������ų�Ա����Ϣ(��ɫ����ְλ���������͡���������)
				LGM_SetMemberInfo(nMemberID, strCityTongName, 1, TONGWAR_LGTYPE, strCityName)
				LGM_ApplyAddMember(nMemberID, "", "")
				LGM_FreeMemberObj(nMemberID)
				LG_ApplySetMemberTask(TONGWAR_LGTYPE, strCityName, strCityTongName, TONGWAR_LGMTASK_JOB, 1)
		end
		
		
	end
end

function tongWar_CanSelectCity()
	local szTongName = GetTongName();
	
	if szTongName == nil or szTongName == "" then
		return
	end
	
	if (GetTongFigure() ~= TONG_MASTER) then --�ж��Ƿ��ǰ���
		return
	end
	--����Ѿ���ս���˿϶�����ѡ����
	if not FALSE(LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName)	) then 
		return
	end
	local tb = {}
	for i = 1, 7 do
		if GetCityOwner(i) == szTongName then --ûս������ռ�ǰ��
			return 1
		end
	end
end

function tongWar_ShowSelectCityMenu()
	local szTongName = GetTongName();
	
	if szTongName == nil or szTongName == "" then
		return
	end
	
	if (GetTongFigure() ~= TONG_MASTER) then --�ж��Ƿ��ǰ���
		return
	end
	local tb = {}
	for i = 1, 7 do
		local strCityName = GetCityAreaName(i)
		local strCityTongName = GetCityOwner(i)
		tb[strCityTongName] = tb[strCityTongName] or {}
		tinsert(tb[strCityTongName], strCityName)
	end
	local tbCity = tb[szTongName]
	if tbCity then
		local szTitle = "L�a ch�n mu�n thay th� bi�u tham gia so t�i th�nh th�, n�u nh� ��t gi�p chi�m th�nh ph� nhi�u 1 c� ch� c� th� ��i bi�u m�t th�nh ph� tham gia �� nh�t bang."
		local tbOpt = {}
		for i=1, getn(tbCity) do
			
			tinsert(tbOpt, {tbCity[i], tongWar_SelectCity, { tbCity[i], szTongName}})
		end
		CreateNewSayEx(szTitle, tbOpt)
	end
	
end

function tongWar_AddSelectCityOpt(tbOpt)
	
	if tongWar_CanSelectCity() then
		tinsert(tbOpt, 2, "Ch�n ��i di�n th�nh th� mong mu�n tham gia cu�c thi/tongWar_ShowSelectCityMenu")
	end
	
end

function tongWar_Start()
	tongwar_create()
	if (getn(_TONGWAR_CITYOWNER) == 0) then
		CreateTaskSay({"<dec><npc>Minh ch� v� l�m hi�u l�nh : � b�y ��i th�nh th� c�ng li�n minh gi�p chi�m th�nh ��ch bang h�i c� th� ti�n v�o d�nh ri�ng khu v�c tranh �o�t t�i v�t, t�i ph�n ra c�i n�o bang h�i tr� th�nh v� l�m �� nh�t bang. �� nh�t bang �em tr� l�i phong ph� t��ng th��ng �� cao qu� danh hi�u","K�t th�c ��i tho�i/OnCancel"});
		return 
	end;
	
	tongwar_clear_rlpoint();
	
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	local szContent = {"<dec><npc>V� l�m �� nh�t bang tranh �o�t s�p b�t ��u. Tr��c m�t, c�c bang bang ch� c� th� thay v� h�n chi�m th�nh bang ch� li�n minh ��ng l�n tranh t�i. Tranh t�i m�t khi b�t ��u th� kh�ng th� s�a ��i li�n minh"};
	if (get_tongwar_phase() == 1) then	--���
		
		
		tongWar_AddSelectCityOpt(szContent)
		
		
		tinsert(szContent, "��ng minh gia nh�p bang h�i li�n minh/tongwar_onjoin");
		tinsert(szContent, "Chi�m th�nh bang h�i � c�c th�nh th�/tongwar_cityowner");
		
	elseif (get_tongwar_phase() == 2) then	-- �����ڼ�
		
		tinsert(szContent, "Ta mu�n tham gia tranh t�i/tongwar_want2signup");
		tinsert(szContent, "Xem bang h�i chi�m th�nh li�n minh th�nh t�ch/tongwar_rank");
		tinsert(szContent, "Chi�m th�nh bang h�i � c�c th�nh th�/tongwar_cityowner");
		
	elseif (get_tongwar_phase() == 3) then	--����ʱ��
		
		if (getn(_TONGWAR_ARRRANK) == 0) then
			tongwar_cityrank();
		end;
		tinsert(szContent,"Nh�n l�y danh hi�u v� l�m �� nh�t bang/tongwar_title_talk");
		tinsert(szContent, "Nh�n l�y ph�n th��ng v� l�m �� nh�t bang/tongwar_aword_talk");
		tinsert(szContent, "Xem bang h�i chi�m th�nh ��ng h�ng b�ng/tongwar_query");
		tinsert(szContent, "Chi�m th�nh bang h�i � c�c th�nh th�/tongwar_cityowner");
	end;
							
	tinsert(szContent, "Ho�t ��ng v� l�m �� nh�t bang/tongwar_detail");
	tinsert(szContent, "K�t th�c ��i tho�i/OnCancel");
	
	CreateTaskSay(szContent);
end

function tongwar_title_talk() --��ȡ��Ϣ��һ��ĳƺ�
	if (GetByte(GetTask(TONGWAR_RLTASK_AWARD),1) == get_tongwar_season()) then --�����ƺ����ð�
		Msg2Player("B�n s� c� ���c danh hi�u<color=red>v� l�m �� nh�t bang<color> nh�n.")
		CreateTaskSay({"<dec><npc>�� nh�n l�y danh hi�u<color=red>v� l�m �� nh�t bang<color> nh�n.", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;        
	
	local szTongName = GetTong();
	if (FALSE(szTongName)) then
		CreateTaskSay({"<dec><npc>Kh�ng �� �i�u ki�n nh�n l�y danh hi�u<color=red>v� l�m �� nh�t bang<color>.", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;           
	
	local nLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (FALSE(nLeagueID)) then
		CreateTaskSay({"<dec><npc>Kh�ng �� �i�u ki�n nh�n l�y danh hi�u<color=red>v� l�m �� nh�t bang<color>.", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;
	
	local szLeagueName = LG_GetLeagueInfo(nLeagueID);
	
	if (szLeagueName ~= _TONGWAR_ARRRANK[1][1] or FALSE(tongwar_check_ownerright())) then
		CreateTaskSay({"<dec><npc>Ch� c� x�p h�ng th� nh�t ��ch chi�m th�nh gi�p th�nh vi�n m�i c� th� ��t ���c n�n danh hi�u.", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;
	
	tongwar_title_award(szLeagueName);
end;

function tongwar_title_award(szlgname)
	SetTask(TONGWAR_RLTASK_AWARD, SetByte(GetTask(TONGWAR_RLTASK_AWARD), 1, get_tongwar_season()));
	if (GetTongMaster() == GetName() and LG_GetLeagueTask(TONGWAR_LGTYPE, szlgname, TONGWAR_LGTASK_MSTITLE) < 1) then
		Msg2Player("��t ���c danh hi�u<color=green>minh ch� v� l�m<color>");
		CreateTaskSay({"<dec><npc>Ch�c m�ng ng�i ��t ���c danh hi�u<color=yellow>minh ch� v� l�m<color>.", "K�t th�c ��i tho�i/OnCancel"});
		tongwar_addtitle(105);--�����⻷
		tongwar_award_log("��t ���c danh hi�u minh ch� v� l�m");
		LG_ApplyAppendLeagueTask(TONGWAR_LGTYPE, szlgname, TONGWAR_LGTASK_MSTITLE, 1);
	else
		Msg2Player("��t ���c danh hi�u<color=green>v� l�m �� nh�t bang<color>");
		CreateTaskSay({"<dec><npc>Ch�c m�ng ng�i ��t ���c <color=yellow> danh hi�u v� l�m �� nh�t bang<color>.", "K�t th�c ��i tho�i/OnCancel"});
		tongwar_addtitle(106);--���ڹ⻷
		tongwar_award_log("��t ���c v� l�m �� nh�t bang danh hi�u.");
	end;
end;

function tongwar_addtitle(n_title)
	local nDate	= tonumber(GetLocalDate("%m%d"));
	local nDay	= mod(nDate,100)
	local nMon	= floor(nDate/100)
	nMon	= nMon + floor((nDay + 30)/30);
	nDay = mod((nDay + 30),30);
	local nTime	= mod(FormatTime2Number(GetCurServerTime()+30*24*60*60), 100000000)--nMon * 1000000 + nDay * 10000	-- 

	Title_AddTitle(n_title, 2, nTime);
	Title_ActiveTitle(n_title);
	SetTask(1122, n_title)
end;

function tongwar_query()
	local szmsg = "<dec><npc>V� l�m �� nh�t bang quy�t cu�c so t�i �� k�t th�c , k�t qu� nh� sau: \n"
	for i = 1, 7 do
		szmsg = format("%s -  <color=red>%d<color>: <color=yellow>chi�m th�nh T�ng �i�m l� %s: %d  �i�m tranh t�i : %d<color>  <enter>",
												szmsg, i, _TONGWAR_ARRRANK[i][1], _TONGWAR_ARRRANK[i][2], _TONGWAR_ARRRANK[i][3]);
	end;
	CreateTaskSay({szmsg, "K�t th�c ��i tho�i/OnCancel"});
end;

function OnCancel()
end

function tongwar_cityowner()
	local tb_Opp = {"<dec><npc>Bang h�i chi�m b�y ��i th�nh th� �� ph�n ra, xin m�i l�a ch�n mu�n xem th�ng tin th�nh th�:"};
	tb_Opp[getn(tb_Opp) + 1] = "H�m nay ��i th� l� bang h�i li�n minh n�o /tongwar_enemy";
	for i=1,7 do
		tb_Opp[getn(tb_Opp) + 1] = format("chi�m th�nh bang h�i%s/#tongwar_cityowner_qur(%d)",
																			TONGWAR_CITY[i],i);
	end
	tb_Opp[getn(tb_Opp) + 1] = "Tr� v�/tongWar_Start";

	CreateTaskSay(tb_Opp);
end

function tongwar_cityowner_qur(nSel)
	local cityname = _TONGWAR_CITYOWNER[nSel][1];
	local tb_citymember = _TONGWAR_CITYOWNER[nSel][2];
	local n_lid = LG_GetLeagueObj(TONGWAR_LGTYPE, cityname);
	
	if (FALSE(n_lid)) then
		local szmsg = format("<dec><npc>Kh�ng c� bang h�i li�n minh tham gia v� l�m �� nh�t bang t�i v�t tranh �o�t tranh t�i.", cityname);
		CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "K�t th�c/OnCancel"});
		return
	end;
	
	local n_count = LG_GetMemberCount(n_lid);
	if (getn(tb_citymember) ~= n_count) then	--��Ա��TempTable�У�����ʱ���ȷ��
																						--��Ա��������Т����ˢТϢ
		_TONGWAR_CITYOWNER[nSel][2] = tongwar_getmember(TONGWAR_CITY[nSel])
		tb_citymember = _TONGWAR_CITYOWNER[nSel][2]
	end
	
	local cityowner = ""
	local citymember = ""
	for i = 1, getn(tb_citymember) do
		if (tb_citymember[i][2] == 1) then
			cityowner = tb_citymember[i][1]
		else
			citymember = format("%s\n    <color=yellow>%s<color>", 
														citymember, tb_citymember[i][1]);
		end
	end
	local szmsg = "";
	if (cityowner == "") then
		szmsg = format("<dec><npc>Th�nh %s kh�ng c� bang h�i li�n minh tham gia v� l�m �� nh�t bang t�i v�t tranh �o�t tranh t�i.", cityname);
		CreateTaskSay({szmsg, "Tr� l�i/tongwar_cityowner", "K�t th�c/OnCancel"});
		return 
	elseif (citymember == "") then
		szmsg = format("<dec><npc>Chi�m th�nh bang h�i %s l� <color=red>%s<color>, c� li�n minh v� \n <kh�ng c�>", 
															cityname, cityowner);
	else
		szmsg = format("<dec><npc>Chi�m th�nh bang h�i %s l� <color=red>%s<color>, c� li�n minh v� %s", 
															cityname, cityowner, citymember);
	end
	
	local nResult = LG_GetLeagueTask(n_lid, TONGWAR_LGTASK_RESULT);	--�ܻ���
	local nPoint = LG_GetLeagueTask(n_lid, TONGWAR_LGTASK_POINT);		--������
	szmsg = format("%s\n li�n minh t�ng �i�m: <color=yellow>%d<color><enter>   t�ng chia l�m  <color=yellow>%d<color>", szmsg, nResult, nPoint);
	CreateTaskSay({szmsg, "Tr� l�i/tongwar_cityowner", "K�t th�c/OnCancel"});
end

function tongwar_onjoin()
	if (FALSE(tongwar_check_ownerright(1))) then
		CreateTaskSay({"<dec><npc>Ch� c� <color=red> chi�m th�nh gi�p m�t tay ch� <color> m�i c� th� th�nh l�p bang h�i li�n minh.",
										 "K�t th�c/OnCancel"});
		return
	end;
	CreateTaskSay({"<dec><npc>Chi�m th�nh gi�p m�t tay ch� c� th� c�ng kh�ng chi�m th�nh gi�p ��ch bang ch� h�p th�nh ��i k�t minh , mu�n th�nh l�p li�n minh sao?",
					 				"Xin cho ph�p gia nh�p li�n minh bang h�i/tongwar_want2join",
					  			"K�t th�c/OnCancel"});
end

--�ж��ǲ���ռ�ǰ�İ���
function tongwar_check_ownerright(bmaster)
	local tongname = GetTongName();
	if (bmaster) then
		-- LLG_ALLINONE_TODO_20070802
		if (GetTongFigure() ~= TONG_MASTER) then --�ж��Ƿ��ǰ���
			return nil
		end;
	end;
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	if (not FALSE(n_lid)) then
		local leaguename = LG_GetLeagueInfo(n_lid)
		if (LG_GetMemberTask(TONGWAR_LGTYPE, leaguename, tongname, TONGWAR_LGMTASK_JOB) == 1) then
			return n_lid
		end
	end

	return nil
end

function tongwar_want2join()
	if (GetTeamSize() <= 1) then
		CreateTaskSay({"<dec><npc>Th�t l� ti�c nu�i, h�p th�nh ��i v� v� �ch, kh�ng th� k�t l�m li�n minh!",
										 "K�t th�c/OnCancel"});
		return
	end;
	
	if (IsCaptain() ~= 1) then
		CreateTaskSay({"<dec><npc>Ch� c� <color=red> t� tr��ng <color> m�i c� th� thay v� h�n bang h�i ��ch bang ch� k�t l�m li�n minh.", "K�t th�c/OnCancel"});
		return
	end;
	
	local tb_teammember = tongwar_check_team();
	if (tb_teammember == nil) then
		return
	end
	
	local szmsg = format("Mu�n ti�p n�p %d tr� xu�ng bang h�i ti�n v�o li�n minh sao?",getn(tb_teammember))
	for i=1,getn(tb_teammember) do
		szmsg = format("%s\n<color=yellow>%s<color>",szmsg,tb_teammember[i]);
	end
	CreateTaskSay({szmsg, "Mu�n/tongwar_sure2join", "Kh�ng c�n!/OnCancel"});
end

function tongwar_sure2join()
	local tb_teammember, tb_rolename, teamtongid = tongwar_check_team();
	if (tb_teammember == nil) then
		return
	end
	local tongname, mytongid = GetTongName();
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	if (FALSE(n_lid)) then
		return
	end
	local str_lgname = LG_GetLeagueInfo(n_lid)
	local ncityid = TONGWAR_CITYID[str_lgname];
	if (FALSE(ncityid)) then
		print(format("Error!!! CityName(leaguename) Wrong!!%s",str_lgname))
		return
	end;
	for i = 1, getn(tb_teammember) do
		--���Ѱ��������������ս�������ӳ������ӳ����ID
		--local szParam = tb_teammember[i].." "..tb_rolename[i].." "..str_lgname.." "..GetName()
		local szParam = tostring(teamtongid[i]).." "..tb_rolename[i].." "..ncityid.." "..GetName().." "..mytongid;
		LG_ApplyDoScript(0, "", tb_teammember[i], "\\script\\event\\tongwar\\event.lua", "tongwar_add", szParam , "", "")
	end
end

--�����Զ����Ƿ���ϼ������˵�����
--���� ���� tab1(�����),tab2(������),tab3(���id)
--������ ���� nil
function tongwar_check_team()
	local teammember = {};
	local tongmaster = {};
	local teamtongid = {};
	local str_capname = GetName();
	local str_captong = GetTongName();
	local teamsize = GetTeamSize();
	local n_capidx = PlayerIndex;
	for i = 2 , teamsize do
		PlayerIndex = GetTeamMember(i);
		local membername = GetName();
		local tongname, tongid = GetTongName();
		local szmsg = "";
		
		if (FALSE(tongid)) then
			PlayerIndex = n_capidx;
			szmsg = format("<dec><npc>Th�nh vi�n %s � trong ��i kh�ng ph�i l� bang h�i th�nh vi�n , kh�ng th� gia nh�p li�n minh.",
											 membername);
			CreateTaskSay({szmsg, "K�t th�c/OnCancel"});
			return
		end;
		
		if (GetTongFigure() ~= TONG_MASTER) then
			PlayerIndex = n_capidx;
			szmsg = format("<dec><npc>��i ph��ng kh�ng ph�i l� bang ch� , kh�ng th� nh�n v�o li�n minh.",
											 tongname, membername, tongname);
			CreateTaskSay({szmsg, "K�t th�c�/OnCancel"});
			return
		end
		
		--�����ظ������Ա
		if (not FALSE(LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname))) then
			if (LG_GetLeagueObjByRole(TONGWAR_LGTYPE, str_captong) == LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)) then
				szmsg = format("<dec><npc>Bang h�i %s v� %s �� gia nh�p li�n minh.",
													membername, tongname);
			else
		 		szmsg = format("<dec><npc>Bang h�i %s v� %s �� gia nh�p nh�ng kh�c li�n minh, kh�ng th� gia nh�p ng�i ��ch bang h�i li�n minh!",
													membername, tongname);
			end;
		 	PlayerIndex = n_capidx;
		 	CreateTaskSay({szmsg, "K�t th�c/OnCancel"});
		 	return 
		end
		teammember[i-1] = tongname;
		tongmaster[i-1] = membername;
		teamtongid[i-1] = tongid;
	end
	PlayerIndex = n_capidx
	return teammember, tongmaster, teamtongid
end

function tongwar_calendar()
	local str = "<dec><npc>"
	for i = 1, getn(TONGWAR_CALENDAR) do
		str = format("%s\n%s",str,TONGWAR_CALENDAR[i]);
	end
	CreateTaskSay({str, "K�t th�c/OnCancel"});
end

function tongwar_detail()
--VLDNB 11 - ����֪ͨ- Modified by DinhHQ - 20120507
	CreateTaskSay({format("<dec><npc>T� <color=green>%s <color> ��n <color=green>%s<color>, tr� <color=green>18/05/2012<color>, m�i ng�y l� m�t cu�c tranh t�i b�n ngo�i ( tranh t�i ng�y bu�i t�i ��ch chu�n b� th�i gian t� <color=green>08: 00~08: 29<color>, tranh t�i th�i gian l� <color=green>08:30~09:30<color>), m�i ng�y c� 3 tr�ng ��ng th�i ��ch tranh t�i, ��ng th�i �em c� m�t bang h�i kh�ng c� tranh t�i. Hoa h�ng bang h�i c�ng li�n minh c�ng nhau chi�m l�nh th�nh ph� �em c�ng nhau c�ng <color=green>6<color> nh�ng th�nh th� kh�c c�ng li�n minh tranh t�i .","16/05/2012", "23/05/2020"), 
		"Xem x�tchi�m th�nh bang h�i tranh t�i trong ng�y/tongwar_calendar", "Tr� v�/tongWar_Start", "K�t th�c!/OnCancel"});
end;

function tongwar_join()
	
end;

function tongwar_enemy()
	local szmsg = ""
	local szTongName = GetTongName();
	if ("" == szTongName) then
		CreateTaskSay({"<dec><npc>Kh�ng gia nh�p bang h�i th� kh�ng th� tham gia tranh t�i.", "Tr� v�/tongwar_cityowner", "K�t th�c/OnCancel"});
		return
	end;
	local HostLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (0 == HostLeagueID) then
		CreateTaskSay({"<dec><npc>Ng�i ��ch bang h�i v� gia nh�p b�t k� li�n minh , kh�ng c� quy�n tham gia tranh t�i!", "Tr� v�/tongwar_cityowner", "Tr� v�!/OnCancel"});
		return
	end;
	
	local szHostcityName = LG_GetLeagueInfo(HostLeagueID);
	local szHostTongNames = tongwar_getnamestr(HostLeagueID);
	--Change schedule VLDNB 11 - Modified by DinhHQ - 20120507
	local nDate = tonumber(GetLocalDate("%d"));
	if (nDate ~= 16 and nDate ~= 17 and nDate ~= 19 and nDate ~= 20 and nDate ~= 21 and nDate ~= 22 and nDate ~= 23) then
		szmsg = format("<dec><npc>H�m nay l� %d, kh�ng th� so v�i cu�c so t�i.", nDate);
		CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "K�t th�c!/OnCancel"});
		return
	end;
	
	local szGuestCityName = tongwar_getenemycity(szHostcityName, nDate);
	if (nil == szGuestCityName) then
		szmsg = format("<dec><npc>H�m nay l� %d, kh�ng th� so v�i cu�c so t�i", nDate);
		CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "K�t th�c!/OnCancel"});
		return
	end;
	
	local GuestLeagueID = LG_GetLeagueObj(TONGWAR_LGTYPE, szGuestCityName);
	local szGuestTongNames = ""
	if not FALSE(GuestLeagueID) then 
		szGuestTongNames = tongwar_getnamestr(GuestLeagueID);
	end
	szmsg = format("<dec><npc>Ta li�n minh ( chi�m th�nh gi�p %s): %s <enter> h�m nay ��i th� ( chi�m th�nh gi�p %s):  %s", 
										szHostcityName, szHostTongNames,
										szGuestCityName, szGuestTongNames);
	CreateTaskSay({szmsg, "Tr� v�/tongwar_cityowner", "K�t th�c!/OnCancel"});
end;

--Change schedule VLDNB 11 - Modified by DinhHQ - 20120507
TAB_CITYNAME = {"T��ng D��ng", " Bi�n Kinh", "Ph��ng T��ng", "D��ng Ch�u", "L�m An", "Th�nh ��", " ��i L�"};
TAB_CALENDAR = {
	[16] = {5, 4, 0, 2, 1, 7, 6},
	[17] = {4, 3, 2, 1, 7, 0, 5},
	[19] = {3, 0, 1, 7, 6, 5, 4},
	[20] = {2, 1, 7, 6, 0, 4, 3},
	[21] = {0, 7, 6, 5, 4, 3, 2},
	[22] = {7, 6, 5, 0, 3, 2, 1},
	[23] = {6, 5, 4, 3, 2, 1, 0}
};

function tongwar_getenemycity(szCityName, nDate)
	local i;
	local nCount = getn(TAB_CITYNAME);
	local nPos = 0;
	for i = 1, nCount do
		if (szCityName == TAB_CITYNAME[i]) then
			nPos = i;
			break;
		end;
	end;
	
	if (0 == nPos) then
		return nil;
	end;

	local nEnemyCityIdx = TAB_CALENDAR[nDate][nPos];
	if (nEnemyCityIdx == 0) then
		return nil;
	end;
	return TAB_CITYNAME[nEnemyCityIdx];
end;

function tongwar_querycityrecord(szCityName)
	local LeagueID = LG_GetLeagueObj(TONGWAR_LGTYPE, szCityName);
	local nResult = LG_GetLeagueTask(LeagueID, TONGWAR_LGTASK_RESULT);
	local nPoint = LG_GetLeagueTask(LeagueID, TONGWAR_LGTASK_POINT);
	local szmsg = format("<dec><npc>Chi�m th�nh gi�p li�n minh t�ng �i�m %s: <color=yellow>%d<color><enter>   chi�n ��u t�ng �i�m ��t: <color=yellow>%d<color>",
												 szCityName, nResult, nPoint);
	CreateTaskSay({szmsg, "Tr� v�/tongwar_rank", "K�t th�c!/OnCancel"});
end;

function tongwar_getnamestr(LeagueID)	--�õ�һ������ռ�������ֵ��б�
	local nCount = LG_GetMemberCount(LeagueID);
	local szLeagueName = LG_GetLeagueInfo(LeagueID);
	local i;
	local szNames = "";
	local szTongName = "";
	local nMemberTask = 0;
	for i = 0, nCount - 1 do
		szTongName = LG_GetMemberInfo(LeagueID, i);
		if (LG_GetMemberTask(TONGWAR_LGTYPE, szLeagueName, szTongName, TONGWAR_LGMTASK_JOB) == 1) then
			szNames = "<enter>    <color=red>"..szTongName.."<color>"..szNames;
		else
			szNames = szNames.."<enter>    <color=red>"..szTongName.."<color>";
		end;
	end;
	return szNames;
end;


function tongwar_rank()
	local szTongName = GetTongName();
	if ("" == szTongName) then
		CreateTaskSay({"<dec><npc>Kh�ng gia nh�p bang h�i , kh�ng th� tham gia tranh t�i.", 
											"K�t th�c/OnCancel"});
		return
	end;
	
	local HostLeagueID = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, szTongName);
	if (FALSE(HostLeagueID)) then
		CreateTaskSay({"<dec><npc>Ng�i ��ch bang h�i kh�ng gia nh�p b�t k� li�n minh, kh�ng th� tham gia tranh t�i!", 
											"K�t th�c/OnCancel"});
		return
	end;
	
	local szHostcityName = LG_GetLeagueInfo(HostLeagueID);
	local nResult = LG_GetLeagueTask(HostLeagueID, TONGWAR_LGTASK_RESULT);	--�ܻ���
	local nPoint = LG_GetLeagueTask(HostLeagueID, TONGWAR_LGTASK_POINT);		--������
	local nPlayerRecord = GetTask(TONGWAR_RLTASK_TOTALPOINT);
	local tab_auerycity = {};
	tab_auerycity[1] = format("<dec><npc>Li�n minh t�ng �i�m %s: <color=yellow>%d<color><enter>            chi�n ��u t�ng �i�m ��t: <color=yellow>%d<color><enter>    Ng��i chi�n ��u ��t �i�m: <color=yellow>%d<color><enter>Xem th�nh th�ch li�n minh kh�c",
										szHostcityName, nResult, nPoint, nPlayerRecord);
	
	for i = 1, getn(TAB_CITYNAME) do
		local cityname = TAB_CITYNAME[i];
		if (szHostcityName ~= cityname) then
			tab_auerycity[getn(tab_auerycity) + 1] = format("Xem th�nh t�ch li�n minh %s/#tongwar_querycityrecord([[%s]])", cityname, cityname);
		end;
	end;
	tab_auerycity[getn(tab_auerycity) + 1] ="Tr� v�/tongWar_Start"
	tab_auerycity[getn(tab_auerycity) + 1] ="K�t th�c ��i tho�i/OnCancel"
	
	CreateTaskSay(tab_auerycity);
end;

function tongwar_aword_talk()	--�����������
	if (FALSE(tongwar_check_ownerright(1))) then
		CreateTaskSay({"<dec><npc>Ch� c� chi�m th�nh bang ch� m�i c� th� nh�n th��ng", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;
	
	local tongname = GetTongName()
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	local leaguename = LG_GetLeagueInfo(n_lid)
	
	local nRank = LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, TONGWAR_LGTASK_RANK);
	if (nRank > 7 or nRank < 1) then
		print("rank wrong")
		return
	end;
	
	local szDescribe = "";
	local arr_Remain = {};
	local isFinished = 1;
	for i = 1, getn(TAB_AWORD_GOOD) do
		arr_Remain[i] = TAB_AWORD_GOOD[i][2][nRank] - LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[i]);
		if (arr_Remain[i] > 0) then 
			szDescribe = format("%s<enter>%s: <color=yellow>%d<color>",
						szDescribe, TAB_AWORD_GOOD[i][1].szName,arr_Remain[i])
			isFinished = 0; 
		end;
	end;
	if (isFinished == 1) then
		CreateTaskSay({"<dec><npc>�� nh�n th��ng", "K�t th�c ��i tho�i/OnCancel"});
		return
	end;
	
	
	local tab_AwordItem = {};
	tab_AwordItem = tongwar_getaworditem(nRank, arr_Remain); --���ɽ�����Ʒ��ѡ��
	if (getn(tab_AwordItem) == 0) then
		--Describe(WULINMENG_NPC.."Li�n minh", 1, "K�t th�c ��i tho�i/OnCancel");
		print("tab_AwordItem wrong!")
		return
	end;
	tinsert(tab_AwordItem, 1, format("<dec><npc>V� l�m �� nh�t bang nh�n th��ng c�n c� %s<enter>. ? d�n tr��c c�n <color=red> s�a sang l�i trang b� <color>, ng��i ngh� nh�n th��ng g�?",szDescribe))
	CreateTaskSay(tab_AwordItem);
end

--
function tongwar_awordtalk_descript(szDescribe, nRemain, szItemName)
	if (nRemain > 0) then
		szDescribe = szDescribe.."<color=yellow>"..nRemain.."<color>"..szItemName;
	end;
	return szDescribe;
end;

function tongwar_getaworditem(nRank, arr_Remain)	--����ѡ����ѡ��
	local tab_AwordItem = {};
	
	for i = 1,getn(arr_Remain) do
		if (arr_Remain[i] > 0) then
			tinsert(tab_AwordItem, format("Nh�n l�y %s",TAB_AWORD_GOOD[i][1].szName)..format("/#tongwar_aword(%d, %d)",i,nRank));
		end;
	end
	tinsert(tab_AwordItem, "K�t th�c ��i thoai!/OnCancel");
	return tab_AwordItem;
end;

function tongwar_aword(nItemType, nRank)
	if (GetTaskTemp(PL_TEMPTASK_SECURITY) == 1) then--��ֹˢ
		return
	end;
	SetTaskTemp(PL_TEMPTASK_SECURITY, 1);
	
	if (FALSE(tongwar_check_ownerright())) then
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0)
		CreateTaskSay({"<dec><npc>Ch� c� chi�m th�nh bang ch� m�i c� th� nh�n th��ng!", "K�t th�c ��i thoai!/OnCancel"});
		return
	end;
	
	if (nRank < 1 or nRank > 7) then --�������
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0)
		return
	end;
	
	local tongname = GetTongName()
	local n_lid = LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname)
	local leaguename = LG_GetLeagueInfo(n_lid)
	local nTotal = TAB_AWORD_GOOD[nItemType][2][nRank];
	local nAwordedCount = LG_GetLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[nItemType]); --�Ѿ�����������
	local nRemainCount = nTotal - nAwordedCount;

	local nFreeItemCount = CalcFreeItemCellCount();--������϶���
	local nMaxAwordCount = 60;
	if (nItemType == 2 or nItemType == 3) then
		nMaxAwordCount = 10;
	end;
	local nGiveCount = nRemainCount;
	if (nRemainCount > nMaxAwordCount) then
		nGiveCount = nMaxAwordCount;
	end;
	
	if (nFreeItemCount < nGiveCount and nFreeItemCount < nRemainCount) then
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
		CreateTaskSay({"<dec><npc>H�nh trang kh�ng �� ch� tr�ng!", "K�t th�c ��i thoai!/OnCancel"});
		return
	end;

	local nResult = LG_ApplyAppendLeagueTask(TONGWAR_LGTYPE, leaguename, LG_TASK_AWORD[nItemType], nGiveCount, "", "");
	local str = "";
	if (nResult == 1) then
		str = format("Gi�p %s - bang ch� %s nh�n l�y %s",tongname,GetName(),nGiveCount,TAB_AWORD_GOOD[nItemType][1].szName);
		tongwar_award_log(str);
		Msg2Player(str);
		
		local nItemID;
		local nowdate = tonumber(GetLocalDate("%y%m%d"))
		tbAwardTemplet:GiveAwardByList(TAB_AWORD_GOOD[nItemType][1],"TongWar_Award",nGiveCount);
--		for i = 1, nGiveCount do
--			nItemID = AddItem(TAB_AWORD_GOOD[nItemType][1][1], TAB_AWORD_GOOD[nItemType][1][2], TAB_AWORD_GOOD[nItemType][1][3], 0, 0, 0, 0);
--			if (nItemType == 1) then
--				SetSpecItemParam(nItemID, 1, nowdate)
--				SyncItem(nItemID)
--			elseif (nItemType == 3) then
--				local nExp = 20e8;
--				SetSpecItemParam(nItemID, 1, mod(nExp, 1e8))
--				SetSpecItemParam(nItemID, 2, nExp / 1e8)
--				SyncItem(nItemID)
--			end;
--			
--		end;
		Msg2Player(format(" ��%d %s",(nRemainCount - nGiveCount),TAB_AWORD_GOOD[nItemType][1].szName));
		SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
		return
	end;
	CreateTaskSay({"<dec><npc>Nh�n th��ng th�t b�i, xin l�i m�t c�i!", "K�t th�c ��i thoai!/OnCancel"});
	tongwar_award_log(str.."Kh�ng th�nh c�ng, xinm�i th� l�i!")
	SetTaskTemp(PL_TEMPTASK_SECURITY, 0);
end;

--д�뽱����־
function tongwar_award_log(str)
	WriteLog("[TONGWAR_AWARD]"..date("%y-%m-%d,%H:%M").."\t"..GetAccount().."\t"..GetName().."\t"..str)
end

--���ص�ǰ�����׶Σ�1-������2-������3-����
function tongwar_checkinphase()
	local nphase = gb_GetTask("TONGWAR_STATION", 2);
	return nphase;
end

--���ص�ǰ����ID
function get_tongwar_season()
	local nseason = gb_GetTask("TONGWAR_STATION", 3);
	return nseason;
end;

--�����һ�������˻���
function tongwar_clear_rlpoint()
	local nmyseason = GetByte(GetTask(TONGWAR_RLTASK_AWARD), 4);
	local ncurseaon = get_tongwar_season();
	if (nmyseason ~= ncurseaon) then
		SetTask(TONGWAR_RLTASK_AWARD, SetByte(GetTask(TONGWAR_RLTASK_AWARD), 4, ncurseaon));
		SetTask(TONGWAR_RLTASK_TOTALPOINT, 0);
	end;
end;
