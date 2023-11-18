Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")


function shopliendau22()
	local tbOpt = {
		{"M� An Bang Li�n ��u",anbangliendau},
		{"Mua ��nh Qu�c Li�n ��u",dinhquocliendau},
		{"Mua B�n Ti�u",muabontieu},
		{"Mua L�nh B�i Vinh D�",mualenhbaivinhdu},
		{"Mua V� Danh",muavodanh},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua thu�c g�?<color>", tbOpt)
end;
--------------------------------------------------------------------------------
function muavodanh()
local szTitle = "Ng��i mu�n ��i trang b� n�o?";
	local tbOption = {}
		tinsert(tbOption, {"Mua V� Danh Ch� Ho�n", vodanhchihoan })
		tinsert(tbOption, {"Mua V� Danh Gi�i Ch�", vodanhgioichi })
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function vodanhchihoan()
local nDiemVinhDu=GetTask(2501)
	Describe("�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/1000000<color>",11,
	"Ta ��ng � ��i/vodanhchihoan2",
	"Ta s� quay l�i sau!/no"
	);
end

function vodanhchihoan2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 1000000) then
	Say("Ch�a �� 1000000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end
AddGoldItem(0, 141)
SetTask(2501,GetTask(2501)-1000000)
end

function vodanhgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/1000000<color>",11,
	"Ta ��ng � ��i/vodanhgioichi2",
	"Ta s� quay l�i sau!/no"
	);
end

function vodanhgioichi2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 1000000) then
	Say("Ch�a �� 1000000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end
AddGoldItem(0, 142)
SetTask(2501,GetTask(2501)-1000000)
end
--------------------------------------------------------------------------------
function mualenhbaivinhdu()
local szTitle = "Ng��i mu�n ��i trang b� n�o?";
	local tbOption = {}
		tinsert(tbOption, {"L�nh B�i Vinh D� H�n Thi�t", hanthietlenh })
		tinsert(tbOption, {"L�nh B�i Vinh D� Thanh ��ng", thanhdonglenh })
		tinsert(tbOption, {"L�nh B�i Vinh D� B�ch Ng�n", bachnganlenh })
		tinsert(tbOption, {"L�nh B�i Vinh D� Ho�ng Kim", vinhduhoangkim })
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function vinhduhoangkim()
local nDiemVinhDu=GetTask(2501)/600
	AskClientForNumber("vinhduhoangkim2",0,nDiemVinhDu, "600/1: ")
end

function vinhduhoangkim2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1254,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-600)
end
end

function bachnganlenh()
local nDiemVinhDu=GetTask(2501)/120
	AskClientForNumber("bachnganlenh2",0,nDiemVinhDu, "120/1: ")
end

function bachnganlenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1255,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-120)
end
end

function thanhdonglenh()
local nDiemVinhDu=GetTask(2501)/60
	AskClientForNumber("thanhdonglenh2",0,nDiemVinhDu, "60/1: ")
end

function thanhdonglenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1256,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-60)
end
end

function hanthietlenh()
local nDiemVinhDu=GetTask(2501)/12
	AskClientForNumber("hanthietlenh2",0,nDiemVinhDu, "12/1: ")
end

function hanthietlenh2(n_key)
for k=1,n_key do
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1257,0,0,0}}, "test", 1);	
SetTask(2501,GetTask(2501)-12)
end
end

--------------------------------------------------------------------------------
function muabontieu()
local nDiemVinhDu=GetTask(2501)
	Describe("�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/20000<color>",11,
	"Ta ��ng � ��i/muabontieu2",
	"Ta s� quay l�i sau!/no"
	);
end

function muabontieu2()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 20000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddItem(0,10,6,10,0,0)
SetTask(2501,GetTask(2501)-20000)
end
--------------------------------------------------------------------------------
function anbangliendau()
local szTitle = "Ng��i mu�n ��i trang b� n�o?";
	local tbOption = {}
		tinsert(tbOption, {"��i An Bang Tinh Th�ch H�ng Li�n", anbangtinhthachhanglien })
		tinsert(tbOption, {"��i An Bang C�c Hoa Th�ch Ch� Ho�n", anbanghoathachgioichi })
		tinsert(tbOption, {"��i An Bang K� Huy�t Th�ch Gi�i Ch�", anbangkehuyetthachgioichi })
		tinsert(tbOption, {"��i An Bang �i�n Ho�ng Th�ch Ng�c B�i", anbangdienhoangthachngocboi })
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end

function dinhquocliendau()
local szTitle = "Ng��i mu�n ��i trang b� n�o?";
	local tbOption = {}
		tinsert(tbOption, {"��nh Qu�c Thanh Sa Tr��ng Sam", dinhquocthanhsatruongsam })
		tinsert(tbOption, {"��nh Qu�c � Sa Ph�t Qu�n", dinhquocosaphatquan })
		tinsert(tbOption, {"��nh Qu�c Ng�n T�m Y�u ��i", dinhquocngantamyeudai })
		tinsert(tbOption, {"��nh Qu�c X�ch Quy�n Nhuy�n Ngoa", dinhquocxichquyennhuyenngoa })
		tinsert(tbOption, {"��nh Qu�c T� ��ng H� Uy�n", dinhquoctudonghouyen })
		tinsert(tbOption, {"K�t th�c ��i tho�i."})
	CreateNewSayEx(szTitle, tbOption)
end
--------------------------------------------------------------------------------
--=====================An Bang================================
function anbangtinhthachhanglien()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\nick\\obj-neck07.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/daychuyendy",
	"Ta s� quay l�i sau!/no"
	);
end

function daychuyendy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end
AddGoldItem(0, 394)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbanghoathachgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\ring\\obj-ring07.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/nhan1dy",
	"Ta s� quay l�i sau!/no"
	);
end

function nhan1dy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 395)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbangkehuyetthachgioichi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\ring\\obj-ring06.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/nhan2dy",
	"Ta s� quay l�i sau!/no"
	);
end

function nhan2dy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 397)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function anbangdienhoangthachngocboi()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\waist\\obj-waist18.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/ngocboidy",
	"Ta s� quay l�i sau!/no"
	);
end

function ngocboidy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 396)
SetTask(2501,GetTask(2501)-2000)
end
--=====================��nh QU�c================================
function dinhquocthanhsatruongsam()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\armor\\obj-ma-cloth11-3.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/aody",
	"Ta s� quay l�i sau!/no"
	);
end

function aody()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 389)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocosaphatquan()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\cap\\obj-ma-cap12-1.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/nondy",
	"Ta s� quay l�i sau!/no"
	);
end

function nondy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end
AddGoldItem(0, 390)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocngantamyeudai()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\sash\\obj-sash17.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/yeudaidy",
	"Ta s� quay l�i sau!/no"
	);
end

function yeudaidy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 393)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquocxichquyennhuyenngoa()
local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\boots\\obj-shoes06.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/ngoady",
	"Ta s� quay l�i sau!/no"
	);
end

function ngoady()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end
AddGoldItem(0, 391)
SetTask(2501,GetTask(2501)-2000)
end
-----------------------------
function dinhquoctudonghouyen()

local nDiemVinhDu=GetTask(2501)
	Describe("<link=image[0]:\\Spr\\item\\equip\\bangle\\obj-bangle13.spr><link><enter>�i�m Vinh D� c�n: <color=yellow>: "..nDiemVinhDu.."/2000<color>",11,
	"Ta ��ng � ��i/houyendy",
	"Ta s� quay l�i sau!/no"
	);
end

function houyendy()
local nDiemVinhDu=GetTask(2501)
if (nDiemVinhDu < 2000) then
	Say("Ch�a �� 2000 �i�m Vinh D�, kh�ng th� trao ��i.", 1, "�! Ta �i chu�n b� th�m!/no");
return 1
end;
AddGoldItem(0, 392)
SetTask(2501,GetTask(2501)-2000)
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function no()
end;
