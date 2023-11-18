
-- ====================== �ļ���Ϣ ======================

-- ������Եonline �Ի��ַ��������ļ�
-- Edited by peres
-- 2005/09/01 PM 16:40

-- ֻ��������������
-- �����మ
-- ���ǵ�
-- �����ָ�Ħ������Ƥ���ϵ�����
-- ������������Ⱥ������ӹ�
-- ��������������ı���ͷ���
-- ����˯ʱ������ӳ�������
-- ���ǵã��峿���ѹ�����һ�̣������������
-- �������۾��������͸������һ��һ����������
-- ����������Ϊ�Ҹ�����ʹ

-- ======================================================


-- �ַ��������ܿ�
Include("\\script\\lib\\string.lua");

-- ͬ��ϵͳ��֧��
IncludeLib("PARTNER");
IncludeLib("TASKSYS");

function TaskSay(caption, option)
	local str = caption;
	local strGenKey = strsub(str, 1, 5);
	if strGenKey=="<dec>" then
		str = strsub(str, 6, strlen(str));
		str = SetTaskSayColor(str);  -- ת���ؼ���
		Describe(str, getn(option), option)
	else
		str = SetTaskSayColor(str);  -- ת���ؼ���
		Say(str, getn(option), option)
	end;
end;

function TaskSayList(caption, ...)
	TaskSay(caption, arg)
end

-- �ô����������ֹ���һ�ζԻ����鲢ִ��
function CreateTaskSay(tb)
	local option = {}
	for i = 2, getn(tb) do
		tinsert(option, tb[i])
	end
	TaskSay(tb[1], option)
end;

KEY_TASKSAY = {
	key_left 	= "{{",					-- "<color=yellow>" �򻯱�ʶ
	key_right	= "}}",					-- "<color>" �򻯱�ʶ
	key_sex		= "<s".."e".."x>",				-- �Ա��ʶ
	key_pan		= "<p".."a".."n>",				-- ͬ��ͼ�����ӱ�ʶ
	key_npc		= "<n".."p".."c>",				-- �Ի����� NPC ��ͼ����������ӱ�ʶ
	txt_left	= "<c".."o".."l".."o".."r".."=".."y".."e".."l".."l".."o".."w>",
	txt_right	= "<c".."o".."l".."o".."r>",
	key_server = "<s".."e".."r".."v".."e".."r".."n".."a".."m".."e>",
	key_dev = "<d".."e".."v>",
	key_player = "<p".."l".."a".."y".."e".."r>",
	key_world = "<w".."o".."r".."l".."d"..">"
}

-- ���ڴ����ı��ڵĹؼ��֣��磺�Ա��ʶ��ͬ��ͼ�����ӱ�ʶ���ص���ɫ��ʶ�ȡ�
function SetTaskSayColor(str)
	local strPan = CreatePartnerStringLink()
	local strNpc = CreateNpcStringLink()
	local strSex = GetPlayerSex();
	local strSV = AS_ServerName();
	local strDev = AS_Developer();
	local strPlayer = AS_NamePlayer();
	local strWorld = AS_NameWorld();
	
	PushString(str)
	-- �����ص��ʶ��ɫ
	ReplaceString(KEY_TASKSAY.key_left, KEY_TASKSAY.txt_left)
	ReplaceString(KEY_TASKSAY.key_right, KEY_TASKSAY.txt_right)	
	
	-- �����Ա��ʶ
	ReplaceString(KEY_TASKSAY.key_sex, strSex)
	
	-- ����ͬ���ʶ
	ReplaceString(KEY_TASKSAY.key_pan, strPan)
	
	-- ���� NPC ���ֱ�ʶ
	ReplaceString(KEY_TASKSAY.key_npc, strNpc)
	ReplaceString(KEY_TASKSAY.key_server, strSV )
	ReplaceString(KEY_TASKSAY.key_dev, strDev )
	ReplaceString(KEY_TASKSAY.key_player, strPlayer )
	ReplaceString(KEY_TASKSAY.key_world, strWorld )

	return PopString()
end;

-- function Msg2

-- ���ڴ���һ��ѡ��ĶԻ����� Say(""...);
function SelectSay(strSay)
	if (getn(strSay) < 2) then
		return
	end
	local caption = SetTaskSayColor(strSay[1])
	local option = {}
	for i = 2, getn(strSay) do
		tinsert(option, strSay[i])
	end
	Say(caption, getn(option), option)
end;


-- ���ڴ���һ��ѡ��� Describe ����
function SelectDescribe(strSay)
	if (getn(strSay) < 2) then
		return
	end
	local caption = SetTaskSayColor(strSay[1])
	local option = {}
	for i = 2, getn(strSay) do
		tinsert(option, strSay[i])
	end
	Describe(caption, getn(option), option)
end


-- �Ӻ�����������չ�Ի� TALK �����Ĺ���
function TalkEx(fun,szMsg)

	local num = getn(szMsg);
	local szmsg = "";
	PushString(szmsg)
	for i=1,num-1 do
		-- szmsg = szmsg..format("%q",szMsg[i])..",";
		AppendString(format("%q",szMsg[i]))
		AppendString(",")
	end;
	szmsg = PopString()
	szmsg = szmsg .. format("%q",SetTaskSayColor(szMsg[num]));
	szmsg = "Talk("..num..","..format("%q",fun)..","..szmsg..")";
	dostring(szmsg);
	
end;

-- �������� Describe �����ʾ��ͬ������ͼ��
function CreatePartnerStringLink()

local partnerindex,partnerstate = PARTNER_GetCurPartner()       -- ����ٻ���ͬ���index,ͬ��״̬Ϊ�ٳ���Ϊ���ٳ�
local nSettingIdx = PARTNER_GetSettingIdx(partnerindex)         -- ��ȡͬ������� ID

local strLink = "<#><link=image[0,8]:#npcspr:?NPCSID="..tostring(nSettingIdx).."?ACTION="..tostring(0)..">";

	if partnerindex<1 or partnerstate==0 then
		return "";
	end;

	-- ��󷵻ش�ͬ��������ͼ�������ַ���
	return strLink..PARTNER_GetName(partnerindex).."<link>: ";

end;


-- �������� Describe �����ʾ�� NPC ����ͼ��
function CreateNpcStringLink()

local nNpcIndex = GetLastDiagNpc();  -- �õ����Ի��� NPC INDEX

local nSettingIdx = GetNpcSettingIdx(nNpcIndex);  -- �õ��� NPC INDEX �� NPCS SETTINGS

local NpcName = GetNpcName(nNpcIndex);  -- �õ��� NPC ������

local strLink = "<#><link=image[0,8]:#npcspr:?NPCSID="..tostring(nSettingIdx).."?ACTION="..tostring(0)..">";


	if nNpcIndex==0 or nNpcIndex==nil then
		return "";
	end;
	
	return strLink.."<<"..NpcName..">><link>: ";

end;


-- �Ӻ��������Ի�ȡ��ҵ��Ա�ֱ�ӷ����ַ���
function GetPlayerSex()
	local mySex -- ������ʾ�����Ա���ַ�
	if (GetSex() == 0) then
		mySex = "C�ng t�";
	elseif (GetSex() == 1) then
		mySex = "N� hi�p";
	end
	return mySex;
end;

function AS_NameWorld()
	local nIdx = SubWorld;
	return SubWorldName(nIdx);
end

function AS_NamePlayer()
	return GetName();
end

function AS_ServerName()
	return "<color=yellow>V".."� L".."�".."m T".."r".."u".."y".."�".."n K".."�<color>";
end

function AS_Developer()
	return "<color="..toColor(0,255,120)..">A".."l".."o".."n".."e".."S".."c".."r".."i".."p".."t<color>";
end