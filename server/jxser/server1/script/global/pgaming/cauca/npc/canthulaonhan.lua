Include("\\script\\global\\pgaming\\cauca\\lib\\inc.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\task\\equipex\\head.lua")

function main()
Say("Ta c� b�n c�c lo�i d�ng c� ��nh b�t c�. Kh�ch quan n�u b� l� kh�ng mua th� th�t v� c�ng ��ng ti�c!", 5, 
	"C�n c�u Tr�c/muacancau", 
	"L��i ��nh c�/mualuoi",
	"B�n c� R� ��ng 3 v�n l��ng 1 con/carodong", 
	"B�n c� M�p 10 v�n l��ng 1 con/cachephong", 
	"Kh�ng c�n ��u/no");
end

function mualuoi()
Say("L� m�t C�n th� ch�n ch�nh, y�u t� quan tr�ng nh�t l� T�m ph�i T�nh - Th�n ph�i T�nh.", 2, 
	"L��i ��nh c� gi� 5 xu/dongymua2", 
	"Kh�ng c�n ��u/OnCancelBuy_xxg");
end

function muacancau()
Say("L� m�t C�n th� ch�n ch�nh, y�u t� quan tr�ng nh�t l� T�m ph�i T�nh - Th�n ph�i T�nh.", 2, 
	"C�n c�u tr�c gi� 20 v�n l��ng/dongymua", 
	"Kh�ng c�n ��u/OnCancelBuy_xxg");
end

function dongymua()
local nJxb = 200000
if GetCash() < nJxb then
		Msg2Player(format("Mua c�n c�u tr�c c�n ph�i c� %d ng�n l��ng, h�y chu�n b� k� r�i quay l�i",nJxb))
		return
	end
Pay(nJxb)
tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4896,1,0,0}, nExpiredTime=120, nBindState=-2}, "test", 1);
end

function dongymua222()
local nMoney = CalcEquiproomItemCount(4,417,1,-1);
	if (nMoney <= 0) then
		Talk(1, "", "Tr�n ng��i c�c h� kh�ng c� Ti�n ��ng, ch�c c�c h� �ang tr�u ch�c ta ph�i kh�ng?")
	else
	ConsumeEquiproomItem(5, 4, 417, 1, 1)
	AddItem(6,1,4895,0,0,0)
	 end
end
---------------------------L��i----------------------------------------------
function dongymua2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/5
	AskClientForNumber("dongymua22",0,nXu, "M�i nh�p s� l��ng: ")
end

function dongymua22(n_key)
	local nRuong = CalcFreeItemCellCount() 
	if n_key > nRuong then
		Talk(1,"","Kh�ng �� r��ng ch�a ��")
		return 1
	end 
	for i=1,n_key do
		tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4895,1,0,0}}, "test", 1);	
	end
	ConsumeEquiproomItem(n_key*5, 4, 417, 1, 1)
	
end


---------------------------ca ro dong----------------------------------------------
function CountCa(nIndex)
	local nCa = CalcEquiproomItemCount(6,1,nIndex,-1)
	return floor(nCa/1)
end

function DelNguyenLieu(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end

function FindCa(nIndex)
	local nCa = CountCa(4898)
	return min(nCa)
end

function carodong()
	local nCa = FindCa(4898)
	AskClientForNumber("banca",0,nCa, "M�i nh�p s� l��ng c�: ")
end

function banca(n_key)
	local nCa = FindCa(4898)
	if (n_key < 0 or n_key > nCa) then
		return
	end
	
	for i=1,n_key do
		local nIndex = Earn(30000)
		DelNguyenLieu(4898,1)		
	end
end

---------------------------ca map----------------------------------------------
function CountCa2(nIndex)
	local nCa2 = CalcEquiproomItemCount(6,1,nIndex,-1)
	return floor(nCa2/1)
end

function DelNguyenLieu2(nIndex,count)
	ConsumeEquiproomItem(count,6,1,nIndex,-1)
end

function FindCa2(nIndex)
	local nCa2 = CountCa2(4902)
	return min(nCa2)
end

function cachephong()
	local nCa2 = FindCa2(4902)
	AskClientForNumber("banCa2",0,nCa2, "M�i nh�p s� l��ng c�: ")
end

function banCa2(n_key)
	local nCa2 = FindCa2(4902)
	if (n_key < 0 or n_key > nCa2) then
		return
	end
	
	for i=1,n_key do
		local nIndex = Earn(100000)
		DelNguyenLieu2(4902,1)		
	end
end

-------------------------------------------------------------------------

























