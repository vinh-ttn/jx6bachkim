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
Include("\\script\\global\\紫色及黄金装备铸造.lua")
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

	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter>- <color=Red>TCQ X� T綾<color><enter>"

	local tbOpt =
	{
		--{"Ta mu鑞 nh薾 thng 畊a TOP SERVER", topser},
		--{"Nh薾 у Ho祅g Kim", sethkmp},
		--{"Nh薾 Trang B� Ho祅g kim lo筰 2,3", hkmploai23},
                                                            {"X鉧 H祅h Trang", xoatoanbo},
		{"Nh薾 Trang B� Ho祅g kim Full", sethkmp},
		--{"Nh薾 V� Danh Gi韎 Ch�", nhanvodanh},
		{"Nguy猲 Li謚 N﹏g C蕄 B筩h Kim +1 ----> +6", epbk},
		{"Tr蕁 Bang Chi B秓", updatetbhc},
                                                            {"Nh薾 Xu", TienDong },
		--{"Xem tin t鴆 ngi ch琲", XemTiemNang},
		{"Nh薾 Trang B� Xanh", TrangBiXanh},
		{"Nh薾 Trang B� Huy襫 Tinh", dotim},
		{"Nh薾 Trang B� AnBang,мnhQu鑓", golditem},
		--{"Nh薾 V� Danh Gi韎 Ch�", nhanvodanh},
		{"Chi課 m� th莕 t鑓", horse},
		{"H� Tr� T﹏ Th� m韎 ch琲", vpht},
		--{"H� Tr� up level", HoTroLevel180},
		--{"Up Level n 200", level_up_to190},
		--{"Nh薾 Skill 9x", HoTroSkill},
		--{"Nh薾 Skill 12x", HoTroBiKip120},
		--{"H鋍 Kinh C玭g", HoTroBiKip90},
		--{"Nh薾 Ti襫 V筺", HoTroNganLuong},
		--{"Ta mu鑞 mn Chi誹 D� Ng鋍 S� T�", HoTroChieuDa},
		--{"Ta mu鑞 tr筺g th竔 S竧 th�", ChuDo},
		--{"Ta mu鑞 mn trang b� xanh", MaiGap},
        --{"Ta mu鑞 mn v� kh�", MaiGap},
		--{"Ta mu鑞 ch� t筼 trang b� Huy襫 Tinh", chetao},	
		--{"Danh V鋘g-T礽 L穘h Чo", BuildTong},	
        {"G苝 l筰 ta sau", Quit},
	}
	CreateNewSayEx(szTitle, tbOpt)
return 1;
end
function topser()
duatop()
end
function xoatoanboitem()
	Say("B筺 c� mu鑞 x鉧 to祅 b� kh玭g?", 2, "ng v藋!/xoatoanbo", "Ta nh莔./no")
end

function xoatoanbo()
--Msg2Player("X鉧 th祅h c玭g!")
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
		AddSkillState(512,20,1,60*60*18)--40跑速
		AddSkillState(527,5,1,60*60*18)--500血
		AddSkillState(313,5,1,60*60*18)--20全抗
		AddSkillState(314,12,1,60*60*18)--7回复血，5回复内
		AddSkillState(546,1,1,60*60*18)--御赐光环
	end
end

function MaiGap()
	Talk(1,"",szNpcName .. "H玬 nay ta ch璦 k辮 chu萵 b�, mai "..szPlayer.." quay l筰 nh�.")
end

function vpht()
	local tbSay = {""};
		tinsert(tbSay,"Nh薾 Qu� Hoa T鰑 (May M緉)/quehoatuu")
tinsert(tbSay,"V藅 Ph萴 Ho箃 чng/vphd1")
tinsert(tbSay,"Nh薾 Phi T鑓 L謓h B礽 T鑞g Kim/lbtk111")
--tinsert(tbSay,"Nh薾 Huy襫 Tinh/huytin")
--tinsert(tbSay,"Nh薾 Ph骳 Duy猲/Phucduyen")
--tinsert(tbSay,"Nh薾 Kho竛g Th筩h/kdb")
--tinsert(tbSay,"Nh薾 Th莕 B� Kho竛g Th筩h/nlbk")
--tinsert(tbSay,"L謓h B礽 Boss Ho祅g Kim/LBBoss")
--tinsert(tbSay,"Чi th祅h b� ki誴 90/daithanhbikiep90")
--tinsert(tbSay,"Чi th祅h b� ki誴 120/daithanhbikiep120")
--tinsert(tbSay,"Vi猰 д/HoTroThanHanh")
--tinsert(tbSay,"H鋍 Kinh C玭g/HoTroBiKip90")
--tinsert(tbSay,"Nh薾 Skill 12x/HoTroBiKip120")
--tinsert(tbSay,"Ta c莕 6 Tinh H錸g B秓 Th筩h/HoTroTinhHong")
--tinsert(tbSay,"Ta c莕 3 Lo筰 Th駓 Tinh/HoTroThuyTinh")
tinsert(tbSay,"H� Tr� up level/HoTroLevel180")
tinsert(tbSay,"Danh V鋘g-T礽 L穘h Чo/BuildTong")
tinsert(tbSay,"Nh薾 Ti襫 V筺/HoTroNganLuong")
--tinsert(tbSay,"Nh薾 Th莕 H祅h Ph�/HoTroThanHanh")
--tinsert(tbSay,"Nh薾 Phong V﹏ Chi猽 Binh L謓h/pvlbtk")
tinsert(tbSay,"Nh薾 Skill 9x/HoTroSkill")
tinsert(tbSay,"Nh薾 Skill 12x/HoTroBiKip120")
tinsert(tbSay,"H鋍 Kinh C玭g/HoTroBiKip90")
tinsert(tbSay,"T葃 觤 Ti襪 N╪g - K� N╪g/taydiem")
tinsert(tbSay,"T╪g 觤 Ti襪 N╪g/TangDiemTiemNangNhanh")
tinsert(tbSay,"Tho竧/Quit")
	CreateTaskSay(tbSay)
end
function chetao()
Say( "N誹 i hi謕 mu鑞 c� m閠 m鉵  v鮝 � th� 甧m y  nguy猲 li謚 t韎 y. Ta s� c luy謓 m閠 v藅 ph萴 ngi th輈h nh蕋!", 4, "B総 u ch� t筼/onFoundryItem", "Li猲 quan ch� t筼/onAbout", "T譵 hi觰 m秐h Ho祅g Kim./onQueryPiece","в ta suy ngh� k� l筰 xem/onCancel");
end
function hoangkimmp()
hoangkimmpfull()
end

function GetBonusHK(nID)
	local nIndex = AddGoldItem(0, nID)
	local strItemName = GetItemName(nIndex)
	Msg2Player("B筺 nh薾 頲 "..strItemName)
end

function daithanhbikiep90()
	AddItem(6, 1, 2424,1,0,0)
end
function daithanhbikiep120()
	AddItem(6, 1, 2425,1,0,0)
end


function hoangkim()
	if CalcFreeItemCellCount() < 30 then
		Say("H祅h trang i hi謕 nhi襲 qu�, c� kh� n╪g s� nh薾 頲 trang b� chi誱 nhi襲 �. H穣 c蕋 b韙 v藅 ph萴  m b秓 c� 30 � tr鑞g r錳 h穣 m�.",0);
		return 1;
	end
	local TabSayPotion = {

		--"HKMP./hoangkimmp",
		"An Bang./item",
		"мnh Qu鑓./item",
		"Hi誴 C鑤./item",
		"Tho竧./Quit",
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
function BuildTong()			-- 完成建帮的准备工作
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
	Talk(1,"",szNpcName .. " th� ".. szPlayer .."  c莕 y ,".. szPlayer .." c莔 甶, ng ng筰.")
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
	Talk(1,"",szNpcName .. " th� ".. szPlayer .."  c莕 y ,".. szPlayer .." c莔 甶, ng ng筰.")
end

function HoTroNganLuong()
	Earn(1000000000)
	Talk(1,"",szNpcName .. " ta c� 10000 v筺 lng, ".. szPlayer .." c莔 甶, ng ng筰.")
end


function HoTroLevel180()

	local TabSayPotion = {
		"Ta mu鑞 l猲 119 c蕄./HoTroLevel119",
		"Ta mu鑞 l猲 200 c蕄./level_up_to190",
		"Tho竧./Quit",
	}
	Say("B筺 mu鑞 c蕄  n祇 ?",getn(TabSayPotion),TabSayPotion)
end

function HoTroLevel190()
if GetLevel() < 100 and GetTask(937) == 0 then
thangcap190()
Earn(200000)
SetTask(937,1)
else
Msg2Player("B筺 Х Nh薾 C蕄 R錳 ")
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
			Talk(1, "", "Ch骳 b筺 test vui v�")
		else
			Talk(1, "", "C飊g chung tay x﹜ d鵱g m閠 server ho祅 thi謓!")
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
	Talk(1,"",szNpcName.."V� h鋍  頲 truy襫 th�, "..szPlayer .." h穣 th� v薾 c玭g n﹏g th祅h xem sao.")
end

function dotim()	
	if CalcFreeItemCellCount() < 30 then
		Say("H穣 c蕋 b韙 v藅 ph萴  m b秓 c� 30 � tr鑞g r錳 h穣 m�.",0);
		return 1;
	end
	local tab_Content = {
		"V� Kh�/weapon",
		"Y Ph鬰/shirt",
		"жnh M筼/hat",
		"H� Uy觧/glove",
		"Y猽 Цi/belt",
		"H礽 T�/shoe",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"Ki誱/kiem",
		"o/dao",
		"B鎛g/bong",
		"Thng/kick",
		"Ch飝/chuy",
		"Song o/songdao",
		"Phi Ti猽/phitieu",
		"Phi o/phidao",
		"T� Ti詎/tutien",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		"Th蕋 B秓 C� Sa/aothieulam",
		"Ch﹏ V� Th竛h Y/aovodang",
		"Thi猲 Nh蒼 M藅 Trang/aothiennhan",
		"Gi竛g Sa B祇/sabao",
		"Л阯g Ngh� Gi竝/dng",
		"V筺 L璾 Quy T玭g Y/aocaibang",
		"Tuy襫 Long B祇/longbao",
		"Long Ti猽 Чo Y/daoy",
		"C鰑 V� B筩h H� Trang/hotrang",
		"Tr莔 Hng Sam/huongsam",
		"T輈h L辌h Kim Ph鬾g Gi竝/kimphung",
		"V筺 Ch髇g T� T﹎ Y/tamy",
		"L璾 Ti猲 Qu莕/tienquan",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		"T� L� M穙/lomao",
		"Ng� L穙 Qu竛/laoquan",
		"Tu La Ph竧 K誸/phatket",
		"Th玭g Thi猲 Ph竧 Qu竛/phatquan",
		"Y觤 Nh藅 Kh玦/nhatkhoi",
		"Tr輈h Tinh Ho祅/tinhhoan",
		"� T祄 M穙/tammao",
		"Quan  Ph竧 Qu竛/quanam",
		" Dng V� C鵦 Qu竛/amduong",
		"Huy襫 T� Di謓 Tr竜/dientrao",
		"Long Huy誸 u Ho祅/longhuyet",
		"Long L﹏ Kh玦/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Ph鬾g Tri觧 S�/triensi",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		"Long Ph鬾g Huy誸 Ng鋍 Tr筩/ngoctrac",
		"Thi猲 T祄 H� Uy觧/houyen",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		"Thi猲 T祄 Y猽 Цi/thientamyeu",
		"B筩h Kim Y猽 Цi/bachkim",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		"C鰑 Ti誸 Xng V� Ngoa/cuutien",
		"Thi猲 T祄 Ngoa/thientam",
		"Kim L� H礽/kimlu",
		"Phi Ph鬾g Ngoa/phiphung",
		"K誸 th骳 i tho筰."
	}
	Say(" Mu鑞 l蕐 th猰 c竔 g� n祇 ? ", getn(tab_Content), tab_Content);
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
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 30 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
end	
	local tab_Content = {
		"Thi誹 L﹎ quy襫/#sethkmp1(1)",
		"Thi誹 L﹎ c玭/#sethkmp1(2)",
		"Thi誹 L﹎ 產o/#sethkmp1(3)",
		"Thi猲 Vng ch飝/#sethkmp1(4)",
		"Thi猲 Vng thng/#sethkmp1(5)",
		"Thi猲 Vng 產o/#sethkmp1(6)",
		"Nga My ki誱/#sethkmp1(7)",
		"Nga My chng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th髖 Y猲 產o/#sethkmp1(10)",
		"Th髖 Y猲 song 產o/#sethkmp1(11)",
		"Ng� чc chng/#sethkmp1(12)",
		"Ng� чc 產o/#sethkmp1(13)",
		"Ng� чc b颽/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"R阨 kh醝/no",
		
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Л阯g M玭 phi 產o/#sethkmp1(15)",
		"Л阯g M玭 t� ti詎/#sethkmp1(16)",
		"Л阯g M玭 phi ti猽/#sethkmp1(17)",
		"Л阯g M玭 b蓎/#sethkmp1(18)",
		"C竔 Bang r錸g/#sethkmp1(19)",
		"C竔 Bang b鎛g/#sethkmp1(20)",
		"Thi猲 Nh蒼 k輈h/#sethkmp1(21)",
		"Thi猲 Nh蒼 產o/#sethkmp1(22)",
		"Thi猲 Nh蒼 b颽/#sethkmp1(23)",
		"V� ng kh� /#sethkmp1(24)",
		"V� ng ki誱/#sethkmp1(25)",
		"C玭 L玭 產o/#sethkmp1(26)",
		"C玭 L玭 ki誱/#sethkmp1(27)",
		"C玭 L玭 b颽/#sethkmp1(28)",
		"Trang truoc/sethkmp",
		"R阨 kh醝/no",
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end




function updatetbhc()
local tab_Content = {
		"Thi誹 L﹎ ph竔/hanchetl",
		"Thi猲 Vng Bang/hanchetvb",
		"Nga My ph竔/hanchenm",
		"Th髖 Y猲 ph竔/hanchety",
		"Ng� чc ph竔/hanchend",
		"Л阯g M玭 ph竔/hanchedm",
		"C竔 Bang ph竔/hanchecb",
		"Thi猲 Nh蒼 ph竔/hanchetn",
		"V� ng ph竔/hanchevd",
		"C玭 L玭 ph竔/hanchecl",
		"R阨 kh醝/no",
		
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
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
	Say("Xin m阨 ch鋘 trang b� c莕 test",10,"� V﹏ Чp Tuy誸/addhorse","X輈h Th�/addhorse","Tuy謙 秐h/addhorse","лch L�/addhorse","Chi誹 D� Ng鋍 S� T�/addhorse","B玭 Ti猽/addhorse","K誸 th骳 i tho筰/no")
end

function addhorse(n)
	if n == 0 then
		Msg2Player("B筺 nh薾 頲 � V﹏ Чp Tuy誸!")
		AddItem(0,10,5,1,0,0)
	elseif n == 1 then
		AddItem(0,10,5,2,0,0)
		Msg2Player("B筺 nh薾 頲 X輈h Th�!")
	elseif n == 2 then
		AddItem(0,10,5,3,0,0)
		Msg2Player("B筺 nh薾 頲 Tuy謙 秐h")
	elseif n == 3 then
		AddItem(0,10,5,4,0,0)
		Msg2Player("B筺 nh薾 頲 лch L�")
	elseif n == 4 then
		AddItem(0,10,5,5,0,0)
		Msg2Player("B筺 nh薾 頲 Chi誹 D� Ng鋍 S� T�")
	elseif n == 5 then	
		AddItem(0,10,6,1,0,0)
		Msg2Player("B筺 nh薾 頲 B玭 Ti猽")
	--elseif n == 6 then	
		--AddItem(0,10,7,10,0,0)
		--Msg2Player("B筺 nh薾 頲 Phi猲 v�")
	elseif n == 7 then	
		AddItem(0,10,8,10,0,0)
		Msg2Player("B筺 nh薾 頲 Phi V﹏")
	end
end

function golditem()
	Say("Xin m阨 ch鋘 trang b� c莕 test",11,"Trang B� An Bang/addgold","Trang B� Nhu T譶h/addgold","Trang B� мnh Qu鑓/addgold","Trang B� H錸g 秐h/addgold","Trang B� ng s竧/addgold","Trang B� an bang c鵦 ph萴/addgold","Trang B� kim phong/addgold","Trang B� hi謕 c鑤/addgold","K誸 th骳 i tho筰/no")
end

function addgold(n)
	if n==0 then 
		AddGoldItem(0,164)
		AddGoldItem(0,165)
		AddGoldItem(0,166)
		AddGoldItem(0,167)
		Msg2Player("Nh薾 頲 Trang B� An Bang!")
	elseif n==1 then 
		AddGoldItem(0,190)
		AddGoldItem(0,191)
		AddGoldItem(0,192)
		AddGoldItem(0,193)
		Msg2Player("Nh薾 頲 Trang B� Nhu T譶h")
	elseif n==2 then 
		AddGoldItem(0,159)
		AddGoldItem(0,160)
		AddGoldItem(0,161)
		AddGoldItem(0,162)
		AddGoldItem(0,163)
		Msg2Player("Nh薾 頲 Trang B� мnh qu鑓!")
	elseif n==3 then 
		AddGoldItem(0,204)
		AddGoldItem(0,205)
		AddGoldItem(0,206)
		AddGoldItem(0,207)
		Msg2Player("Nh薾 頲 Trang B� H錸g 秐h!")
	elseif n==4 then
		AddGoldItem(0,143)
		AddGoldItem(0,144)
		AddGoldItem(0,145)
		AddGoldItem(0,146)
		Msg2Player("b筺 nh薾 頲 trang b� ng s竧!")
	--elseif n==5 then
		--AddGoldItem(0,210)
		--AddGoldItem(0,211)
		--AddGoldItem(0,212)
		--AddGoldItem(0,213)
		--Msg2Player("b筺 nh薾 頲 trang b� an bang ho祅 m�!")
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
		Msg2Player("B筺 nh薾 頲 B� Kim Phong!")
	elseif n==7 then
		AddGoldItem(0,186)
		AddGoldItem(0,187)
		AddGoldItem(0,188)
		AddGoldItem(0,189)
		Msg2Player("B筺 nh薾 頲 hi謕 c韙!")
		
end
end


function nhanvodanh()
AddGoldItem(0,142)
AddGoldItem(0,141)
Msg2Player("B筺  nh薾 頲 trang bi");
end


function nlbk()
--AddItem(6,1,1310,1,0,0)
--AddItem(6,1,1309,1,0,0)
AddItem(6,1,398,1,0,0)
--AddItem(6,1,147,8,0,0)
--AddItem(6,1,1473,1,0,0)
Msg2Player("B筺 nh薾 頲 nguy猲 li謚");
end


function HoTroThanHanh()
AddItem(6,1,1266,1,0,0)
Msg2Player("nh薾 V藅 Ph萴 Th祅h C玭g");
end



function tbkq()
for i=194,203 do
AddGoldItem(0, i)
Msg2Player("B筺  nh薾 頲 trang bi");
end
end


function pvlbtk()
if CalcFreeItemCellCount() < 15 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 15 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
end
	--local n_transcount = ST_GetTransLifeCount()
	--if n_transcount == 3 or n_transcount == 2 then
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V﹏ Chi猽 Binh L謓h", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	--Talk(1, "", "B筺 nh薾 頲 Phong V﹏ Chi猽 Binh L謓h !")
	--else 
	--Talk(1, "", "Nh﹏ v藅 ch璦 Tr飊g sinh kh玭g th� nh薾!")
	--end
end




function hkmploai23()
if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 30 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
end
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	local tbOpt =
	{
		{"Trang B� Thi猲 Vng",	vdhkim1},
		{"Trang B� Thi誹 L﹎", vdhkim2},
		{"Trang B� Л阯g M玭", vdhkim3},
		{"Trang B� Ng� чc", vdhkim4},
		{"Trang B� Nga Mi", vdhkim5},
		{"Trang B� Thu� Y猲", vdhkim6},
		{"Trang B� C竔 Bang", vdhkim7},
		{"Trang B� Thi猲 Nh蒼", vdhkim8},
		{"Trang B� V� ng", vdhkim9},
		{"Trang B� C玭 L玭", vdhkim10},
		{"K誸 th骳 i tho筰"},
		
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdhkim1()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	local tbOpt =
	{
		{"K� Nghi謕 B玭 L玦 To祅 Long thng",vdehk1},
		{"Ng� Long Lng Ng﹏ B秓 產o",vdehk2},
		{"H竚 Thi猲 Thoa Long Chi課 Ngoa",vdehk3},
		{"Ng� Long Thi猲 M玭 Th骳 Y猽 ho祅",vdehk4},
		{"K� Nghi謕 B筩h H� V� Song kh蕌",vdehk5},
		{"K� Nghi謕 Huy襫 V� Ho祅g Kim Kh秈",vdehk6},
		{"Ng� Long Chi課 Th莕 Phi Qu秈 gi竝",vdehk7},
		{"H竚 Thi猲 Kim Ho祅 Чi Nh穘 Th莕 Ch飝",vdehk8},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehk1()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi謕 B玭 L玦 To祅 Long thng", nQuality=1,tbProp={0,21}, nCount = 10}, "Administrator");
end


function vdehk2()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long Lng Ng﹏ B秓 產o", nQuality=1,tbProp={0,26}, nCount = 10}, "Administrator");
end





function vdehk3()
tbAwardTemplet:GiveAwardByList({szName="H竚 Thi猲 Thoa Long ChiOn Ngoa", nQuality=1,tbProp={0,20}, nCount = 10}, "Administrator");
end



function vdehk4()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long Thi猲 M玭 Th骳 Y猽 ho祅", nQuality=1,tbProp={0,28}, nCount = 10}, "Administrator");
end



function vdehk5()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi謕 B筩h H� V� Song kh蕌", nQuality=1,tbProp={0,23}, nCount = 10}, "Administrator");
end



function vdehk6()
tbAwardTemplet:GiveAwardByList({szName="K� Nghi謕 Huy襫 V� Ho祅g Kim Kh秈", nQuality=1,tbProp={0,22}, nCount = 9}, "Administrator");
end



function vdehk7()
tbAwardTemplet:GiveAwardByList({szName="Ng� Long ChiOn Th莕 Phi Qu秈 gi竝", nQuality=1,tbProp={0,27}, nCount = 10}, "Administrator");
end

function vdehk8()
tbAwardTemplet:GiveAwardByList({szName="H竚 Thi猲 Kim Ho祅 Чi Nh穘 Th莕 Ch飝", nQuality=1,tbProp={0,16}, nCount = 10}, "Administrator");
end

function vdhkim2()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"

	local tbOpt =
	{
		{"M閚g Long Kim Ti Chinh H錸g C� Sa",vdehka1},
		{"Ph鬰 Ma � Kim Nhuy詎 жu",vdehka2},
		{"T� Kh玭g Gi竛g Ma Gi韎 產o",vdehka3},
		{"T� Kh玭g H� ph竝 Y猽 i",vdehka4},
		{"Ph鬰 Ma T� Kim C玭",vdehka5},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehka1()
tbAwardTemplet:GiveAwardByList({szName="M閚g Long Kim Ti Chinh H錸g C� Sa", nQuality=1,tbProp={0,2}, nCount = 9}, "Administrator");
end


function vdehka2()
tbAwardTemplet:GiveAwardByList({szName="Ph鬰 Ma � Kim Nhuy詎 жu", nQuality=1,tbProp={0,8}, nCount = 10}, "Administrator");
end


function vdehka3()
tbAwardTemplet:GiveAwardByList({szName="T� Kh玭g Gi竛g Ma Gi韎 產o", nQuality=1,tbProp={0,11}, nCount = 10}, "Administrator");
end


function vdehka4()
tbAwardTemplet:GiveAwardByList({szName="T� Kh玭g H� ph竝 Y猽 i", nQuality=1,tbProp={0,13}, nCount = 10}, "Administrator");
end


function vdehka5()
tbAwardTemplet:GiveAwardByList({szName="Ph鬰 Ma T� Kim C玭", nQuality=1,tbProp={0,6}, nCount = 10}, "Administrator");
end




function vdhkim3()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	
	local tbOpt =
	{
		{"S﹎ Hoang Phi Tinh 箃 H錸",vdehkb1},
		{"мa Ph竎h H綾 Di謒 Xung Thi猲 Li猲",vdehkb2},
		--{"S﹎ Hoang H錸 Gi秓 Y猽 Th骳",vdehkb3},
		{"Thi猲 Quang мnh T﹎ Ng璶g Th莕 Ph�",vdehkb4},
		{"B╪g H祅 T﹎ Ti詎 Y猽 Kh蕌",vdehkb5},
		{"мa Ph竎h Ng� h祅h Li猲 Ho祅 Qu竛",vdehkb6},
		{"B╪g H祅 Кn Ch� Phi o",vdehkb7},
		{"Thi猲 Quang Hoa V� M筺 Thi猲",vdehkb8},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkb1()
tbAwardTemplet:GiveAwardByList({szName="S﹎ Hoang Phi Tinh 箃 H錸", nQuality=1,tbProp={0,81}, nCount = 10}, "Administrator");
end



function vdehkb2()
tbAwardTemplet:GiveAwardByList({szName="мa Ph竎h H綾 Di謒 Xung Thi猲 Li猲", nQuality=1,tbProp={0,87}, nCount = 10}, "Administrator");
end



function vdehkb3()
tbAwardTemplet:GiveAwardByList({szName="S﹎ Hoang H錸 Gi秓 Y猽 Th骳", nQuality=1,tbProp={0,83}, nCount = 10}, "Administrator");
end



function vdehkb4()
tbAwardTemplet:GiveAwardByList({szName="Thi猲 Quang мnh T﹎ Ng璶g Th莕 Ph�", nQuality=1,tbProp={0,77}, nCount = 10}, "Administrator");
end



function vdehkb5()
tbAwardTemplet:GiveAwardByList({szName="B╪g H祅 T﹎ Ti詎 Y猽 Kh蕌", nQuality=1,tbProp={0,73}, nCount = 10}, "Administrator");
end


function vdehkb6()
tbAwardTemplet:GiveAwardByList({szName="мa Ph竎h Ng� h祅h Li猲 Ho祅 Qu竛", nQuality=1,tbProp={0,86}, nCount = 10}, "Administrator");
end


function vdehkb7()
tbAwardTemplet:GiveAwardByList({szName="B╪g H祅 Кn Ch� Phi o", nQuality=1,tbProp={0,71}, nCount = 10}, "Administrator");
end

function vdehkb8()
tbAwardTemplet:GiveAwardByList({szName="Thi猲 Quang Hoa u4 M筺 Thi猲", nQuality=1,tbProp={0,76}, nCount = 10}, "Administrator");
end


function vdhkim4()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"
	local tbOpt =
	{
		{"U Lung Kim X� Ph竧 i",vdehkc1},
		{"Minh 秓 T祅 S竧 чc Nh薾",vdehkc2},
		{"U Lung M芻 Th� Nhuy詎 L� ",vdehkc3},
		{"Ch� Phc Di謙 L玦 C秐h Ph�",vdehkc4},
		{"Minh 秓 H� C鑤 h� uy觧",vdehkc5},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkc1()
tbAwardTemplet:GiveAwardByList({szName="U Lung Kim X� Ph竧 i", nQuality=1,tbProp={0,56}, nCount = 10}, "Administrator");
end



function vdehkc2()
tbAwardTemplet:GiveAwardByList({szName="Minh 秓 T祅 S竧 чc Nh薾", nQuality=1,tbProp={0,61}, nCount = 10}, "Administrator");
end



function vdehkc3()
tbAwardTemplet:GiveAwardByList({szName="U Lung M芻 Th� Nhuy詎 L�", nQuality=1,tbProp={0,60}, nCount = 10}, "Administrator");
end



function vdehkc4()
tbAwardTemplet:GiveAwardByList({szName="Ch� Phc Di謙 L玦 C秐h Ph�", nQuality=1,tbProp={0,67}, nCount = 10}, "Administrator");
end



function vdehkc5()
tbAwardTemplet:GiveAwardByList({szName="Minh 秓 H� C鑤 h� uy觧", nQuality=1,tbProp={0,64}, nCount = 10}, "Administrator");
end




function vdhkim5()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"
	local tbOpt =
	{
		{"V� Gian � Thi猲 Ki誱",vdehkd1},

		{"V� Gian Ph蕋 V﹏ Ti i",vdehkd2},
		{"V� Ma T葃 Tng Ng鋍 Kh蕌  ",vdehkd3},
		{"V� Ma H錸g Truy Nhuy詎 Th竝 h礽",vdehkd4},
		{"V� Tr莕 Ng鋍 N� T� T﹎ qu竛",vdehkd5},
		{"V� Tr莕 Thanh T﹎ Hng Thi謓 Ch﹗",vdehkd6},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehkd1()
tbAwardTemplet:GiveAwardByList({szName="V� Gian � Thi猲 Ki誱", nQuality=1,tbProp={0,31}, nCount = 10}, "Administrator");
end


function vdehkd2()
tbAwardTemplet:GiveAwardByList({szName="V� Gian Ph蕋 V﹏ Ti i", nQuality=1,tbProp={0,33}, nCount = 10}, "Administrator");
end


function vdehkd3()
tbAwardTemplet:GiveAwardByList({szName="V� Ma T葃 Tng Ng鋍 Kh蕌 ", nQuality=1,tbProp={0,39}, nCount = 10}, "Administrator");
end



function vdehkd4()
tbAwardTemplet:GiveAwardByList({szName="V� Ma H錸g Truy Nhuy詎 Th竝 h礽", nQuality=1,tbProp={0,40}, nCount = 10}, "Administrator");
end


function vdehkd5()
tbAwardTemplet:GiveAwardByList({szName="V� Tr莕 Ng鋍 N� T� T﹎ qu竛", nQuality=1,tbProp={0,41}, nCount = 10}, "Administrator");
end


function vdehkd6()
tbAwardTemplet:GiveAwardByList({szName="V� Tr莕 Thanh T﹎ Hng Thi謓 Ch﹗", nQuality=1,tbProp={0,42}, nCount = 10}, "Administrator");
end




function vdhkim6()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"
	local tbOpt =
	{
		{"B輈h H秈 H錸g Linh Kim Ti i",vdehke1},
		{"T� Ho祅g Ph鬾g Nghi 產o",vdehke2},
		{"T� Ho祅g B╪g Tung C萴 uy觧",vdehke3},
		{"T� Ho祅g Phong Tuy誸 B筩h V﹏ Th骳 Цi",vdehke4},
		{"B輈h H秈 Uy猲 Μng Li猲 Ho祅 產o",vdehke5},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehke1()
tbAwardTemplet:GiveAwardByList({szName="B輈h H秈 H錸g Linh Kim Ti i", nQuality=1,tbProp={0,53}, nCount = 10}, "Administrator");
end


function vdehke2()
tbAwardTemplet:GiveAwardByList({szName="T� Ho祅g Ph鬾g Nghi 產o", nQuality=1,tbProp={0,46}, nCount = 10}, "Administrator");
end


function vdehke3()
tbAwardTemplet:GiveAwardByList({szName="T� Ho祅g B╪g Tung C萴 uy觧", nQuality=1,tbProp={0,49}, nCount = 10}, "Administrator");
end


function vdehke4()
tbAwardTemplet:GiveAwardByList({szName="T� Ho祅g Phong Tuy誸 B筩h V﹏ Th骳 Цi", nQuality=1,tbProp={0,48}, nCount = 10}, "Administrator");
end


function vdehke5()
tbAwardTemplet:GiveAwardByList({szName="B輈h H秈 Uy猲 Μng Li猲 Ho祅 產o", nQuality=1,tbProp={0,51}, nCount = 9}, "Administrator");
end




function vdhkim7()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	
	local tbOpt =
	{
		{"уng C鮱 Kh竛g Long H� Uy觧",vdehkf1},
		{"мch Kh竔 L鬰 Ng鋍 Trng",vdehkf2},
		{"мch Kh竔 C萿 TUch B� H� uy觧",vdehkf3},
		{"уng C鮱 Gi竛g Long C竔 Y",vdehkf4},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkf1()
tbAwardTemplet:GiveAwardByList({szName="уng C鮱 Kh竛g Long H� Uy觧", nQuality=1,tbProp={0,94}, nCount = 10}, "Administrator");
end



function vdehkf2()
tbAwardTemplet:GiveAwardByList({szName="мch Kh竔 L鬰 Ng鋍 Trng", nQuality=1,tbProp={0,96}, nCount = 10}, "Administrator");
end



function vdehkf3()
tbAwardTemplet:GiveAwardByList({szName="мch Kh竔 C萿 TUch B� H� uy觧", nQuality=1,tbProp={0,99}, nCount = 10}, "Administrator");
end


function vdehkf4()
tbAwardTemplet:GiveAwardByList({szName="уng C鮱 Gi竛g Long C竔 Y", nQuality=1,tbProp={0,92}, nCount = 9}, "Administrator");
end



function vdhkim8()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	
	local tbOpt =
	{
		{"Ma S竧 Qu� C鑓 U Minh Thng",vdehkh1},
		{"Ma S竧 T祅 Dng 秐h Huy誸 Gi竝",vdehkh2},
		{"Ma Ho祅g Kim Gi竝 Kh玦",vdehkh3},
		{"Ma Ho祅g 竛 Xu蕋 H� H筺g Khuy猲",vdehkh4},
		{"Ma Th� s琻  H秈 Phi H錸g L� ",vdehkh5},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkh1()
tbAwardTemplet:GiveAwardByList({szName="Ma S竧 Qu� C鑓 U Minh Thng", nQuality=1,tbProp={0,101}, nCount = 10}, "Administrator");
end


function vdehkh2()
tbAwardTemplet:GiveAwardByList({szName="Ma S竧 T祅 Dng 秐h Huy誸 Gi竝", nQuality=1,tbProp={0,102}, nCount = 9}, "Administrator");
end


function vdehkh3()
tbAwardTemplet:GiveAwardByList({szName="Ma Ho祅g Kim Gi竝 Kh玦", nQuality=1,tbProp={0,106}, nCount = 10}, "Administrator");
end


function vdehkh4()
tbAwardTemplet:GiveAwardByList({szName="Ma Ho祅g 竛 Xu蕋 H� H筺g Khuy猲", nQuality=1,tbProp={0,107}, nCount = 10}, "Administrator");
end


function vdehkh5()
tbAwardTemplet:GiveAwardByList({szName="Ma Th� s琻 H秈 Phi H錸g L�", nQuality=1,tbProp={0,115}, nCount = 10}, "Administrator");
end


function vdhkim9()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"	
	local tbOpt =
	{
		{"C藀 Phong Ch﹏ V� Ki誱",vdehki1},
		{"C藀 Phong Tam Thanh Ph�",vdehki2},
		{"C藀 Phong Huy襫 Ti Tam 筺 c萴",vdehki3},
		{"L╪g Nh筩 N� L玦 Gi韎",vdehki4},
		{"L╪g Nh筩 V� C鵦 Huy?n Ng鋍 B閕",vdehki5},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehki1()
tbAwardTemplet:GiveAwardByList({szName="C藀 Phong Ch﹏ V� Ki誱", nQuality=1,tbProp={0,121}, nCount = 10}, "Administrator");
end


function vdehki2()
tbAwardTemplet:GiveAwardByList({szName="C藀 Phong Tam Thanh Ph�", nQuality=1,tbProp={0,122}, nCount = 10}, "Administrator");
end



function vdehki3()
tbAwardTemplet:GiveAwardByList({szName="C藀 Phong Huy襫 Ti Tam 筺 c萴", nQuality=1,tbProp={0,123}, nCount = 10}, "Administrator");
end


function vdehki4()
tbAwardTemplet:GiveAwardByList({szName="L╪g Nh筩 N� L玦 Gi韎", nQuality=1,tbProp={0,118}, nCount = 10}, "Administrator");
end

function vdehki5()
tbAwardTemplet:GiveAwardByList({szName="L╪g Nh筩 V� C鵦 Huy?n Ng鋍 B閕", nQuality=1,tbProp={0,119}, nCount = 10}, "Administrator");
end

function vdhkim10()
	local szTitle = "<npc>Ch祇 m鮪g b筺 n v韎 <color=yellow>V� L﹎ Truy襫 K�<color=yellow><enter><color=Red>Ngi mu錸 l蕐 trang b� n祇!!!<color>"
	local tbOpt =
	{
		{"Sng Tinh Thi猲 Ni猲 H祅 Thi誸",vdehkj1},
		{"L玦 Khung Thi猲 a H� ph�",vdehkj2},
		{"V� 秓 B綾 Minh Чo qu竛",vdehkj3},
		{"Sng Tinh Thanh Phong L� i",vdehkj4},
		{"V� 秓 Tung Phong Tuy誸 秐h ngoa",vdehkj5},
		{"V� 秓 Thanh 秐h Huy襫 Ng鋍 B閕",vdehkj6},
		{"L玦 Khung H祅 Tung B╪g B筩h quan",vdehkj7},
		{"K誸 th骳 i tho筰"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function vdehkj1()
tbAwardTemplet:GiveAwardByList({szName="Sng Tinh Thi猲 Ni猲 H祅 Thi誸", nQuality=1,tbProp={0,126}, nCount = 10}, "Administrator");
end

function vdehkj2()
tbAwardTemplet:GiveAwardByList({szName="L玦 Khung Thi猲 мa H� ph�", nQuality=1,tbProp={0,132}, nCount = 10}, "Administrator");
end


function vdehkj3()
tbAwardTemplet:GiveAwardByList({szName="V� 秓 B綾 Minh Чo qu竛", nQuality=1,tbProp={0,136}, nCount = 10}, "Administrator");
end


function vdehkj4()
tbAwardTemplet:GiveAwardByList({szName="Sng Tinh Thanh Phong L霏 i", nQuality=1,tbProp={0,128}, nCount = 10}, "Administrator");
end


function vdehkj5()
tbAwardTemplet:GiveAwardByList({szName="V� 秓 Tung Phong Tuy誸 秐h ngoa", nQuality=1,tbProp={0,140}, nCount = 10}, "Administrator");
end


function vdehkj6()
tbAwardTemplet:GiveAwardByList({szName="V� 秓 Thanh 秐h Huy襫 Ng鋍 B閕", nQuality=1,tbProp={0,139}, nCount = 10}, "Administrator");
end


function vdehkj7()
tbAwardTemplet:GiveAwardByList({szName="L玦 Khung H祅 Tung B╪g B筩h quan", nQuality=1,tbProp={0,131}, nCount = 10}, "Administrator");
end






function taydiem()
	local tbOpt =
	{
		{"T葃 觤 K� N╪g", clear_skill},
		{"T葃 觤 Ti襪 N╪g", clear_prop},
		{"R阨 Kh醝."},
	}
	CreateNewSayEx("<npc>Ngi quyOt u mu鑞 t葃 t駓?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X竎 Nh薾", do_clear_skill},
		{"Tr� V?", taydiem},
	}
	CreateNewSayEx("<npc>Ngi v蒼 quyOt u mu鑞 t葃 t駓?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- 轻功另外操作
	local j = HaveMagic(400)		-- “劫富糀贫”另外操作
	local n = RollbackSkill()		-- 清硊技能并返回所有技能?a（包括轻功等`厥饧寄埽?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- O饬骄渑卸鲜桥懦u从未学箄轻功的人返回-1从而导致礱蕌计薬错误情况
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- 把技能礱当做縊闲礱蕌返还，但先?鄢u轻功�?
	if (rollback_point + GetMagicPoint() < 0) then		-- 如果洗成了负蕌，�?当作0（为?院蠖啻蜗吹a保?簦?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- 如果学箄轻功�?加回原有等级
	if (j ~= -1) then AddMagic(400, j) end			-- 如果学箄“劫富糀贫”同样处理
	Msg2Player("T葃 t駓 th祅h c玭g! Ngi ca "..rollback_point.." 甶觤 k� n╪g  ph﹏ ph鑙 l筰.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X竎 nh薾", do_clear_prop},
		{"Tr� V?", taydiem},
	}
	CreateNewSayEx("<npc>Ngi v蒼 quyOt u mu鑞 t葃 t駓?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- 五行人物的`瓷粜灾�
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- 将?逊峙淝蹦苤刂A（task(88)是任务中直接奖励的力量、身法等）
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

------------------------TANG DIEM TIEM NANG----------------------------

function TangDiemTiemNangNhanh()
	Say("Ngi ph秈 hi觰 r� c竎h t╪g 甶觤", 4,
			"S鴆 m筺h/add_prop_str",
			"Th﹏ ph竝/add_prop_dex",
			"Sinh khU/add_prop_vit",
			"N閕 c玭g/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "M阨 nh藀 ch� s� s鴆 m筺h: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "M阨 nh藀 ch� s� th﹏ ph竝: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "M阨 nh藀 ch� s� sinh khU:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "M阨 nh藀 ch� s� n閕 c玭g: ");
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
		CreateTaskSay({"Xin h穣 s緋 xOp l筰 h祅h trang! Nh�  tr鑞g 30 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
end	
	local tab_Content = {
		"Thi誹 L﹎ Quy襫/#sethkmp1(1)",
		"Thi誹 L﹎ c玭/#sethkmp1(2)",
		"Thi誹 L﹎ 產o/#sethkmp1(3)",
		"Thi猲 Vng ch飝/#sethkmp1(4)",
		"Thi猲 Vng thng/#sethkmp1(5)",
		"Thi猲 Vng 產o/#sethkmp1(6)",
		"Nga My Ki誱/#sethkmp1(7)",
		"Nga My chng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Th髖 Y猲 產o/#sethkmp1(10)",
		"Th髖 Y猲 song 產o/#sethkmp1(11)",
		"Ng� чc chng/#sethkmp1(12)",
		"Ng� чc 產o/#sethkmp1(13)",
		"Ng� чc b颽/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"R阨 kh醝/no",
		
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"Л阯g M玭 phi 產o/#sethkmp1(15)",
		"Л阯g M玭 t� ti詎/#sethkmp1(16)",
		"Л阯g M玭 phi ti猽/#sethkmp1(17)",
		"Л阯g M玭 b蓎/#sethkmp1(18)",
		"C竔 Bang r錸g/#sethkmp1(19)",
		"C竔 Bang b鎛g/#sethkmp1(20)",
		"Thi猲 Nh蒼 K輈h/#sethkmp1(21)",
		"Thi猲 Nh蒼 產o/#sethkmp1(22)",
		"Thi猲 Nh蒼 b颽/#sethkmp1(23)",
		"V� ng Kh� /#sethkmp1(24)",
		"V� ng Ki誱/#sethkmp1(25)",
		"C玭 L玭 產o/#sethkmp1(26)",
		"C玭 L玭 Ki誱/#sethkmp1(27)",
		"C玭 L玭 b颽/#sethkmp1(28)",
		"Trang trc/sethkmp",
		"R阨 kh醝/no",
	}
	Say("Xin ch祇 <color=yellow>"..GetName().."<color>, h穣 ch鋘 ch鴆 n╪g m� b筺 mu鑞", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function epbk()
Say("Чi hi謕 mu鑞 l蕐 nguy猲 li謚 g�!",6,
--"M秐h Thi猲 Th筩h i/epbk1",
"M秐h Thi猲 Th筩h Trung/epbk5",
"Huy襫 Tinh Kho竛g Th筩h C蕄 8/epbk2",
"Th莕 B� Kho竛g Th筩h(d飊g n﹏g c蕄 trang b� b筩h kim)/epbk3",
"L玦 Tr筩h Ch飝(d飊g n﹏g c蕄 trang b� b筩h kim) /epbk4",
"Tho竧/cancel")
end


function epbk1()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 40 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent1", 0,10, "Xin m阨 nh藀 s� lng!!!")
end

function nCountEvent1(nCount)
for i = 1, nCount do
AddItem(6,1,1310,1,0,0)
end
Msg2Player("Nh薾 th祅h c玭g, S� lng:<color=yellow>"..nCount.."<color>")
end

function epbk2()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 40 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent2", 0,10, "Xin m阨 nh藀 s� lng!!!")
end

function nCountEvent2(nCount)
for i = 1, nCount do
AddItem(6,1,147,8,0,0)
end
Msg2Player("Nh薾 th祅h c玭g, S� lng:<color=yellow>"..nCount.."<color>")
end

function epbk3()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 40 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent3", 0,10, "Xin m阨 nh藀 s� lng!!!")
end

function nCountEvent3(nCount)
for i = 1, nCount do
AddItem(6,1,398,1,0,0)
end
Msg2Player("Nh薾 th祅h c玭g, S� lng:<color=yellow>"..nCount.."<color>")
end


function epbk4()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 40 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent4", 0,10, "Xin m阨 nh藀 s� lng!!!")
end

function nCountEvent4(nCount)
for i = 1, nCount do
AddItem(6,1,1473,1,0,0)
end
Msg2Player("Nh薾 th祅h c玭g, S� lng:<color=yellow>"..nCount.."<color>")
end



function epbk5()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h穣 s緋 x誴 l筰 h祅h trang! Nh�  tr鑞g 40 � tr� l猲 nh�!",  "Л頲 r錳./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent5", 0,10, "Xin m阨 nh藀 s� lng!!!")
end

function nCountEvent5(nCount)
for i = 1, nCount do
AddItem(6,1,1309,1,0,0)
end
Msg2Player("Nh薾 th祅h c玭g, S� lng:<color=yellow>"..nCount.."<color>")
end


function vphd1()
Say("Чi hi謕 mu鑞 l蕐 nguy猲 li謚 g�!",6,
"L謓h b礽 phong l╪g /nhanvp1",
"H閜 l� v藅 s竧 th� gi秐/nhanvp2",
"T� m萿 l謓h/nhanvp3",
"T輓 v藅 m玭 ph竔/nhanvp4",
"Tho竧/cancel")
end

function nhanvp2()
AddItem(6,1,2339,1,0,0)
Msg2Player("Nh薾 頲 v藅 ph萴 th祅h c玭g!")
end

function nhanvp3()
AddItem(6,1,1427,1,0,0)
Msg2Player("Nh薾 頲 v藅 ph萴 th祅h c玭g!")
end

function nhanvp1()
AddItem(4,489,1,1,0,0)
Msg2Player("Nh薾 頲 v藅 ph萴 th祅h c玭g!")
end

function nhanvp4()
AddItem(6,1,1670,1,0,0)
Msg2Player("Nh薾 頲 v藅 ph萴 th祅h c玭g!")
end

function lbtk111()
for i=1,100 do
		AddItem(6,1,157,0,0,0)		--- phitoc
		AddItem(6,1,190,0,0,0)		--- lenhbai
		--AddItem(6,1,215,0,0,0)		--- mautongkim
end

Msg2Player("B筺 nh薾 頲 phi t鑓 l謓h b礽!")
end







function XemTiemNang()	
	if CalcEquiproomItemCount(4, 417, 1, 1) > 10 then
	ConsumeEquiproomItem(10, 4, 417, 1, 1)
	g_AskClientStringEx("",1,30,"Nh藀 t猲:",{xemthongtinnguoichoi});
	else
		Say("Kh竎h quan 產ng tr猽 ch鋍 ta hay th藅 s� kh玭g c� <color=yellow>10 ti襫 ng<color>?", 0);
	end
end;

function xemthongtinnguoichoi(szPlayerNew)
	local nPlayerIndex = PlayerIndex;
	local nNewPlayer = SearchPlayer(szPlayerNew);
	if (nNewPlayer <= 0) then
		Talk(1,"",format("Ngi ch琲 %s kh玭g online!",szPlayerNew));
	return 0 end;
	
	PlayerIndex = nNewPlayer;
	local nStrg = GetStrg(0);
	local nDex = GetDex(0);
	local nVit = GetVit(0);
	local nEng = GetEng(0);
	local szTitle = format("Th玭g tin 甶觤 v� nh﹏ v藅 %s",GetName());
	--szTitle = szTitle..format("<enter>S鴆 m筺h: %s",nStrg);
	--szTitle = szTitle..format("<enter>Th﹏ ph竝: %s",nDex);
	--szTitle = szTitle..format("<enter>Ngo筰 c玭g: %s",nVit);
	--szTitle = szTitle..format("<enter>N閕 c玭g: %s",nEng);
	szTitle = szTitle..format("<enter>T鎛g 甶觤 nh﹏ v藅: %s",nEng + nStrg + nVit + nDex);
	PlayerIndex = nPlayerIndex;
	local tbOpt = {szTitle};
	CreateTaskSay(tbOpt);
end;


pEventType:Reg("H� Tr� T﹏ Th�", "Th� nghi謒 m竬 ch�", ThuNghiem);