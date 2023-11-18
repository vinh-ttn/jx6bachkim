
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function TayTuyNhanh()
	local tbSay = {"Ng��i mu�n t�y t�y lo�i g� ��y?"}
		tinsert(tbSay, "T�ng �i�m nhanh/tangdiemnhanh")
		tinsert(tbSay, "T�y �i�m k� n�ng/taydiemkynang")
		tinsert(tbSay, "T�y �i�m ti�m n�ng/taydiemtiemnang")
		tinsert(tbSay, "K�t th�c ��i tho�i./OnCancel")
	CreateTaskSay(tbSay)
end

function taydiemkynang()
	Say("Ng��i ��ng � T�y �i�m k� n�ng kh�ng?", 2, "T�y �i�m k� n�ng /taydiemkynangok","Kh�ng t�y /OnCancel")
end

function taydiemkynangok()
	i = HaveMagic(210)
	j = HaveMagic(400)
	n = RollbackSkill()
	x = 0
	if (i ~= -1) then x = x + i end
	if (j ~= -1) then x = x + j end
	rollback_point = n - x
	if (rollback_point + GetMagicPoint() < 0) then
		rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210,i) end
	if (j ~= -1) then AddMagic(400,j) end
	Msg2Player("T�y T�y th�nh c�ng! ng��i �� c� th� ph�n ph�i "..rollback_point.." �i�m. ")
	Talk(1,"KickOutSelf","T�y T�y th�nh c�ng! ng��i �� c� th� ph�n ph�i "..rollback_point.." �i�m.")
end

function taydiemtiemnang()
	Say("Ng��i ��ng � t�y �i�m ti�m n�ng kh�ng?", 2, "T�y �i�m ti�m n�ng/taydiemtiemnangok", "Kh�ng t�y /OnCancel")
end

function taydiemtiemnangok()
	base_str = {35,20,25,30,20}
	base_dex = {25,35,25,20,15}
	base_vit = {25,20,25,30,25}
	base_eng = {15,25,25,20,40}
	player_series = GetSeries() + 1
	Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88,1))
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88,2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88,3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88,4))
end

function tangdiemnhanh()
	Say("Th�ch Minh: Ng��i mu�n t�ng �i�m k� n�ng n�o?", 4,
		"T�ng S�c M�nh/add_prop_str",
		"T�ng Th�n Ph�p/add_prop_dex",
		"T�ng Ngo�i C�ng/add_prop_vit",
		"T�ng N�i C�ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Xin h�y nh�p �i�m s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Xin h�y nh�p �i�m s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Xin h�y nh�p �i�m s� ngo�i c�ng:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Xin h�y nh�p �i�m s� n�i c�ng: ");
end

function enter_str_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddStrg(n_key);
end

function enter_dex_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddDex(n_key);
end

function enter_vit_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddVit(n_key);
end

function enter_eng_num(n_key)
	if (n_key < 0 or n_key > GetProp()) then
		return
	end
	AddEng(n_key);
end
function OnCancel()
end;


-- pEventType:Reg("T�nh n�ng th� nghi�m", "T�y t�y �i�m", TayTuyNhanh);