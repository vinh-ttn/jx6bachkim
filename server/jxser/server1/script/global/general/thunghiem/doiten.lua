Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function main()
	local tbSay = {"Ng��i mu�n ��i t�n nh�n v�t �ung ch�?"}
		tinsert(tbSay, "B��c 1: Ki�m tra t�n nh�n v�t �� t�n t�i kh�ng?/CheckPlayerName")
		tinsert(tbSay, "B��c 2: Ti�n h�nh ��i t�n nh�n v�t �� ki�m tra!/ChangePlayerName")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function CheckPlayerName()
	AskClientForString("CheckPlayerName_Enter", "", 1, 20, "<#> Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function CheckPlayerName_Enter(szPlayerName)
	QueryRoleName(szPlayerName);
end

function ChangePlayerName()
	local tbSay = {"C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t."};
		tinsert(tbSay, "B�t ��u thay ��i t�n nh�n v�t/ChangePlayerNameEnter")
		tinsert(tbSay, "Th�i �� khi kh�c �i, ta b�n r�i./no")
	CreateTaskSay(tbSay)
end

function ChangePlayerNameEnter()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>B�n �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("OnChangePlayerName", "", 1, 20, "T�n nh�n v�t m�i:");
end

function OnChangePlayerName(szPlayerName)
	local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney < 50) then
		Talk(1, "", "C�n <color=red>50<color> ti�n ��ng m�i c� th� ��i t�n.")
	return 1
	end
	if (GetName() == szPlayerName) then
		Talk(1, "", "B�n mu�n ��i t�n g�?")
	else
		RenameRole(szPlayerName);
		ConsumeEquiproomItem(50, 4, 417, 1, 1)
	end
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "H�c k� n�ng m�n ph�i", HocKyNangMonPhai);