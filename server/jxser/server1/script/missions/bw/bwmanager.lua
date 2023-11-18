Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")
Include("\\script\\missions\\bw\\bwhead.lua");


szCaptainName = {};
function main()
--do Talk(1, "", "L�i ��i t�m th�i ch�a m�.") return end
	--��ַ���ص�
	x,y,z = GetWorldPos();
	SetTask(BW_SIGNPOSWORLD, x);
	SetTask(BW_SIGNPOSX, y);
	SetTask(BW_SIGNPOSY, z);
	szCaptainName = bw_getcaptains(); --��ȡ���Ӷӳ��ķ��֣�

	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx == -1) then
		ErrorMsg(3) 
		return
	end;
	
	OldSubWorld = SubWorld;
	SubWorld = idx;
	local MemberCount =GetMissionV(MS_MAXMEMBERCOUNT)
	ms_state = GetMissionV(MS_STATE);
	if (ms_state == 0) then 
		Say("��y l� ��u tr��ng thi ��u l�i ��i, n�i c�c nh�n s� tr�n giang h� ��n ��u ho�c t� ch�c thi ��u ��i. Hi�n t�i ch�a c� ai b�o danh thi ��u, c�c h� c� mu�n b�o danh kh�ng<color=yellow>Hi�n t�i m� mi�n ph� l�i ��i<color>", 3, "���c th�i/OnRegister", "Quy t�c thi ��u ra sao?/OnHelp", "�� suy ngh� c�i ��!/OnCancel");
	elseif (ms_state == 1) then
		Say("��y l� di�n v� tr��ng, ��i<color=yellow>"..szCaptainName[1].."<color>c�ng ��i<color=yellow>"..szCaptainName[2].."<color> tranh t�i<color=yellow>"..MemberCount.." vs "..MemberCount.."<color>, Ng��i c� y�u c�u g�?",4,"Ta l� tuy�n th�, mu�n th��ng l�i ��i./OnShowKey", "Ta l� kh�n gi�, mu�n v�o xem thi ��u./OnEnterMatch", "Ta mu�n xem thi ��u./OnLook", "Ta kh�ng c� h�ng th�./OnCancel")
	elseif (ms_state == 2) then 
		OnFighting();
	else
		ErrorMsg(2)
	end;
	SubWorld = OldSubWorld;
end;

function OnRegister()
	--����
	if (GetTeamSize()  ~= 2) then
		Say("Mu�n ghi danh ph�i l�<color=yellow>��i tr��ng<color> ��i c�a c�c h� kh�ng ��<color=yellow>2<color>ng��i.", 0);
		return
	end;

	if (IsCaptain() ~= 1) then 
		ErrorMsg(5)
		return
	end;

	Say("C�c h� mu�n ��u l�i ��i, s� ng��i nhi�u nh�t m�i b�n l� bao nhi�u", 9, "R�i kh�i!/OnCancel", "1 vs 1/#SignUpFinal(1)", "2 vs 2/#SignUpFinal( 2 )", "3 vs 3/#SignUpFinal( 3 )","4 vs 4/#SignUpFinal( 4 )","5 vs 5/#SignUpFinal( 5 )","6 vs 6/#SignUpFinal( 6 )","7 vs 7/#SignUpFinal( 7 )","8 vs 8/#SignUpFinal( 8 )");
end;

function SignUpFinal(MemberCount)
	if (GetTeamSize()  ~= 2) then
		Say("Mu�n ghi danh ph�i l� <color=yellow>��i tr��ng<color> ��i c�a c�c h� kh�ng ��<color=yellow>2<color> ng��i.", 0);
		return
	end;
	
	if (MemberCount <= 0 or MemberCount > 8) then
		return
	end
	
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	ms_state = GetMissionV(MS_STATE);

	if (ms_state ~= 0) then 
		ErrorMsg(8)
		return
	end
	OpenMission(BW_MISSIONID);
	local x = GetTask(BW_SIGNPOSWORLD);
	if x == 80 then
		SetMissionS(CITYID,"����")
	elseif x == 78 then
		SetMissionS(CITYID,"����")
	else
		SetMissionS(CITYID,"�ɶ�")
	end;
	
	local key = {};
	key = bw_getkey();
	SetMissionV(MS_TEAMKEY[1], key[1]);
	SetMissionV(MS_TEAMKEY[2], key[2]);
	
	OldPlayerIndex = PlayerIndex;
	for i = 1, 2 do 
		PlayerIndex = GetTeamMember(i);
		SetMissionS(i, GetName());
		szCaptainName = bw_getcaptains(); --��ȡ���Ӷӳ��ķ��֣�
		if (MemberCount > 1) then
			Msg2Player("C�c h� mu�n thi ��u v�i ��i h�nh: <color=yellow> ["..key[i].."]<color>, s� th�nh vi�n. Th�nh vi�n ���c C�ng B�nh T� ��a v�o Di�n v� tr��ng l� s� ���c thi ��u.");			
			local szMsg = format("C�ng b�nh t�: � ��y %s c�ng %s ghi danh tranh t�i , nhanh v�o Di�n v� tr��ng , tr�n ��u %d ph�t sau ch�nh th�c b�t ��u . Tr�n thi ��u s� :",MemberCount, MemberCount, floor(GO_TIME/3),key[i])
			Say(szMsg,0)
			
		end
		branchTask_BW1()	--������ϵ�أ��μӸ˱������м���
	end;
	
	PlayerIndex = OldPlayerIndex;
	SetMissionV(MS_MAXMEMBERCOUNT, MemberCount)
	SubWorld = OldSubWorld;
	str = "<#> B�y gi�"..GetMissionS(CITYID)..szCaptainName[1].."��i<#> tranh t�i c�ng"..szCaptainName[2].."��i<#>, L�i ��i chu�n b� b�t ��u, hai ��i tr��ng l�"..szCaptainName[1].."<#>c�ng"..szCaptainName[2].."<#>. L�i ��i m� c�a mi�n ph�, xin m�i c�c v� h�o h�u ��n xem.";
	--AddGlobalNews(str);
	local szMsg = format("C�c th�nh vi�n �� ghi danh � %s c�ng %s tranh t�i , nhanh ch�ng v�o l�i ��i , %d ph�t sau tranh t�i ch�nh th�c b�t ��u.",MemberCount, MemberCount, floor(GO_TIME/3))
	Msg2Team(szMsg);
end;

function bw_getkey()
	local key = {};
	key[1] = random(1, 9999)
	key[2] = random(1, 9999)
	
	--��֤key1 key2>0, key1 ~= key2
	if (key[2] == key[1]) then
		if (key[1] < 9996) then
			key[2] = key[1] + 3
		else
			key[2] = key[1] - 3;
		end
	end
	return key;
end;



function OnHelp()
	Talk(5, "",	"L�i ��i l� n�i �� h�c h�i kinh nghi�m l�n nhau.",	"Mu�n tham gia l�i ��i, tr��c h�t ph�i ��n ch� ta ghi danh.",	"ghi danh tham gia l�i ��i tranh t�i li�n ho�n th�nh , b�i v� cu�c so t�i c� gi�i h�n , �ang c� ng��i thi ��u, c�c h� kh�ng th� ghi danh!",	format("Ghi danh sau th�nh c�ng, c� th� ��n chu�n b� khu , chu�n b� th�i gian l� <color=yellow>%d<color> ��, ׼��ʱ������󣬱�������ʽ��ʼ!", floor(GO_TIME/3)) , 	format("��ƽ˾: ����ʱ����<color=yellow>%d<color> ��, ����� %d���ӻ�����ȷ��Ӯ�Ķӣ�����Ϊ�ݾ�.", floor(TIMER_2/(60*FRAME2TIME))-floor(GO_TIME/3), floor(TIMER_2/(60*FRAME2TIME))-floor(GO_TIME/3) ));
end;

function OnEnterMatch()
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (SubWorld < 0) then
		return
	end;
	
	if ((GetName() == szCaptainName[1]) or (GetName() == szCaptainName[2])) then 
		OnJoin(0)	--���Ţ�ʲ�������� the only param stand for the group ID;
	else
		Say("Xin m�i nh�p s� l�n thi ��u",2, "H�y khoan,cho ta l�n/OnEnterKey", "Ta kh�ng nh�, ch� m�t ch�t �� ta h�i ��i tr��ng/OnCancel")
	end;
	SubWorld = OldSubWorld;
end

function OnEnterKey()
	AskClientForNumber("OnEnterKey1", 0, 10000, "Xin m�i nh�p s� th� t�:");
end

function OnEnterKey1(Key)
	local OldSubWorld = SubWorld;
	SubWorld = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (SubWorld < 0) then
		SubWorld = OldSubWorld;
		return
	end;
	if (Key == GetMissionV(MS_TEAMKEY[1])) then
		OnJoin(1)
	elseif (Key == GetMissionV(MS_TEAMKEY[2])) then
		OnJoin(2)
	else
		Say("C�c h� �� nh�p sai, ho�c h�i ��i tr��ng �� x�c ��nh l�i, xin c�m �n!",0)
	end
	SubWorld = OldSubWorld;
end

function OnLook()
	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	OldSubWorld = SubWorld;
	SubWorld = idx;
	local str = szCaptainName[1].."��i<#> �� "..szCaptainName[2].."��i <#> �� s�n s�ng thi ��u, ai s� l� ng��i chi�n th�ng cu�i c�ng kh�ng?";
	local str1 = "Ta mu�n v�o l�i ��i<#> xem/onwatch";
	Say(str, 2, str1, "Kh�ng ph�i l��t c�a ta,ta kh�ng v�o/OnCancel");
	SubWorld = OldSubWorld;
end;

function onwatch()
	OldSubWorld = SubWorld;
	local idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx == -1) then
		return
	end;
	SubWorld = idx;
	if (GetName() == szCaptainName[1]) or (GetName() == szCaptainName[2]) then 
		SubWorld = OldSubWorld
		OnJoin(0)	--�ӳ����ܽ��й�ս
	else
		OnJoin(3);	--���뵽�����
	end;
end

--to join in a fight group	group --��
function OnJoin(group)
	idx = SubWorldID2Idx(BW_COMPETEMAP[1]);
	if (idx < 0) then
		return
	end;
	OldSubWorld = SubWorld;
	SubWorld = idx;
	if (GetName() == szCaptainName[1]) then 
		JoinCamp(1)
	elseif (GetName() == szCaptainName[2]) then 
		JoinCamp(2)
	elseif (group == 1 or group == 2) then
		local masteridx = SearchPlayer(GetMissionS(group))
		local masternum = 0
		if (masteridx > 0) then
			if (PIdx2MSDIdx(BW_MISSIONID, masteridx) > 0) then
				masternum = 1
			end
		end
		if (GetMSPlayerCount(BW_MISSIONID, group) - masternum < GetMissionV(MS_MAXMEMBERCOUNT) - 1) then
			JoinCamp(group)
		else
			ErrorMsg(10)
		end;
	elseif (group == 3) then
		JoinCamp(3);
	else
		ErrorMsg(4)
	end;
	SubWorld=OldSubWorld;
end;

function OnFighting()
	str = "<#> Hi�n th�i"..szCaptainName[1].."��i<#> v�"..szCaptainName[2].."��i<#> �ang thi ��u. ";
	Say(str, 1, "Quay l�i sau. /OnCancel");
end;

function OnCancel()
end;

function ErrorMsg(ErrorId)
	if (ErrorId == 1) then 
		Say("Mu�n b�o danh ph�i h�p th�nh ��i sau �� m�i c� th� b�o danh",0)
	elseif (ErrorId == 2) then 
		Say("Tham gia thi ��u ph�i mang �� ng�n l��ng",0)
	elseif (ErrorId == 3) then 
		Say("B�o danh b� l�i, xin m�i li�n h� GM!",0);
	elseif (ErrorId == 4) then 
		Say("C�c h� kh�ng ph�i l� tuy�n th� �� b�o danh v� v�y kh�ng th� v�o l�i ��i, xin h�y ��ng ngo�i xem", 0);
	elseif (ErrorId == 5) then 
		Say("Ng��i b�o danh ph�i l� ��i tr��ng",0);
	elseif (ErrorId == 6) then 
		Say("Ng��i mang kh�ng �� ng�n l��ng",0);
	elseif (ErrorId == 7) then 
		Say("Kh�ng ���c, c�c h� c�n �ang tham gia tranh t�i!",0);
	elseif (ErrorId == 8) then
		Say("�Kh�ng ���c, �� c� ng��i ghi danh thi ��u!",0);
	elseif (ErrorId == 9) then 
		Say("Kh�ng ���c, l�i ��i �� b�t ��u, c�c h� kh�ng th� ��ng ph�!",0);
	elseif (ErrorId == 10) then 
		Say("S� ng��i thi ��u �� ��!",0);
	else
		
	end;
	return
end;
