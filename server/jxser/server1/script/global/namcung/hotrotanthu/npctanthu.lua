-- Created by BlackCupid
-- Last update: 20140707
--
IncludeLib("SETTING")
IncludeLib("TONG")
IncludeLib("RELAYLADDER");
Include( "\\script\\item\\compound\\compound_header.lua" );
Include( "\\script\\item\\compound\\atlas.lua" );
Include("\\script\\global\\��ɫ���ƽ�װ������.lua")
Include("\\script\\global\\rename_head.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\missions\\leaguematch\\npc\\officer.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\gmrole.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\itemblue.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\duatop.lua")
Include("\\script\\tagnewplayer\\tbitemHK.lua");
Include("\\script\\global\\namcung\\hotroitem.lua")
szNpcName = "<color=yellow>H� tr� T�n th�<color>: "

szPlayer = "��i Hi�p"
if GetSex() == 1 then
	szPlayer = "N� Hi�p"
end

tbSkillBook90 = {
	shaolin = {56,57,58},
	tianwang = {37,38,39},
	tangmen = {27,28,45,46},
	wudu = {47,48,49},
	emei = {42,43,59},
	cuiyan = {40,41},
	gaibang = {54,55},
	tianren = {35,36,53},
	wudang = {33,34},
	kunlun = {50,51,52},
}

tbAllSkill = {
	shaolin = {
		[1] = {10,14},
		[2] = {4,6,8},
		[3] = {15},
		[4] = {16},
		[5] = {20},
		[6] = {11,19,271},
		[7] = {21,273},
		[9] = {318,319,321},
	},
	tianwang = {
		[1] = {29,30,34},
		[2] = {23,24,26},
		[3] = {33},
		[4] = {31,35,37},
		[5] = {40},
		[6] = {42},
		[7] = {32,36,41,324},
		[9] = {322,323,325},
	},
	tangmen = {
		[1] = {45},
		[2] = {43,347},
		[3] = {303},
		[4] = {47,50,54,343},
		[5] = {345},
		[6] = {349},
		[7] = {48,58,249,341},
		[9] = {302,339,342,351},
	},
	wudu = {
		[1] = {63,65},
		[2] = {60,62,67},
		[3] = {66,70},
		[4] = {64,68,69,384},
		[5] = {73,356},
		[6] = {72},
		[7] = {71,74,75},
		[9] = {353,355,390},
	},
	emei = {
		[1] = {80,85},
		[2] = {77,79},
		[3] = {93},
		[4] = {82,89,385},
		[5] = {86},
		[6] = {92},
		[7] = {88,91,252,282},
		[9] = {328,332,380},
	},
	cuiyan = {
		[1] = {99,102},
		[2] = {95,97},
		[3] = {269},
		[4] = {105,113},
		[5] = {100},
		[6] = {109},
		[7] = {108,111,114},
		[9] = {336,337},
	},
	gaibang = {
		[1] = {119,122},
		[2] = {115,116},
		[3] = {129},
		[4] = {124,274},
		[5] = {277},
		[6] = {125,128},
		[7] = {130,360},
		[9] = {357,359},
	},
	tianren = {
		[1] = {135,145},
		[2] = {131,132,136},
		[3] = {137},
		[4] = {138,140,141},
		[5] = {364},
		[6] = {143},
		[7] = {142,148,150},
		[9] = {361,362,391},
	},
	wudang = {
		[1] = {153,155},
		[2] = {151,152},
		[3] = {159},
		[4] = {158,164},
		[5] = {160},
		[6] = {157},
		[7] = {165,166,267},
		[9] = {365,368},
	},
	kunlun = {
		[1] = {169,179},
		[2] = {167,168,171,392},
		[3] = {174},
		[4] = {172,173,178,393},
		[5] = {175,181},
		[6] = {90,176},
		[7] = {182,275,630},
		[9] = {372,375,394},
	},
}

function main()
   dofile("script/global/hotrotanthu/npctanthu.lua");
--	local tbSay = {}
	--tinsert(tbSay,"V�t ph�m h� tr� /vpht")
	--tinsert(tbSay,"Ta mu�n nh�n trang b� ho�ng kim/hoangkim")
	--tinsert(tbSay,"Ta mu�n th�ng c�p 180/HoTroLevel180")
	--tinsert(tbSay,"Ta c�n ng�n l��ng/HoTroNganLuong")
	--tinsert(tbSay,"Ta mu�n m��n Chi�u D� Ng�c S� T�/HoTroChieuDa")
	--tinsert(tbSay,"Ta mu�n t�o bang h�i/BuildTong")
	--tinsert(tbSay,"Ta mu�n tr�ng th�i S�t th� /ChuDo")
	--tinsert(tbSay,"Ta mu�n m��n trang b� xanh/MaiGap")
	--tinsert(tbSay,"Ta mu�n m��n v� kh�/MaiGap")
	--tinsert(tbSay,"Ta mu�n h�c v� c�ng/HoTroSkill")
--	tinsert(tbSay,"G�p l�i ta sau/Quit")
	--Say(szNpcName.."ta ���c H�a Ph�ng Thi�n T� ph�i xu�ng ��y h� tr� cho b� t�nh bu�i ��u l�p nghi�p. "..szPlayer.." c�n g� c� g�p ta.", getn(tbSay), tbSay)
--end
	local szTitle = "<npc>H� tr� t�n th�, hoan ngh�nh c�c anh h�ng h�o ki�t..."
	local tbOpt =
	{
		{"Ta mu�n nh�n th��ng theo c�p ��", topser},
		--{"Ta mu�n v�t ph�m h� tr� ", vpht},
		--{"Ta mu�n h�c v� c�ng", HoTroSkill},
		--{"Ta mu�n nh�n trang b� Xanh", trangbiblue},
		--{"Ta mu�n nh�n trang b� ho�ng kim", hoangkim},
		--{"Ta mu�n th�ng c�p", HoTroLevel180},
		--{"Ta c�n ng�n l��ng", HoTroNganLuong},
		--{"Ta mu�n m��n Chi�u D� Ng�c S� T�", HoTroChieuDa},
		--{"Ta mu�n t�o bang h�i", BuildTong},
		--{"Ta mu�n tr�ng th�i S�t th�", ChuDo},
		--{"Ta mu�n m��n trang b� xanh", MaiGap},
        		--{"Ta mu�n m��n v� kh�", MaiGap},
		--{"Ta mu�n ch� t�o trang b� Huy�n Tinh", chetao},
		--{"Ta mu�n trang b� Huy�n Tinh", dotim},		
        	{"G�p l�i ng��i sau", Quit},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function trangbiblue()
nhantrangbi()
end

function topser()
duatop()
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
--local tbSay = {}
--tinsert(tbSay,"Ta mu�n Qu� hoa T�u (May M�n)/quehoatuu")
--tinsert(tbSay,"Ta mu�n Huy�n tinh/huytin")
--tinsert(tbSay,"Ta mu�n Ph�c Duy�n L� /Phucduyen")
--tinsert(tbSay,"Ta mu�n kho�ng th�ch/kdb")
--tinsert(tbSay,"L�nh B�i Boss Ho�ng Kim/LBBoss")
--tinsert(tbSay,"��i th�nh b� ki�p 90/daithanhbikiep90")
--tinsert(tbSay,"��i th�nh b� ki�p 120/daithanhbikiep120")
--tinsert(tbSay,"Ta c�n Th�n H�nh Ph�/HoTroThanHanh")
--tinsert(tbSay,"Ta c�n b� k�p k� n�ng 90/HoTroBiKip90")
--tinsert(tbSay,"Ta c�n b� k�p k� n�ng 120/HoTroBiKip120")
--tinsert(tbSay,"Ta c�n 6 Tinh H�ng B�o Th�ch/HoTroTinhHong")
--tinsert(tbSay,"Ta c�n 3 Lo�i Th�y Tinh/HoTroThuyTinh")
--tinsert(tbSay,"Ta mu�n ti�n ��ng/TienDong")
--tinsert(tbSay,"G�p l�i ng��i sau/Quit")
--Say(szNpcName.."ta ���c H�a Ph�ng Thi�n T� ph�i xu�ng ��y h� tr� cho b� t�nh bu�i ��u l�p nghi�p. "..szPlayer.." c�n g� c� g�p ta.", getn(tbSay), tbSay)
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
		"Nh�n An Bang./item",
		"Nh�n ��nh Qu�c./item",
		"Nh�n Nhu T�nh./item",
		"Nh�n Hi�p C�t./item",
		"Nh�n Thi�n Ho�ng/item",
		"Nh�n ��ng S�t./item",
		"Nh�n HKMP./hoangkimmp",
		"K�t th�c ��i tho�i./Quit",
	}
	Say("H� tr�",getn(TabSayPotion),TabSayPotion)
end
function item(sel)
if sel==0 then
	for i=164,167 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==1 then
	for i=159,163 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==2 then
	for i=190,193 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==3 then
	for i=186,189 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==4 then
	for i=168,176 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end
elseif sel==5 then
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
		SetCurCamp(4)
		SetCamp(4)
		Earn(10^9)
		AddLeadExp(10011100)
		AddRepute(500)
		AddEventItem(195)
		NewWorld(2,2350,3493)
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
	Talk(1,"",szNpcName .. " ta c� 1000 v�n l��ng, ".. szPlayer .." c�m �i, ��ng ng�i.")
end


function HoTroLevel180()

	local TabSayPotion = {
		"Ta mu�n l�n 75 c�p./HoTroLevel75",
		"Ta mu�n l�n 100 c�p./HoTroLevel100",
		"Ta mu�n l�n 150 c�p./HoTroLevel150",
		"K�t th�c ��i tho�i./Quit",
	}
	Say("B�n mu�n c�p �� n�o ?",getn(TabSayPotion),TabSayPotion)
end

function HoTroLevel150()
	local nLevel = GetLevel()
	if nLevel < 150 then
		ST_LevelUp(150 - nLevel)
		if random(1,2)==1 then
			AddItem(0,10,random(14,18),5,0,0);
		else
			AddItem(0,10,random(6,8),5,0,0);
		end
		AddItem(6,1,1266,1,0,0);
	end
end

function HoTroLevel100()
	local nLevel = GetLevel()
	if nLevel < 100 then
		ST_LevelUp(100 - nLevel)
		if random(1,2)==1 then
			AddItem(0,10,random(14,18),5,0,0);
		else
			AddItem(0,10,random(6,8),5,0,0);
		end
		AddItem(6,1,1266,1,0,0);
	end
end

function HoTroLevel75()
	local nLevel = GetLevel()
	if nLevel < 75 then
		ST_LevelUp(75 - nLevel)
		if random(1,2)==1 then
			AddItem(0,10,random(14,18),5,0,0);
		else
			AddItem(0,10,random(6,8),5,0,0);
		end
		AddItem(6,1,1266,1,0,0);
	end
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
	AddItem(6,1,1266,1,0,0);
end


function HoTroBiKip90()
	local nFact = GetLastFactionNumber()
	if nFact == nil or nFact < 0 or  nFact > 9 then
		return
	end
	local szFaction = GetFaction()
	if tbSkillBook90[szFaction] == nil then
		return
	end
	for i=1, getn(tbSkillBook90[szFaction]) do
		AddItem(6,1,tbSkillBook90[szFaction][i],1,0,0)
	end
end
function HoTroBiKip120()
AddItem(6, 1, 1125,1,0,0)
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
							AddMagic(tbAllSkill[szFaction][i][j],20)
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
AddItem(6,1,147,10,0,0,0) 	
AddItem(6,1,147,10,0,0,0) 	
AddItem(6,1,147,10,0,0,0) 	
end


function kdb()
AddItem(6,1,149,1,0,0,0) 
AddItem(6,1,150,1,1,0,0) 
AddItem(6,1,150,1,2,0,0) 
AddItem(6,1,150,1,3,0,0) 
AddItem(6,1,150,1,4,0,0) 

AddItem(6,1,151,1,0,0,0) 
AddItem(6,1,152,1,1,0,0) 
AddItem(6,1,152,1,2,0,0)
AddItem(6,1,152,1,3,0,0)
AddItem(6,1,152,1,4,0,0)

AddItem(6,1,153,1,0,0,0) 
AddItem(6,1,154,1,1,0,0) 	
AddItem(6,1,154,1,2,0,0) 	
AddItem(6,1,154,1,3,0,0) 	
AddItem(6,1,154,1,4,0,0) 	
end
