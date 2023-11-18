IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\repute_head.lua")
Include("\\script\\misc\\league_cityinfo.lua")
Include("\\script\\global\\skills_table.lua")
Include("\\script\\global\\map_helper.lua")
Include("\\script\\task\\newtask\\education\\knowmagic.lua")

function main() 
	-- dofile("script/huashan/npchuashan.lua");
	dialog_main()	
end


function dialog_main()
	local player_Faction = GetFaction()
	if (GetLastFactionNumber() == 5) then		-- ����
		Talk(1,"","T� l�u nghe ti�ng c�c c� n��ng Th�y Y�n ��p nh� ti�n n�, v� c� n��ng n�y cho �n m�y ta �t ti�n u�ng r��u ���c ch�ng?")
		return
	elseif (GetLastFactionNumber() == 4) then				
		Talk(1,"","Xinh ��p nh� hoa t��i m� h�ng ng�y c� ��i di�n v�i Thanh ��ng C� Ph�t!  Ta kh�ng th�ch c�c ng��i � �i�m n�y! ")
		return
	elseif (GetLastFactionNumber() == 2) then
		Talk(1,"","Hai ph�i ch�ng ta li�n minh l�i, kh�ng c�n ph�i ph�n tranh n�a! Ch�ng ph�i l� h� s� �?")
		return
	elseif (GetLastFactionNumber() == 3) then
		Talk(1,"","Ta gh�t nh�t l� c�i b�n len l�n h� ��c h�i ng��i!  �y!  Kh�ng ph�i ta n�i ng��i! ")
		return
	elseif (GetLastFactionNumber() == 1) then
		Talk(1,"","D��ng H� c�a Thi�n V��ng bang c�c ng��i c�n k�m xa b�n m�n c�a ta, Thi�n V��ng qu� nhi�n ch�ng ra g� h�t! ")
		return
	elseif (GetLastFactionNumber() == 0) then
		Talk(1,"","H�a th��ng ��u tr�c sao l�i ��n n�i th�m s�n c�ng c�c th� n�y?! ")
		return
	elseif (GetLastFactionNumber() == 8) then
		Talk(1,"","Qu� m�n l�y hi�p ngh�a l�m tr�ng, nh�ng kh�ng bi�t ��n T� Nam c� bi�t h� th�n hay kh�ng m� c� mu�n so t�i v�i v� c�ng c�a ch�ng ta")
		return
	elseif (GetLastFactionNumber() == 9) then
		Talk(1,"","C�n L�n ph�i ph�t tri�n th�n t�c! T�i h� r�t ng��ng m�! ")
		return
	elseif (GetLastFactionNumber() == 7) then
		Talk(1,"","Ai l�m ho�ng �� th� c�ng m�c!  Nh�ng c�c ng��i t�n s�t sinh linh th� b�n c� n��ng kh�ng b� qua! ")
		return
	elseif (GetLastFactionNumber() == 6) then
		Talk(2,"","��i hi�p!  ��ng qua ��y! ","�! B� ch�t!!! ")
		return
	elseif (GetLastFactionNumber() == 10) then 
		Say("C� l�i g� mu�n n�i v�i bang ch� kh�ng? Hay mu�n ta ��a v� Hoa S�n?",4,"Xin ��a t�i h� v� Hoa S�n!/return_yes","T�m hi�u khu v�c luy�n c�ng/map_help","T�m hi�u v� ngh� b�n m�n/skill_help","Xin chuy�n d�m l�i h�i th�m s� ph�/no")
		return
	end


	if GetSex() == 1 then
		Talk(2,"","B�n bang �� c� danh x�ng Thi�n h� �� nh�t bang, danh ch�n giang h�.Nh�n t�i ng�a H� t�ng Long, th�i n�o c�ng c�", "Hoa S�n ph�i to�n l� nam kh�ng ti�p nh�n �� t� n�")
	return end

	if GetCamp() == 0 then
		Say("N�u mu�n gia nh�p b�n ph�i ph�i thay ��i t�m t�nh, chuy�n t�m tu h�nh, t��ng lai c� r�t nhi�u c� h�i ch� ��n ng��i!", 3, "Gia nh�p Hoa S�n/go", "T�m hi�u tinh hoa v� ngh� c�c m�n ph�i/Uworld1000_knowmagic")
	end
end

function go()
	if GetLevel()<10 then
		Talk(2,"","B�n bang �� c� danh x�ng Thi�n h� �� nh�t bang, danh ch�n giang h�.Nh�n t�i ng�a H� t�ng Long, th�i n�o c�ng c�", "Tr��c ti�n ng��i h�y luy�n t�p l�i c�n b�n, ��t ��n <color=Red>c�p 10<color> r�i h�y t�m ta!")
	return end
	SetFaction("huashan");
	SetCamp(3);
	SetCurCamp(3);
	SetRank(89);
	SetSeries(2);
	AddMagic(1347)
	AddMagic(1372)
	AddMagic(1349)
	AddMagic(1374)
	AddMagic(1350)
	AddMagic(1375)
	AddMagic(1351)
	AddMagic(1376)
	AddMagic(1354)
	AddMagic(1378)
	AddMagic(1355)
	AddMagic(1379)
	AddMagic(1358)
	AddMagic(1360)
	AddMagic(1380)
	AddMagic(1364,20)
	AddMagic(1382,20)
	--AddMagic(1363,20)
	AddMagic(1365,20)
	AddMagic(1370,20)
	AddMagic(1369,20)
	AddMagic(1384,20)
	--AddMagic(1368,20)
	SetLastFactionNumber(10);
	Msg2Player("Hoan ngh�nh b�n gia nh�p Hoa S�n ph�i!")
	Msg2Faction("cuiyan",GetName().." t� h�m nay gia nh�p Hoa S�n ph�i. Xin b�i ki�n c�c v� s� t�. Mong c�c v� quan t�m ch� gi�o!",GetName())
end

function return_yes()
	NewWorld(987, 1328, 3136)
end;

function no()
end;