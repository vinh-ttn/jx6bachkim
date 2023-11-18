IncludeLib("SETTING")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\global\\namcung\\hotroitem.lua")
Include("\\script\\global\\namcung\\hotrotanthu\\itemblue.lua")
Include("\\script\\global\\namcung\\namcung_say.lua")

function main()
dofile("script/global/namcung/hotrotanthu/item/tanthulenh.lua");	
	local szTitlez =  "<color=yellow>H�o Ki�t V� L�m .Com<color>:Ch�o m�ng b�n ��n v�i th� gi�i<color=red> V� L�m Truy�n K� <color>.<enter>Ch�c c�c nh�n s� b�n t�u giang h� vui v� t�i. Xin ch�n th�nh c�m �n qu� nh�n s�... !"
		local tbOpt =
		{	--{"Nh�n �� Xanh", trangbixanh},
			--{"Nh�n B� An Bang", nhananbang},
			--{"Nh�n B� ��nh Qu�c", nhandinhquoc},
			--{"H� Tr� Test Game", testgame},
			--{"Nh�n 2000 V�n", tienvan2},
			--{"T�i H� Mu�n Nh�n Ng�a", layngua},
			--{"Nh�n V�t Ph�m Ho�t ��ng", vatpham},
			{"H�y trang b� kh�a", deltem},
			--{"B�n shop V�t ph�m", sellitem},
			--{"Nh�n L�i Skill", nhandaithanhbikip},
			{"Nh�n L�i V�ng S�ng H� tr� t�n th�", nhanvongsanght},
			{"Gi�i k�t nh�n v�t", giaiket},
			{"Fix lag th�n h�nh ph�", fixphu},	
			{"Tho�t"},
		}
		CreateNewSayEx(szTitlez, tbOpt)	
	return 1				
end

function sellitem()
Sale(154)
end

function giaiket()
	SetFightState(0)
	Msg2Player( "<color=yellow>Tr� v� Ba l�ng huy�n!");
	NewWorld(53, 1622, 3181);
end


function fixphu()
	DisabledUseTownP(0)
	WorldIdx = SubWorldID2Idx(53)
	SubWorld = WorldIdx;
	SetAutoHangMapFlag(0)
	Msg2Player("<color=yellow>S�a l�i kh�ng s� d�ng ���c Th�n H�nh Ph� v� Th� ��a Ph� th�nh c�ng<color>")
end

function nhananbang()
		for i=164,167 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end	
end;
function nhandinhquoc()
		for i=159,163 do
		local ItemIdx=AddGoldItem(0, i);
		--SetItemBindState(ItemIdx, -2);
	end	
end;
function deltem()
	if (GetBoxLockState() ~= 0) then
		Say("Xin m� kh�a r��ng tr��c !", 0)
		return
	end
	GiveItemUI("H�y v�t ph�m", "��i hi�p h�y c�n tr�ng trong vi�c h�y v�t ph�m!", "DisposeConfirm", "onCancel", 1);
end
function tienvan2()
	Earn(20000000)	
end
function tiendong()
	for i = 1,3 do
		AddStackItem(100,4,417,1,1,0,0,0)	-- nhan 300 tien dong
	end
end;
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


function trangbixanh()
dofile("script/global/namcung/hotrotanthu/itemblue.lua");		
trangbixanh()	
end
tbDoXanh =
{
[1]=
{
szName = "D�y chuy�n",
tbEquip =
{
{"To�n th�ch h�ng li�n",0,4,0},
{"L�c Ph� Th�y H� Th�n ph� ",0,4,1},
}
},
[2]=
{
szName = "�o gi�p",
tbEquip =
{
{"Th�t B�o C� Sa",0,2,0},
{"Ch�n V� Th�nh Y",0,2,1},
{"Thi�n Nh�n M�t Trang",0,2,2},
{"Gi�ng Sa B�o",0,2,3},
{"���ng Ngh� gi�p",0,2,4},
{"V�n L�u Quy T�ng Y",0,2,5},
{"Tuy�n Long b�o",0,2,6},
{"Long Ti�u ��o Y",0,2,8},
{"C�u V� B�ch H� trang",0,2,9},
{"Tr�m H��ng sam",0,2,10},
{"T�ch L�ch Kim Ph�ng gi�p",0,2,11},
{"V�n Ch�ng T� T�m Y",0,2,12},
{"L�u Ti�n Qu�n",0,2,13},
}
},
[3]=
{
szName = "�ai l�ng",
tbEquip =
{
{"Thi�n T�m Y�u ��i",0,6,0},
{"B�ch Kim Y�u ��i",0,6,1},
}
},
[4]=
{
szName = "Gi�y",
tbEquip =
{
{"C�u Ti�t X��ng V� Ngoa",0,5,0},
{"Thi�n T�m Ngoa",0,5,1},
{"Kim L� h�i",0,5,2},
{"Phi Ph�ng Ngoa",0,5,3},
}
},
[5]=
{
szName = "Bao tay",
tbEquip =
{
{"Long Ph�ng Huy�t Ng�c Tr�c",0,8,0},
{"Thi�n T�m H� Uy�n",0,8,1},
}
},
[6]=
{
szName = "N�n",
tbEquip =
{
{"T� L� m�o",0,7,0},
{"Ng� l�o qu�n",0,7,1},
{"Tu La Ph�t k�t",0,7,2},
{"Th�ng Thi�n Ph�t Qu�n",0,7,3},
{"Y�m Nh�t kh�i",0,7,4},
{"Tr�ch Tinh ho�n",0,7,5},
{"� T�m M�o",0,7,6},
{"Quan �m Ph�t Qu�n",0,7,7},
{"�m D��ng V� C�c qu�n",0,7,8},
{"Huy�n T� Di�n Tr�o",0,7,9},
{"Long Huy�t ��u ho�n",0,7,10},
{"Long L�n Kh�i",0,7,11},
{"Thanh Tinh Thoa",0,7,12},
{"Kim Ph�ng Tri�n S� ",0,7,13},
}
},
[7]=
{
szName = "V� kh� c�n chi�n",
tbEquip =
{
{"Huy�n Thi�t Ki�m",0,0,0},
{"��i Phong �ao",0,0,1},
{"Kim C� B�ng",0,0,2},
{"Ph� Thi�n K�ch",0,0,3},
{"Ph� Thi�n ch�y",0,0,4},
{"Th�n Nh�t Tr�m",0,0,5},
}
},
[8]=
{
szName = "Ng�c b�i",
tbEquip =
{
{"Long Ti�n H��ng Nang",0,9,0},
{"D��ng Chi B�ch Ng�c",0,9,1},
}
},
[9]=
{
szName = "V� kh� t�m xa",
tbEquip =
{
{"B� V��ng Ti�u",0,1,0},
{"To�i Nguy�t �ao",0,1,1},
{"Kh�ng T��c Linh",0,1,2},
}
},
[10]=
{
szName = "Nh�n",
tbEquip =
{
{"To�n Th�ch Gi�i Ch� ",0,3,0},
}
},
}
function trangbixanh()
	if CalcFreeItemCellCount() < 6 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 6 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
local tbOpt = {}
for i=1, getn(tbDoXanh) do
tinsert(tbOpt, {tbDoXanh[i].szName, laydoxanh1, {i}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:Xin m�i l�a ch�n trang b�:", tbOpt)
end
function laydoxanh1(nType)
local tbEquip = %tbDoXanh[nType]["tbEquip"]
local tbOpt = {}
for i=1, getn(tbEquip) do
tinsert(tbOpt, {tbEquip[i][1], laydoxanh2, {i, nType}})
end

tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<color=yellow>H�o Ki�t V� L�m .Com<color>:Xin m�i l�a ch�n trang b�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh2(nIndex, nType)
local tbOpt = {}
tinsert(tbOpt, {"Kim", laydoxanh3, {nIndex, nType, 0}})
tinsert(tbOpt, {"M�c", laydoxanh3, {nIndex, nType, 1}})
tinsert(tbOpt, {"Th�y", laydoxanh3, {nIndex, nType, 2}})
tinsert(tbOpt, {"H�a", laydoxanh3, {nIndex, nType, 3}})
tinsert(tbOpt, {"Th� ", laydoxanh3, {nIndex, nType, 4}})


tinsert(tbOpt, {"K�t th�c ��i tho�i."})
local szTitle = format("<color=yellow>H�o Ki�t V� L�m .Com<color>:Ch�n h�:")
CreateNewSayEx(szTitle, tbOpt)
end
function laydoxanh3(nIndex, nType, nSeries)
g_AskClientNumberEx(0, 10, "S� l��ng:", {laydoxanh4, {nIndex, nType, nSeries}})
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
--for i=1,30 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 200, 10) end
end
function laydoxanh4(nIndex, nType, nSeries, nCount)
local tbEquipSelect = %tbDoXanh[nType]["tbEquip"][nIndex]
for i=1,10 do AddItem(tbEquipSelect[2], tbEquipSelect[3], tbEquipSelect[4], 10, nSeries, 100, 10) end
end

function layngua()
	local tbOpt =
	{
		{"Ng�a Chi�u D�",chieuda},
		{"Ng�a X�ch Th�",xichtho},
		{"Ng�a ��ch L�",dichlo},
		{"Ng�a Tuy�t �nh",tuyetanh},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:��i Hi�p C�n G�?", tbOpt)
end
function chieuda()
AddItem(0,10,5,10,0,0,0)
end
function xichtho()
AddItem(0,10,5,7,0,0,0)
end
function dichlo()
AddItem(0,10,5,9,0,0,0)
end
function tuyetanh()
AddItem(0,10,5,8,0,0,0)
end

function vatpham()
	local tbOpt =
	{
		--{"L� Bao Khi�u Chi�n L�nh",khieuchienlenh},
		{"S�t Th� Gi�n",satthugian},
		{"L�nh B�i Phong L�ng ��",phonglangdo},
		{"Thi�n C� L�nh",thiencolenh},
		{"Thu�c L�c T�ng Kim",thuoclactongkim},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:��i Hi�p C�n G�?", tbOpt)
end

function satthugian()
AddItem(6,1,400,0,0,0,0)
end
function phonglangdo()
AddItem(4,489,1,1,0,0)
end
function thuytac()
AddItem(6,1,2745,0,0,0,0)
end
function thiencolenh()
AddItem(6,1,1091,0,0,0,0)
end
function khieuchienlenh()
AddItem(6,1,2006,0,0,0,0)
end


function thuoclactongkim()
	if CheckGioiHan(3997)==1 then
		Say("<color=green>H� tr� t�n th�<color>: Ng�y h�m nay b�n �� nh�n th��ng r�i. Ng�y mai h�y quay l�i g�p ta",0);
		return
	end
	if CalcFreeItemCellCount() < 5 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
	end
	local tbAwardItemmn = {
		{szName="phi t�c",tbProp={6,1,190,1,0,0},nCount=50,nBindState = -2,nExpiredTime = 1440},
		{szName="l�nh b�i",tbProp={6,1,157,1,0,0},nCount=50,nBindState = -2,nExpiredTime = 1440},
		{szName="chi�n c�",tbProp={6,1,156,1,0,0},nCount=50,nBindState = -2,nExpiredTime = 1440},
	}
	tbAwardTemplet:Give(tbAwardItemmn, 1)
end
function CheckGioiHan(TaskDate)
	old_date = GetByte(GetTask(TaskDate), 1)
	old_month = GetByte(GetTask(TaskDate), 2)
	old_year = GetByte(GetTask(TaskDate), 3)

	now_date = tonumber(date("%d"))
	now_month = tonumber(date("%m"))
	now_year = tonumber(date("%y"))

	if old_date == now_date and old_month == now_month and old_year == now_year then
		return 1;
	else
		SetTask(TaskDate, SetByte(GetTask(TaskDate), 1, now_date))
		SetTask(TaskDate, SetByte(GetTask(TaskDate), 2, now_month))
		SetTask(TaskDate, SetByte(GetTask(TaskDate), 3, now_year))	
		return 0;
	end
end

function hkmp()
	local tbOpt =
	{
		{"Ph�i Thi�u L�m",thieulam},
		{"Ph�i Thi�n V��ng",thienvuong},
		{"Ph�i ���ng M�n",duongmon},
		{"Ph�i Ng� ��c",ngudoc},
		{"Ph�i Nga My",ngamy},
		{"Ph�i Th�y Y�n",thuyyen},
		{"Ph�i Thi�n Nh�n",thiennhan},
		{"Ph�i C�i Bang",caibang},
		{"Ph�i V� �ang",vodang},
		{"Ph�i C�n L�n",conlon},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end
function thieulam()
	local tbOpt =
	{
		{"Thi�u L�m �ao",thieulamdao},
		{"Thi�u L�m B�ng",thieulambong},
		{"Thi�u L�m Quy�n",thieulamquyen},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function thieulamdao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�ng Ma Gi�i �ao",tbProp={0,11},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng T� Kim C� Sa",tbProp={0,12},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="TT� Kh�ng H� ph�p Y�u ��i",tbProp={0,13},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Nhuy�n B� H� Uy�n",tbProp={0,14},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Kh�ng Gi�i Lu�t Ph�p gi�i",tbProp={0,15},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] T� Kh�ng ��t Ma T�ng H�i",tbProp={0,776},nCount=1,nQuality = 1,},}, "test", 1);
end

function thieulambong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma T� Kim C�n",tbProp={0,6},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Huy�n Ho�ng C� Sa",tbProp={0,7},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma � Kim Nhuy�n �i�u",tbProp={0,8},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph�t T�m Nhuy�n Kh�u",tbProp={0,9},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Ma Ph� �� T�ng h�i",tbProp={0,10},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Ph�c Ma V� L��ng Kim Cang Uy�n",tbProp={0,771},nCount=1,nQuality = 1,},}, "test", 1);
end

function thieulamquyen()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Ch�nh H�ng T�ng M�o",tbProp={0,1},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Kim Ti Ch�nh H�ng C� Sa",tbProp={0,2},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Huy�n Ti Ph�t ��i",tbProp={0,3},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="M�ng Long Ph�t Ph�p Huy�n B�i",tbProp={0,4},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="M�ng Long ��t Ma T�ng h�i",tbProp={0,5},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] M�ng Long T� Kim B�t Nh� Gi�i",tbProp={0,769},nCount=1,nQuality = 1,},}, "test", 1);
end

function thienvuong()
	local tbOpt =
	{
		{"Thi�n V��ng Ch�y",thienvuongchuy},
		{"Thi�n V��ng Th��ng",thienvuongthuong},
		{"Thi�n V��ng �ao",thienvuongdao},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function thienvuongchuy()
if CalcFreeItemCellCount() < 1 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y",tbProp={0,16},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n V� Th�n T��ng Kim Gi�p",tbProp={0,17},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Uy V� Th�c y�u ��i",tbProp={0,18},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n H� ��u Kh�n Th�c Uy�n",tbProp={0,19},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="H�m Thi�n Th�a Long Chi�n Ngoa",tbProp={0,20},nCount=1,nQuality = 1,},}, "test", 1);
end

function thienvuongthuong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�n L�i To�n Long th��ng",tbProp={0,21},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Huy�n V� Ho�ng Kim Kh�i",tbProp={0,22},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p B�ch H� V� Song kh�u",tbProp={0,23},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p H�aV�n K� L�n Th� ",tbProp={0,24},nCount=1,nQuality = 1,},}, "test", 1);
tbAwardTemplet:GiveAwardByList({{szName="K� Nghi�p Chu T��c L�ng V�n Ngoa",tbProp={0,25},nCount=1,nQuality = 1,},}, "test", 1);
end

function thienvuongdao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ng� Long L��ng Ng�n B�o �ao",tbProp={0,26},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Chi�n Th�n Phi Qu�i gi�p",tbProp={0,27},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Thi�n M�n Th�c Y�u ho�n",tbProp={0,28},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ng� Long T�n Phong H� y�n",tbProp={0,29},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ng� Long Tuy�t M�nh Ch� ho�n",tbProp={0,30},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Ng� Long T�n Phong Ph�t C�",tbProp={0,793},nCount=1,nQuality = 1,},}, "test", 1);
end

function duongmon()
	local tbOpt =
	{
		{"���ng M�n N�",duongmonno},
		{"���ng M�n Phi �ao",duongmonphidao},
		{"���ng M�n Phi Ti�u",duongmonphitieu},
		--{"���ng M�n B�y",duongmonbay},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function duongmonno()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang Hoa V� M�n Thi�n",tbProp={0,76},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ",tbProp={0,77},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang S�m La Th�c ��i",tbProp={0,78},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang Song B�o H�n Thi�t Tr�c",tbProp={0,79},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n",tbProp={0,80},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Thi�n Quang ��a H�nh Thi�n L�  Ngoa",tbProp={0,843},nCount=1,nQuality = 1,},}, "test", 1);
end

function duongmonphidao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n ��n Ch� Phi �ao",tbProp={0,71},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Y Th�c Gi�p",tbProp={0,72},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n T�m Ti�n Y�u Kh�u",tbProp={0,73},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Huy�n Thi�n B�ng H�a B�i",tbProp={0,74},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ng H�n Nguy�t �nh Ngoa",tbProp={0,75},nCount=1,nQuality = 1,},}, "test", 1);
end

function duongmonphitieu()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="S�m Ho�ng Phi Tinh �o�t H�n",tbProp={0,81},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang KimTi�n Li�n Ho�n Gi�p",tbProp={0,82},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang H�n Gi�o Y�u Th�c",tbProp={0,83},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang Huy�n Thi�t T��ng Ng�c B�i",tbProp={0,84},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S�m Hoang Tinh V�n Phi L� ",tbProp={0,85},nCount=1,nQuality = 1,},}, "test", 1);
end

function duongmonbay()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="��a Ph�ch H�c Di�m Xung Thi�n Li�n",tbProp={0,87},nCount=7,nQuality = 1,nExpiredTime=24*60*365},}, "test", 1);
end

function ngudoc()
	local tbOpt =
	{
		{"Ng� ��c �ao",ngudocdao},
		{"Ng� ��c Ch��ng",ngudocchuong},
		--{"Ng� ��c B�a",ngudocbua},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function ngudocdao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Minh �o T� S�t ��c Nh�n",tbProp={0,61},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Minh �o U ��c �m Y",tbProp={0,62},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Minh �o ��c Y�t Ch� Ho�n",tbProp={0,63},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Minh �o H� C�t H� uy�n",tbProp={0,64},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Minh �o Song Ho�n X� H�i",tbProp={0,65},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Minh Hoan Song Ho�n X� Kh�u",tbProp={0,829},nCount=1,nQuality = 1,},}, "test", 1);
end

function ngudocchuong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="U Lung Kim X� Ph�t ��i ",tbProp={0,56},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="U Lung X�ch Y�t M�t trang ",tbProp={0,57},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="U Lung Thanh Ng� Tri�n y�u",tbProp={0,58},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="U Lung Ng�n Th�m H� Uy�n",tbProp={0,59},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="U Lung M�c Th� Nhuy�n L� ",tbProp={0,60},nCount=1,nQuality = 1,},}, "test", 1);
end

function ngudocbua()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ch� Ph��c B�ng H�a Th�c C�t Ngoa",tbProp={0,70},nCount=7,nQuality = 1,nExpiredTime=24*60*365},}, "test", 1);
end

function ngamy()
	local tbOpt =
	{
		{"Nga My Ki�m",ngamykiem},
		{"Nga My Ch��ng",ngamychuong},
		--{"Nga My Buff",ngamybuff},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function ngamykiem()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="V� Gian � Thi�n Ki�m",tbProp={0,31},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Gian Thanh Phong Truy Y",tbProp={0,32},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Gian Ph�t V�n Ti ��i",tbProp={0,33},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Gian C�m V�n H� Uy�n",tbProp={0,34},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Gian B�ch Ng�c B�n Ch� ",tbProp={0,35},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] V� Gian Thanh Phong Nhuy�n K�ch",tbProp={0,796},nCount=1,nQuality = 1,},}, "test", 1);

end

function ngamychuong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="V� Ma Ma Ni qu�n",tbProp={0,36},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Ma T� Kh�m C� Sa",tbProp={0,37},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Ma B�ng Tinh Ch� Ho�n",tbProp={0,38},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Ma T�y T��ng Ng�c Kh�u ",tbProp={0,39},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="V� Ma H�ng Truy Nhuy�n Th�p h�i",tbProp={0,40},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] V� Y�m Thu Th�y L�u Quang ��i",tbProp={0,801},nCount=1,nQuality = 1,},}, "test", 1);
end

function ngamybuff()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="V� Tr�n Ph�t T�m T� H�u Y�u Ph�i",tbProp={0,44},nCount=15,nQuality = 1,nExpiredTime=24*60*365},}, "test", 1);
end

function thuyyen()
	local tbOpt =
	{
		{"Th�y Y�n �ao",thuyyendao},
		{"Th�y Y�n Song �ao",thuyyensongdao},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function thuyyendao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Ph�ng Nghi �ao",tbProp={0,46},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Tu� T�m Khinh Sa Y",tbProp={0,47},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i",tbProp={0,48},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng B�ng Tung C�m uy�n",tbProp={0,49},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Ho�ng Th�y Ng�c Ch� Ho�n",tbProp={0,50},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] T� Ho�ng Hu� T�m Tr��ng Sinh Kh�u",tbProp={0,811},nCount=1,nQuality = 1,},}, "test", 1);
end

function thuyyensongdao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Uy�n ��ng Li�n Ho�n �ao ",tbProp={0,51},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Ho�n Ch�u V� Li�n",tbProp={0,52},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng Linh Kim Ti ��i",tbProp={0,53},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i H�ng L�ng Ba",tbProp={0,54},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="B�ch H�i Khi�n T� Ch� ho�n",tbProp={0,55},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] B�ch H�i Ho�n Ch�u Tuy�n Thanh C�n",tbProp={0,816},nCount=1,nQuality = 1,},}, "test", 1);
end

function vodang()
	local tbOpt =
	{
		{"V� �ang Ki�m",vodangkiem},
		{"V� �ang Kh�",vodangkhi},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function vodangkiem()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Ch�n V� Ki�m",tbProp={0,121},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Tam Thanh Ph�",tbProp={0,122},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Huy�n Ti Tam �o�n c�m",tbProp={0,123},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Th�y Ng�c Huy�n Ho�ng B�i",tbProp={0,124},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="C�p Phong Thanh T�ng Ph�p gi�i",tbProp={0,125},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] C�p Phong Th�y Ng�c Huy�n Ho�ng Uy�n",tbProp={0,888},nCount=1,nQuality = 1,},}, "test", 1);
end

function vodangkhi()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Th�i C�c Ki�m",tbProp={0,116},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c V� Ng� ��o b�o",tbProp={0,117},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c N� L�i Gi�i",tbProp={0,118},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c V� C�c Huy�n Ng�c B�i",tbProp={0,119},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i",tbProp={0,120},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] L�ng Nh�c V� Ng� Th�c ��i",tbProp={0,881},nCount=1,nQuality = 1,},}, "test", 1);
end

function conlon()
	local tbOpt =
	{
		{"C�n L�n �ao",conlondao},
		{"C�n L�n Ki�m",conlonkiem},
		--{"C�n L�n B�a",conlonbua},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function conlondao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Ni�n H�n Thi�t",tbProp={0,126},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Ng�o S��ng ��o b�o",tbProp={0,127},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thanh Phong L� ��i",tbProp={0,128},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Thi�n Tinh B�ng Tinh th� ",tbProp={0,129},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="S��ng Tinh Phong B�o ch� ho�n",tbProp={0,130},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] S��ng Tinh L�u Tinh C�n Nguy�t Kh�u",tbProp={0,891},nCount=1,nQuality = 1,},}, "test", 1);
end

function conlonkiem()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="L�i Khung H�n Tung B�ng B�ch quan",tbProp={0,131},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Thi�n ��a H� ph�",tbProp={0,132},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Phong L�i Thanh C�m ��i",tbProp={0,133},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�i Khung Linh Ng�c U�n L�i",tbProp={0,134},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�i Khung C�u Thi�n D�n L�i gi�i",tbProp={0,135},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] L�i Khung Linh Ng�c �n L�i Uy�n",tbProp={0,899},nCount=1,nQuality = 1,},}, "test", 1);
end

function conlonbua()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="V� �o B�c Minh ��o qu�n ",tbProp={0,136},nCount=8,nQuality = 1,nExpiredTime=24*60*365},}, "test", 1);
end

function caibang()
	local tbOpt =
	{
		{"C�i Bang R�ng",caibangrong},
		{"C�i Bang B�ng",caibangbong},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function caibangrong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Phi Long ��u ho�n",tbProp={0,91},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Gi�ng Long C�i Y",tbProp={0,92},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ti�m Long Y�u ��i",tbProp={0,93},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Kh�ng Long H� Uy�n",tbProp={0,94},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ng C�u Ki�n Long Ban Ch�",tbProp={0,95},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] ��ng C�u Ng� Long Ng�c B�i",tbProp={0,855},nCount=1,nQuality = 1,},}, "test", 1);
end

function caibangbong()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i L�c Ng�c Tr��ng",tbProp={0,96},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u ��i C�i Y",tbProp={0,97},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Tri�n M�ng y�u ��i",tbProp={0,98},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i C�u T�ch B� H� uy�n",tbProp={0,99},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��ch Kh�i Th�o Gian Th�ch gi�i",tbProp={0,100},nCount=1,nQuality = 1,},}, "test", 1);
end

function thiennhan()
	local tbOpt =
	{
		{"Thi�n Nh�n �ao",thiennhandao},
		{"Thi�n Nh�n K�ch",thiennhankich},
		--{"Thi�n Nh�n B�a",thiennhanbua},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:M�i B�n Ch�n Ph�i !", tbOpt)
end

function thiennhandao()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Li�t Di�m Qu�n Mi�n",tbProp={0,111},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma Th� L� Ma Ph� T�m Li�n",tbProp={0,112},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Nghi�p H�a U Minh Gi�i",tbProp={0,113},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma Th� Huy�t Ng�c Th�t S�t B�i",tbProp={0,114},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma Th� s�n  H�i Phi H�ng L�",tbProp={0,115},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Ma Th� L� Ma Ph� T�m ��i",tbProp={0,876},nCount=1,nQuality = 1,},}, "test", 1);
end

function thiennhankich()
if CalcFreeItemCellCount() < 50 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 50 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ma S�t Qu� C�c U Minh Th��ng",tbProp={0,101},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma S�t T�n D��ng �nh Huy�t Gi�p",tbProp={0,102},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma S�t X�ch K� T�a Y�u Kh�u",tbProp={0,103},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma S�t C� H�a Li�u Thi�n uy�n",tbProp={0,104},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ma S�t V�n Long Th� Ch�u gi�i",tbProp={0,105},nCount=1,nQuality = 1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="[H�n ch� th�i gian] Ma S�t C� H�a Li�u Thi�n Ho�n",tbProp={0,868},nCount=1,nQuality = 1,},}, "test", 1);
end

function thiennhanbua()
if CalcFreeItemCellCount() < 5 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ma Ho�ng Kim Gi�p Kh�i",tbProp={6,1,2126,1,0,0},nCount=1,nExpiredTime=24*60},}, "test", 1);
end
--------------------------------------------------------------------------------------
function testgame()
	local tbOpt =
	{
		{"Nh�n Ti�n ��ng",tiendong},
		{"Nh�n Ng�a Qu�",nguaquy},
		{"Nh�n Trang B� HKMP",hkmp},
		{"Nh�n Vinh Di�u",vinhdieu},
		{"Nh�n V�t Ph�m",vatpham2},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>: ��i Hi�p C�n G� ?", tbOpt)
end

function nguaquy()
	local tbOpt =
	{
		{"Ng�a B�n Ti�u",bontieu},
		{"Ng�a Phi V�n",phivan},
		{"Ng�a Phi�n V�",phienvu},
		{"Ng�a X�ch Long C�u",xichlongcau},
		{"Ng�a Si�u Quang",sieuquang},
		{"Ng�a H�n Huy�t Long C�u",hanhuyetlongcau},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:��i Hi�p C�n G�?", tbOpt)
end
function bontieu()
AddItem(0,10,6,10,0,0,0)
end
function phivan()
AddItem(0,10,8,10,0,0,0)
end
function phienvu()
AddItem(0,10,7,10,0,0,0)
end
function xichlongcau()
AddItem(0,10,9,9,0,0,0)
end
function sieuquang()
AddItem(0,10,13,9,0,0,0)
end
function hanhuyetlongcau()
AddItem(0,10,18,10,0,0,0)
end

function vinhdieu()
if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Vinh Di�u Chi Y",tbProp={0,214},nCount=1,nQuality = 1},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Tinh Chu�n Chi Ngoa",tbProp={0,215},nCount=1,nQuality = 1},}, "test", 1);
end

function vatpham2()
	local tbOpt =
	{
		{"L�nh B�i Th�y T�c",thuytac},
		{"Th�y Tinh",thuytinh},
		{"L� Bao T�ch L�y �i�m T�ng Kim",lebaotongkim},
		{"V�t Ph�m �p Ng�a",epngua},
		{"Ph�c Duy�n",phucduyen},
		{"Tho�t"},
	}
	CreateNewSayEx("<color=yellow>H�o Ki�t V� L�m .Com<color>:��i Hi�p C�n G�?", tbOpt)
end

function thuytinh()
if CalcFreeItemCellCount() < 10 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 10 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Lam Th�y Tinh",tbProp={4,238,1,0,0,0},nCount=2,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=2,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="L�c Th�y Tinh",tbProp={4,240,1,0,0,0},nCount=2,},}, "test", 1);
end

function lebaotongkim()
if CalcFreeItemCellCount() < 15 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 15 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Lam Th�y Tinh",tbProp={6,1,4382,1,0,0,0},nCount=10,},}, "test", 1);
end

function phucduyen()
if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n Ti�u",tbProp={6,1,122,1,0,0,0},nCount=5,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n Trung",tbProp={6,1,123,1,0,0,0},nCount=5,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="Ph�c Duy�n ��i",tbProp={6,1,124,1,0,0,0},nCount=5,},}, "test", 1);
end

function epngua()
if CalcFreeItemCellCount() < 20 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 20 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="B�c ��u Thu�n M� Thu�t",tbProp={6,1,4381,1,0,0,0},nCount=10,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="C� T��i",tbProp={6,1,4378,1,0,0,0},nCount=10,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="D�y Th�ng",tbProp={6,1,4379,1,0,0,0},nCount=10,},}, "test", 1);
end

function nhandaithanhbikip()
if CalcFreeItemCellCount() < 5 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 5 � tr�ng r�i h�y ti�p t�c nh� !",0);
		return 1;
end
 tbAwardTemplet:GiveAwardByList({{szName="S�ch k� n�ng c�p 90",tbProp={6,1,2426,1,0,0,0},nCount=1,},}, "test", 1);
 tbAwardTemplet:GiveAwardByList({{szName="��i Th�nh B� K�p 90",tbProp={6,1,2424,1,0,0,0},nCount=1,},}, "test", 1);
end

