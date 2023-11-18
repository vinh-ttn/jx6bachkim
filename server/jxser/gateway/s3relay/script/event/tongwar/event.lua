Include("\\script\\lib\\common.lua")
Include("\\script\\gb_taskfuncs.lua")

TONGWAR_LGTYPE = 10

--ս�ӳ�ԱTask
TONGWAR_LGMTASK_JOB = 1		--�ӳ�Ϊ1����ԱΪ0

--ս�ӹ���Task
TONGWAR_LGTASK_TONGCNT = 1	--��������
TONGWAR_LGTASK_WIN = 2			--ʤ������
TONGWAR_LGTASK_LOSE = 3			--ʧ�ܴ���
TONGWAR_LGTASK_TIE = 4			--ƽ�ִ���
TONGWAR_LGTASK_RESULT = 5		--�����ܻ���
TONGWAR_LGTASK_POINT = 6		--ÿ���������ۼ�
TONGWAR_LGTASK_CITYID = 7		--�ó���id
TONGWAR_LGTASK_CAMP = 8			--�ó�������Ӫ
TONGWAR_LGTASK_MAP = 9			--�óǱ���������ͼ
TONGWAR_LGTASK_RANK = 10		--������������
TONGWAR_LGTASK_TITLE = 15		--��������Ƿ���ȡ�˹⻷
TONGWAR_LGTASK_TONGID = 16		--�������ID
TONGWAR_LGTASK_SEASON = 17		--����

--��ɫTask
TONGWAR_RLTASK_POINT = 1323

TONGWAR_CITY = {"����","�ɶ�","����","�꾩","����","����","�ٰ�",}

LOGFILE = "relay_log\\tongwar"		--��־·��

function tongwar_add(szParam)
	--��ִ������
	local aryParam = split(szParam, " ")
	tongname = GetTongNameByID(tonumber(aryParam[1]))
	if (FALSE(tongname)) then
		_msg("tongname id "..aryParam[1].." error!!!!")
		return
	end
	local rolename = aryParam[2]
	local leaguename = TONGWAR_CITY[tonumber(aryParam[3])]
	local cpname = aryParam[4]
	local mytongid = tonumber(aryParam[5]);
	if (mytongid == 0) then
		OutputMsg("cityowner tongid error!!!!");
		return 0;
	end;
	
	local n_lid = LG_GetLeagueObj(TONGWAR_LGTYPE, leaguename)
	if (FALSE(n_lid)) then
		_msg("false leaguename"..leaguename)
		return 0
	end
	
	if (LG_GetLeagueTask(n_lid, TONGWAR_LGTASK_TONGID) == 0) then
		LG_ApplySetLeagueTask(TONGWAR_LGTYPE, leaguename, TONGWAR_LGTASK_TONGID, mytongid);
	end;
	
	--�����ظ������Ա
	if (not FALSE(LG_GetLeagueObjByRole(TONGWAR_LGTYPE, tongname))) then
		tongwar_say(rolename, "���Ѽ��������ˣ������ټ�����")
		local strInfo = format("Bang <color=yellow>%s<color> ... <color=yellow>%s<color> �Ѽ������ˣ������ټ�����", rolename, tongname)
		tongwar_say(cpname, strInfo, 0)
		return 0
	end

	local szlogfile = LOGFILE..date("%y%m").."\\tongwar.log"
	--����ս��
	if(tongwar_addmember(leaguename, tongname) == 1) then
		local strInfo = format("��ϲ���ѳɹ�����������[<color=yellow>%s<color>].", leaguename)
		tongwar_say(rolename, strInfo, nil, 1)
		
		strInfo = format("<color=yellow>%s<color> �ѳɹ�������İ������", tongname)
		tongwar_say(cpname, strInfo, 0)
		
		strInfo = format("���� [%s] ��[%s] �Ѽ����� [%s] do [%s] ��Ϊ����", tongname, rolename, cpname, leaguename)
		WriteStringToFile(szlogfile, strInfo.."\n")
		return 1
	end

	return 0
end

--�����Ա�����գ�
function tongwar_addmember(leaguename, rolename)
	local nMemberID = LGM_CreateMemberObj() -- �������ų�Ա���ݶ���(���ض���ID)
	--�������ų�Ա����Ϣ(��ɫ����ְλ���������͡���������)
	LGM_SetMemberInfo(nMemberID, rolename, 0, TONGWAR_LGTYPE, leaguename) 
	local ret = LGM_ApplyAddMember(nMemberID, "", "") 
	LGM_FreeMemberObj(nMemberID)

	return ret
end

--��ָ����ɫ������ҷ���Ϣ
function tongwar_say(rolename, msg, b_msg, b_sync)
	GlobalExecute("dw tongwar_gw_say([["..safestr(rolename).."]], [["..safestr(msg).."]], "..tostring(b_msg)..", "..tostring(b_sync)..")" )
end

function _msg(...)
	local str = "+++DEBUG["..date("%H:%M:%S").."]: "..join(arg)
	OutputMsg(str)
end



function tongwar_redo_start(szParam)
OutputMsg(szParam.."���䳡 - ���ֵ�һ��")
	local aryParam = split(szParam, " ")
	if (aryParam == nil or getn(aryParam) ~= 9) then
		OutputMsg("error!! tongwar_redo_start the Param error!")
		return
	end
	for i = 1, getn(aryParam) do
		aryParam[i] = tonumber(aryParam[i])
	end
		OutputMsg(format("dw tongwar_start(%d, %d, %d, %d, %d, %d, %d, %d, %d)", aryParam[1], aryParam[2], aryParam[3], aryParam[4], aryParam[5], aryParam[6], aryParam[7], aryParam[8], aryParam[9]))
		GlobalExecute(format("dw tongwar_start(%d, %d, %d, %d, %d, %d, %d, %d, %d)", aryParam[1], aryParam[2], aryParam[3], aryParam[4], aryParam[5], aryParam[6], aryParam[7], aryParam[8], aryParam[9]))
end

--���Ϊnil��0������1�����򷵻�0
function FALSE(value)
	if (value == 0 or value == nil or value == "") then
		return 1
	else
		return nil
	end
end

