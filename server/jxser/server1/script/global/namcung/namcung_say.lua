Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\namcung\\hotrogm.lua")
Include("\\script\\global\\namcung\\xephang\\top10_all.lua")
Include("\\script\\task\\partner\\education\\swordking_people.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\doiraclayvk.lua")
Include("\\script\\global\\namcung\\gmquanlyserver\\ds_gm.lua");


function main()
	dofile("script/global/namcung/namcung_say.lua");		

	if CheckAccountGM() then
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
		local tbOpt =
	{
		{"H�y trang b� kh�a", deltem},
		{"Xem s� l��ng ng��i ch�i �ang Online", dkgm9},
		{"��i t�n nh�n v�t", game_spreader2},
		{"��ng k� quy�n h�n GM", dkgm},
		{"Tho�t"},
	}

		CreateNewSayEx(szTitle, tbOpt)		
	elseif CheckAccountMod() then
	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
		local tbOpt =
	{
		{"H�y trang b� kh�a", deltem},
		{"Xem s� l��ng ng��i ch�i �ang Online", dkgm9},
		{"��i t�n nh�n v�t", game_spreader2},
		{"��ng k� quy�n h�n MOD", dkgm},
		{"Tho�t"},
	}

		CreateNewSayEx(szTitle, tbOpt)		
	else

	local szTitle = "<npc>.<enter><color=yellow>V� L�m Truy�n K�<color><enter><color=red>C�u Ni�n T��ng Ph�ng<color>.<enter>Hoan ngh�nh c�c anh h�ng h�o ki�t... !"
				local tbOpt =
	{
		--{"H� tr� test Game", namcung2},
		{"H�y trang b� kh�a", deltem},
		{"Nh�n L�i V�ng S�ng H� tr� t�n th�", nhanvongsanght},
		{"��i t�n nh�n v�t", game_spreader2},
		--{"��i r�c l�y v� kh� ng�u nhi�n", doirac},
		--{"Nh�n V�ng s�ng h� tr� t�i c�p 80", nhanvongsanght},
		{"Tho�t"},
	}
		CreateNewSayEx(szTitle, tbOpt)	

end
end			


function dkgm9()
Msg2Player("<color=yellow>Hi�n t�i �ang c�<color><color=green> "..GetPlayerCount().."<color> Ng���i Online !.")
end

function nhanvongsanght()
	if GetLevel()< 80 then
		--AddSkillState(531,10,1,600*60*18)	--Ng�i sao
		--AddSkillState(461,1, 1,600*60*18)

		--AddSkillState(512,20,1,600*60*18)
		--AddSkillState(527,5,1,600*60*18)
		AddSkillState(313,5,1,600*60*18)  	--Vong duoi chan
		AddSkillState(314,12,1,600*60*18)	 --Vong duoi chan
		--AddSkillState(546,1,1,600*60*18)		 --Rong bay
		Talk(1, "", "B�n s� ���c nh�n h� tr� k� n�ng n�y ��n c�p 80");
	else
		--RemoveSkillState(531)	--Ng�i sao
		--RemoveSkillState(461)

	---	RemoveSkillState(512)
		--RemoveSkillState(527)
		RemoveSkillState(313)  	--Vong duoi chan
		RemoveSkillState(314)	 --Vong duoi chan
		--RemoveSkillState(546)		 --Rong bay
		return
	end
end

function dkgm()
	n_title = 5000 -- S?a ID danh hi?u v�o
	local nServerTime = GetCurServerTime()+ 1728000; --20*24*60*60
	local nDate = FormatTime2Number(nServerTime);
	local nDay = floor(mod(nDate,1000000) / 10000);
	local nMon = mod(floor(nDate / 1000000) , 100)
	local nTime = nMon * 1000000 + nDay * 10000 
	Title_AddTitle(n_title, 2, nTime)
	Title_ActiveTitle(n_title)
	local nCurLevel = GetLevel()
	if nCurLevel < 150 then
		ST_LevelUp(150 - nCurLevel)
	end
	SetFightState(0)
	SetCamp(6)
	SetCurCamp(6)
	AddMagic(732, 50) --Skill GM
	AddMagic(733, 50) --Skill GM
	if CalcFreeItemCellCount() >= 1 then
		local tbItem = {szName="L�nh b�i Gm", tbProp={6,1,4257,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem, "L�nh b�i Gm", 1)
		local tbItem1 = {szName="M�t N� Gm", tbProp={0,11,367,1,0,0}, nBindState=-2}
		tbAwardTemplet:GiveAwardByList(tbItem1, "M�t N� Gm", 1)
	end
end

function deltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end

function DisposeConfirm(nCount)	

	for i=1, nCount do
		local nItemIndex = GetGiveItemUnit(i)
		local strItem = GetItemName(nItemIndex)
		local nQuality = GetItemQuality(nItemIndex);
		local nBindState = GetItemBindState(nItemIndex)
	if (nBindState >=0)  then
		Talk(1, "", "V�t ph�m c�n h�y ph�i l� v�t ph�m kh�a!");
		return
	end
		--SaveLog(nItemIndex)
		RemoveItemByIndex(nItemIndex)
		WriteLog(date("%Y%m%d %H%M%S").."\t".." GM H�y Item "..GetAccount().."\t"..GetName().."\t".." Hu� item "..strItem)
	end--for
	Talk(1, "", "��i hi�p c� th� s�p x�p l�i r��ng ch�a �� r�i!");
	Msg2Player("��i hi�p v�a h�y v�t ph�m th�nh c�ng")
end

function doirac()
weapon_ring()
end
function game_spreader2()
	local tbOpt = {}
	local strTittle ="<npc>  Ng��i t�m ta c� vi�c g�?"
	tinsert(tbOpt, {"��ng k� ��i t�n nh�n v�t thu ph�",dangkydoiten})
	tinsert(tbOpt, {"��t l�i t�n cho nh�n v�t",about_rename_role})
	tinsert(tbOpt, {"Nh�n ti�n gh� qua th�i"})
	CreateNewSayEx(strTittle,tbOpt)
end

function about_rename_role()
	local strInfo = "<color=green>Ch�n Nhi:<color> Ch�o b�n! V� t�n nh�n v�t c�a b�n v� ng��i ch�i kh�c gi�ng nhau, cho n�n h� th�ng �� gi�p b�n ��i t�n, b�n c� th� s�a t�n nh�n v�t c�a b�n tr��c ��y, c� th� ki�m tra xem t�n �� c� d�ng ���c kh�ng. Ch� �! B�n ch� c� 1 c� h�i duy nh�t �� ��i t�n, xin h�y c�n th�n t�ng b��c.";
	func_online_rename_role(strInfo);
end
function func_online_rename_role(strInfo)
	if (check_renamerole() == 1) then
		Say(strInfo,
			3,
			"T�m hi�u t�n nh�n v�t c�n s� d�ng ���c kh�ng/query_rolename",
			"Thay ��i t�n nh�n v�t c�a m�nh/change_rolename",
			"�� l�n sau ta thay ��i v�y/cancel");
	else
		deny()
	end
end
function query_rolename()
	AskClientForString("on_query_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t c�n t�m hi�u");
end

function on_query_rolename(new_name)
	QueryRoleName(new_name);
end
function change_rolename()
	Say("<color=green>Ch�n Nhi:<color> C�c b��c c� th�: R�i Bang H�i n�u c�, ��i tho�i v�i NPC, nh�p t�n nh�n v�t c�n thay ��i v�o, b�n s� t� ��ng r�i m�ng. Sau 3 ph�t ��ng nh�p l�i, n�u t�n nh�n v�t �� thay ��i th� ���c xem ��i t�n th�nh c�ng; n�u ch�a thay ��i, m�i b�n th�c hi�n l�i c�c b��c tr�n. N�u xu�t hi�n m�t s� hi�n t��ng l� xin li�n h� GM gi�i quy�t.",
		2,
		"B�t ��u thay ��i t�n nh�n v�t/change_rolename2",
		"�� ta suy ngh� l�i/cancel")
end
function change_rolename2()
	local _, nTongId = GetTongName()
	if (nTongId ~= 0) then
		Msg2Player(" <color=green>��i hi�p �� c� Bang H�i kh�ng th� ti�n h�nh thao t�c n�y!<color>")
		return
	end
	AskClientForString("on_change_rolename", "", 1, 20, "Xin nh�p t�n nh�n v�t m�i v�o");
end
function on_change_rolename(new_name)
	if (check_renamerole() == 1) then
		if (GetName() == new_name) then
			Talk(1, "", "B�n mu�n ��i t�n g�?")
		else
			RenameRole(new_name);
		end
	end
end
function dangkydoiten()
	if (GetBit(GetTask(TASKVALUE_BLEND), 1) == 1) then
		Say("<color=green>Ch�n Nhi:<color> B�n v�n c�n 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	Say("<color=green>Ch�n Nhi:<color> M�i l�n ��i t�n nh�n v�t c�n <color=red>100 ti�n ��ng<color>, ng��i chu�n b� xong ch�a?",
		2,
		"Ta �� chu�n b� xong/dongkymua",
		"Khi n�o �� ti�n ta s� quay l�i sau!/cancel");
end
function dongkymua()
	buy_addibox_yes(100)
end
function buy_addibox_yes(nNedCount)
	if (nNedCount < 1 or nNedCount == nil) then
		print("Fail!!!!");
		return
	end;
	
	local nCount = CalcEquiproomItemCount(4, 417, 1, 1)
	if (nCount < nNedCount) then
		Say("<color=green>Ch�n Nhi:<color> Kh�ch quan ch�a �� 100 ti�n ��ng! Khi n�o c� �� ti�n h�y quay l�i.",1,
		"�� ta ki�m tra xem sao/cancel")
		return
	end
	ConsumeEquiproomItem(nNedCount, 4, 417, 1, 1)
	UseSilver(1, 2, nNedCount);
	value = SetBit(value, 1, 1)
	SetTask(TASKVALUE_BLEND, value)
	Talk(1, "", "<color=green>Ch�n Nhi:<color> B�n nh�n ���c 1 l�n ��i t�n nh�n v�t. H�y ch�n '��t l�i t�n cho nh�n v�t' �� ��i t�n nh�n v�t");
end
function deny()
	Say("<color=green>Ch�n Nhi:<color> Xin l�i! B�n ph�i mua l�n ��i t�n nh�n v�t r�i h�y ch�n ch�c n�ng n�y!",
		1,
		"Bi�t r�i!/cancel")
end

tbitemht  =
	{
              		[1]	={szName = "Th�n H�nh Ph�", tbProp = {6, 1, 1266, 1,0,0}, nCount = 1,  nBindState = -2,nExpiredTime = 10080 },
		[2]	={szName = "H�i th�nh ph� (nh�)", tbProp = {6,1,1082,0,0}, nCount = 1,  nBindState = -2, },
--		[3]	={szName = "Trang B� Kim Phong", tbProp = {0,184}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[4]	={szName = "Trang B� Kim Phong", tbProp = {0,179}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[5]	={szName = "Trang B� Kim Phong", tbProp = {0,177}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[6]	={szName = "Trang B� Kim Phong", tbProp = {0,178}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[7]	={szName = "Trang B� Kim Phong", tbProp = {0,183}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[8]	={szName = "Trang B� Kim Phong", tbProp = {0,181}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[9]	={szName = "Trang B� Kim Phong", tbProp = {0,182}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[10]	={szName = "Trang B� Kim Phong", tbProp = {0,185}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
--		[11]	={szName = "Trang B� Kim Phong", tbProp = {0,180}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
		[3]	={szName = "L�nh B�i T�n Th�", tbProp = {6, 1, 4265, 1,0,0}, nCount = 1,  nBindState = -2},

	}

function LoginNew()


	local nCurLevel = GetLevel()
	if nCurLevel > 1 then
		return
	end
	--if nCurLevel < 100 then
		--ST_LevelUp(10 - nCurLevel)
		--end
		Earn(2000)
	tbAwardTemplet:GiveAwardByList(tbitemht, "Ph�n th��ng t�n th�");

end;