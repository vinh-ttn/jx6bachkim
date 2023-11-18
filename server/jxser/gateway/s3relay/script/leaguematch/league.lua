Include( "\\script\\leaguematch\\head.lua" )

--�ṩGameServer���õĽ���ս�Ӻ���
function wlls_create(szParam)
	_M("�� wlls_create �������Ϊ:"..szParam);
	
	--��ִ������
	local aryParam = split(szParam, " ")
	rolename = aryParam[1]
	n_type = tonumber(aryParam[2])
	n_mtype = tonumber(aryParam[3])
	leaguename = aryParam[4]

	--�����ظ������Ա
	if (not FALSE(LG_GetLeagueObjByRole(WLLS_LGTYPE, rolename))) then
		wlls_say(rolename, "�Բ������Ѽ��������ӣ����ܽ�����!")
		return 0
	end

	--����ս�����ظ�
	local n_lid = LG_GetLeagueObj(WLLS_LGTYPE, leaguename)
	if(not FALSE(n_lid)) then
		wlls_say(rolename, "Chi�n ��i c�a [<color=yellow>"..leaguename.."<color>] �� ���c th�nh l�p.")
		return 0
	end
	
	--����ս��
	if(wlls_relay_createleague(leaguename) == 1) then
		local n_sid = GetGblInt(RLGLB_WLLS_SEASONID)
		wlls_SetLeagueTask(leaguename, WLLS_LGTASK_MTYPE, n_mtype)
		wlls_SetLeagueTask(leaguename, WLLS_LGTASK_STYPE, n_type)
		--��ӵ�ǰrolename��ս��
		if(wlls_relay_addmember(leaguename, rolename) == 1) then
			wlls_SetMemberTask(leaguename, rolename, WLLS_LGMTASK_JOB, 1)
			wlls_say(rolename, "Chi�n ��i c�a [<color=yellow>"..leaguename.."<color>] �� ���c th�nh l�p.", nil, 1)
			-- zzMsg2Player = "Chi�n ��i c�a [<color=yellow>"..leaguename.."<color>] �� ���c th�nh l�p."
			-- GlobalExecute(format( "dw Msg2Player([[%s]])", zzMsg2Player));
			wlls_rest_hint(rolename, 1, n_type)
			return 1
		end
		wlls_say(rolename, "δ���ֵ���������ϵ����")
	end

	OutputMsg("create league "..leaguename.." error!!!")
	return 0
end

--�ṩGameServer���õļ����Ա����
function wlls_add(szParam)
	_M("�� wlls_add �������Ϊ:"..szParam);

	--��ִ������
	local aryParam = split(szParam, " ")
	rolename = aryParam[1]
	leaguename = aryParam[2]
	cpname = aryParam[3]
	
	--�����ظ������Ա
	if (not FALSE(LG_GetLeagueObjByRole(WLLS_LGTYPE, rolename))) then
		wlls_say(rolename, "�Բ������Ѽ��������ӣ������ټ�����!!")
		wlls_say(cpname, "��Ķ�Ա <color=yellow>"..rolename.."<color> �Ѽ��������ӣ������ټ�����!", 0)
		return 0
	end
	
	--��ֹ����ս����������
	local n_lid = LG_GetLeagueObj(WLLS_LGTYPE, leaguename)
	if (FALSE(n_lid)) then
		wlls_say(rolename, "�Բ��𣬸öӲ����ڻ����ѱ���ɢ!")
		wlls_say(cpname, "��Ķ��������ѣ��������ټ����Ա��!.", 0)
		return 0
	end
	_, _, membercount = LG_GetLeagueInfo(n_lid)
	local n_type = LG_GetLeagueTask(WLLS_LGTYPE, leaguename, WLLS_LGTASK_STYPE)
	local n_maxmem = WLLS_TYPE[n_type].max_member
	if (membercount >= n_maxmem) then
		wlls_say(rolename, "�Բ��𣬶�Ա�ѹ������ܼ����³�Ա��!!")
		wlls_say(cpname, "��ӵĳ�Ա���ѹ������ܼ����³�Ա��!!", 0)
		return 0
	end

	--����ս��
	if(wlls_relay_addmember(leaguename, rolename) == 1) then
		wlls_say(rolename, "��ϲ���ѳɹ������ [<color=yellow>"..leaguename.."<color>]", nil, 1)
		wlls_say(cpname, "<color=yellow>"..rolename.."<color> �ѳɹ�������Ķ�!", 0)
		wlls_rest_hint(cpname, membercount+1, n_type)
		return 1
	end

	OutputMsg("wlls_add error!", rolename, leaguename)
	return 0
end

--�ṩGameServer���õ�ɾ����Ա���������գ�
function wlls_leave(rolename)
	_M("�� wlls_leave �������Ϊ:"..rolename);
	
	--ȷ���Ѿ������˶���
	local n_lid = LG_GetLeagueObjByRole(WLLS_LGTYPE, rolename)
	if (FALSE(n_lid)) then
		wlls_say(rolename, "��û�����!")
		return 0
	end

	local leaguename, _, membercount = LG_GetLeagueInfo(n_lid)
	local str = "Chi�n ��i c�a [<color=yellow>"..leaguename.."<color>]."
	local removelg = 0

	local n_type = LG_GetLeagueTask(WLLS_LGTYPE, leaguename, WLLS_LGTASK_STYPE)
	if (membercount > 1) then
		local n_job = LG_GetMemberTask(WLLS_LGTYPE, leaguename, rolename, WLLS_LGMTASK_JOB)
		if (n_job == 1) then	--�ӳ��˳�
			for i = 0, LG_GetMemberCount(n_lid)-1 do
				local name = LG_GetMemberInfo(n_lid, i)
				if (name ~= rolename) then
					if (n_type == 3) then	--ʦͽ����ȡ��ͽ�ܱ����ʸ�
						wlls_SetMemberTask(leaguename, name, WLLS_LGMTASK_OVER, 1)
					else	--�����������ƽ��ӳ�
						wlls_SetMemberTask(leaguename, name, WLLS_LGMTASK_JOB, 1)
						str = str .. "��Ķӳ������ת��������: <color=yellow>" .. name.."<color>"
						break
					end
				end
			end
			if (n_type == 3) then	--ʦͽ����ȡ��ͽ�ܱ����ʸ�
				str = str .. "���ͽ�ܱ����ʸ��ѱ�ɾ!."
			end
		end
	else
		str = str .. "�� ���c gi�i t�n!"
		removelg = 1
	end
	
	--ɾ����Ա
	if(LGM_ApplyRemoveMember(WLLS_LGTYPE, leaguename, rolename, "", "", removelg) == 1) then
		wlls_say(rolename, str, 1, 1)
		return 1
	end

	OutputMsg("wlls_leave error!", rolename, leaguename)
	return 0
end

--����ս�ӣ����գ�
function wlls_relay_createleague(leaguename)
	local nNewLeagueID = LG_CreateLeagueObj()	--�����������ݶ���(���ض���ID)
	LG_SetLeagueInfo(nNewLeagueID, WLLS_LGTYPE, leaguename)	--����������Ϣ(���͡�����)
	local ret = LG_ApplyAddLeague(nNewLeagueID, "", "") 
	LG_FreeLeagueObj(nNewLeagueID)
	return ret
end

--�����Ա�����գ�
function wlls_relay_addmember(leaguename, rolename)
	local nMemberID = LGM_CreateMemberObj() -- �������ų�Ա���ݶ���(���ض���ID)
	--�������ų�Ա����Ϣ(��ɫ����ְλ���������͡���������)
	LGM_SetMemberInfo(nMemberID, rolename, 0, WLLS_LGTYPE, leaguename) 
	local ret = LGM_ApplyAddMember(nMemberID, "", "") 
	LGM_FreeMemberObj(nMemberID)
	
	if (ret == 1) then	--��¼����ս�ӵ�����
		local n_sid = GetGblInt(RLGLB_WLLS_SEASONID)
		--�����ڼ���ģ���Ϊ��һ�����������
		if (GetGblInt(RLGLB_WLLS_PHASE) > 1) then n_sid = n_sid - 1 end
		wlls_SetMemberTask(leaguename, rolename, WLLS_LGMTASK_ADDSID, n_sid)
	end

	return ret
end

--���Ѷӳ������Լ�����ٶ�Ա
function wlls_rest_hint(n_plname, n_count, n_type)
	local n_maxmem = WLLS_TYPE[n_type].max_member
	if (n_count < n_maxmem) then
		wlls_say(n_plname, "��Ķ� [<color=yellow>"..leaguename.."<color>] Ŀǰ��<color=yellow>"..n_count.."<color> ��Ա���㻹��������<color=yellow>"..(n_maxmem-n_count).."<color> ng��i", 1)
	else
		-- wlls_say(n_plname, "��Ķ� [<color=yellow>"..leaguename.."<color>] Ŀǰ�ѹ� <color=yellow>"..n_maxmem.."<color> ��Ա.", 1)
		wlls_say(n_plname, "Chi�n ��i c�a [<color=yellow>"..leaguename.."<color>] �� ���c th�nh l�p.", 1)
	end
end

--��ָ����ɫ������ҷ���Ϣ
function wlls_say(rolename, msg, b_msg, b_sync)
	_M("dw wlls_gw_say("..wlls_safestr(rolename)..", "..wlls_safestr(msg)..", "..tostring(b_msg)..", "..tostring(b_sync)..")" )
	GlobalExecute("dw wlls_gw_say("..wlls_safestr(rolename)..", "..wlls_safestr(msg)..", "..tostring(b_msg)..", "..tostring(b_sync)..")" )
end

