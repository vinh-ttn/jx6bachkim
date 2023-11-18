Include("\\script\\dailogsys\\dailogsay.lua");

SET_EQUIPFACTION = {
	[1] = {
		["Thi�u L�m (quy�n)"] = {
			{szName="M�ng Long Ch�nh H�ng T�ng M�o", nID=1},
			{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa", nID=2},
			{szName="M�ng Long Huy�n Ti Ph�t ��i", nID=3},
			{szName="M�ng Long Ph�t Ph�p Huy�n B�i", nID=4},
			{szName="M�ng Long ��t Ma T�ng h�i", nID=5},
		},
		
		["Thi�u L�m (c�n)"] = {
			{szName="Ph�c Ma T� Kim C�n", nID=6},
			{szName="Ph�c Ma Huy�n Ho�ng C� Sa", nID=7},
			{szName="Ph�c Ma � Kim Nhuy�n �i�u", nID=8},
			{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u", nID=9},
			{szName="Ph�c Ma Ph� �� T�ng H�i", nID=10},
		},

		["Thi�u L�m (�ao)"] = {
			{szName="T� Kh�ng Gi�ng Ma Gi�i �ao", nID=11},
			{szName="T� Kh�ng T� Kim C� Sa", nID=12},
			{szName="T� Kh�ng H� ph�p Y�u ��i", nID=13},
			{szName="T� Kh�ng Nhuy�n B� H� Uy�n", nID=14},
			{szName="T� Kh�ng Gi�i Lu�t Ph�p Gi�i", nID=15},
		},
	},
	
	[2] = {
		["Thi�n V��ng (ch�y)"] = {
			{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y", nID=16},
			{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p", nID=17},
			{szName="H�m Thi�n Uy V� Th�c y�u ��i", nID=18},
			{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n", nID=19},
			{szName="H�m Thi�n Th�a Long Chi�n Ngoa", nID=20},
		},
		
		["Thi�n V��ng (th��ng)"] = {
			{szName="K� Nghi�p B�n L�i To�n Long Th��ng", nID=21},
			{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i", nID=22},
			{szName="K� Nghi�p B�ch H� V� Song Kh�u", nID=23},
			{szName="K� Nghi�p H�a V�n K� L�n Th�", nID=24},
			{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa", nID=25},
		},
		
		["Thi�n V��ng (�ao)"] = {
			{szName="Ng� Long L��ng Ng�n B�o �ao", nID=26},
			{szName="Ng� Long Chi�n Th�n Phi Qu�i Gi�p", nID=27},
			{szName="Ng� Long Thi�n M�n Th�c Y�u Ho�n", nID=28},
			{szName="Ng� Long T�n Phong H� Uy�n", nID=29},
			{szName="Ng� Long Tuy�t M�nh Ch� Ho�n", nID=30},
		},
	},
	
	[3] = {
		["���ng M�n (phi �ao)"] = {
			{szName="B�ng H�n ��n Ch� Phi �ao", nID=71},
			{szName="B�ng H�n Huy�n Y Th�c Gi�p", nID=72},
			{szName="B�ng H�n T�m Ti�n Y�u Kh�u", nID=73},
			{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i", nID=74},
			{szName="B�ng H�n Nguy�t �nh Ngoa", nID=75},
		},
		
		["���ng M�n (t� ti�n"] = {
			{szName="Thi�n Quang Hoa V� M�n Thi�n", nID=76},
			{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ", nID=77},
			{szName="Thi�n Quang S�m La Th�c ��i", nID=78},
			{szName="Thi�n Quang Song B�o H�n Thi�t Tr�c", nID=79},
			{szName="Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n", nID=80},
		},
		
		["���ng M�n (phi ti�u)"] = {
			{szName="S�m Hoang Phi Tinh �o�t H�n", nID=81},
			{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p", nID=82},
			{szName="S�m Hoang H�n Gi�o Y�u Th�c", nID=83},
			{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i", nID=84},
			{szName="S�m Hoang Tinh V�n Phi L� ", nID=85},
		},
		
		["���ng M�n (b�y)"] = {
			{szName="��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n", nID=86},
			{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n", nID=87},
			{szName="��a Ph�ch T�ch L�ch L�i H�a Gi�i", nID=88},
			{szName="��a Ph�ch Kh�u T�m tr�c", nID=89},
			{szName="��a Ph�ch ��a H�nh Thi�n L� Ngoa", nID=90},
		},
	},
	
	[4] = {
		["Ng� ��c (ch��ng)"] = {
			{szName="U Lung Kim X� Ph�t ��i", nID=56},
			{szName="U Lung X�ch Y�t M�t trang", nID=57},
			{szName="U Lung Thanh Ng� Tri�n y�u", nID=58},
			{szName="U Lung Ng�n Th�m H� Uy�n", nID=59},
			{szName="U Lung M�c Th� Nhuy�n L� ", nID=60},
		},
		
		["Ng� ��c (�ao)"] = {
			{szName="Minh �o T� S�t ��c Nh�n", nID=61},
			{szName="Minh �o U ��c �m Y", nID=62},
			{szName="Minh �o ��c Y�t Ch� Ho�n", nID=63},
			{szName="Minh �o H� C�t H� uy�n", nID=64},
			{szName="Minh �o Song Ho�n X� H�i", nID=65},
		},
		
	[5] = {
		["Nga My (ki�m)"] = {
			{szName="V� Gian � Thi�n Ki�m", nID=31},
			{szName="V� Gian Thanh Phong Truy Y", nID=32},
			{szName="V� Gian Ph�t V�n Ti ��i", nID=33},
			{szName="V� Gian C�m V�n H� Uy�n", nID=34},
			{szName="V� Gian B�ch Ng�c B�n Ch�", nID=35},
		},
		
		["Nga My (ch��ng)"] = {
			{szName="V� Ma Ma Ni Qu�n", nID=36},
			{szName="V� Ma T� Kh�m C� Sa", nID=37},
			{szName="V� Ma B�ng Tinh Ch� Ho�n", nID=38},
			{szName="V� Ma T�y T��ng Ng�c Kh�u", nID=39},
			{szName="V� Ma H�ng Truy Nhuy�n Th�p H�i", nID=40},
		},
		
		["Nga My (h� tr�)"] = {
			{szName="V� Tr�n Ng�c N� T� T�m Qu�n", nID=41},
			{szName="V� Tr�n Thanh T�m H��ng Thi�n Ch�u", nID=42},
			{szName="V� Tr�n T� Bi Ng�c Ban Ch�", nID=43},
			{szName="V� Tr�n Ph�t T�m T� H�u Y�u Ph�i", nID=44},
			{szName="V� Tr�n Ph�t Quang Ch� Ho�n", nID=45},
		},
	},
	
	[6] = {
		["Th�y Y�n (�ao)"] = {
			{szName="T� Ho�ng Ph�ng Nghi �ao", nID=46},
			{szName="T� Ho�ng Tu� T�m Khinh Sa Y", nID=47},
			{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i", nID=48},
			{szName="T� Ho�ng B�ng Tung C�m Uy�n", nID=49},
			{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n", nID=50},
		},

		["Th�y Y�n (song �ao)"] = {
			{szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao", nID=51},
			{szName="B�ch H�i Ho�n Ch�u V� Li�n", nID=52},
			{szName="B�ch H�i H�ng Linh Kim Ti ��i", nID=53},
			{szName="B�ch H�i H�ng L�ng Ba", nID=54},
			{szName="B�ch H�i Khi�n T� Ch� Ho�n", nID=55},
		},
		
	},
		
		["Ng� ��c (b�a)"] = {
			{szName="Ch� Ph��c Ph� gi�p ��u ho�n", nID=66},
			{szName="Ch� Ph��c Di�t L�i C�nh Ph� ", nID=67},
			{szName="Ch� Ph��c U �o Ch� Ho�n", nID=68},
			{szName="Ch� Ph��c Xuy�n T�m ��c Uy�n", nID=69},
			{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa", nID=70},
		},
	},
	
	
	[7] = {
		["C�i Bang (ch��ng)"] = {
			{szName="��ng C�u Phi Long ��u ho�n", nID=91},
			{szName="��ng C�u Gi�ng Long C�i Y", nID=92},
			{szName="��ng C�u Ti�m Long Y�u ��i", nID=93},
			{szName="��ng C�u Kh�ng Long H� Uy�n", nID=94},
			{szName="��ng C�u Ki�n Long Ban Ch� ", nID=95},
		},
		
		["C�i Bang (b�ng)"] = {
			{szName="��ch Kh�i L�c Ng�c Tr��ng", nID=96},
			{szName="��ch Kh�i C�u ��i C�i Y", nID=97},
			{szName="��ch Kh�i Tri�n M�ng y�u ��i", nID=98},
			{szName="��ch Kh�i C�u T�ch B� H� uy�n", nID=99},
			{szName="��ch Kh�i Th�o Gian Th�ch gi�i", nID=100},
		},
	},
	
	[8] = {
		["Thi�n Nh�n (k�ch)"] = {
			{szName="Ma S�t Qu� C�c U Minh Th��ng", nID=101},
			{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p", nID=102},
			{szName="Ma S�t X�ch K� T�a Y�u Kh�u", nID=103},
			{szName="Ma S�t C� H�a Li�u Thi�n uy�n", nID=104},
			{szName="Ma S�t V�n Long Th� Ch�u gi�i", nID=105},
		},
		
		["Thi�n Nh�n (�ao)"] = {
			{szName="Ma Ho�ng Kim Gi�p Kh�i", nID=106},
			{szName="Ma Ho�ng �n Xu�t H� H�ng Khuy�n", nID=107},
			{szName="Ma Ho�ng Kh� C�c Th�c y�u ��i", nID=108},
			{szName="Ma Ho�ng Huy�t Y Th� Tr�c", nID=109},
			{szName="Ma Ho�ng ��ng ��p Ngoa", nID=110},
		},
		
		["Thi�n Nh�n (b�a)"] = {
			{szName="Ma Th� Li�t Di�m Qu�n Mi�n", nID=111},
			{szName="Ma Th� L� Ma Ph� T�m Li�n", nID=112},
			{szName="Ma Th� Nghi�p H�a U Minh Gi�i", nID=113},
			{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i", nID=114},
			{szName="Ma Th� s�n  H�i Phi H�ng L� ", nID=115},
		},
	},
	
	[9] = {
		["V� �ang (quy�n)"] = {
			{szName="L�ng Nh�c Th�i C�c Ki�m", nID=116},
			{szName="L�ng Nh�c V� Ng� ��o b�o", nID=117},
			{szName="L�ng Nh�c N� L�i Gi�i", nID=118},
			{szName="L�ng Nh�c V� C�c Huy�n Ng�c B�i", nID=119},
			{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i", nID=120},
		},
		
		["V� �ang (ki�m)"] = {
			{szName="C�p Phong Ch�n V� Ki�m", nID=121},
			{szName="C�p Phong Tam Thanh Ph� ", nID=122},
			{szName="C�p Phong Huy�n Ti Tam �o�n c�m", nID=123},
			{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�i", nID=124},
			{szName="C�p Phong Thanh T�ng Ph�p gi�i", nID=125},
		},
	},
	
	[10] = {
		["C�n L�n (�ao)"] = {
			{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t", nID=126},
			{szName="S��ng Tinh Ng�o S��ng ��o b�o", nID=127},
			{szName="S��ng Tinh Thanh Phong L� ��i", nID=128},
			{szName="S��ng Tinh Thi�n Tinh B�ng Tinh th� ", nID=129},
			{szName="S��ng Tinh Phong B�o ch� ho�n", nID=130},
		},
		
		["C�n L�n (s�t)"] = {
			{szName="L�i Khung H�n Tung B�ng B�ch quan", nID=131},
			{szName="L�i Khung Thi�n ��a H� ph� ", nID=132},
			{szName="L�i Khung Phong L�i Thanh C�m ��i", nID=133},
			{szName="L�i Khung Linh Ng�c U�n L�i", nID=134},
			{szName="L�i Khung C�u Thi�n D�n L�i gi�i", nID=135},
		},
		
		["C�n L�n (b�a)"] = {
			{szName="V� �o B�c Minh ��o qu�n", nID=136},
			{szName="V� �o Ki B�n ph� ch� ", nID=137},
			{szName="V� �o Th�c T�m ch� ho�n", nID=138},
			{szName="V� �o Thanh �nh Huy�n Ng�c B�i", nID=139},
			{szName="V� �o Tung Phong Tuy�t �nh ngoa", nID=140},
		},
	},
}

function GetGoldEquipFactionByFaction(nFaction)
	if not (SET_EQUIPFACTION[nFaction]) then
		Talk(1, "B�n ch�a gia nh�p m�n ph�i, kh�ng th� nh�n trang b�.")
	return end
	local szTitle = "B�n mu�n nh�n trang b� c�a lo�i n�o?"
	local tbOpt = {}
	for x, y in SET_EQUIPFACTION[nFaction] do
		tinsert(tbOpt, {x, ChooseKindFaction, {nFaction, x}})
	end
		tinsert(tbOpt, {"��ng.", no})
	CreateNewSayEx(szTitle, tbOpt)
end

function ChooseKindFaction(nFaction, szKind)
	for i = 1, getn(SET_EQUIPFACTION[nFaction][szKind]) do
		AddGoldItem(0, SET_EQUIPFACTION[nFaction][szKind][i].nID)
	end
	Msg2Player(format("B�n nh�n ���c 1 b� "..szKind))
end

function no()
end