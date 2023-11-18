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
Include("\\script\\global\\×ÏÉ«¼°»Æ½ð×°±¸ÖýÔì.lua")
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

	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter>- <color=Red>TCQ X· T¾c<color><enter>"

	local tbOpt =
	{
		--{"Ta muèn nhËn th­ëng ®ua TOP SERVER", topser},
		--{"NhËn §å Hoµng Kim", sethkmp},
		--{"NhËn Trang BÞ Hoµng kim lo¹i 2,3", hkmploai23},
                                                            {"Xãa Hµnh Trang", xoatoanbo},
		{"NhËn Trang BÞ Hoµng kim Full", sethkmp},
		--{"NhËn V« Danh Giíi ChØ", nhanvodanh},
		{"Nguyªn LiÖu N©ng CÊp B¹ch Kim +1 ----> +6", epbk},
		{"TrÊn Bang Chi B¶o", updatetbhc},
                                                            {"NhËn Xu", TienDong },
		--{"Xem tin tøc ng­êi ch¬i", XemTiemNang},
		{"NhËn Trang BÞ Xanh", TrangBiXanh},
		{"NhËn Trang BÞ HuyÒn Tinh", dotim},
		{"NhËn Trang BÞ AnBang,§ÞnhQuèc", golditem},
		--{"NhËn V« Danh Giíi ChØ", nhanvodanh},
		{"ChiÕn m· thÇn tèc", horse},
		{"Hç Trî T©n Thñ míi ch¬i", vpht},
		--{"Hç Trî up level", HoTroLevel180},
		--{"Up Level ®Õn 200", level_up_to190},
		--{"NhËn Skill 9x", HoTroSkill},
		--{"NhËn Skill 12x", HoTroBiKip120},
		--{"Häc Kinh C«ng", HoTroBiKip90},
		--{"NhËn TiÒn V¹n", HoTroNganLuong},
		--{"Ta muèn m­în ChiÕu D¹ Ngäc S­ Tö", HoTroChieuDa},
		--{"Ta muèn tr¹ng th¸i S¸t thñ", ChuDo},
		--{"Ta muèn m­în trang bÞ xanh", MaiGap},
        --{"Ta muèn m­în vò khÝ", MaiGap},
		--{"Ta muèn chÕ t¹o trang bÞ HuyÒn Tinh", chetao},	
		--{"Danh Väng-Tµi L·nh §¹o", BuildTong},	
        {"GÆp l¹i ta sau", Quit},
	}
	CreateNewSayEx(szTitle, tbOpt)
return 1;
end
function topser()
duatop()
end
function xoatoanboitem()
	Say("B¹n cã muèn xãa toµn bé kh«ng?", 2, "§óng vËy!/xoatoanbo", "Ta nhÇm./no")
end

function xoatoanbo()
--Msg2Player("Xãa thµnh c«ng!")
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
		AddSkillState(512,20,1,60*60*18)--40ÅÜËÙ
		AddSkillState(527,5,1,60*60*18)--500Ñª
		AddSkillState(313,5,1,60*60*18)--20È«¿¹
		AddSkillState(314,12,1,60*60*18)--7»Ø¸´Ñª£¬5»Ø¸´ÄÚ
		AddSkillState(546,1,1,60*60*18)--Óù´Í¹â»·
	end
end

function MaiGap()
	Talk(1,"",szNpcName .. "H«m nay ta ch­a kÞp chuÈn bÞ, mai "..szPlayer.." quay l¹i nhÐ.")
end

function vpht()
	local tbSay = {""};
		tinsert(tbSay,"NhËn QuÕ Hoa Töu (May M¾n)/quehoatuu")
tinsert(tbSay,"VËt PhÈm Ho¹t §éng/vphd1")
tinsert(tbSay,"NhËn Phi Tèc LÖnh Bµi Tèng Kim/lbtk111")
--tinsert(tbSay,"NhËn HuyÒn Tinh/huytin")
--tinsert(tbSay,"NhËn Phóc Duyªn/Phucduyen")
--tinsert(tbSay,"NhËn Kho¸ng Th¹ch/kdb")
--tinsert(tbSay,"NhËn ThÇn BÝ Kho¸ng Th¹ch/nlbk")
--tinsert(tbSay,"LÖnh Bµi Boss Hoµng Kim/LBBoss")
--tinsert(tbSay,"§¹i thµnh bÝ kiÕp 90/daithanhbikiep90")
--tinsert(tbSay,"§¹i thµnh bÝ kiÕp 120/daithanhbikiep120")
--tinsert(tbSay,"Viªm §Õ/HoTroThanHanh")
--tinsert(tbSay,"Häc Kinh C«ng/HoTroBiKip90")
--tinsert(tbSay,"NhËn Skill 12x/HoTroBiKip120")
--tinsert(tbSay,"Ta cÇn 6 Tinh Hång B¶o Th¹ch/HoTroTinhHong")
--tinsert(tbSay,"Ta cÇn 3 Lo¹i Thñy Tinh/HoTroThuyTinh")
tinsert(tbSay,"Hç Trî up level/HoTroLevel180")
tinsert(tbSay,"Danh Väng-Tµi L·nh §¹o/BuildTong")
tinsert(tbSay,"NhËn TiÒn V¹n/HoTroNganLuong")
--tinsert(tbSay,"NhËn ThÇn Hµnh Phï/HoTroThanHanh")
--tinsert(tbSay,"NhËn Phong V©n Chiªu Binh LÖnh/pvlbtk")
tinsert(tbSay,"NhËn Skill 9x/HoTroSkill")
tinsert(tbSay,"NhËn Skill 12x/HoTroBiKip120")
tinsert(tbSay,"Häc Kinh C«ng/HoTroBiKip90")
tinsert(tbSay,"TÈy §iÓm TiÒm N¨ng - Kü N¨ng/taydiem")
tinsert(tbSay,"T¨ng §iÓm TiÒm N¨ng/TangDiemTiemNangNhanh")
tinsert(tbSay,"Tho¸t/Quit")
	CreateTaskSay(tbSay)
end
function chetao()
Say( "NÕu ®¹i hiÖp muèn cã mét mãn ®å võa ý th× ®em ®Çy ®ñ nguyªn liÖu tíi ®©y. Ta sÏ ®óc luyÖn mét vËt phÈm ng­¬i thÝch nhÊt!", 4, "B¾t ®Çu chÕ t¹o/onFoundryItem", "Liªn quan chÕ t¹o/onAbout", "T×m hiÓu m¶nh Hoµng Kim./onQueryPiece","§Ó ta suy nghÜ kü l¹i xem/onCancel");
end
function hoangkimmp()
hoangkimmpfull()
end

function GetBonusHK(nID)
	local nIndex = AddGoldItem(0, nID)
	local strItemName = GetItemName(nIndex)
	Msg2Player("B¹n nhËn ®­îc "..strItemName)
end

function daithanhbikiep90()
	AddItem(6, 1, 2424,1,0,0)
end
function daithanhbikiep120()
	AddItem(6, 1, 2425,1,0,0)
end


function hoangkim()
	if CalcFreeItemCellCount() < 30 then
		Say("Hµnh trang ®¹i hiÖp nhiÒu qu¸, cã kh¶ n¨ng sÏ nhËn ®­îc trang bÞ chiÕm nhiÒu «. H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	local TabSayPotion = {

		--"HKMP./hoangkimmp",
		"An Bang./item",
		"§Þnh Quèc./item",
		"HiÕp Cèt./item",
		"Tho¸t./Quit",
	}
	Say("Hæ trî",getn(TabSayPotion),TabSayPotion)
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
function BuildTong()			-- Íê³É½¨°ïµÄ×¼±¸¹¤×÷
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
	Talk(1,"",szNpcName .. " thø ".. szPlayer .."  cÇn ®©y ,".. szPlayer .." cÇm ®i, ®õng ng¹i.")
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
	Talk(1,"",szNpcName .. " thø ".. szPlayer .."  cÇn ®©y ,".. szPlayer .." cÇm ®i, ®õng ng¹i.")
end

function HoTroNganLuong()
	Earn(1000000000)
	Talk(1,"",szNpcName .. " ta cã 10000 v¹n l­îng, ".. szPlayer .." cÇm ®i, ®õng ng¹i.")
end


function HoTroLevel180()

	local TabSayPotion = {
		"Ta muèn lªn 119 cÊp./HoTroLevel119",
		"Ta muèn lªn 200 cÊp./level_up_to190",
		"Tho¸t./Quit",
	}
	Say("B¹n muèn cÊp ®é nµo ?",getn(TabSayPotion),TabSayPotion)
end

function HoTroLevel190()
if GetLevel() < 100 and GetTask(937) == 0 then
thangcap190()
Earn(200000)
SetTask(937,1)
else
Msg2Player("B¹n §· NhËn CÊp Råi ")
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
			Talk(1, "", "Chóc b¹n test vui vÏ")
		else
			Talk(1, "", "Cïng chung tay x©y dùng mét server hoµn thiÖn!")
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
	Talk(1,"",szNpcName.."Vâ häc ®· ®­îc truyÒn thô, "..szPlayer .." h·y thö vËn c«ng n©ng thµnh xem sao.")
end

function dotim()	
	if CalcFreeItemCellCount() < 30 then
		Say("H·y cÊt bít vËt phÈm ®Ó ®¶m b¶o cã 30 « trèng råi h·y më.",0);
		return 1;
	end
	local tab_Content = {
		"Vò KhÝ/weapon",
		"Y Phôc/shirt",
		"§Ønh M¹o/hat",
		"Hæ UyÓn/glove",
		"Yªu §¸i/belt",
		"Hµi Tö/shoe",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
end;


function weapon()
	local tab_Content = {
		"KiÕm/kiem",
		"§ao/dao",
		"Bæng/bong",
		"Th­¬ng/kick",
		"Chïy/chuy",
		"Song §ao/songdao",
		"Phi Tiªu/phitieu",
		"Phi §ao/phidao",
		"Tô TiÔn/tutien",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"ThÊt B¶o Cµ Sa/aothieulam",
		"Ch©n Vò Th¸nh Y/aovodang",
		"Thiªn NhÉn MËt Trang/aothiennhan",
		"Gi¸ng Sa Bµo/sabao",
		"§­êng Nghª Gi¸p/dng",
		"V¹n L­u Quy T«ng Y/aocaibang",
		"TuyÒn Long Bµo/longbao",
		"Long Tiªu §¹o Y/daoy",
		"Cöu VÜ B¹ch Hå Trang/hotrang",
		"TrÇm H­¬ng Sam/huongsam",
		"TÝch LÞch Kim Phông Gi¸p/kimphung",
		"V¹n Chóng TÒ T©m Y/tamy",
		"L­u Tiªn QuÇn/tienquan",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Tú L« M·o/lomao",
		"Ngò L·o Qu¸n/laoquan",
		"Tu La Ph¸t KÕt/phatket",
		"Th«ng Thiªn Ph¸t Qu¸n/phatquan",
		"YÓm NhËt Kh«i/nhatkhoi",
		"TrÝch Tinh Hoµn/tinhhoan",
		"¤ Tµm M·o/tammao",
		"Quan ¢m Ph¸t Qu¸n/quanam",
		"¢m D­¬ng V« Cùc Qu¸n/amduong",
		"HuyÒn Tª DiÖn Tr¸o/dientrao",
		"Long HuyÕt §Çu Hoµn/longhuyet",
		"Long L©n Kh«i/lankhoi",
		"Thanh Tinh Thoa/tinhthoa",
		"Kim Phông TriÓn SÝ/triensi",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Long Phông HuyÕt Ngäc Tr¹c/ngoctrac",
		"Thiªn Tµm Hé UyÓn/houyen",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Thiªn Tµm Yªu §¸i/thientamyeu",
		"B¹ch Kim Yªu §¸i/bachkim",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		"Cöu TiÕt X­¬ng VÜ Ngoa/cuutien",
		"Thiªn Tµm Ngoa/thientam",
		"Kim Lò Hµi/kimlu",
		"Phi Phông Ngoa/phiphung",
		"KÕt thóc ®èi tho¹i."
	}
	Say(" Muèn lÊy thªm c¸i g× nµo ? ", getn(tab_Content), tab_Content);
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
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 30 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
end	
	local tab_Content = {
		"ThiÕu L©m quyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My kiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"Rêi khái/no",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn kÝch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang khÝ /#sethkmp1(24)",
		"Vâ §ang kiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n kiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
		"Trang truoc/sethkmp",
		"Rêi khái/no",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end




function updatetbhc()
local tab_Content = {
		"ThiÕu L©m ph¸i/hanchetl",
		"Thiªn V­¬ng Bang/hanchetvb",
		"Nga My ph¸i/hanchenm",
		"Thóy Yªn ph¸i/hanchety",
		"Ngò §éc ph¸i/hanchend",
		"§­êng M«n ph¸i/hanchedm",
		"C¸i Bang ph¸i/hanchecb",
		"Thiªn NhÉn ph¸i/hanchetn",
		"Vâ §ang ph¸i/hanchevd",
		"C«n L«n ph¸i/hanchecl",
		"Rêi khái/no",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
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
	Say("Xin mêi chän trang bÞ cÇn test",10,"¤ V©n §¹p TuyÕt/addhorse","XÝch Thè/addhorse","TuyÖt ¶nh/addhorse","§Ých L«/addhorse","ChiÕu D¹ Ngäc S­ Tö/addhorse","B«n Tiªu/addhorse","KÕt thóc ®èi tho¹i/no")
end

function addhorse(n)
	if n == 0 then
		Msg2Player("B¹n nhËn ®­îc ¤ V©n §¹p TuyÕt!")
		AddItem(0,10,5,1,0,0)
	elseif n == 1 then
		AddItem(0,10,5,2,0,0)
		Msg2Player("B¹n nhËn ®­îc XÝch Thè!")
	elseif n == 2 then
		AddItem(0,10,5,3,0,0)
		Msg2Player("B¹n nhËn ®­îc TuyÖt ¶nh")
	elseif n == 3 then
		AddItem(0,10,5,4,0,0)
		Msg2Player("B¹n nhËn ®­îc §Ých L«")
	elseif n == 4 then
		AddItem(0,10,5,5,0,0)
		Msg2Player("B¹n nhËn ®­îc ChiÕu D¹ Ngäc S­ Tö")
	elseif n == 5 then	
		AddItem(0,10,6,1,0,0)
		Msg2Player("B¹n nhËn ®­îc B«n Tiªu")
	--elseif n == 6 then	
		--AddItem(0,10,7,10,0,0)
		--Msg2Player("B¹n nhËn ®­îc Phiªn vò")
	elseif n == 7 then	
		AddItem(0,10,8,10,0,0)
		Msg2Player("B¹n nhËn ®­îc Phi V©n")
	end
end

function golditem()
	Say("Xin mêi chän trang bÞ cÇn test",11,"Trang BÞ An Bang/addgold","Trang BÞ Nhu T×nh/addgold","Trang BÞ §Þnh Quèc/addgold","Trang BÞ Hång ¶nh/addgold","Trang BÞ ®éng s¸t/addgold","Trang BÞ an bang cùc phÈm/addgold","Trang BÞ kim phong/addgold","Trang BÞ hiÖp cèt/addgold","KÕt thóc ®èi tho¹i/no")
end

function addgold(n)
	if n==0 then 
		AddGoldItem(0,164)
		AddGoldItem(0,165)
		AddGoldItem(0,166)
		AddGoldItem(0,167)
		Msg2Player("NhËn ®­îc Trang BÞ An Bang!")
	elseif n==1 then 
		AddGoldItem(0,190)
		AddGoldItem(0,191)
		AddGoldItem(0,192)
		AddGoldItem(0,193)
		Msg2Player("NhËn ®­îc Trang BÞ Nhu T×nh")
	elseif n==2 then 
		AddGoldItem(0,159)
		AddGoldItem(0,160)
		AddGoldItem(0,161)
		AddGoldItem(0,162)
		AddGoldItem(0,163)
		Msg2Player("NhËn ®­îc Trang BÞ §Þnh quèc!")
	elseif n==3 then 
		AddGoldItem(0,204)
		AddGoldItem(0,205)
		AddGoldItem(0,206)
		AddGoldItem(0,207)
		Msg2Player("NhËn ®­îc Trang BÞ Hång ¶nh!")
	elseif n==4 then
		AddGoldItem(0,143)
		AddGoldItem(0,144)
		AddGoldItem(0,145)
		AddGoldItem(0,146)
		Msg2Player("b¹n nhËn ®­îc trang bÞ ®éng s¸t!")
	--elseif n==5 then
		--AddGoldItem(0,210)
		--AddGoldItem(0,211)
		--AddGoldItem(0,212)
		--AddGoldItem(0,213)
		--Msg2Player("b¹n nhËn ®­îc trang bÞ an bang hoµn mü!")
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
		Msg2Player("B¹n nhËn ®­îc Bé Kim Phong!")
	elseif n==7 then
		AddGoldItem(0,186)
		AddGoldItem(0,187)
		AddGoldItem(0,188)
		AddGoldItem(0,189)
		Msg2Player("B¹n nhËn ®­îc hiÖp cít!")
		
end
end


function nhanvodanh()
AddGoldItem(0,142)
AddGoldItem(0,141)
Msg2Player("B¹n ®· nhËn ®­îc trang bi");
end


function nlbk()
--AddItem(6,1,1310,1,0,0)
--AddItem(6,1,1309,1,0,0)
AddItem(6,1,398,1,0,0)
--AddItem(6,1,147,8,0,0)
--AddItem(6,1,1473,1,0,0)
Msg2Player("B¹n nhËn ®­îc nguyªn liÖu");
end


function HoTroThanHanh()
AddItem(6,1,1266,1,0,0)
Msg2Player("nhËn VËt PhÈm Thµnh C«ng");
end



function tbkq()
for i=194,203 do
AddGoldItem(0, i)
Msg2Player("B¹n ®· nhËn ®­îc trang bi");
end
end


function pvlbtk()
if CalcFreeItemCellCount() < 15 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 15 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
end
	--local n_transcount = ST_GetTransLifeCount()
	--if n_transcount == 3 or n_transcount == 2 then
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	tbAwardTemplet:GiveAwardByList({szName="Phong V©n Chiªu Binh LÖnh", tbProp={6,1,30083,1,1,1}, nBindState = -2}, "Administrator");
	--Talk(1, "", "B¹n nhËn ®­îc Phong V©n Chiªu Binh LÖnh !")
	--else 
	--Talk(1, "", "Nh©n vËt ch­a Trïng sinh kh«ng thÓ nhËn!")
	--end
end




function hkmploai23()
if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 30 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
end
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	local tbOpt =
	{
		{"Trang BÞ Thiªn V­¬ng",	vdhkim1},
		{"Trang BÞ ThiÕu L©m", vdhkim2},
		{"Trang BÞ §­êng M«n", vdhkim3},
		{"Trang BÞ Ngò §éc", vdhkim4},
		{"Trang BÞ Nga Mi", vdhkim5},
		{"Trang BÞ Thuý Yªn", vdhkim6},
		{"Trang BÞ C¸i Bang", vdhkim7},
		{"Trang BÞ Thiªn NhÉn", vdhkim8},
		{"Trang BÞ Vâ §ang", vdhkim9},
		{"Trang BÞ C«n L«n", vdhkim10},
		{"KÕt thóc ®èi tho¹i"},
		
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdhkim1()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	local tbOpt =
	{
		{"KÕ NghiÖp B«n L«i Toµn Long th­¬ng",vdehk1},
		{"Ngù Long L­îng Ng©n B¶o ®ao",vdehk2},
		{"H¸m Thiªn Thoa Long ChiÕn Ngoa",vdehk3},
		{"Ngù Long Thiªn M«n Thóc Yªu hoµn",vdehk4},
		{"KÕ NghiÖp B¹ch Hæ V« Song khÊu",vdehk5},
		{"KÕ NghiÖp HuyÒn Vñ Hoµng Kim Kh¶i",vdehk6},
		{"Ngù Long ChiÕn ThÇn Phi Qu¶i gi¸p",vdehk7},
		{"H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy",vdehk8},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehk1()
tbAwardTemplet:GiveAwardByList({szName="KÕ NghiÖp B«n L«i Toµn Long th­¬ng", nQuality=1,tbProp={0,21}, nCount = 10}, "Administrator");
end


function vdehk2()
tbAwardTemplet:GiveAwardByList({szName="Ngù Long L­îng Ng©n B¶o ®ao", nQuality=1,tbProp={0,26}, nCount = 10}, "Administrator");
end





function vdehk3()
tbAwardTemplet:GiveAwardByList({szName="H¸m Thiªn Thoa Long ChiOn Ngoa", nQuality=1,tbProp={0,20}, nCount = 10}, "Administrator");
end



function vdehk4()
tbAwardTemplet:GiveAwardByList({szName="Ngù Long Thiªn M«n Thóc Yªu hoµn", nQuality=1,tbProp={0,28}, nCount = 10}, "Administrator");
end



function vdehk5()
tbAwardTemplet:GiveAwardByList({szName="KÕ NghiÖp B¹ch Hæ V« Song khÊu", nQuality=1,tbProp={0,23}, nCount = 10}, "Administrator");
end



function vdehk6()
tbAwardTemplet:GiveAwardByList({szName="KÕ NghiÖp HuyÒn Vñ Hoµng Kim Kh¶i", nQuality=1,tbProp={0,22}, nCount = 9}, "Administrator");
end



function vdehk7()
tbAwardTemplet:GiveAwardByList({szName="Ngù Long ChiOn ThÇn Phi Qu¶i gi¸p", nQuality=1,tbProp={0,27}, nCount = 10}, "Administrator");
end

function vdehk8()
tbAwardTemplet:GiveAwardByList({szName="H¸m Thiªn Kim Hoµn §¹i Nh·n ThÇn Chïy", nQuality=1,tbProp={0,16}, nCount = 10}, "Administrator");
end

function vdhkim2()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"

	local tbOpt =
	{
		{"Méng Long Kim Ti Chinh Hång Cµ Sa",vdehka1},
		{"Phôc Ma ¤ Kim NhuyÔn §Øu",vdehka2},
		{"Tø Kh«ng Gi¸ng Ma Giíi ®ao",vdehka3},
		{"Tø Kh«ng Hé ph¸p Yªu ®¸i",vdehka4},
		{"Phôc Ma Tö Kim C«n",vdehka5},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehka1()
tbAwardTemplet:GiveAwardByList({szName="Méng Long Kim Ti Chinh Hång Cµ Sa", nQuality=1,tbProp={0,2}, nCount = 9}, "Administrator");
end


function vdehka2()
tbAwardTemplet:GiveAwardByList({szName="Phôc Ma ¤ Kim NhuyÔn §Øu", nQuality=1,tbProp={0,8}, nCount = 10}, "Administrator");
end


function vdehka3()
tbAwardTemplet:GiveAwardByList({szName="Tø Kh«ng Gi¸ng Ma Giíi ®ao", nQuality=1,tbProp={0,11}, nCount = 10}, "Administrator");
end


function vdehka4()
tbAwardTemplet:GiveAwardByList({szName="Tø Kh«ng Hé ph¸p Yªu ®¸i", nQuality=1,tbProp={0,13}, nCount = 10}, "Administrator");
end


function vdehka5()
tbAwardTemplet:GiveAwardByList({szName="Phôc Ma Tö Kim C«n", nQuality=1,tbProp={0,6}, nCount = 10}, "Administrator");
end




function vdhkim3()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	
	local tbOpt =
	{
		{"S©m Hoang Phi Tinh §o¹t Hån",vdehkb1},
		{"§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn",vdehkb2},
		--{"S©m Hoang Hån Gi¶o Yªu Thóc",vdehkb3},
		{"Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï",vdehkb4},
		{"B¨ng Hµn T©m TiÔn Yªu KhÊu",vdehkb5},
		{"§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n",vdehkb6},
		{"B¨ng Hµn §¬n ChØ Phi §ao",vdehkb7},
		{"Thiªn Quang Hoa Vò M¹n Thiªn",vdehkb8},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkb1()
tbAwardTemplet:GiveAwardByList({szName="S©m Hoang Phi Tinh §o¹t Hån", nQuality=1,tbProp={0,81}, nCount = 10}, "Administrator");
end



function vdehkb2()
tbAwardTemplet:GiveAwardByList({szName="§Þa Ph¸ch H¾c DiÖm Xung Thiªn Liªn", nQuality=1,tbProp={0,87}, nCount = 10}, "Administrator");
end



function vdehkb3()
tbAwardTemplet:GiveAwardByList({szName="S©m Hoang Hån Gi¶o Yªu Thóc", nQuality=1,tbProp={0,83}, nCount = 10}, "Administrator");
end



function vdehkb4()
tbAwardTemplet:GiveAwardByList({szName="Thiªn Quang §Þnh T©m Ng­ng ThÇn Phï", nQuality=1,tbProp={0,77}, nCount = 10}, "Administrator");
end



function vdehkb5()
tbAwardTemplet:GiveAwardByList({szName="B¨ng Hµn T©m TiÔn Yªu KhÊu", nQuality=1,tbProp={0,73}, nCount = 10}, "Administrator");
end


function vdehkb6()
tbAwardTemplet:GiveAwardByList({szName="§Þa Ph¸ch Ngò hµnh Liªn Hoµn Qu¸n", nQuality=1,tbProp={0,86}, nCount = 10}, "Administrator");
end


function vdehkb7()
tbAwardTemplet:GiveAwardByList({szName="B¨ng Hµn §¬n ChØ Phi §ao", nQuality=1,tbProp={0,71}, nCount = 10}, "Administrator");
end

function vdehkb8()
tbAwardTemplet:GiveAwardByList({szName="Thiªn Quang Hoa u4 M¹n Thiªn", nQuality=1,tbProp={0,76}, nCount = 10}, "Administrator");
end


function vdhkim4()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"
	local tbOpt =
	{
		{"U Lung Kim Xµ Ph¸t ®¸i",vdehkc1},
		{"Minh ¶o Tµn S¸t §éc NhËn",vdehkc2},
		{"U Lung MÆc Thï NhuyÔn Lý ",vdehkc3},
		{"Chó Ph­îc DiÖt L«i C¶nh Phï",vdehkc4},
		{"Minh ¶o Hñ Cèt hé uyÓn",vdehkc5},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkc1()
tbAwardTemplet:GiveAwardByList({szName="U Lung Kim Xµ Ph¸t ®¸i", nQuality=1,tbProp={0,56}, nCount = 10}, "Administrator");
end



function vdehkc2()
tbAwardTemplet:GiveAwardByList({szName="Minh ¶o Tµn S¸t §éc NhËn", nQuality=1,tbProp={0,61}, nCount = 10}, "Administrator");
end



function vdehkc3()
tbAwardTemplet:GiveAwardByList({szName="U Lung MÆc Thï NhuyÔn Lý", nQuality=1,tbProp={0,60}, nCount = 10}, "Administrator");
end



function vdehkc4()
tbAwardTemplet:GiveAwardByList({szName="Chó Ph­îc DiÖt L«i C¶nh Phï", nQuality=1,tbProp={0,67}, nCount = 10}, "Administrator");
end



function vdehkc5()
tbAwardTemplet:GiveAwardByList({szName="Minh ¶o Hñ Cèt hé uyÓn", nQuality=1,tbProp={0,64}, nCount = 10}, "Administrator");
end




function vdhkim5()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"
	local tbOpt =
	{
		{"V« Gian û Thiªn KiÕm",vdehkd1},

		{"V« Gian PhÊt V©n Ti ®¸i",vdehkd2},
		{"V« Ma TÈy T­îng Ngäc KhÊu  ",vdehkd3},
		{"V« Ma Hång Truy NhuyÔn Th¸p hµi",vdehkd4},
		{"V« TrÇn Ngäc N÷ Tè T©m qu¸n",vdehkd5},
		{"V« TrÇn Thanh T©m H­íng ThiÖn Ch©u",vdehkd6},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end




function vdehkd1()
tbAwardTemplet:GiveAwardByList({szName="V« Gian û Thiªn KiÕm", nQuality=1,tbProp={0,31}, nCount = 10}, "Administrator");
end


function vdehkd2()
tbAwardTemplet:GiveAwardByList({szName="V« Gian PhÊt V©n Ti ®¸i", nQuality=1,tbProp={0,33}, nCount = 10}, "Administrator");
end


function vdehkd3()
tbAwardTemplet:GiveAwardByList({szName="V« Ma TÈy T­îng Ngäc KhÊu ", nQuality=1,tbProp={0,39}, nCount = 10}, "Administrator");
end



function vdehkd4()
tbAwardTemplet:GiveAwardByList({szName="V« Ma Hång Truy NhuyÔn Th¸p hµi", nQuality=1,tbProp={0,40}, nCount = 10}, "Administrator");
end


function vdehkd5()
tbAwardTemplet:GiveAwardByList({szName="V« TrÇn Ngäc N÷ Tè T©m qu¸n", nQuality=1,tbProp={0,41}, nCount = 10}, "Administrator");
end


function vdehkd6()
tbAwardTemplet:GiveAwardByList({szName="V« TrÇn Thanh T©m H­íng ThiÖn Ch©u", nQuality=1,tbProp={0,42}, nCount = 10}, "Administrator");
end




function vdhkim6()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"
	local tbOpt =
	{
		{"BÝch H¶i Hång Linh Kim Ti ®¸i",vdehke1},
		{"Tª Hoµng Phông Nghi ®ao",vdehke2},
		{"Tª Hoµng B¨ng Tung CÈm uyÓn",vdehke3},
		{"Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i",vdehke4},
		{"BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao",vdehke5},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehke1()
tbAwardTemplet:GiveAwardByList({szName="BÝch H¶i Hång Linh Kim Ti ®¸i", nQuality=1,tbProp={0,53}, nCount = 10}, "Administrator");
end


function vdehke2()
tbAwardTemplet:GiveAwardByList({szName="Tª Hoµng Phông Nghi ®ao", nQuality=1,tbProp={0,46}, nCount = 10}, "Administrator");
end


function vdehke3()
tbAwardTemplet:GiveAwardByList({szName="Tª Hoµng B¨ng Tung CÈm uyÓn", nQuality=1,tbProp={0,49}, nCount = 10}, "Administrator");
end


function vdehke4()
tbAwardTemplet:GiveAwardByList({szName="Tª Hoµng Phong TuyÕt B¹ch V©n Thóc §¸i", nQuality=1,tbProp={0,48}, nCount = 10}, "Administrator");
end


function vdehke5()
tbAwardTemplet:GiveAwardByList({szName="BÝch H¶i Uyªn ¦¬ng Liªn Hoµn ®ao", nQuality=1,tbProp={0,51}, nCount = 9}, "Administrator");
end




function vdhkim7()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	
	local tbOpt =
	{
		{"§ång Cõu Kh¸ng Long Hé UyÓn",vdehkf1},
		{"§Þch Kh¸i Lôc Ngäc Tr­îng",vdehkf2},
		{"§Þch Kh¸i CÈu TUch B× Hé uyÓn",vdehkf3},
		{"§ång Cõu Gi¸ng Long C¸i Y",vdehkf4},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehkf1()
tbAwardTemplet:GiveAwardByList({szName="§ång Cõu Kh¸ng Long Hé UyÓn", nQuality=1,tbProp={0,94}, nCount = 10}, "Administrator");
end



function vdehkf2()
tbAwardTemplet:GiveAwardByList({szName="§Þch Kh¸i Lôc Ngäc Tr­îng", nQuality=1,tbProp={0,96}, nCount = 10}, "Administrator");
end



function vdehkf3()
tbAwardTemplet:GiveAwardByList({szName="§Þch Kh¸i CÈu TUch B× Hé uyÓn", nQuality=1,tbProp={0,99}, nCount = 10}, "Administrator");
end


function vdehkf4()
tbAwardTemplet:GiveAwardByList({szName="§ång Cõu Gi¸ng Long C¸i Y", nQuality=1,tbProp={0,92}, nCount = 9}, "Administrator");
end



function vdhkim8()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	
	local tbOpt =
	{
		{"Ma S¸t Quû Cèc U Minh Th­¬ng",vdehkh1},
		{"Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p",vdehkh2},
		{"Ma Hoµng Kim Gi¸p Kh«i",vdehkh3},
		{"Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn",vdehkh4},
		{"Ma ThÞ s¬n  H¶i Phi Hång Lý ",vdehkh5},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function vdehkh1()
tbAwardTemplet:GiveAwardByList({szName="Ma S¸t Quû Cèc U Minh Th­¬ng", nQuality=1,tbProp={0,101}, nCount = 10}, "Administrator");
end


function vdehkh2()
tbAwardTemplet:GiveAwardByList({szName="Ma S¸t Tµn D­¬ng ¶nh HuyÕt Gi¸p", nQuality=1,tbProp={0,102}, nCount = 9}, "Administrator");
end


function vdehkh3()
tbAwardTemplet:GiveAwardByList({szName="Ma Hoµng Kim Gi¸p Kh«i", nQuality=1,tbProp={0,106}, nCount = 10}, "Administrator");
end


function vdehkh4()
tbAwardTemplet:GiveAwardByList({szName="Ma Hoµng ¸n XuÊt Hæ H¹ng Khuyªn", nQuality=1,tbProp={0,107}, nCount = 10}, "Administrator");
end


function vdehkh5()
tbAwardTemplet:GiveAwardByList({szName="Ma ThÞ s¬n H¶i Phi Hång Lý", nQuality=1,tbProp={0,115}, nCount = 10}, "Administrator");
end


function vdhkim9()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"	
	local tbOpt =
	{
		{"CËp Phong Ch©n Vò KiÕm",vdehki1},
		{"CËp Phong Tam Thanh Phï",vdehki2},
		{"CËp Phong HuyÒn Ti Tam §o¹n cÈm",vdehki3},
		{"L¨ng Nh¹c Né L«i Giíi",vdehki4},
		{"L¨ng Nh¹c V« Cùc Huy?n Ngäc Béi",vdehki5},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end



function vdehki1()
tbAwardTemplet:GiveAwardByList({szName="CËp Phong Ch©n Vò KiÕm", nQuality=1,tbProp={0,121}, nCount = 10}, "Administrator");
end


function vdehki2()
tbAwardTemplet:GiveAwardByList({szName="CËp Phong Tam Thanh Phï", nQuality=1,tbProp={0,122}, nCount = 10}, "Administrator");
end



function vdehki3()
tbAwardTemplet:GiveAwardByList({szName="CËp Phong HuyÒn Ti Tam §o¹n cÈm", nQuality=1,tbProp={0,123}, nCount = 10}, "Administrator");
end


function vdehki4()
tbAwardTemplet:GiveAwardByList({szName="L¨ng Nh¹c Né L«i Giíi", nQuality=1,tbProp={0,118}, nCount = 10}, "Administrator");
end

function vdehki5()
tbAwardTemplet:GiveAwardByList({szName="L¨ng Nh¹c V« Cùc Huy?n Ngäc Béi", nQuality=1,tbProp={0,119}, nCount = 10}, "Administrator");
end

function vdhkim10()
	local szTitle = "<npc>Chµo mõng b¹n ®Õn víi <color=yellow>Vâ L©m TruyÒn Kú<color=yellow><enter><color=Red>Ng­¬i muån lÊy trang bÞ nµo!!!<color>"
	local tbOpt =
	{
		{"S­¬ng Tinh Thiªn Niªn Hµn ThiÕt",vdehkj1},
		{"L«i Khung Thiªn §~a Hé phï",vdehkj2},
		{"Vô ¶o B¾c Minh §¹o qu¸n",vdehkj3},
		{"S­¬ng Tinh Thanh Phong Lö ®¸i",vdehkj4},
		{"Vô ¶o Tung Phong TuyÕt ¶nh ngoa",vdehkj5},
		{"Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi",vdehkj6},
		{"L«i Khung Hµn Tung B¨ng B¹ch quan",vdehkj7},
		{"KÕt thóc ®èi tho¹i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function vdehkj1()
tbAwardTemplet:GiveAwardByList({szName="S­¬ng Tinh Thiªn Niªn Hµn ThiÕt", nQuality=1,tbProp={0,126}, nCount = 10}, "Administrator");
end

function vdehkj2()
tbAwardTemplet:GiveAwardByList({szName="L«i Khung Thiªn §Þa Hé phï", nQuality=1,tbProp={0,132}, nCount = 10}, "Administrator");
end


function vdehkj3()
tbAwardTemplet:GiveAwardByList({szName="Vô ¶o B¾c Minh §¹o qu¸n", nQuality=1,tbProp={0,136}, nCount = 10}, "Administrator");
end


function vdehkj4()
tbAwardTemplet:GiveAwardByList({szName="S­¬ng Tinh Thanh Phong Lö­ ®¸i", nQuality=1,tbProp={0,128}, nCount = 10}, "Administrator");
end


function vdehkj5()
tbAwardTemplet:GiveAwardByList({szName="Vô ¶o Tung Phong TuyÕt ¶nh ngoa", nQuality=1,tbProp={0,140}, nCount = 10}, "Administrator");
end


function vdehkj6()
tbAwardTemplet:GiveAwardByList({szName="Vô ¶o Thanh ¶nh HuyÒn Ngäc Béi", nQuality=1,tbProp={0,139}, nCount = 10}, "Administrator");
end


function vdehkj7()
tbAwardTemplet:GiveAwardByList({szName="L«i Khung Hµn Tung B¨ng B¹ch quan", nQuality=1,tbProp={0,131}, nCount = 10}, "Administrator");
end






function taydiem()
	local tbOpt =
	{
		{"TÈy §iÓm Kü N¨ng", clear_skill},
		{"TÈy §iÓm TiÒm N¨ng", clear_prop},
		{"Rêi Khái."},
	}
	CreateNewSayEx("<npc>Ng­¬i quyOt u muèn tÈy tñy?", tbOpt)
end

function clear_skill()
	local tbOpt =
	{
		{"X¸c NhËn", do_clear_skill},
		{"Trë V?", taydiem},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyOt u muèn tÈy tñy?", tbOpt)
end

function do_clear_skill()
	local i = HaveMagic(210)		-- Çá¹¦ÁíÍâ²Ù×÷
	local j = HaveMagic(400)		-- ¡°½Ù¸»¼AÆ¶¡±ÁíÍâ²Ù×÷
	local n = RollbackSkill()		-- Çå³u¼¼ÄÜ²¢·µ»ØËùÓÐ¼¼ÄÜ?a£¨°üÀ¨Çá¹¦µÈ`ØÊâ¼¼ÄÜ£?
	local x = 0
	if (i ~= -1) then i = 1; x = x + i end		-- OâÁ½¾äÅÐ¶ÏÊÇÅÅ³u´ÓÎ´Ñ§¹uÇá¹¦µÄÈË·µ»Ø-1´Ó¶øµ¼ÖÂµaÊu¼ÆËa´íÎóÇé¿ö
	if (j ~= -1) then x = x + j end
	local rollback_point = n - x			-- °Ñ¼¼ÄÜµaµ±×ö¿OÏÐµaÊu·µ»¹£¬µ«ÏÈ?Û³uÇá¹¦µ?
	if (rollback_point + GetMagicPoint() < 0) then		-- Èç¹ûÏ´³ÉÁË¸ºÊu£¬Ô?µ±×÷0£¨Îª?Ôºó¶à´ÎÏ´µa±£?ô£?
		 rollback_point = -1 * GetMagicPoint()
	end
	AddMagicPoint(rollback_point)
	if (i ~= -1) then AddMagic(210, i) end			-- Èç¹ûÑ§¹uÇá¹¦Ô?¼Ó»ØÔ­ÓÐµÈ¼¶
	if (j ~= -1) then AddMagic(400, j) end			-- Èç¹ûÑ§¹u¡°½Ù¸»¼AÆ¶¡±Í¬Ñù´¦Àí
	Msg2Player("TÈy tñy thµnh c«ng! Ng­¬i ca "..rollback_point.." ®iÓm kü n¨ng ®Ó ph©n phèi l¹i.")
	KickOutSelf()
end

function clear_prop()
	local tbOpt =
	{
		{"X¸c nhËn", do_clear_prop},
		{"Trë V?", taydiem},
	}
	CreateNewSayEx("<npc>Ng­¬i vÉn quyOt u muèn tÈy tñy?", tbOpt)
end

function do_clear_prop()
	local base_str = {35,20,25,30,20}			-- ÎåÐÐÈËÎïµÄ`´ÉúÊôÐÔÖµ
	local base_dex = {25,35,25,20,15}
	local base_vit = {25,20,25,30,25}
	local base_eng = {15,25,25,20,40}
	local player_series = GetSeries() + 1

	local Utask88 = GetTask(88)
	AddStrg(base_str[player_series] - GetStrg(1) + GetByte(Utask88, 1))			-- ½«?Ñ·ÖÅäÇ±ÄÜÖØÖA£¨task(88)ÊÇÈÎÎñÖÐÖ±½Ó½±ÀøµÄÁ¦Á¿¡¢Éí·¨µÈ£©
	AddDex(base_dex[player_series] - GetDex(1) + GetByte(Utask88, 2))
	AddVit(base_vit[player_series] - GetVit(1) + GetByte(Utask88, 3))
	AddEng(base_eng[player_series] - GetEng(1) + GetByte(Utask88, 4))
end

------------------------TANG DIEM TIEM NANG----------------------------

function TangDiemTiemNangNhanh()
	Say("Ng­¬i ph¶i hiÓu râ c¸ch t¨ng ®iÓm", 4,
			"Søc m¹nh/add_prop_str",
			"Th©n ph¸p/add_prop_dex",
			"Sinh khU/add_prop_vit",
			"Néi c«ng/add_prop_eng")
end

function add_prop_str()
	AskClientForNumber("enter_str_num", 0, GetProp(), "Mêi nhËp chØ sè søc m¹nh: ");
end

function add_prop_dex()
	AskClientForNumber("enter_dex_num", 0, GetProp(), "Mêi nhËp chØ sè th©n ph¸p: ");
end

function add_prop_vit()
	AskClientForNumber("enter_vit_num", 0, GetProp(), "Mêi nhËp chØ sè sinh khU:");
end

function add_prop_eng()
	AskClientForNumber("enter_eng_num", 0, GetProp(), "Mêi nhËp chØ sè néi c«ng: ");
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
		CreateTaskSay({"Xin h·y s¾p xOp l¹i hµnh trang! Nhí ®Ó trèng 30 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
end	
	local tab_Content = {
		"ThiÕu L©m QuyÒn/#sethkmp1(1)",
		"ThiÕu L©m c«n/#sethkmp1(2)",
		"ThiÕu L©m ®ao/#sethkmp1(3)",
		"Thiªn V­¬ng chïy/#sethkmp1(4)",
		"Thiªn V­¬ng th­¬ng/#sethkmp1(5)",
		"Thiªn V­¬ng ®ao/#sethkmp1(6)",
		"Nga My KiÕm/#sethkmp1(7)",
		"Nga My ch­ëng/#sethkmp1(8)",
		"Nga My buff/#sethkmp1(9)",
		"Thóy Yªn ®ao/#sethkmp1(10)",
		"Thóy Yªn song ®ao/#sethkmp1(11)",
		"Ngò §éc ch­ëng/#sethkmp1(12)",
		"Ngò §éc ®ao/#sethkmp1(13)",
		"Ngò §éc bïa/#sethkmp1(14)",
		"Trang sau/sethkmp2",
		"Rêi khái/no",
		
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp2()
	local tab_Content = {
		"§­êng M«n phi ®ao/#sethkmp1(15)",
		"§­êng M«n tô tiÔn/#sethkmp1(16)",
		"§­êng M«n phi tiªu/#sethkmp1(17)",
		"§­êng M«n bÉy/#sethkmp1(18)",
		"C¸i Bang rång/#sethkmp1(19)",
		"C¸i Bang bæng/#sethkmp1(20)",
		"Thiªn NhÉn KÝch/#sethkmp1(21)",
		"Thiªn NhÉn ®ao/#sethkmp1(22)",
		"Thiªn NhÉn bïa/#sethkmp1(23)",
		"Vâ §ang KhÝ /#sethkmp1(24)",
		"Vâ §ang KiÕm/#sethkmp1(25)",
		"C«n L«n ®ao/#sethkmp1(26)",
		"C«n L«n KiÕm/#sethkmp1(27)",
		"C«n L«n bïa/#sethkmp1(28)",
		"Trang tr­íc/sethkmp",
		"Rêi khái/no",
	}
	Say("Xin chµo <color=yellow>"..GetName().."<color>, h·y chän chøc n¨ng mµ b¹n muèn", getn(tab_Content), tab_Content);
end
function sethkmp1(nId)
	for i=1,5 do AddGoldItem(0,5*nId+i-5) end
end

function epbk()
Say("§¹i hiÖp muèn lÊy nguyªn liÖu g×!",6,
--"M¶nh Thiªn Th¹ch ®¹i/epbk1",
"M¶nh Thiªn Th¹ch Trung/epbk5",
"HuyÒn Tinh Kho¸ng Th¹ch CÊp 8/epbk2",
"ThÇn BÝ Kho¸ng Th¹ch(dïng n©ng cÊp trang bÞ b¹ch kim)/epbk3",
"L«i Tr¹ch Chïy(dïng n©ng cÊp trang bÞ b¹ch kim) /epbk4",
"Tho¸t/cancel")
end


function epbk1()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent1", 0,10, "Xin mêi nhËp sè l­îng!!!")
end

function nCountEvent1(nCount)
for i = 1, nCount do
AddItem(6,1,1310,1,0,0)
end
Msg2Player("NhËn thµnh c«ng, Sè l­¬ng:<color=yellow>"..nCount.."<color>")
end

function epbk2()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent2", 0,10, "Xin mêi nhËp sè l­îng!!!")
end

function nCountEvent2(nCount)
for i = 1, nCount do
AddItem(6,1,147,8,0,0)
end
Msg2Player("NhËn thµnh c«ng, Sè l­¬ng:<color=yellow>"..nCount.."<color>")
end

function epbk3()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent3", 0,10, "Xin mêi nhËp sè l­îng!!!")
end

function nCountEvent3(nCount)
for i = 1, nCount do
AddItem(6,1,398,1,0,0)
end
Msg2Player("NhËn thµnh c«ng, Sè l­¬ng:<color=yellow>"..nCount.."<color>")
end


function epbk4()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent4", 0,10, "Xin mêi nhËp sè l­îng!!!")
end

function nCountEvent4(nCount)
for i = 1, nCount do
AddItem(6,1,1473,1,0,0)
end
Msg2Player("NhËn thµnh c«ng, Sè l­¬ng:<color=yellow>"..nCount.."<color>")
end



function epbk5()
if CalcFreeItemCellCount() < 40 then
		CreateTaskSay({"Xin h·y s¾p xÕp l¹i hµnh trang! Nhí ®Ó trèng 40 « trë lªn nhÐ!",  "§­îc råi./Cancel",});
		return 1;
	end
  AskClientForNumber("nCountEvent5", 0,10, "Xin mêi nhËp sè l­îng!!!")
end

function nCountEvent5(nCount)
for i = 1, nCount do
AddItem(6,1,1309,1,0,0)
end
Msg2Player("NhËn thµnh c«ng, Sè l­¬ng:<color=yellow>"..nCount.."<color>")
end


function vphd1()
Say("§¹i hiÖp muèn lÊy nguyªn liÖu g×!",6,
"LÖnh bµi phong l¨ng ®é/nhanvp1",
"Hép lÔ vËt s¸t thñ gi¶n/nhanvp2",
"Tõ mÈu lÖnh/nhanvp3",
"TÝn vËt m«n ph¸i/nhanvp4",
"Tho¸t/cancel")
end

function nhanvp2()
AddItem(6,1,2339,1,0,0)
Msg2Player("NhËn ®­îc vËt phÈm thµnh c«ng!")
end

function nhanvp3()
AddItem(6,1,1427,1,0,0)
Msg2Player("NhËn ®­îc vËt phÈm thµnh c«ng!")
end

function nhanvp1()
AddItem(4,489,1,1,0,0)
Msg2Player("NhËn ®­îc vËt phÈm thµnh c«ng!")
end

function nhanvp4()
AddItem(6,1,1670,1,0,0)
Msg2Player("NhËn ®­îc vËt phÈm thµnh c«ng!")
end

function lbtk111()
for i=1,100 do
		AddItem(6,1,157,0,0,0)		--- phitoc
		AddItem(6,1,190,0,0,0)		--- lenhbai
		--AddItem(6,1,215,0,0,0)		--- mautongkim
end

Msg2Player("B¹n nhËn ®­îc phi tèc lÖnh bµi!")
end







function XemTiemNang()	
	if CalcEquiproomItemCount(4, 417, 1, 1) > 10 then
	ConsumeEquiproomItem(10, 4, 417, 1, 1)
	g_AskClientStringEx("",1,30,"NhËp tªn:",{xemthongtinnguoichoi});
	else
		Say("Kh¸ch quan ®ang trªu chäc ta hay thËt sù kh«ng cã <color=yellow>10 tiÒn ®ång<color>?", 0);
	end
end;

function xemthongtinnguoichoi(szPlayerNew)
	local nPlayerIndex = PlayerIndex;
	local nNewPlayer = SearchPlayer(szPlayerNew);
	if (nNewPlayer <= 0) then
		Talk(1,"",format("Ng­êi ch¬i %s kh«ng online!",szPlayerNew));
	return 0 end;
	
	PlayerIndex = nNewPlayer;
	local nStrg = GetStrg(0);
	local nDex = GetDex(0);
	local nVit = GetVit(0);
	local nEng = GetEng(0);
	local szTitle = format("Th«ng tin ®iÓm vÒ nh©n vËt %s",GetName());
	--szTitle = szTitle..format("<enter>Søc m¹nh: %s",nStrg);
	--szTitle = szTitle..format("<enter>Th©n ph¸p: %s",nDex);
	--szTitle = szTitle..format("<enter>Ngo¹i c«ng: %s",nVit);
	--szTitle = szTitle..format("<enter>Néi c«ng: %s",nEng);
	szTitle = szTitle..format("<enter>Tæng ®iÓm nh©n vËt: %s",nEng + nStrg + nVit + nDex);
	PlayerIndex = nPlayerIndex;
	local tbOpt = {szTitle};
	CreateTaskSay(tbOpt);
end;


pEventType:Reg("Hç Trî T©n Thñ", "Thö nghiÖm m¸y chñ", ThuNghiem);