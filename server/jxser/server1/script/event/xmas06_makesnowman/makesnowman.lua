-- script viet hoa By http://tranhba.com  v�n ki�n t�n ##makesnowman.lua 
-- script viet hoa By http://tranhba.com  ng��i khai s�ng ##zhongchaolong 
-- script viet hoa By http://tranhba.com  khai s�ng th�i gian #2007-11-23 10:56:30 

Include("\\script\\event\\xmas06_makesnowman\\head.lua") 
Include("\\script\\task\\system\\task_string.lua"); 
Include("\\script\\lib\\basic.lua"); 
function main() 
xmas07_makeSnowMan_main() 
end 
function xmas07_makeSnowMan_main() 
if xmas07_makeSnowMan_isActPeriod() == 0 then 
Say(format("Ho�t ��ng <color=yellow>%s<color> �� k�t th�c !",xmas07_makeSnowMan_ActName),0) 
return 0; 
end 
local tbDialog = 
{ 
"<dec><npc> ha ha , gi�ng sinh vui v� #", 
" Ta mu�n hi�u r� n�i dung ho�t ��ng /xmas07_makeSnowMan_Content", 
" Ta mu�n t�o ng��i tuy�t ./xmas07_makeSnowMan_wantCompose", 
" K�t th�c ��i tho�i /OnCancel", 
} 

CreateTaskSay(tbDialog) 
end 
function xmas07_makeSnowMan_Content() 
local tbDialog = 
{ 
"<dec><npc> T� <color=red>0h00 ng�y 08-06-2014 ��n 24h00 ng�y 08-07-2014<color>, c�c v� l�m nh�n s� ��nh qu�i nh�t ���c <color=yellow> Gi�ng sinh h�p qu� <color>, m� ra Gi�ng sinh h�p qu� nh�n ���c nguy�n li�u l�m ng��i tuy�t. Thu t�p �� nguy�n li�u sau , c� th� ��n ch� t�o <color=yellow> c�c lo�i ng��i tuy�t <color> .<enter> � ngo�i th�nh khu v�c , s� d�ng Ho�ng Tuy�t Nh�n , T� Tuy�t Nh�n , ho�c l� L�c Tuy�t Nh�n c� th� nh�n ���c <color=red>1000000 kinh nghi�m <color> c�ng v�i m�t <color=red> V�t ph�m <color>, d� nhi�n , n�u nh� may m�n , c� th� k�u l�n <color=yellow> Boss Ng��i Tuy�t<color>, ��nh b�i Boss Ng��i Tuy�t c� c� h�i nh�n ���c ph�n th��ng c� gi� tr�", 
" Ha ha ha , ta bi�t /xmas07_makeSnowMan_main" 
} 
CreateTaskSay(tbDialog) 
end 
function xmas07_makeSnowMan_wantCompose() 
local tbDialog = 
{ 
"<dec><npc> C�c v� l�m nh�n s� l�c ��nh qu�i c� c� h�i nh�t ���c <color=yellow> B�ng Tinh <color> h� Kim , h� M�c, h� Th�y, h� H�a, h� Th�. S� d�ng <color=yellow> B�ng Tinh <color> �em l�m ng��i tuy�t , ��i hi�p mu�n lo�i n�o ? ", 
" Ta mu�n t�o Ng��i tuy�t th��ng /#xmas2007_makeSnowMan_compose([[Yellow]])", 
" Ta mu�n t�o Ng��i tuy�t ��c bi�t /#xmas2007_makeSnowMan_compose([[Yellow_db]])", 
" Ta mu�n t�o Ng��i tuy�t cho�ng kh�n xanh (th��ng) /#xmas2007_makeSnowMan_compose([[Purple]])", 
" Ta mu�n t�o Ng��i tuy�t cho�ng kh�n xanh (��c bi�t) /#xmas2007_makeSnowMan_compose([[Purple_db]])", 
" Ta mu�n t�o Ng��i tuy�t cho�ng kh�n �� (th��ng) /#xmas2007_makeSnowMan_compose([[Green]])", 
" Ta mu�n t�o Ng��i tuy�t cho�ng kh�n �� (��c bi�t) /#xmas2007_makeSnowMan_compose([[Green_db]])", 
" Ch� m�t ch�t tr� l�i /OnCancel" 
} 
CreateTaskSay(tbDialog) 
end 
xmas2007_makeSnowMan_tbItem = 
{ 
{1, {6,1,1324,1,0,0},"Ng��i tuy�t th��ng "}, 
{1, {6,1,1321,1,0,0},"Ng��i tuy�t ��c bi�t "}, 
{1, {6,1,1322,1,0,0},"Ng��i tuy�t cho�ng kh�n xanh (th��ng) "}, 
{1, {6,1,1319,1,0,0},"Ng��i tuy�t cho�ng kh�n xanh (��c bi�t) "}, 
{1, {6,1,1323,1,0,0},"Ng��i tuy�t cho�ng kh�n �� (th��ng) "}, 
{1, {6,1,1320,1,0,0},"Ng��i tuy�t cho�ng kh�n �� (��c bi�t) "}, 
} 
xmas2007_makeSnowMan_tbMaterial = 
{ 
{0, {6,1,1312,nil,nil,nil},"Hoa tuy�t "}, 
{0, {6,1,1314,nil,nil,nil},"C�nh th�ng "}, 
{0, {6,1,1313,nil,nil,nil},"C� r�t "}, 
{0, {6,1,1315,nil,nil,nil},"N�n gi�ng sinh "}, 
{0, {6,1,1316,nil,nil,nil}, "Kh�n cho�ng (xanh) "}, 
{0, {6,1,1317,nil,nil,nil},"Kh�n cho�ng (��) "}, 
{0, {6,1,1318,nil,nil,nil},"C�y th�ng "}, 
} 
xmas2007_makeSnowMan_Recipe = 
{ 
	Yellow	= {tbItemList = {5,2,1,1,0,0,0}, nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[1]},		-- script viet hoa By http://tranhba.com 1��ɫ���� + 2 ����� + 3 ľ���� + 4 ˮ���� + 5 ����� + 6 ������
	Yellow_db	= {tbItemList = {5,2,1,1,0,0,1}, nMoney = 10000, tbResult = xmas2007_makeSnowMan_tbItem[2]},
                Purple	= {tbItemList = {5,2,1,1,1,0,0}, nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[3]},		-- script viet hoa By http://tranhba.com 0��ɫ���� + 2 ����� + 3 ľ���� + 4 ˮ���� + 5 ����� + 6 ������
	Purple_db	= {tbItemList = {5,2,1,1,1,0,1}, nMoney = 20000, tbResult = xmas2007_makeSnowMan_tbItem[4]},
                Green	= {tbItemList = {5,2,1,1,0,1,0},nMoney = 0, tbResult = xmas2007_makeSnowMan_tbItem[5]},	-- script viet hoa By http://tranhba.com 10 ���� + 0��ɫ���� + 2 ����� + 3 ľ���� + 4 ˮ���� + 5 ����� + 6 ������
                Green_db	= {tbItemList = {5,2,1,1,0,1,1},nMoney = 30000, tbResult = xmas2007_makeSnowMan_tbItem[6]},
} 

function xmas2007_makeSnowMan_ComposeConfirm(szSelect) 
local tbMaterial = xmas2007_makeSnowMan_tbMaterial; 
local szMaterialList = nil; 
for i=1,getn(tbMaterial) do 
tbMaterial[i][1] = xmas2007_makeSnowMan_Recipe[szSelect].tbItemList[i]; 
if tbMaterial[i][1] ~= 0 then 
if not szMaterialList then 
szMaterialList = format("<color=red>%d<color> <color=yellow>%s<color>",tbMaterial[i][1],tbMaterial[i][3]) 
else 
szMaterialList = format("%s, <color=red>%d<color> <color=yellow>%s<color>",szMaterialList,tbMaterial[i][1],tbMaterial[i][3]) 
end 
end 
end 
local tbAwardItem = xmas2007_makeSnowMan_Recipe[szSelect].tbResult 
local nMoney = xmas2007_makeSnowMan_Recipe[szSelect].nMoney; 

if xmas2007_makeSnowMan_CheckMaterial(tbMaterial) ~= 1 then 
Say(format("��i hi�p ch�a �� nguy�n li�u , c�n ph�i c� %s m�i c� th� t�o .",szMaterialList), 1 ,"Th�t l� ng��ng ng�ng , ta ch� m�t ch�t tr� l�i ./OnCancel") 
return 0; 
end 
if Pay(nMoney) == 0 then 
Say(format("Kh�ng th� , mang kh�ng �� ti�n , c�n <color=yellow>%d<color> hai ",nMoney),0) 
return 0; 
end 
if nMoney ~= 0 then 
Msg2Player(format("Ti�u ph� <color=yellow>%d<color> hai ",nMoney)) 
end 
if xmas2007_makeSnowMan_ConsumeMaterial(tbMaterial) ~= 1 then 
Say("Ch� t�o th�t b�i , m�t �i m�t �t nguy�n li�u .",0) 
return 0; 
end 
xmas2007_SnowManItem_AddItem(tbAwardItem[3],tbAwardItem[2]); 
Say(format("Tuy�t l�o ng��i # ha ha , <color=yellow>%s<color> �� t�o th�nh c�ng li�u , m�i t�i l�y !",tbAwardItem[3])) 
end 
function xmas2007_makeSnowMan_compose(szSelect) 
local tbMaterial = xmas2007_makeSnowMan_tbMaterial; 
local szMaterialList = nil; 
for i=1,getn(tbMaterial) do 
tbMaterial[i][1] = xmas2007_makeSnowMan_Recipe[szSelect].tbItemList[i]; 
if tbMaterial[i][1] ~= 0 then 
if not szMaterialList then 
szMaterialList = format("<color=red>%d<color> <color=yellow>%s<color>",tbMaterial[i][1],tbMaterial[i][3]) 
else 
szMaterialList = format("%s, <color=red>%d<color> <color=yellow>%s<color>",szMaterialList,tbMaterial[i][1],tbMaterial[i][3]) 
end 
end 
end 
local tbAwardItem = xmas2007_makeSnowMan_Recipe[szSelect].tbResult 
local nMoney = xmas2007_makeSnowMan_Recipe[szSelect].nMoney; 
if nMoney ~= 0 then 
szMaterialList = format("%s, c�n ph�i c� <color=yellow>%d<color> hai ",szMaterialList,nMoney) 
end 
local tbNpcSay = 
{ 
format("<dec><npc> Ch� t�o <color=yellow>%s<color>, c�n %s.",tbAwardItem[3],szMaterialList), 
format("T�o ng��i tuy�t /#xmas2007_makeSnowMan_ComposeConfirm([[%s]])",szSelect), 
"�� cho ta chu�n b� #/OnCancel", 
} 
CreateTaskSay(tbNpcSay) 
end 

function xmas2007_makeSnowMan_CheckMaterial(tbMaterial) 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
local nLevel = tbItem[2][4] or -1 
if tbItem[1] > 0 and CalcEquiproomItemCount(tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) < tbItem[1] then 
return 0; 
end 
end 
return 1; 
end 

function xmas2007_makeSnowMan_ConsumeMaterial(tbMaterial) 
for i=1,getn(tbMaterial) do 
local tbItem = tbMaterial[i] 
local nLevel = tbItem[2][4] or -1 
-- script viet hoa By http://tranhba.com print(tbItem[1],tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) 
if tbItem[1] > 0 and ConsumeEquiproomItem(tbItem[1],tbItem[2][1],tbItem[2][2],tbItem[2][3],nLevel) ~= 1 then 
return 0; 
end 
end 
return 1; 
end 

function OnCancel() 
end 
