IncludeLib("TASKSYS")
Include("\\script\\global\\signet_head.lua")
Include("\\script\\missions\\basemission\\lib.lua")
Include("\\script\\activitysys\\playerfunlib.lua")
IncludeLib("LEAGUE")
Include("\\script\\lib\\droptemplet.lua")
Include("\\script\\lib\\objbuffer_head.lua")

local  _Message =  function (nItemIndex)
	local handle = OB_Create()
	local msg = format("Ch�c m�ng cao th� <color=green>%s<color> ��nh r�t <color=orange>%s<color> t� <color=yellow> Boss Ti�u Ho�ng Kim<color>" ,GetName(),GetItemName(nItemIndex))
	ObjBuffer:PushObject(handle, msg)
	RemoteExecute("\\script\\event\\msg2allworld.lua", "broadcast", handle)
	OB_Release(handle)
end

KILLBOSSEXPAWARD = 1000000
KILLBOSSNEAREXPAWARD = 500000

local tbVnNewItemDropAward = 
{
	{{szName="Phi t�c ho�n l� bao",tbProp={6,1,2520,1,0,0},nCount=1,nRate=60},},
	{{szName="��i l�c ho�n l� bao",tbProp={6,1,2517,1,0,0},nCount=1,nRate=60},},
	{{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0},nCount=1,nRate=10},},
	{{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0},nCount=1,nRate=10},},
	{{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0},nCount=1,nRate=10},},
	{{szName="Tinh H�ng B�o Th�ch",tbProp={4,353,1,1,0,0},nCount=1,nRate=10},},
	{{szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=10},},

	--{{szName = "M�nh ��nh Qu�c",tbProp = {4,random(927,932),1,1,0,0},nCount = 1,						nRate = 1,nQuality = 1, },},
	--{{szName = "M�nh ��nh Qu�c",tbProp = {4,random(783,788),1,1,0,0},nCount = 1,						nRate = 1,nQuality = 1, },},
	--{{szName = "M�nh ��nh Qu�c",tbProp = {4,random(931,936),1,1,0,0},nCount = 1,						nRate = 1,nQuality = 1, },},
	--{{szName = "M�nh ��nh Qu�c",tbProp = {4,random(935,940),1,1,0,0},nCount = 1,						nRate = 1,nQuality = 1, },},
	--{{szName = "M�nh ��nh Qu�c",tbProp = {4,random(939,944),1,1,0,0},nCount = 1,						nRate = 1,nQuality = 1, },},
	--{{szName = "M�nh An Bang",tbProp = {4,random(747,752),1,1,0,0},nCount = 1,						nRate = 0.5,nQuality = 1, },},
	--{{szName = "M�nh An Bang",tbProp = {4,random(753,758),1,1,0,0},nCount = 1,						nRate = 0.5,nQuality = 1, },},
	--{{szName = "M�nh An Bang",tbProp = {4,random(759,764),1,1,0,0},nCount = 1,						nRate = 0.5,nQuality = 1, },},
	--{{szName = "M�nh An Bang",tbProp = {4,random(765,770),1,1,0,0},nCount = 1,						nRate = 0.5,nQuality = 1, },},

	--{{szName = "Hi�p C�t Thi�t Huy�t Sam",tbProp = {0,186},nCount = 1, 					nRate = 0.5,nQuality = 1, },},
	--{{szName = "Hi�p C�t �a T�nh Ho�n",tbProp = {0,187},nCount = 1, 					nRate = 0.5,nQuality = 1, },},
	--{{szName = "Hi�p C�t �an T�m Gi�i",tbProp = {0,188},nCount = 1, 					nRate = 0.5,nQuality = 1, },},
	--{{szName = "Hi�p C�t T�nh � K�t",tbProp = {0,189},nCount = 1, 						nRate = 0.25,nQuality = 1, },},
	--{{szName = "Nhu T�nh C�n Qu�c Ngh� Th��ng",tbProp = {0,190},nCount = 1,					nRate = 0.25,nQuality = 1, },},
	--{{szName = "Nhu T�nh Th�c N� H�ng Li�n",tbProp = {0,191},nCount = 1, 					nRate = 0.5,nQuality = 1, },},
	--{{szName = "Nhu T�nh Ph�ng Nghi Gi �i Ch�",tbProp = {0,192},nCount = 1, 					nRate = 0.5,nQuality = 1, },},
	--{{szName = "Nhu T�nh Tu� T�m Ng�c B�i",tbProp = {0,193},nCount = 1, 					nRate = 0.25,nQuality = 1, },},


	{{szName = "Huy�n Thi�t Ki�m",tbProp = {0,0,0,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10}, nCount=1,	nRate=50},},
	{{szName = "��i Phong �ao",tbProp = {0,0,1,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Kim C� B�ng",tbProp = {0,0,2,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph� Thi�n K�ch",tbProp = {0,0,3,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Ph� Thi�n Chu�",tbProp = {0,0,4,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Th�n Nh�t Tr�m",tbProp = {0,0,5,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "B� V��ng Ti�u",tbProp = {0,1,0,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "To�i Nguy�t �ao",tbProp = {0,1,1,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
	{{szName = "Kh�ng T��c Linh",tbProp = {0,1,2,random(5,9),random(0,4),25},tbParam = {10,10,10,10,10,10},nCount=1,		nRate=50},},
}
local tbVnNewItemDropAwardMP = 
{	
	[1]=		-- Thi�n V��ng
	{
		--{szName="�� ph� Ho�ng Kim - H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={6,1,254,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={6,1,255,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - H�m Thi�n Uy V� Th�c Y�u ��i",tbProp={6,1,255,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={6,1,257,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={6,1,258,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - K� Nghi�p B�n L�i To�n Long Th��ng",tbProp={6,1,259,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={6,1,260,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - K� Nghi�p B�ch H� V� Song Kh�u",tbProp={6,1,261,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - K� Nghi�p H�a V�n K� L�n th� ",tbProp={6,1,262,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={6,1,263,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ng� Long L��ng Ng�n B�o �ao",tbProp={6,1,264,1,0,0},nCount=1,nRate=5},	
		--{szName="�� ph� ho�ng kim - Ng� Long Chi�n Th�n Qua Tr�y",tbProp={6,1,265,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ng� Long Thi�n M�n Th�c Y�u Ho�n",tbProp={6,1,266,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ng� Long T�n Phong Ph�t C�",tbProp={6,1,267,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ng� Long Tuy�t M�nh Ch� Ho�n",tbProp={6,1,268,1,0,0},nCount=1,nRate=8},
	},
	[2]=		--Thi�u l�m
	{
		--{szName="�� ph� Ho�ng Kim - M�ng Long Ch�nh Ho�ng T�ng M�o",tbProp={6,1,239,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={6,1,240,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - M�ng Long Huy�n Ti Ph�p ��i ",tbProp={6,1,241,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - M�ng Long Ph�t Ph�p Huy�n B�i ",tbProp={6,1,242,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - M�ng Long T� Kim B�t Nh� Gi�i ",tbProp={6,1,243,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ph�c Ma T� Kim C�n ",tbProp={6,1,244,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - Ph�c Ma V� L��ng Kim Cang Uy�n ",tbProp={6,1,245,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ph�c Ma � Kim Nhuy�n �i�u",tbProp={6,1,246,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={6,1,247,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ph�c Ma Ph� �� T�ng H�i",tbProp={6,1,248,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Kh�ng Gi�ng Ma Gi�i �ao ",tbProp={6,1,249,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - T� Kh�ng ��t Ma T�ng H�i ",tbProp={6,1,250,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Kh�ng H� Ph�p Y�u ��i ",tbProp={6,1,251,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Kh�ng Nhuy�n B� H� Uy�n ",tbProp={6,1,252,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Kh�ng Gi�i Lu�t Ph�p Gi�i ",tbProp={6,1,253,1,0,0},nCount=1,nRate=8},
	},


	[3]=		-- ���ng M�n
	{
		--{szName="�� ph� Ho�ng Kim - B�ng H�n ��n Ch� Phi �ao",tbProp={6,1,309,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - B�ng H�n Huy�n Y Th�c Gi�p",tbProp={6,1,310,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={6,1,311,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={6,1,312,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ng H�n Nguy�t �nh Ngoa",tbProp={6,1,313,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Thi�n Quang Hoa V� M�n Thi�n",tbProp={6,1,314,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - Thi�n Quang ��nh T�m Ng�ng Th�n ph� ",tbProp={6,1,315,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Thi�n Quang S�m La Th�c Y�u",tbProp={6,1,316,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Thi�n Quang ��a H�nh Thi�n L� Ngoa",tbProp={6,1,317,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={6,1,318,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S�m Hoang Phi Tinh �o�t H�n",tbProp={6,1,319,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - S�m Hoang Kim Ti�n Li�n Ho�n Gi�p",tbProp={6,1,320,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S�m Hoang H�n Gi�o Y�u Th�c",tbProp={6,1,321,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={6,1,322,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S�m Hoang Tinh V�n Phi L� ",tbProp={6,1,323,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��a Ph�ch Ng� H�nh Li�n Ho�n Qu�n",tbProp={6,1,324,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={6,1,325,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��a Ph�ch T�ch L�ch L�i H�a Gi�i",tbProp={6,1,326,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��a Ph�ch Kh�u T�m Tr�c",tbProp={6,1,327,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��a Ph�ch Phong H�n Th�c Y�u",tbProp={6,1,328,1,0,0},nCount=1,nRate=8},
		
	},
	[4]=		-- Ng� ��c
	{
		--{szName="�� ph� Ho�ng Kim - U Lung Kim X� Ph�t ��i",tbProp={6,1,294,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - U Lung X�ch Hi�t M�t Trang",tbProp={6,1,295,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - U Lung Thanh Ng� Tri�n Y�u",tbProp={6,1,296,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - U Lung Ng�n Thi�m H� Uy�n",tbProp={6,1,297,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - U Lung M�c Th� Nhuy�n L� ",tbProp={6,1,298,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Minh �o T� S�t ��c Nh�n",tbProp={6,1,299,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Minh �o U C� �m Y",tbProp={6,1,300,1,0,0},nCount=1,nRate=8},

		--{szName="�� ph� Ho�ng Kim - Minh �o Thanh Hi�t Ch� Ho�n",tbProp={6,1,301,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Minh �o H� C�t H� Uy�n",tbProp={6,1,302,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Minh Hoan Song Ho�n X� Kh�u",tbProp={6,1,303,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ch� Ph��c Ph� Gi�p ��u Ho�n",tbProp={6,1,304,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ch� Ph��c Di�t L�i C�nh Ph� ",tbProp={6,1,305,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ch� Ph��c U �o Ch� Ho�n",tbProp={6,1,306,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ch� Ph��c Xuy�n T�m ��c Uy�n",tbProp={6,1,307,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ch� Ph�c Th�c C�t Ng�c B�i",tbProp={6,1,308,1,0,0},nCount=1,nRate=8},
	},
	[5]=		-- Nga Mi
	{
		--{szName="�� ph� Ho�ng Kim - V� Gian � Thi�n Ki�m",tbProp={6,1,269,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - V� gian Thanh phong nhuy�n l�",tbProp={6,1,270,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Gian Ph�t V�n Ti ��i",tbProp={6,1,271,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Gian C�m V�n H� Uy�n",tbProp={6,1,272,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Gian B�ch Ng�c B�n Ch� ",tbProp={6,1,273,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Ma Ma Ni Qu�n",tbProp={6,1,274,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� ma thu th�y l�u quang �ai",tbProp={6,1,275,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Ma B�ng Tinh Ch� Ho�n",tbProp={6,1,276,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Ma T�y T��ng Ng�c Kh�u",tbProp={6,1,277,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Ma H�ng Truy Nhuy�n Th�p H�i ",tbProp={6,1,278,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - V� Tr�n Ng�c N� T� T�m Qu�n",tbProp={6,1,279,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Tr�n Thanh T�m H��ng Thi�n Ch�u",tbProp={6,1,280,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Tr�n T� Bi Ng�c B�n Ch� ",tbProp={6,1,281,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Tr�n T�nh �nh L�u T�",tbProp={6,1,282,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� ho�ng kim - V� Tr�n Ph�t Quang Ch� Ho�n",tbProp={6,1,283,1,0,0},nCount=1,nRate=8},
	},
	[6]=		-- Th�y Y�n
	{
		--{szName="�� ph� Ho�ng Kim - T� Ho�ng Ph�ng Nghi �ao",tbProp={6,1,284,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - Th� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",tbProp={6,1,285,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={6,1,286,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Ho�ng B�ng Tung C�m Uy�n",tbProp={6,1,287,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={6,1,288,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ch H�i Uy�n ��ng Li�n Ho�n �ao",tbProp={6,1,289,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",tbProp={6,1,290,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ch H�i H�ng Linh Kim Ti ��i",tbProp={6,1,291,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ch H�i H�ng L�ng Ba",tbProp={6,1,292,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - B�ch H�i Khi�n T� Ch� Ho�n",tbProp={6,1,293,1,0,0},nCount=1,nRate=8},
	},
	[7]=		-- C�i Bang
	{
		--{szName="�� ph� Ho�ng Kim - ��ch Kh�i L�c Ng�c Tr��ng",tbProp={6,1,329,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - ��ch Kh�i C�u ��i C�i Y",tbProp={6,1,330,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ch Kh�i Tri�n M�ng Y�u ��i",tbProp={6,1,331,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ch Kh�i C�u T�ch B� H� Uy�n",tbProp={6,1,332,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ch Kh�i Th�o Gian Th�ch Gi�i",tbProp={6,1,333,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ng C�u Ng� Long Ng�c B�i",tbProp={6,1,334,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ng C�u Gi�ng Long C�i Y",tbProp={6,1,335,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ng C�u Ti�m Long Y�u ��i",tbProp={6,1,336,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - ��ng C�u Kh�ng Long H� Uy�n",tbProp={6,1,337,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - ��ng C�u Ki�n Long Ban Ch�",tbProp={6,1,338,1,0,0},nCount=1,nRate=8},
	},
	[8]=		-- Thi�n Nh�n
	{
		--{szName="�� ph� Ho�ng Kim - Ma S�t Qu� C�c U Minh Th��ng",tbProp={6,1,339,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={6,1,340,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={6,1,341,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma S�t C� H�a Li�u Thi�n Ho�n",tbProp={6,1,342,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma S�t V�n Long Th� Ch�u Gi�i",tbProp={6,1,343,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Th� Li�t Di�m Qu�n Mi�n",tbProp={6,1,344,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Th� L� Ma Ph� T�m ��i",tbProp={6,1,345,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={6,1,346,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={6,1,347,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Th� s�n  H�i Phi H�ng L� ",tbProp={6,1,348,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Ho�ng Kim Gi�p Kh�i",tbProp={6,1,349,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Ho�ng �n Xu�t H� H�ng Khuy�n",tbProp={6,1,350,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Ho�ng Kh� C�c Th�c Y�u ��i",tbProp={6,1,351,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Ho�ng Huy�t Y Th� Tr�c",tbProp={6,1,352,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - Ma Ho�ng Dung Kim �o�n Nh�t Gi�i",tbProp={6,1,353,1,0,0},nCount=1,nRate=8},
	},
	[9]=		-- V� �ang
	{
		--{szName="�� ph� ho�ng kim - L�ng Nh�c Th�i C�c Ki�m",tbProp={6,1,354,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - L�ng Nh�c V� Ng� Th�c ��i",tbProp={6,1,355,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� ho�ng kim - L�ng Nh�c N� L�i Ph�p Gi�i",tbProp={6,1,356,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�ng Nh�c V� C�c Huy�n Ng�c B�i",tbProp={6,1,357,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={6,1,358,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - C�p Phong Ch�n V� Ki�m",tbProp={6,1,359,1,0,0},nCount=1,nRate=5},
		--{szName="�� ph� Ho�ng Kim - C�p Phong Tam Thanh Ph� ",tbProp={6,1,360,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - C�p Phong Huy�n Ti Tam �o�n C�m",tbProp={6,1,361,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - C�p Phong Th�y NG�c Huy�n Ho�ng Uy�n",tbProp={6,1,362,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - C�p Phong Thanh T�ng Ph�p Gi�i",tbProp={6,1,363,1,0,0},nCount=1,nRate=8},
	},
	[10]=		-- C�n L�n
	{		
		--{szName="�� ph� Ho�ng Kim - S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={6,1,364,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S��ng Tinh L�u Tinh C�n Nguy�t Kh�u",tbProp={6,1,365,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S��ng Tinh Thanh Phong L� ��i",tbProp={6,1,366,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S��ng Tinh Thi�n Thanh B�ng Tinh Th� ",tbProp={6,1,367,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - S��ng Tinh Phong B�o Ch� Ho�n",tbProp={6,1,368,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�i Khung H�n T�ng B�ng B�ch Quan",tbProp={6,1,369,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�i Khung Thi�n ��a H� Ph� ",tbProp={6,1,370,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�i Khung Phong L�i Thanh C�m ��i",tbProp={6,1,371,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�i Khung Linh Ng�c �n L�i",tbProp={6,1,372,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - L�i Khung C�u Thi�n D�n L�i Gi�i",tbProp={6,1,373,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� �o B�c Minh ��o Qu�n",tbProp={6,1,374,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� Hoan Th�i Uy�n ch�n V� Li�n",tbProp={6,1,375,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� �o Th�c T�m Ch� Ho�n",tbProp={6,1,376,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� �o Thanh �nh Huy�n Ng�c B�i",tbProp={6,1,377,1,0,0},nCount=1,nRate=8},
		--{szName="�� ph� Ho�ng Kim - V� �o Tung Phong Tuy�t �nh ngoa",tbProp={6,1,378,1,0,0},nCount=1,nRate=8},
	},
}

function OnDeath( nNpcIndex )
	local x, y, world = GetNpcPos(nNpcIndex);
	local nNpcID = GetNpcParam(nNpcIndex,1);
	tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,%tbVnNewItemDropAward,format("killed_%s",GetNpcName(nNpcIndex)))
	if 	nNpcID== 1356   	then STTID= 1
		elseif nNpcID== 1355 	then STTID= 2 
		elseif nNpcID== 523 	then STTID= 3 
		elseif nNpcID== 1358   	then STTID= 4
		elseif nNpcID== 513   	then STTID= 5 
		elseif nNpcID== 1360   	then STTID= 6 
		elseif nNpcID== 1361   	then STTID= 7 
		elseif nNpcID== 1362	then STTID= 8
		elseif nNpcID== 511 		then STTID= 9
		elseif nNpcID== 1364   	then STTID= 10 
	end
	--local ListItem=%tbVnNewItemDropAwardMP[STTID];
	--tbDropTemplet:GiveAwardByList(nNpcIndex, PlayerIndex,ListItem,format("killed_%s",GetNpcName(nNpcIndex)))	

	local nTeamSize = GetTeamSize();
	local szName;
	
	if (nTeamSize > 1) then
		for i=1,nTeamSize do
			if(doFunByPlayer(GetTeamMember(i), IsCaptain)==1)then
				szName = doFunByPlayer(GetTeamMember(i), GetName);
			end
			doFunByPlayer(GetTeamMember(i), PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
		end
	else -- һ����
		szName = GetName();
		PlayerFunLib:AddExp(KILLBOSSEXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m �� b�i BOSS ho�ng kim"));
	end
	
	local tbRoundPlayer, nCount = GetNpcAroundPlayerList(nNpcIndex, 20);
	
	for i=1,nCount do
		doFunByPlayer(tbRoundPlayer[i], PlayerFunLib.AddExp, PlayerFunLib, KILLBOSSNEAREXPAWARD, 0, format("%s ph�n th��ng","Kinh nghi�m ��ng g�n l�c BOSS ho�ng kim b� ti�u di�t"));
	end
end;

function OnTimer(nNpcIndex,nTimeOut)
	DelNpc(nNpcIndex);
end