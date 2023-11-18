
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
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxop.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")
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


function testserver()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		tinsert(tbSay, "Nh�n c�c lo�i �i�m/CacLoaiDiem")
		tinsert(tbSay, "Th� c��i/ThuCuoi")
		tinsert(tbSay, "V�t ph�m h� tr�/VatPhamHoTro")
		tinsert(tbSay, "Trang b�/DanhSachTrangBi2")
		tinsert(tbSay, "H�c k� n�ng m�n ph�i/HoTroSkill")
		tinsert(tbSay, "�i�u ki�n t�o bang h�i/DieuKienTaoBangHoi")
		tinsert(tbSay, "T�y t�y nhanh/TayTuyNhanh")
		--tinsert(tbSay, "��i t�n nh�n v�t/DoiTenNhanVat")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function DanhSachTrangBi2()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		tinsert(tbSay, "Trang b� xanh/TrangBiXanh")
		tinsert(tbSay, "Trang b� t�m/TrangBiTim")
		tinsert(tbSay, "Trang b� ho�ng kim/TrangBiHoangKim")
		tinsert(tbSay, "Trang b� ho�ng kim Max Option/TRANGBIHOANGKIMMAX")
		--tinsert(tbSay, "Trang b� ho�ng kim cao c�p/TrangBiHoangKimCaoCap")
		--tinsert(tbSay, "Trang s�c/TrangSuc")
		--tinsert(tbSay, "Phi Phong/PhiPhong")
		--tinsert(tbSay, "Ng� H�nh �n/NguHanhAn")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function HoTroSkill()
Say("B�n c� mu�n nh�n skill kh�ng?", 3, "H� tr� skill 1x-9x/HoTroSkill22","H� tr� b� nguy�n li�u l�y s�ch k� n�ng 120 (g�p ch��ng m�n ph�i)/sach120monphai", "Ta nh�m./no")
end

function sach120monphai()
if CalcFreeItemCellCount() < 10 then
Talk(1,"","H�nh Trang Kh�ng �� 10 � Tr�ng")
return
end
if GetCamp() == 0 and GetCurCamp() == 0 then
Msg2Player("Gia nh�p m�n ph�i r�i h�y nh�n h� tr�")
return
end
AddItem(6,1,2425,1,0,0)
AddItem(6,1,12,0,0,0)
AddItem(4,239,1,0,0,0)
AddItem(4,353,1,0,0,0)
local szFaction = GetFaction()
if tbAllSkill[szFaction] == nil then
return
end
if tbAllSkill[szFaction] ~= nil then
	for j=1, getn(tbSkillBook90[szFaction]) do
		AddItem(6,1,tbSkillBook90[szFaction][j],0,0,0)
	end
end
end

function HoTroSkill22()
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


--pEventType:Reg("H� Tr� T�n Th�", "Th� nghi�m m�y ch�", ThuNghiem);