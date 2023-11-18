IncludeLib("SETTING")
IncludeLib("TONG")
IncludeLib("RELAYLADDER");

Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\global\\general\\thunghiem\\doiten.lua")
Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")
Include("\\script\\global\\general\\thunghiem\\trangsuc.lua")
Include("\\script\\global\\general\\thunghiem\\nguhanhan.lua")
Include("\\script\\global\\general\\thunghiem\\phiphong.lua")
Include("\\script\\global\\general\\thunghiem\\point.lua")
Include("\\script\\global\\general\\thunghiem\\taytuynhanh.lua")
Include("\\script\\global\\general\\thunghiem\\thucuoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
--Include("\\script\\global\\gmrole.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\itemblue.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\duatop.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\global\\namcung\\hotroitem.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
--Include("\\script\\global\\pgaming\\nhiemvu\\chonphoidocacdong.lua")
Include("\\script\\global\\pgaming\\trangbixanh\\tuychontrangbixanh.lua")


function main()

	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter>- <color=Red>TCQ X� T�c<color><enter>"

	local tbOpt =
	{
		--{"Ta mu�n nh�n th��ng �ua TOP SERVER", topser},
		--{"Nh�n �� Ho�ng Kim", sethkmp},
		--{"Nh�n Trang B� Ho�ng kim lo�i 2,3", hkmploai23},
                                                            {"X�a H�nh Trang", xoatoanbo},
		{"Nh�n Trang B� Ho�ng kim Full", sethkmp},
		--{"Nh�n V� Danh Gi�i Ch�", nhanvodanh},
		{"Nguy�n Li�u N�ng C�p B�ch Kim +1 ----> +6", epbk},
		{"Tr�n Bang Chi B�o", updatetbhc},
                                                            {"Nh�n Xu", TienDong },
		--{"Xem tin t�c ng��i ch�i", XemTiemNang},
		{"Nh�n Trang B� Xanh", TrangBiXanh},
		{"Nh�n Trang B� Huy�n Tinh", dotim},
		{"Nh�n Trang B� AnBang,��nhQu�c", golditem},
		--{"Nh�n V� Danh Gi�i Ch�", nhanvodanh},
		{"Chi�n m� th�n t�c", horse},
		{"H� Tr� T�n Th� m�i ch�i", vpht},
		--{"H� Tr� up level", HoTroLevel180},
		--{"Up Level ��n 200", level_up_to190},
		--{"Nh�n Skill 9x", HoTroSkill},
		--{"Nh�n Skill 12x", HoTroBiKip120},
		--{"H�c Kinh C�ng", HoTroBiKip90},
		--{"Nh�n Ti�n V�n", HoTroNganLuong},
		--{"Ta mu�n m��n Chi�u D� Ng�c S� T�", HoTroChieuDa},
		--{"Ta mu�n tr�ng th�i S�t th�", ChuDo},
		--{"Ta mu�n m��n trang b� xanh", MaiGap},
        --{"Ta mu�n m��n v� kh�", MaiGap},
		--{"Ta mu�n ch� t�o trang b� Huy�n Tinh", chetao},	
		--{"Danh V�ng-T�i L�nh ��o", BuildTong},	
        {"G�p l�i ta sau", Quit},
	}
	CreateNewSayEx(szTitle, tbOpt)
return 1;
end
function topser()
duatop()
end
function xoatoanboitem()
	Say("B�n c� mu�n x�a to�n b� kh�ng?", 2, "��ng v�y!/xoatoanbo", "Ta nh�m./no")
end

function xoatoanbo()
--Msg2Player("X�a th�nh c�ng!")
local tbEquip  = GetRoomItems(0)
for _,v in tbEquip do
RemoveItemByIndex(v)
end
ItemIndex = AddItem(6,1,4851,0,0,0)
ItemIndex2 = AddItem(6,1,1266,0,0,0)
ItemIndex3 = AddItem(6,1,438,0,0,0)
SetItemBindState(ItemIndex, -2)
SetItemBindState(ItemIndex2, -2)
SetItemBindState(ItemIndex3, -2)
end

function hotrotanthu()
	if GetLevel()<50 then
		AddSkillState(512,20,1,60*60*18)--40����
		AddSkillState(527,5,1,60*60*18)--500Ѫ
		AddSkillState(313,5,1,60*60*18)--20ȫ��
		AddSkillState(314,12,1,60*60*18)--7�ظ�Ѫ��5�ظ���
		AddSkillState(546,1,1,60*60*18)--���͹⻷
	end
end

function MaiGap()
	Talk(1,"",szNpcName .. "H�m nay ta ch�a k�p chu�n b�, mai "..szPlayer.." quay l�i nh�.")
end

function vpht()
	local tbSay = {""};
		tinsert(tbSay,"Nh�n Qu� Hoa T�u (May M�n)/quehoatuu")
tinsert(tbSay,"V�t Ph�m Ho�t ��ng/vphd1")
tinsert(tbSay,"Nh�n Phi T�c L�nh B�i T�ng Kim/lbtk111")
--tinsert(tbSay,"Nh�n Huy�n Tinh/huytin")
--tinsert(tbSay,"Nh�n Ph�c Duy�n/Phucduyen")
--tinsert(tbSay,"Nh�n Kho�ng Th�ch/kdb")
--tinsert(tbSay,"Nh�n Th�n B� Kho�ng Th�ch/nlbk")
--tinsert(tbSay,"L�nh B�i Boss Ho�ng Kim/LBBoss")
--tinsert(tbSay,"��i th�nh b� ki�p 90/daithanhbikiep90")
--tinsert(tbSay,"��i th�nh b� ki�p 120/daithanhbikiep120")
--tinsert(tbSay,"Vi�m ��/HoTroThanHanh")
--tinsert(tbSay,"H�c Kinh C�ng/HoTroBiKip90")
--tinsert(tbSay,"Nh�n Skill 12x/HoTroBiKip120")
--tinsert(tbSay,"Ta c�n 6 Tinh H�ng B�o Th�ch/HoTroTinhHong")
--tinsert(tbSay,"Ta c�n 3 Lo�i Th�y Tinh/HoTroThuyTinh")
tinsert(tbSay,"H� Tr� up level/HoTroLevel180")
tinsert(tbSay,"Danh V�ng-T�i L�nh ��o/BuildTong")
tinsert(tbSay,"Nh�n Ti�n V�n/HoTroNganLuong")
--tinsert(tbSay,"Nh�n Th�n H�nh Ph�/HoTroThanHanh")
--tinsert(tbSay,"Nh�n Phong V�n Chi�u Binh L�nh/pvlbtk")
tinsert(tbSay,"Nh�n Skill 9x/HoTroSkill")
tinsert(tbSay,"Nh�n Skill 12x/HoTroBiKip120")
tinsert(tbSay,"H�c Kinh C�ng/HoTroBiKip90")
tinsert(tbSay,"T�y �i�m Ti�m N�ng - K� N�ng/taydiem")
tinsert(tbSay,"T�ng �i�m Ti�m N�ng/TangDiemTiemNangNhanh")
tinsert(tbSay,"Tho�t/Quit")
	CreateTaskSay(tbSay)
end
function chetao()
Say( "N�u ��i hi�p mu�n c� m�t m�n �� v�a � th� �em ��y �� nguy�n li�u t�i ��y. Ta s� ��c luy�n m�t v�t ph�m ng��i th�ch nh�t!", 4, "B�t ��u ch� t�o/onFoundryItem", "Li�n quan ch� t�o/onAbout", "T�m hi�u m�nh Ho�ng Kim./onQueryPiece","�� ta suy ngh� k� l�i xem/onCancel");
end
function hoangkimmp()
hoangkimmpfull()
end

function GetBonusHK(nID)
	local nIndex = AddGoldItem(0, nID)
	local strItemName = GetItemName(nIndex)
	Msg2Player("B�n nh�n ���c "..strItemName)
end

function daithanhbikiep90()
	AddItem(6, 1, 2424,1,0,0)
end
function daithanhbikiep120()
	AddItem(6, 1, 2425,1,0,0)
end


function hoangkim()
	if CalcFreeItemCellCount() < 30 then
		Say("H�nh trang ��i hi�p nhi�u qu�, c� kh� n�ng s� nh�n ���c trang b� chi�m nhi�u �. H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	local TabSayPotion = {

		--"HKMP./hoangkimmp",
		"An Bang./item",
		"��nh Qu�c./item",
		"Hi�p C�t./item",
		"Tho�t./Quit",
	}
	Say("H� tr�",getn(TabSayPotion),TabSayPotion)
end
function item(sel)
if sel==1 then
	for i=164,167 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==2 then
	for i=159,163 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==3 then
	for i=186,189 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==5 then
	for i=168,176 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==6 then
	for i=143,146 do
		local ItemIdx=AddGoldItem(0, i);
	end
end
print(GetName()..sel)
end

function ChuDo()
	local szTongName, nTongID = GetTongName();	
	if szTongName == nil or szTongName == "" then
		SetCurCamp(4)
		SetCamp(4)
	end
end
function BuildTong()			-- ��ɽ����׼������
if GetLevel()<5 then
	return
end
local szTongName, nTongID = GetTongName();	
	if szTongName == nil or szTongName == "" then
--		SetCurCamp(4)
--		SetCamp(4)
--		Earn(10^9)
		AddLeadExp(10011100)
		AddRepute(500)
--		AddEventItem(195)
--		NewWorld(2,2350,3493)
	end
end;
function HoTroThuyTinh()
	for i=238,240 do
		AddItem(4, i, 1, 1, 0, 0)
	end
	Talk(1,"",szNpcName .. " th� ".. szPlayer .."  c�n ��y ,".. szPlayer .." c�m �i, ��ng ng�i.")
end

function TienDong()
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
AddStackItem(100, 4, 417, 1, 1, 0, 0, 0);
end

function Phucduyen()
	for i=1,5 do
		AddItem(6,1,124,1,0,0)
	end
end

function quehoatuu()
AddItem(6, 1, 125, 1, 0, 0)
end

function HoTroTinhHong()
	for i=1,6 do
		AddItem(4, 353, 1, 1, 0, 0)
	end
	Talk(1,"",szNpcName .. " th� ".. szPlayer .."  c�n ��y ,".. szPlayer .." c�m �i, ��ng ng�i.")
end

function HoTroNganLuong()
	Earn(1000000000)
	Talk(1,"",szNpcName .. " ta c� 10000 v�n l��ng, ".. szPlayer .." c�m �i, ��ng ng�i.")
end


function HoTroLevel180()

	local TabSayPotion = {
		"Ta mu�n l�n 119 c�p./HoTroLevel119",
		"Ta mu�n l�n 200 c�p./level_up_to190",
		"Tho�t./Quit",
	}
	Say("B�n mu�n c�p �� n�o ?",getn(TabSayPotion),TabSayPotion)
end

function HoTroLevel190()
if GetLevel() < 100 and GetTask(937) == 0 then
thangcap190()
Earn(200000)
SetTask(937,1)
else
Msg2Player("B�n �� Nh�n C�p R�i ")
end;
end;
function thangcap190()
local nCurLevel = GetLevel()
local nAddLevel = 200 - nCurLevel
ST_LevelUp(nAddLevel)
AddItem(6,1,1266,1,0,0);
AddItem(0,10,6,10,0,0);
end;

function HoTroLevel119()
	local nLevel = GetLevel()
	if nLevel < 20 then
		ST_LevelUp(119 - nLevel)
--		if random(1,2)==1 then
--			AddItem(0,10,random(14,18),5,0,0);
--		else
--			AddItem(0,10,random(6,8),5,0,0);
--		end
--		AddItem(6,1,1266,1,0,0);
--		AddItem(0,10,8,10,0,0);
	end
end



function level_up_to190()
	local nCurLevel = GetLevel()
	--Earn(1000000)
	if nCurLevel >= 199 then
		if ST_IsTransLife() == 1 then
			Talk(1, "", "Ch�c b�n test vui v�")
		else
			Talk(1, "", "C�ng chung tay x�y d�ng m�t server ho�n thi�n!")
		end
		return
	end
	local nAddLevel = 200 - nCurLevel
	ST_LevelUp(nAddLevel)
end





function LBBoss()
if GetLevel()>=120 then
		AddItem(6,1,1480,1,0,0);		
	end

AddItem(6,1,1478,1,0,0);
end

function HoTroChieuDa()
	AddItem(0,10,5,5,0,0);
end


function HoTroThanHanh()
	AddItem(6,1,1606,1,0,0);
	AddItem(6,1,1606,1,0,0);
	AddItem(6,1,1606,1,0,0);
	AddItem(6,1,1606,1,0,0);
	AddItem(6,1,1606,1,0,0);
	AddItem(6,1,26,1,0,0);
end


function HoTroBiKip90()
AddMagic(210,1)
end

function HoTroBiKip120()
AddItem(6, 1, 1125,1,0,0)
AddItem(6, 1, 2425,1,0,0)
end

function HoTroSkill()
	local nIndex = floor(GetLevel()/10)
	local szFaction = GetFaction()
	if tbAllSkill[szFaction] == nil then
		return
	end
	if nIndex >= 1 then
		for i=1, min(9,nIndex) do
			if tbAllSkill[szFaction][i] ~= nil then
				for j=1, getn(tbAllSkill[szFaction][i]) do
					if i ==9 then
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j],1)
							AddItem(6, 1, 2424,1,0,0)
						end
					else
						if HaveMagic(tbAllSkill[szFaction][i][j]) == -1 then
							AddMagic(tbAllSkill[szFaction][i][j])
						end
					end
				end
			end
		end
	end
	Talk(1,"",szNpcName.."V� h�c �� ���c truy�n th�, "..szPlayer .." h�y th� v�n c�ng n�ng th�nh xem sao.")
end

function dotim()	
	if CalcFreeItemCellCount() < 30 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 30 � tr�ng r�i h�y m�.",0);
		return 1;
	end
	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph�c/shirt",
		"��nh M�o/hat",
		"H� Uy�n/glove",
		"Y�u ��i/belt",
		"H�i T�/shoe",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki�m/kiem",
		"�ao/dao",
		"B�ng/bong",
		"Th��ng/kick",
		"Ch�y/chuy",
		"Song �ao/songdao",
		"Phi Ti�u/phitieu",
		"Phi �ao/phidao",
		"T� Ti�n/tutien",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function kiem()
		AddQualityItem(2,0,0,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function dao()
		AddQualityItem(2,0,0,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function bong()
		AddQualityItem(2,0,0,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function kick()
		AddQualityItem(2,0,0,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,3,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function chuy()
		AddQualityItem(2,0,0,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,4,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function songdao()
		AddQualityItem(2,0,0,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,0,5,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phitieu()
		AddQualityItem(2,0,1,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,0,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function phidao()
		AddQualityItem(2,0,1,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,1,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function tutien()
		AddQualityItem(2,0,1,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,1,2,10,4,0,-1,-1,-1,-1,-1,-1)	
end


function shirt()
	local tab_Content = {
		"Th�t B�o C� Sa/aothieulam",
		"Ch�n V� Th�nh Y/aovodang",
		"Thi�n Nh�n M�t Trang/aothiennhan",
		"Gi�ng Sa B�o/sabao",
		"���ng Ngh� Gi�p/dng",
		"V�n L�u Quy T�ng Y/aocaibang",
		"Tuy�n Long B�o/longbao",
		"Long Ti�u ��o Y/daoy",
		"C�u V� B�ch H� Trang/hotrang",
		"Tr�m H��ng Sam/huongsam",
		"T�ch L�ch Kim Ph�ng Gi�p/kimphung",
		"V�n Ch�ng T� T�m Y/tamy",
		"L�u Ti�n Qu�n/tienquan",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function aothieulam()
		AddQualityItem(2,0,2,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aovodang()
		AddQualityItem(2,0,2,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aothiennhan()
		AddQualityItem(2,0,2,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function sabao()
		AddQualityItem(2,0,2,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dng()
		AddQualityItem(2,0,2,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function aocaibang()
		AddQualityItem(2,0,2,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longbao()
		AddQualityItem(2,0,2,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function daoy()
		AddQualityItem(2,0,2,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hotrang()
		AddQualityItem(2,0,2,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function huongsam()
		AddQualityItem(2,0,2,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,10,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimphung()
		AddQualityItem(2,0,2,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tamy()
		AddQualityItem(2,0,2,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tienquan()
		AddQualityItem(2,0,2,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,2,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function hat()
	local tab_Content = {
		"T� L� M�o/lomao",
		"Ng� L�o Qu�n/laoquan",
		"Tu La Ph�t K�t/phatket",
		"Th�ng Thi�n Ph�t Qu�n/phatquan",
		"Y�m Nh�t Kh�i/nhatkhoi",
		"Tr�ch Tinh Ho�n/tinhhoan",
		"� T�m M�o/tammao",
		"Quan �m Ph�t Qu�n/quanam",
		"�m D��ng V� C�c Qu�n/amduong",
		"Huy�n T� Di�n Tr�o/dientrao",
		"Long Huy�t ��u Ho�n/longhuyet",
		"Long L�n Kh�i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph�ng Tri�n S�/triensi",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function lomao()
		AddQualityItem(2,0,7,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function laoquan()
		AddQualityItem(2,0,7,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatket()
		AddQualityItem(2,0,7,2,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phatquan()
		AddQualityItem(2,0,7,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,3,10,4,0,-1,-1,-1,-1,-1,-1)
end


function nhatkhoi()
		AddQualityItem(2,0,7,4,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,4,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhhoan()
		AddQualityItem(2,0,7,5,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,5,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tammao()
		AddQualityItem(2,0,7,6,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,6,10,4,0,-1,-1,-1,-1,-1,-1)
end


function quanam()
		AddQualityItem(2,0,7,7,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,7,10,4,0,-1,-1,-1,-1,-1,-1)
end


function amduong()
		AddQualityItem(2,0,7,8,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,8,10,4,0,-1,-1,-1,-1,-1,-1)
end


function dientrao()
		AddQualityItem(2,0,7,9,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,9,10,4,0,-1,-1,-1,-1,-1,-1)
end


function longhuyet()
		AddQualityItem(2,0,7,10,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,10,10,4,0,-1,-1,-1,-1,-1,-1)
end



function lankhoi()
		AddQualityItem(2,0,7,11,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,11,10,4,0,-1,-1,-1,-1,-1,-1)
end


function tinhthoa()
		AddQualityItem(2,0,7,12,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,12,10,4,0,-1,-1,-1,-1,-1,-1)
end


function triensi()
		AddQualityItem(2,0,7,13,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,7,13,10,4,0,-1,-1,-1,-1,-1,-1)
end


function glove()
	local tab_Content = {
		"Long Ph�ng Huy�t Ng�c Tr�c/ngoctrac",
		"Thi�n T�m H� Uy�n/houyen",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function ngoctrac()
		AddQualityItem(2,0,8,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function houyen()
		AddQualityItem(2,0,8,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,8,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function belt()
	local tab_Content = {
		"Thi�n T�m Y�u ��i/thientamyeu",
		"B�ch Kim Y�u ��i/bachkim",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function thientamyeu()
		AddQualityItem(2,0,6,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function bachkim()
		AddQualityItem(2,0,6,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,6,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function shoe()
	local tab_Content = {
		"C�u Ti�t X��ng V� Ngoa/cuutien",
		"Thi�n T�m Ngoa/thientam",
		"Kim L� H�i/kimlu",
		"Phi Ph�ng Ngoa/phiphung",
		"K�t th�c ��i tho�i."
	}
	Say(" Mu�n l�y th�m c�i g� n�o ? ", getn(tab_Content), tab_Content);
end;


function cuutien()
		AddQualityItem(2,0,5,0,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,0,10,4,0,-1,-1,-1,-1,-1,-1)
end


function thientam()
		AddQualityItem(2,0,5,1,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,1,10,4,0,-1,-1,-1,-1,-1,-1)
end


function kimlu()
		AddQualityItem(2,0,5,2,10,0,0,-1,-1,-1,-1,-1,-1)

		AddQualityItem(2,0,5,2,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,2,10,4,0,-1,-1,-1,-1,-1,-1)
end


function phiphung()
		AddQualityItem(2,0,5,3,10,0,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,1,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,2,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,3,0,-1,-1,-1,-1,-1,-1)
		AddQualityItem(2,0,5,3,10,4,0,-1,-1,-1,-1,-1,-1)
end

function huytin()
AddItem(6,1,147,8,0,0,0) 	
AddItem(6,1,147,8,0,0,0) 	
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0) 
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)
AddItem(6,1,147,8,0,0,0)	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,0,0,0) 
AddItem(6,1,152,1,1,0,0)
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0) 

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,0,0,0) 	
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 
AddItem(6,1,154,1,4,0,0) 
	
end






function sethkmp()
if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 30 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
end	
	local tab_Content = {
		"Thi�u L�m quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"R�i kh�i/no",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n k�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang kh� /#sethkmp1(24)",
		"V� �ang ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
		"Trang truoc/sethkmp",
		"R�i kh�i/no",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end




function updatetbhc()
local tab_Content = {
		"Thi�u L�m ph�i/hanchetl",
		"Thi�n V��ng Bang/hanchetvb",
		"Nga My ph�i/hanchenm",
		"Th�y Y�n ph�i/hanchety",
		"Ng� ��c ph�i/hanchend",
		"���ng M�n ph�i/hanchedm",
		"C�i Bang ph�i/hanchecb",
		"Thi�n Nh�n ph�i/hanchetn",
		"V� �ang ph�i/hanchevd",
		"C�n L�n ph�i/hanchecl",
		"R�i kh�i/no",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end



function hanchetl()
AddGoldItem(0, 769)
AddGoldItem(0, 771)
AddGoldItem(0, 776)
end


function hanchetvb()
AddGoldItem(0, 793)
end

function hanchenm()
AddGoldItem(0, 796)
AddGoldItem(0, 801)
AddGoldItem(0, 808)
end


function hanchety()
AddGoldItem(0, 811)
AddGoldItem(0, 816)
end


function hanchend()
AddGoldItem(0, 829)
AddGoldItem(0, 834)
end

function hanchedm()
AddGoldItem(0, 843)
end

function hanchecb()
AddGoldItem(0, 855)
end


function hanchetn()
AddGoldItem(0, 868)
AddGoldItem(0, 874)
AddGoldItem(0, 876)
end

function hanchevd()
AddGoldItem(0, 881)
AddGoldItem(0, 888)
end

function hanchecl()
AddGoldItem(0, 891)
AddGoldItem(0, 898)
end




function horse()
	Say("Xin m�i ch�n trang b� c�n test",10,"� V�n ��p Tuy�t/addhorse","X�ch Th�/addhorse","Tuy�t �nh/addhorse","��ch L�/addhorse","Chi�u D� Ng�c S� T�/addhorse","B�n Ti�u/addhorse","K�t th�c ��i tho�i/no")
end

function addhorse(n)
	if n == 0 then
		Msg2Player("B�n nh�n ���c � V�n ��p Tuy�t!")
		AddItem(0,10,5,1,0,0)
	elseif n == 1 then
		AddItem(0,10,5,2,0,0)
		Msg2Player("B�n nh�n ���c X�ch Th�!")
	elseif n == 2 then
		AddItem(0,10,5,3,0,0)
		Msg2Player("B�n nh�n ���c Tuy�t �nh")
	elseif n == 3 then
		AddItem(0,10,5,4,0,0)
		Msg2Player("B�n nh�n ���c ��ch L�")
	elseif n == 4 then
		AddItem(0,10,5,5,0,0)
		Msg2Player("B�n nh�n ���c Chi�u D� Ng�c S� T�")
	elseif n == 5 then	
		AddItem(0,10,6,1,0,0)
		Msg2Player("B�n nh�n ���c B�n Ti�u")
	--elseif n == 6 then	
		--AddItem(0,10,7,10,0,0)
		--Msg2Player("B�n nh�n ���c Phi�n v�")
	elseif n == 7 then	
		AddItem(0,10,8,10,0,0)
		Msg2Player("B�n nh�n ���c Phi V�n")
	end
end

function golditem()
	Say("Xin m�i ch�n trang b� c�n test",11,"Trang B� An Bang/addgold","Trang B� Nhu T�nh/addgold","Trang B� ��nh Qu�c/addgold","Trang B� H�ng �nh/addgold","Trang B� ��ng s�t/addgold","Trang B� an bang c�c ph�m/addgold","Trang B� kim phong/addgold","Trang B� hi�p c�t/addgold","K�t th�c ��i tho�i/no")
end

function addgold(n)
	if n==0 then 
		AddGoldItem(0,164)
		AddGoldItem(0,165)
		AddGoldItem(0,166)
		AddGoldItem(0,167)
		Msg2Player("Nh�n ���c Trang B� An Bang!")
	elseif n==1 then 
		AddGoldItem(0,190)
		AddGoldItem(0,191)
		AddGoldItem(0,192)
		AddGoldItem(0,193)
		Msg2Player("Nh�n ���c Trang B� Nhu T�nh")
	elseif n==2 then 
		AddGoldItem(0,159)
		AddGoldItem(0,160)
		AddGoldItem(0,161)
		AddGoldItem(0,162)
		AddGoldItem(0,163)
		Msg2Player("Nh�n ���c Trang B� ��nh qu�c!")
	elseif n==3 then 
		AddGoldItem(0,204)
		AddGoldItem(0,205)
		AddGoldItem(0,206)
		AddGoldItem(0,207)
		Msg2Player("Nh�n ���c Trang B� H�ng �nh!")
	elseif n==4 then
		AddGoldItem(0,143)
		AddGoldItem(0,144)
		AddGoldItem(0,145)
		AddGoldItem(0,146)
		Msg2Player("b�n nh�n ���c trang b� ��ng s�t!")
	--elseif n==5 then
		--AddGoldItem(0,210)
		--AddGoldItem(0,211)
		--AddGoldItem(0,212)
		--AddGoldItem(0,213)
		--Msg2Player("b�n nh�n ���c trang b� an bang ho�n m�!")
	elseif n==6 then
		AddGoldItem(0,177)
		AddGoldItem(0,178)
		AddGoldItem(0,179)
		AddGoldItem(0,180)
		AddGoldItem(0,181)
		AddGoldItem(0,182)
		AddGoldItem(0,183)
		AddGoldItem(0,184)
		AddGoldItem(0,185)
		Msg2Player("B�n nh�n ���c B� Kim Phong!")
	elseif n==7 then
		AddGoldItem(0,186)
		AddGoldItem(0,187)
		AddGoldItem(0,188)
		AddGoldItem(0,189)
		Msg2Player("B�n nh�n ���c hi�p c�t!")
		
end
end


function nhanvodanh()
AddGoldItem(0,142)
AddGoldItem(0,141)
Msg2Player("B�n �� nh�n ���c trang bi");
end


function nlbk()
--AddItem(6,1,1310,1,0,0)
--AddItem(6,1,1309,1,0,0)
AddItem(6,1,398,1,0,0)
--AddItem(6,1,147,8,0,0)
--AddItem(6,1,1473,1,0,0)
Msg2Player("B�n nh�n ���c nguy�n li�u");
end


function HoTroThanHanh()
AddItem(6,1,1266,1,0,0)
Msg2Player("nh�n V�t Ph�m Th�nh C�ng");
end



function tbkq()
for i=194,203 do
AddGoldItem(0, i)
Msg2Player("B�n �� nh�n ���c trang bi");
end
end


function pvlbtk()
if CalcFreeItemCellCount() < 15 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 15 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
end
	--local n_transcount = ST_GetTransLifeCount()
	--if n_transcount == 3 or n_transcount == 2 then
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V�n Chi�u Binh L�nh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	--Talk(1, "", "B�n nh�n ���c Phong V�n Chi�u Binh L�nh !")
	--else 
	--Talk(1, "", "Nh�n v�t ch�a Tr�ng sinh kh�ng th� nh�n!")
	--end
end




function hkmploai23()
if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 30 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
end
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	local tbOpt =
	{
		{"Trang B� Thi�n V��ng",	vdhkim1},
		{"Trang B� Thi�u L�m", vdhkim2},
		{"Trang B� ���ng M�n", vdhkim3},
		{"Trang B� Ng� ��c", vdhkim4},
		{"Trang B� Nga Mi", vdhkim5},
		{"Trang B� Thu� Y�n", vdhkim6},
		{"Trang B� C�i Bang", vdhkim7},
		{"Trang B� Thi�n Nh�n", vdhkim8},
		{"Trang B� V� �ang", vdhkim9},
		{"Trang B� C�n L�n", vdhkim10},
		{"K�t th�c ��i tho�i"},
		
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdhkim1()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	local tbOpt =
	{
		{"K� Nghi�p B�n L�i To�n Long th��ng",vdehk1},
		{"Ng� Long L��ng Ng�n B�o �ao",vdehk2},
		{"H�m Thi�n Thoa Long Chi�n Ngoa",vdehk3},
		{"Ng� Long Thi�n M�n Th�c Y�u ho�n",vdehk4},
		{"K� Nghi�p B�ch H� V� Song kh�u",vdehk5},
		{"K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",vdehk6},
		{"Ng� Long Chi�n Th�n Phi Qu�i gi�p",vdehk7},
		{"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",vdehk8},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehk1()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi�p B�n L�i To�n Long th��ng", nQuality=1,tbProp={0,21}, nCount = 10}, "Administrator");
end


function vdehk2()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long L��ng Ng�n B�o �ao", nQuality=1,tbProp={0,26}, nCount = 10}, "Administrator");
end





function vdehk3()
tbAwardTemplet:GiveAwardByList({szName="H�m Thi�n Thoa Long ChiOn Ngoa", nQuality=1,tbProp={0,20}, nCount = 10}, "Administrator");
end



function vdehk4()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long Thi�n M�n Th�c Y�u ho�n", nQuality=1,tbProp={0,28}, nCount = 10}, "Administrator");
end



function vdehk5()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi�p B�ch H� V� Song kh�u", nQuality=1,tbProp={0,23}, nCount = 10}, "Administrator");
end



function vdehk6()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", nQuality=1,tbProp={0,22}, nCount = 9}, "Administrator");
end



function vdehk7()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long ChiOn Th�n Phi Qu�i gi�p", nQuality=1,tbProp={0,27}, nCount = 10}, "Administrator");
end

function vdehk8()
tbAwardTemplet:GiveAwardByList({szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", nQuality=1,tbProp={0,16}, nCount = 10}, "Administrator");
end

function vdhkim2()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"

	local tbOpt =
	{
		{"M�ng Long Kim Ti Chinh H�ng C� Sa",vdehka1},
		{"Ph�c Ma � Kim Nhuy�n ��u",vdehka2},
		{"T� Kh�ng Gi�ng Ma Gi�i �ao",vdehka3},
		{"T� Kh�ng H� ph�p Y�u ��i",vdehka4},
		{"Ph�c Ma T� Kim C�n",vdehka5},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehka1()
tbAwardTemplet:GiveAwardByList({szName="M�ng Long Kim Ti Chinh H�ng C� Sa", nQuality=1,tbProp={0,2}, nCount = 9}, "Administrator");
end


function vdehka2()
tbAwardTemplet:GiveAwardByList({szName="Ph�c Ma � Kim Nhuy�n ��u", nQuality=1,tbProp={0,8}, nCount = 10}, "Administrator");
end


function vdehka3()
tbAwardTemplet:GiveAwardByList({szName="T� Kh�ng Gi�ng Ma Gi�i �ao", nQuality=1,tbProp={0,11}, nCount = 10}, "Administrator");
end


function vdehka4()
tbAwardTemplet:GiveAwardByList({szName="T� Kh�ng H� ph�p Y�u ��i", nQuality=1,tbProp={0,13}, nCount = 10}, "Administrator");
end


function vdehka5()
tbAwardTemplet:GiveAwardByList({szName="Ph�c Ma T� Kim C�n", nQuality=1,tbProp={0,6}, nCount = 10}, "Administrator");
end




function vdhkim3()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	
	local tbOpt =
	{
		{"S�m Hoang Phi Tinh �o�t H�n",vdehkb1},
		{"��a Ph�ch H�c Di�m Xung Thi�n Li�n",vdehkb2},
		--{"S�m Hoang H�n Gi�o Y�u Th�c",vdehkb3},
		{"Thi�n Quang ��nh T�m Ng�ng Th�n Ph�",vdehkb4},
		{"B�ng H�n T�m Ti�n Y�u Kh�u",vdehkb5},
		{"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n",vdehkb6},
		{"B�ng H�n ��n Ch� Phi �ao",vdehkb7},
		{"Thi�n Quang Hoa V� M�n Thi�n",vdehkb8},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkb1()
tbAwardTemplet:GiveAwardByList({szName="S�m Hoang Phi Tinh �o�t H�n", nQuality=1,tbProp={0,81}, nCount = 10}, "Administrator");
end



function vdehkb2()
tbAwardTemplet:GiveAwardByList({szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n", nQuality=1,tbProp={0,87}, nCount = 10}, "Administrator");
end



function vdehkb3()
tbAwardTemplet:GiveAwardByList({szName="S�m Hoang H�n Gi�o Y�u Th�c", nQuality=1,tbProp={0,83}, nCount = 10}, "Administrator");
end



function vdehkb4()
tbAwardTemplet:GiveAwardByList({szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph�", nQuality=1,tbProp={0,77}, nCount = 10}, "Administrator");
end



function vdehkb5()
tbAwardTemplet:GiveAwardByList({szName="B�ng H�n T�m Ti�n Y�u Kh�u", nQuality=1,tbProp={0,73}, nCount = 10}, "Administrator");
end


function vdehkb6()
tbAwardTemplet:GiveAwardByList({szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n", nQuality=1,tbProp={0,86}, nCount = 10}, "Administrator");
end


function vdehkb7()
tbAwardTemplet:GiveAwardByList({szName="B�ng H�n ��n Ch� Phi �ao", nQuality=1,tbProp={0,71}, nCount = 10}, "Administrator");
end

function vdehkb8()
tbAwardTemplet:GiveAwardByList({szName="Thi�n Quang Hoa u4 M�n Thi�n", nQuality=1,tbProp={0,76}, nCount = 10}, "Administrator");
end


function vdhkim4()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"
	local tbOpt =
	{
		{"U Lung Kim X� Ph�t ��i",vdehkc1},
		{"Minh �o T�n S�t ��c Nh�n",vdehkc2},
		{"U Lung M�c Th� Nhuy�n L� ",vdehkc3},
		{"Ch� Ph��c Di�t L�i C�nh Ph�",vdehkc4},
		{"Minh �o H� C�t h� uy�n",vdehkc5},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkc1()
tbAwardTemplet:GiveAwardByList({szName="U Lung Kim X� Ph�t ��i", nQuality=1,tbProp={0,56}, nCount = 10}, "Administrator");
end



function vdehkc2()
tbAwardTemplet:GiveAwardByList({szName="Minh �o T�n S�t ��c Nh�n", nQuality=1,tbProp={0,61}, nCount = 10}, "Administrator");
end



function vdehkc3()
tbAwardTemplet:GiveAwardByList({szName="U Lung M�c Th� Nhuy�n L�", nQuality=1,tbProp={0,60}, nCount = 10}, "Administrator");
end



function vdehkc4()
tbAwardTemplet:GiveAwardByList({szName="Ch� Ph��c Di�t L�i C�nh Ph�", nQuality=1,tbProp={0,67}, nCount = 10}, "Administrator");
end



function vdehkc5()
tbAwardTemplet:GiveAwardByList({szName="Minh �o H� C�t h� uy�n", nQuality=1,tbProp={0,64}, nCount = 10}, "Administrator");
end




function vdhkim5()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"
	local tbOpt =
	{
		{"V� Gian � Thi�n Ki�m",vdehkd1},

		{"V� Gian Ph�t V�n Ti ��i",vdehkd2},
		{"V� Ma T�y T��ng Ng�c Kh�u  ",vdehkd3},
		{"V� Ma H�ng Truy Nhuy�n Th�p h�i",vdehkd4},
		{"V� Tr�n Ng�c N� T� T�m qu�n",vdehkd5},
		{"V� Tr�n Thanh T�m H��ng Thi�n Ch�u",vdehkd6},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehkd1()
tbAwardTemplet:GiveAwardByList({szName="V� Gian � Thi�n Ki�m", nQuality=1,tbProp={0,31}, nCount = 10}, "Administrator");
end


function vdehkd2()
tbAwardTemplet:GiveAwardByList({szName="V� Gian Ph�t V�n Ti ��i", nQuality=1,tbProp={0,33}, nCount = 10}, "Administrator");
end


function vdehkd3()
tbAwardTemplet:GiveAwardByList({szName="V� Ma T�y T��ng Ng�c Kh�u ", nQuality=1,tbProp={0,39}, nCount = 10}, "Administrator");
end



function vdehkd4()
tbAwardTemplet:GiveAwardByList({szName="V� Ma H�ng Truy Nhuy�n Th�p h�i", nQuality=1,tbProp={0,40}, nCount = 10}, "Administrator");
end


function vdehkd5()
tbAwardTemplet:GiveAwardByList({szName="V� Tr�n Ng�c N� T� T�m qu�n", nQuality=1,tbProp={0,41}, nCount = 10}, "Administrator");
end


function vdehkd6()
tbAwardTemplet:GiveAwardByList({szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u", nQuality=1,tbProp={0,42}, nCount = 10}, "Administrator");
end




function vdhkim6()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"
	local tbOpt =
	{
		{"B�ch H�i H�ng Linh Kim Ti ��i",vdehke1},
		{"T� Ho�ng Ph�ng Nghi �ao",vdehke2},
		{"T� Ho�ng B�ng Tung C�m uy�n",vdehke3},
		{"T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",vdehke4},
		{"B�ch H�i Uy�n ��ng Li�n Ho�n �ao",vdehke5},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehke1()
tbAwardTemplet:GiveAwardByList({szName="B�ch H�i H�ng Linh Kim Ti ��i", nQuality=1,tbProp={0,53}, nCount = 10}, "Administrator");
end


function vdehke2()
tbAwardTemplet:GiveAwardByList({szName="T� Ho�ng Ph�ng Nghi �ao", nQuality=1,tbProp={0,46}, nCount = 10}, "Administrator");
end


function vdehke3()
tbAwardTemplet:GiveAwardByList({szName="T� Ho�ng B�ng Tung C�m uy�n", nQuality=1,tbProp={0,49}, nCount = 10}, "Administrator");
end


function vdehke4()
tbAwardTemplet:GiveAwardByList({szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", nQuality=1,tbProp={0,48}, nCount = 10}, "Administrator");
end


function vdehke5()
tbAwardTemplet:GiveAwardByList({szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao", nQuality=1,tbProp={0,51}, nCount = 9}, "Administrator");
end




function vdhkim7()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	
	local tbOpt =
	{
		{"��ng C�u Kh�ng Long H� Uy�n",vdehkf1},
		{"��ch Kh�i L�c Ng�c Tr��ng",vdehkf2},
		{"��ch Kh�i C�u TUch B� H� uy�n",vdehkf3},
		{"��ng C�u Gi�ng Long C�i Y",vdehkf4},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkf1()
tbAwardTemplet:GiveAwardByList({szName="��ng C�u Kh�ng Long H� Uy�n", nQuality=1,tbProp={0,94}, nCount = 10}, "Administrator");
end



function vdehkf2()
tbAwardTemplet:GiveAwardByList({szName="��ch Kh�i L�c Ng�c Tr��ng", nQuality=1,tbProp={0,96}, nCount = 10}, "Administrator");
end



function vdehkf3()
tbAwardTemplet:GiveAwardByList({szName="��ch Kh�i C�u TUch B� H� uy�n", nQuality=1,tbProp={0,99}, nCount = 10}, "Administrator");
end


function vdehkf4()
tbAwardTemplet:GiveAwardByList({szName="��ng C�u Gi�ng Long C�i Y", nQuality=1,tbProp={0,92}, nCount = 9}, "Administrator");
end



function vdhkim8()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	
	local tbOpt =
	{
		{"Ma S�t Qu� C�c U Minh Th��ng",vdehkh1},
		{"Ma S�t T�n D��ng �nh Huy�t Gi�p",vdehkh2},
		{"Ma Ho�ng Kim Gi�p Kh�i",vdehkh3},
		{"Ma Ho�ng �n Xu�t H� H�ng Khuy�n",vdehkh4},
		{"Ma Th� s�n  H�i Phi H�ng L� ",vdehkh5},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkh1()
tbAwardTemplet:GiveAwardByList({szName="Ma S�t Qu� C�c U Minh Th��ng", nQuality=1,tbProp={0,101}, nCount = 10}, "Administrator");
end


function vdehkh2()
tbAwardTemplet:GiveAwardByList({szName="Ma S�t T�n D��ng �nh Huy�t Gi�p", nQuality=1,tbProp={0,102}, nCount = 9}, "Administrator");
end


function vdehkh3()
tbAwardTemplet:GiveAwardByList({szName="Ma Ho�ng Kim Gi�p Kh�i", nQuality=1,tbProp={0,106}, nCount = 10}, "Administrator");
end


function vdehkh4()
tbAwardTemplet:GiveAwardByList({szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n", nQuality=1,tbProp={0,107}, nCount = 10}, "Administrator");
end


function vdehkh5()
tbAwardTemplet:GiveAwardByList({szName="Ma Th� s�n H�i Phi H�ng L�", nQuality=1,tbProp={0,115}, nCount = 10}, "Administrator");
end


function vdhkim9()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"	
	local tbOpt =
	{
		{"C�p Phong Ch�n V� Ki�m",vdehki1},
		{"C�p Phong Tam Thanh Ph�",vdehki2},
		{"C�p Phong Huy�n Ti Tam �o�n c�m",vdehki3},
		{"L�ng Nh�c N� L�i Gi�i",vdehki4},
		{"L�ng Nh�c V� C�c Huy?n Ng�c B�i",vdehki5},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehki1()
tbAwardTemplet:GiveAwardByList({szName="C�p Phong Ch�n V� Ki�m", nQuality=1,tbProp={0,121}, nCount = 10}, "Administrator");
end


function vdehki2()
tbAwardTemplet:GiveAwardByList({szName="C�p Phong Tam Thanh Ph�", nQuality=1,tbProp={0,122}, nCount = 10}, "Administrator");
end



function vdehki3()
tbAwardTemplet:GiveAwardByList({szName="C�p Phong Huy�n Ti Tam �o�n c�m", nQuality=1,tbProp={0,123}, nCount = 10}, "Administrator");
end


function vdehki4()
tbAwardTemplet:GiveAwardByList({szName="L�ng Nh�c N� L�i Gi�i", nQuality=1,tbProp={0,118}, nCount = 10}, "Administrator");
end

function vdehki5()
tbAwardTemplet:GiveAwardByList({szName="L�ng Nh�c V� C�c Huy?n Ng�c B�i", nQuality=1,tbProp={0,119}, nCount = 10}, "Administrator");
end

function vdhkim10()
	local szTitle = "<npc>Ch�o m�ng b�n ��n v�i <color=yellow>V� L�m Truy�n K�<color=yellow><enter><color=Red>Ng��i mu�n l�y trang b� n�o!!!<color>"
	local tbOpt =
	{
		{"S��ng Tinh Thi�n Ni�n H�n Thi�t",vdehkj1},
		{"L�i Khung Thi�n �~a H� ph�",vdehkj2},
		{"V� �o B�c Minh ��o qu�n",vdehkj3},
		{"S��ng Tinh Thanh Phong L� ��i",vdehkj4},
		{"V� �o Tung Phong Tuy�t �nh ngoa",vdehkj5},
		{"V� �o Thanh �nh Huy�n Ng�c B�i",vdehkj6},
		{"L�i Khung H�n Tung B�ng B�ch quan",vdehkj7},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function vdehkj1()
tbAwardTemplet:GiveAwardByList({szName="S��ng Tinh Thi�n Ni�n H�n Thi�t", nQuality=1,tbProp={0,126}, nCount = 10}, "Administrator");
end

function vdehkj2()
tbAwardTemplet:GiveAwardByList({szName="L�i Khung Thi�n ��a H� ph�", nQuality=1,tbProp={0,132}, nCount = 10}, "Administrator");
end


function vdehkj3()
tbAwardTemplet:GiveAwardByList({szName="V� �o B�c Minh ��o qu�n", nQuality=1,tbProp={0,136}, nCount = 10}, "Administrator");
end


function vdehkj4()
tbAwardTemplet:GiveAwardByList({szName="S��ng Tinh Thanh Phong L�� ��i", nQuality=1,tbProp={0,128}, nCount = 10}, "Administrator");
end


function vdehkj5()
tbAwardTemplet:GiveAwardByList({szName="V� �o Tung Phong Tuy�t �nh ngoa", nQuality=1,tbProp={0,140}, nCount = 10}, "Administrator");
end


function vdehkj6()
tbAwardTemplet:GiveAwardByList({szName="V� �o Thanh �nh Huy�n Ng�c B�i", nQuality=1,tbProp={0,139}, nCount = 10}, "Administrator");
end


function vdehkj7()
tbAwardTemplet:GiveAwardByList({szName="L�i Khung H�n Tung B�ng B�ch quan", nQuality=1,tbProp={0,131}, nCount = 10}, "Administrator");
end






function taydiem()
	local tbOpt =
	{
		{"T�y �i�m K� N�ng", clear_skill},
		{"T�y �i�m Ti�m N�ng", clear_prop},
		{"R�i Kh�i."},
	}
	CreateNewSayEx("<npc>Ng��i quyOt u mu�n t�y t�y?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X�c Nh�n", do_clear_skill},
		{"Tr� V?", taydiem},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- �Ṧ�������
	local j = HaveMagic(400)		-- ���ٸ��Aƶ���������
	local n = RollbackSkill()		-- ��u���ܲ��������м���?a�������Ṧ��`��⼼�ܣ?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- O������ж����ųu��δѧ�u�Ṧ���˷���-1�Ӷ����µa�u���a�������
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- �Ѽ��ܵa�����O�еa�u����������?۳u�Ṧ�?
	if (rollback_point + GetMagicPoint() < 0) then		-- ���ϴ���˸��u���?����0��Ϊ?Ժ���ϴ�a��?��?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- ���ѧ�u�Ṧ�?�ӻ�ԭ�еȼ�
	if (j ~= -1) then AddMagic(400, j) end			-- ���ѧ�u���ٸ��Aƶ��ͬ������
	Msg2Player("T�y t�y th�nh c�ng! Ng��i ca "..rollback_point.." �i�m k� n�ng �� ph�n ph�i l�i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X�c nh�n", do_clear_prop},
		{"Tr� V?", taydiem},
	}
	CreateNewSayEx("<npc>Ng��i v�n quyOt u mu�n t�y t�y?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- ���������`�������ֵ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ��?ѷ���Ǳ�����A��task(88)��������ֱ�ӽ��������������ȣ�
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

------------------------TANG DIEM TIEM NANG----------------------------

function TangDiemTiemNangNhanh()
	Say("Ng��i ph�i hi�u r� c�ch t�ng �i�m", 4,
			"S�c m�nh/add_prop_str",
			"Th�n ph�p/add_prop_dex",
			"Sinh khU/add_prop_vit",
			"N�i c�ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M�i nh�p ch� s� s�c m�nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M�i nh�p ch� s� th�n ph�p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M�i nh�p ch� s� sinh khU:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M�i nh�p ch� s� n�i c�ng: ");
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




function sethkmp()
if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h�y s�p xOp l�i h�nh trang! Nh� �� tr�ng 30 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
end	
	local tab_Content = {
		"Thi�u L�m Quy�n/#sethkmp1(1)",
		"Thi�u L�m c�n/#sethkmp1(2)",
		"Thi�u L�m �ao/#sethkmp1(3)",
		"Thi�n V��ng ch�y/#sethkmp1(4)",
		"Thi�n V��ng th��ng/#sethkmp1(5)",
		"Thi�n V��ng �ao/#sethkmp1(6)",
		"Nga My Ki�m/#sethkmp1(7)",
		"Nga My ch��ng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th�y Y�n �ao/#sethkmp1(10)",
		"Th�y Y�n song �ao/#sethkmp1(11)",
		"Ng� ��c ch��ng/#sethkmp1(12)",
		"Ng� ��c �ao/#sethkmp1(13)",
		"Ng� ��c b�a/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"R�i kh�i/no",
		
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"���ng M�n phi �ao/#sethkmp1(15)",
		"���ng M�n t� ti�n/#sethkmp1(16)",
		"���ng M�n phi ti�u/#sethkmp1(17)",
		"���ng M�n b�y/#sethkmp1(18)",
		"C�i Bang r�ng/#sethkmp1(19)",
		"C�i Bang b�ng/#sethkmp1(20)",
		"Thi�n Nh�n K�ch/#sethkmp1(21)",
		"Thi�n Nh�n �ao/#sethkmp1(22)",
		"Thi�n Nh�n b�a/#sethkmp1(23)",
		"V� �ang Kh� /#sethkmp1(24)",
		"V� �ang Ki�m/#sethkmp1(25)",
		"C�n L�n �ao/#sethkmp1(26)",
		"C�n L�n Ki�m/#sethkmp1(27)",
		"C�n L�n b�a/#sethkmp1(28)",
		"Trang tr��c/sethkmp",
		"R�i kh�i/no",
	}
	Say("Xin ch�o <color=yellow>"..GetName().."<color>, h�y ch�n ch�c n�ng m� b�n mu�n", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function epbk()
Say("��i hi�p mu�n l�y nguy�n li�u g�!",6,
--"M�nh Thi�n Th�ch ��i/epbk1",
"M�nh Thi�n Th�ch Trung/epbk5",
"Huy�n Tinh Kho�ng Th�ch C�p 8/epbk2",
"Th�n B� Kho�ng Th�ch(d�ng n�ng c�p trang b� b�ch kim)/epbk3",
"L�i Tr�ch Ch�y(d�ng n�ng c�p trang b� b�ch kim) /epbk4",
"Tho�t/cancel")
end


function epbk1()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent1", 0,10, "Xin m�i nh�p s� l��ng!!!")
end

function nCountEvent1(nCount)
for i = 1, nCount do
AddItem(6,1,1310,1,0,0)
end
Msg2Player("Nh�n th�nh c�ng, S� l��ng:<color=yellow>"..nCount.."<color>")
end

function epbk2()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent2", 0,10, "Xin m�i nh�p s� l��ng!!!")
end

function nCountEvent2(nCount)
for i = 1, nCount do
AddItem(6,1,147,8,0,0)
end
Msg2Player("Nh�n th�nh c�ng, S� l��ng:<color=yellow>"..nCount.."<color>")
end

function epbk3()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent3", 0,10, "Xin m�i nh�p s� l��ng!!!")
end

function nCountEvent3(nCount)
for i = 1, nCount do
AddItem(6,1,398,1,0,0)
end
Msg2Player("Nh�n th�nh c�ng, S� l��ng:<color=yellow>"..nCount.."<color>")
end


function epbk4()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent4", 0,10, "Xin m�i nh�p s� l��ng!!!")
end

function nCountEvent4(nCount)
for i = 1, nCount do
AddItem(6,1,1473,1,0,0)
end
Msg2Player("Nh�n th�nh c�ng, S� l��ng:<color=yellow>"..nCount.."<color>")
end



function epbk5()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 40 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent5", 0,10, "Xin m�i nh�p s� l��ng!!!")
end

function nCountEvent5(nCount)
for i = 1, nCount do
AddItem(6,1,1309,1,0,0)
end
Msg2Player("Nh�n th�nh c�ng, S� l��ng:<color=yellow>"..nCount.."<color>")
end


function vphd1()
Say("��i hi�p mu�n l�y nguy�n li�u g�!",6,
"L�nh b�i phong l�ng ��/nhanvp1",
"H�p l� v�t s�t th� gi�n/nhanvp2",
"T� m�u l�nh/nhanvp3",
"T�n v�t m�n ph�i/nhanvp4",
"Tho�t/cancel")
end

function nhanvp2()
AddItem(6,1,2339,1,0,0)
Msg2Player("Nh�n ���c v�t ph�m th�nh c�ng!")
end

function nhanvp3()
AddItem(6,1,1427,1,0,0)
Msg2Player("Nh�n ���c v�t ph�m th�nh c�ng!")
end

function nhanvp1()
AddItem(4,489,1,1,0,0)
Msg2Player("Nh�n ���c v�t ph�m th�nh c�ng!")
end

function nhanvp4()
AddItem(6,1,1670,1,0,0)
Msg2Player("Nh�n ���c v�t ph�m th�nh c�ng!")
end

function lbtk111()
for i=1,100 do
		AddItem(6,1,157,0,0,0)		--- phitoc
		AddItem(6,1,190,0,0,0)		--- lenhbai
		--AddItem(6,1,215,0,0,0)		--- mautongkim
end

Msg2Player("B�n nh�n ���c phi t�c l�nh b�i!")
end







function XemTiemNang()	
	if CalcEquiproomItemCount(4, 417, 1, 1) > 10 then
	ConsumeEquiproomItem(10, 4, 417, 1, 1)
	g_AskClientStringEx("",1,30,"Nh�p t�n:",{xemthongtinnguoichoi});
	else
		Say("Kh�ch quan �ang tr�u ch�c ta hay th�t s� kh�ng c� <color=yellow>10 ti�n ��ng<color>?", 0);
	end
end;

function xemthongtinnguoichoi(szPlayerNew)
	local nPlayerIndex = PlayerIndex;
	local nNewPlayer = SearchPlayer(szPlayerNew);
	if (nNewPlayer <= 0) then
		Talk(1,"",format("Ng��i ch�i %s kh�ng online!",szPlayerNew));
	return 0 end;
	
	PlayerIndex = nNewPlayer;
	local nStrg = GetStrg(0);
	local nDex = GetDex(0);
	local nVit = GetVit(0);
	local nEng = GetEng(0);
	local szTitle = format("Th�ng tin �i�m v� nh�n v�t %s",GetName());
	--szTitle = szTitle..format("<enter>S�c m�nh: %s",nStrg);
	--szTitle = szTitle..format("<enter>Th�n ph�p: %s",nDex);
	--szTitle = szTitle..format("<enter>Ngo�i c�ng: %s",nVit);
	--szTitle = szTitle..format("<enter>N�i c�ng: %s",nEng);
	szTitle = szTitle..format("<enter>T�ng �i�m nh�n v�t: %s",nEng + nStrg + nVit + nDex);
	PlayerIndex = nPlayerIndex;
	local tbOpt = {szTitle};
	CreateTaskSay(tbOpt);
end;


pEventType:Reg("H� Tr� T�n Th�", "Th� nghi�m m�y ch�", ThuNghiem);