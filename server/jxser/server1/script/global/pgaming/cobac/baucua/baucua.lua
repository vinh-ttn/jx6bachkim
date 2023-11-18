--Started by ZhuYingTai 14/5/2015 3p xo 1 lan
Include("\\script\\lib\\timerlist.lua")
Include("\\script\\lib\\player.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\basic.lua") 
-- Include("\\script\\lib\\player.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")

tbWinCashMsg = {
"Ng��i ch�i %s �� �n ���c %s v�n l��ng t� Banh X�c ��i nh�n. Th�t may m�n",
-- "Con b�c %s c�m %s v�n l��ng �n ���c t� b�u cua m� kh�c r�ng: Tr�i v�n c�n th��ng con.. Cu�c ��i th�t kh�ng nh�n t�m v�i nh�ng ng��i kh�n kh� nh� ta.",
-- "Banh X�c ��i nh�n h�ng m�u h� l�n: %s!, Ng��i �n ���c c�a ta %s v�n r�i. ��ng c� �n non m� b� v� nh�. Ha ha",
-- "�. %s. Ng��i l�m c�ch n�o m� th�ng ���c %s v�n l��ng t� ta hay v�y? Ng��i c� d�m th� v�i ta l�n n�a kh�ng? ",
-- "%s b�ng d�ng h�t to�ng l�n: H�o h�u v� trung t�m T��ng D��ng ta chia ti�n n�. V�a tr�ng %s v�n l��ng �� thi�t �� ch�.",
-- "%s m�t m�y nh� h�a �i�n h�a d�i, tay ch�n ��p lo�n x� r�m r�m l�n b�n. Cu�i c�ng �ng tr�i �� kh�ng ph� l�ng ta. �n ���c %s v�n r�i. H� h�.",
}
tbWinCoinMsg = {
"Ng��i ch�i %s �� �n ���c %s ti�n ��ng t� Banh X�c ��i nh�n. Th�t may m�n",
-- "B�u cua, cua b�u. Cu�c ��i �� sang trang kh�c v�i %s sau khi h�n tr�ng %s ti�n ��ng t� Banh X�c ��i nh�n.",
-- "Th�n b�t do k� tr�i chu ��t di�t. %s sau khi tr�ng b�u cua v�i v� ch�y v� th� kh� c�t h�t %s ti�n ��ng �n ���c. Th�t l� trang h�o h�n..",
-- "Ng��i ��i th��ng n�i: �� b�c �en t�nh. Th�t qu� l� ch�nh x�c. %s tr�ng lu�n %s ti�n ��ng. �ng tr�i kh�ng l�y kh�ng c�a ai m�t c�i g�.",
-- "M�i ng�y %s d�n m�t v�o m�n h�nh b�u cua d�ng gi�y m�c ghi ch�p l�i quy lu�t th�t kh�ng u�ng c�ng. Tr�ng li�n %s ti�n ��ng. C� c�ng m�i s�t c� ng�y n�n kim.",
-- "L�m gi�u kh�ng kh� v�i b�u cua. %s ��t tr�ng ngay %s ti�n ��ng. Xa g�n t�n tr�i m� g�n ngay tr��c m�t. Ba L�ng th�ng ti�n n�o.",
-- "��n v�i V� l�m b� s� tr�i nghi�m b�u cua. Ai ng� %s tr�ng ngay %s ti�n ��ng. Sao h�n v�y ta?",
}
FishGame = FishGame or {
tbPlayerList = {},--luu toan bo thong tin nguoi choi: {nIndex,{Chua so cac con danh:["Bau"] = nCash,["Cua"] = nCash....},nAwardCash = 0-- luu so tien thang neu nguoi choi out game hoac trong truong hop dac biet khong add duoc tien}
nResult = {},--{"Bau","Cua"}

nTotalCash = 0,-- luu toan bo so tien danh
nTotalCoin = 0,-- lua tona bo so xu danh
nStarted = 0,
nTOTAL_RATE = 0,
DOUBLE_RATE = 2,-- ti le ra 2 amt giong nhau ti le chuan
NORMAL_RATE = 1,-- ti le ra 3 mat khac nhau ti le chuan
}
tbAllResult = tbAllResult or {

}


function FishGame:Init()
if SubWorldID2Idx(78) < 0 then-- kiem tra xem co phai map tuong duong ko?
	return
end
if self.nStarted == 0 then
self.TimerID = TimerList:AddTimer(self, 18*60); --1 phut se chay 1 lan
self.nStarted = 1
self.nStatus = 0
end
local nLuckRand= random(1,100)
self.NORMAL_RATE = nLuckRand
self.DOUBLE_RATE = nLuckRand * 2
for i=1,6 do-- khoi tao bang gia tri
	for j=1,6 do
		for k=1,6 do
			if i==j or i==k or k==j then
				tinsert(tbAllResult,1,{i,j,k,self.DOUBLE_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.DOUBLE_RATE
			else
				tinsert(tbAllResult,1,{i,j,k,self.NORMAL_RATE})
				self.nTOTAL_RATE = self.nTOTAL_RATE + self.NORMAL_RATE
			end
		end
	end
end
end
function FishGame:Stop()-- dong bau cua
self.nStarted = 0
--TimerList:DelTimer(self.TimerID);
end
-- FishGame:Init()
function FishGame:GetNextResult()
print("Da chay qua")
local nRand = random(1,self.nTOTAL_RATE)
local nResult = 0
local nValue = 0
for i = 1,getn(tbAllResult) do
	nValue = nValue + tbAllResult[i][4]
	if nRand <= nValue then
		nResult = i
		break
	end
end
if nResult == 0 then
return nil
end
local tbResult = {ChangeToString(tbAllResult[nResult][1]),ChangeToString(tbAllResult[nResult][2]),ChangeToString(tbAllResult[nResult][3])}
for i=1,3 do
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] or 0--
self.nResult[tbResult[i]] = self.nResult[tbResult[i]] + 1
end
--- GHI LAI LOG KET QUA BAU CUA ------------------
	WriteLog("Ket qua bau cua lan nay"..tbResult[1].."va"..tbResult[2].."va"..tbResult[3])
--- THAY DOI GIA TRI HIEN THI RA KENH CONG BO -----
	local SprThongBao = {SprMsg(tbAllResult[nResult][1]),SprMsg(tbAllResult[nResult][2]),SprMsg(tbAllResult[nResult][3])}
	for i=1,3 do
		self.nResult[SprThongBao[i]] = self.nResult[tbResult[i]] or 0--
		self.nResult[SprThongBao[i]] = self.nResult[tbResult[i]] + 1
	end
		local szMsg = format("<bclr=white>K�t Qu� L�n M� N�p N�y L�:<bclr><enter> <enter><color=violet> Ba M�t<color> %s   --  %s  --  %s <enter> <enter><color=green>M�i r�t tay ra �� ta L�c H�t !<color>",SprThongBao[1],SprThongBao[2],SprThongBao[3])
		--Msg2SubWorld(szMsg)
		Msg2Map(78, szMsg)
	return 1
end
-----  GAN GIA TRI MOI CHO NVALUE DE HIEN THI RA BEN NGOAI HE THONG -----
function SprMsg(nValue)
	if nValue == 1 then
		return "<pic=146>" -- bau
	elseif nValue == 2 then
		return "<pic=147>" -- cua
	elseif nValue == 3 then
		return "<pic=148>" -- tom
	elseif nValue == 4 then 
		return "<pic=149>"  -- ca
	elseif nValue == 5 then
		return "<pic=150>"  -- ga
	elseif nValue == 6 then
		return "<pic=151>"  -- nai
	end
end
-----  GAN GIA TRICHO NVALUE DE GHI LAI LOG THONG TIN GAME VA THUC HIEN SCRIPT TIEP THEO -----
function ChangeToString(nValue)
	if nValue == 1 then
		return "B�u"
	elseif nValue == 2 then
		return "Cua"
	elseif nValue == 3 then
		return "T�m"
	elseif nValue == 4 then
		return "C�"
	elseif nValue == 5 then
		return "G�"
	elseif nValue == 6 then
		return "Nai"
	end
end

function FishGame:CalAwardForPlayer()
print("Da chay qua 2")
local nLoseCash = 0
local nLoseCoint = 0
for szName,tbInfo in self.tbPlayerList do
	for szChoice,nPoint in self.nResult do
	local tbKind = tbInfo.tbPut[szChoice]
	if tbKind then--
		if tbKind.nCash then--
			tbInfo.nAwardCash =  tbInfo.nAwardCash + (nPoint + 1)*tbKind.nCash
			nLoseCash = nLoseCash + (nPoint + 1)*tbKind.nCash
		end
		if tbKind.nCoin then--
			tbInfo.nAwardCoin =  tbInfo.nAwardCoin + (nPoint + 1)*tbKind.nCoin
			nLoseCoint = nLoseCoint + (nPoint + 1)*tbKind.nCoin
		end
	end
	end
tbInfo.tbPut = {-- reset sau khi nhan giai

}-- xoa toan bo du lieu danh truoc day
-- end
end
WriteLog("Bau cua lan nay tong tien van dat "..self.nTotalCash.." thua "..nLoseCash)
WriteLog("Bau cua lan nay tong tien don dat "..self.nTotalCoin.." thua "..nLoseCoint)
-------------------------------------------------------------Luu Dat Cuoc Chung Bau Cua --------------------------------------------------------
		local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
		write(LogOpenItemFileName, date("%H:%M:%S").."\t ----------------------So Dat Cuoc : "..self.nTotalCoin.."\t So Chi Tra "..nLoseCoint.."\tLoi Tuc\t"..self.nTotalCoin-nLoseCoint.."\n")
		closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
self.nTotalCash = 0--
self.nTotalCoin = 0
self.nResult = {}
end

function FishGame:AddAwardForPlayer()
print("Da chay qua 3")
for szName,tbInfo in self.tbPlayerList do
	
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCash and tbInfo.nAwardCash > 0 then--  tien van
		callPlayerFunction(tbInfo.nIndex,Earn,tbInfo.nAwardCash*10000)
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� B�u Cua ��i nh�n",tbInfo.nAwardCash))
		if tbInfo.nAwardCash > 100  then--<color=yellow> %d v�n <color>
				Msg2SubWorld(format("Nh�n v�t <color=green>%s<color> �n ���c <color=yellow>%d ti�n v�n <color>t� ho�t ��ng B�u cua. Th�t may m�n",szName,tbInfo.nAwardCash))
			-- Msg2SubWorld(format(tbWinCashMsg[random(getn(tbWinCashMsg))],"<color=green>"..szName.."<color>","<color=yellow>"..tbInfo.nAwardCash.."<color>"))
			WriteLog(format("Nhan vat %s th�ng so tien %d v�n",szName ,tbInfo.nAwardCash))
		end
		tbInfo.nAwardCash = 0
	end
	if callPlayerFunction(tbInfo.nIndex,GetName) == szName and tbInfo.nAwardCoin and tbInfo.nAwardCoin > 0 then-- ti�n ��ng
		-- print ("Da trao thuong tien dong cho"..szName)
		local nCoin = tbInfo.nAwardCoin
		if nCoin <= 100 then
			callPlayerFunction(tbInfo.nIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 100
			local nRound = nCoin/100
			for i=1,nRound do
				callPlayerFunction(tbInfo.nIndex,AddStackItem,100,4,417,1,1,0,0)
			end
			if mod(nCoin,100) > 0 then
				callPlayerFunction(tbInfo.nIndex,AddStackItem,mod(nCoin,100),4,417,1,1,0,0)
			end
		end
		callPlayerFunction(tbInfo.nIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� B�u Cua ��i nh�n",nCoin))
		Msg2SubWorld(format("Con b�c <color=green>%s<color> �� nh�n ���c <enter><color=yellow>%d Ti�n ��ng<color> t� <bclr=white>S�ng B�u Cua<bclr>",szName,nCoin))
		WriteLog(format("Nhan vat %s th�ng so tien %d ��ng",szName ,nCoin))
-------------------------------------------------------------Luu So Tien Dong Sau Moi Luot Danh--------------------------------------------------------
	local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
	write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Chien Thang Bau Cua "..nCoin.." Tien Dong\n")
	closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
		tbInfo.nAwardCoin = 0
	end
end
end
function main()-- doi thoai voi npc
dofile("script/global/pgaming/cobac/baucua/baucua.lua")
local nNowTime = tonumber(date( "%H%M "))
if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then  
Say("Ng��i anh em c�n g� � ta?",3,"B�u cua/OnChoseKind","Xem c�c c�a ��t l�n n�y/showFishGate","Th�i ta h�t ti�n r�i/no")
else
Say(""..ThoiGianBatDauBauCuaText.."",0)
return
end
end
function showFishGate()
local szName = GetName()
if not FishGame.tbPlayerList[szName]  then--
Say("Ng��i ch�a ��t c�a n�o c�",0)
return
end
local pPlayer =FishGame.tbPlayerList[szName]
local szMsg = ""
for szChoice,tbKind in pPlayer.tbPut do
szMsg = szMsg.."C�a: <color=green>"..szChoice.."<color> ".."Ti�n ��t:"
if tbKind.nCash then
szMsg = szMsg.."<color=red>"..tbKind.nCash.."<color> v�n "
end
if tbKind.nCoin then
szMsg = szMsg.." <color=green>"..tbKind.nCoin.."<color> ti�n ��ng"
end
szMsg=szMsg.."\n"
end
Describe(szMsg,0)
end

function OnChoseKind()
Say("Ng��i mu�n ch�i kh� m�u?",3,"Ti�n v�n/#joinFishGame(1)","Ti�n ��ng/#joinFishGame(2)","Th�i ta thua nhi�u qu� r�i/no")
	--Say("Ng��i mu�n ch�i kh� m�u?",2,"Ti�n ��ng/#joinFishGame(2)","Th�i ta thua nhi�u qu� r�i/no")
-- Say("Ng��i mu�n ch�i b�ng g�?",2,"Ti�n v�n/#joinFishGame(1)","Th�i ta thua nhi�u qu� r�i/no")
end

function joinFishGame(nKind)
if FishGame.nStatus ~= 1 then
Talk(1,"","<color=green> ===== Ta �ang l�c h� ��ng v�i! ===== <enter><color=violet>��i 1 Ph�t n�a ta l�c h� xong r�i ��t !<color>")
return
end
FishGame:OnPlayerJoin(PlayerIndex,GetName())
if nKind == 1 then
local tbSay = {
"B�u/#OnChoose(1,1)",
"Cua/#OnChoose(2,1)",
"T�m/#OnChoose(3,1)",
"C�/#OnChoose(4,1)",
"G�/#OnChoose(5,1)",
"Nai/#OnChoose(6,1)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("Ng��i ch�n con n�o?<enter><color=yellow>Ch� c� th� ��t c��c 1 l�n duy nh�t, h�y suy ngh� k�.<color>",getn(tbSay),tbSay)
else
local tbSay = {
"B�u/#OnChoose(1,2)",
"Cua/#OnChoose(2,2)",
"T�m/#OnChoose(3,2)",
"C�/#OnChoose(4,2)",
"G�/#OnChoose(5,2)",
"Nai/#OnChoose(6,2)",
"Th�i ta kh�ng ch�i n�a/no"
}
Say("Ng��i ch�n con n�o?<enter><color=yellow>Ch� c� th� ��t c��c 1 l�n duy nh�t, h�y suy ngh� k�.<color>",getn(tbSay),tbSay)

end
end
function OnChoose(nChoice,nKind)
-- Say("")
if nKind == 1 then
local nMaxCount = 100
g_AskClientNumberEx(1,nMaxCount, format("Ti�n (1-%d) v�n", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
else
local nMaxCount = 100
g_AskClientNumberEx(1,nMaxCount, format("Ti�n ��ng (1-%d)", nMaxCount), {FishGame.GetNumberFromClient,{FishGame,nChoice,nKind} })
end
end

function FishGame:GetNumberFromClient(nChoice,nKind,nPutCash)
self:OnPlayerPut(PlayerIndex,GetName(),nPutCash,nChoice,nKind)
end

function FishGame:OnPlayerPut(nPlayerIndex,szName,nPutCash,nChoice,nKind)
if nPutCash > 100 then
Say("��ng c� �n gian...:D",0)
return
end
if not self.tbPlayerList[szName] or self.tbPlayerList[szName].nIndex ~= nPlayerIndex then
callPlayerFunction(nPlayerIndex,Say,"C� l�i xay ra vui l�ng li�n h� GM �� bi�t th�m chi ti�t",0)
return
end
local pPlayer = self.tbPlayerList[szName]
local szChoice =""
	if nChoice == 1 then
		szChoice = "B�u"
		szChoiceSpr = "<pic=140>" -- bau
	elseif nChoice == 2 then
		szChoice = "Cua"
		szChoiceSpr = "<pic=141>" -- cua
	elseif nChoice == 3 then
		szChoice = "T�m"
		szChoiceSpr = "<pic=142>" -- tom
	elseif nChoice == 4 then
		szChoice = "C�"
		szChoiceSpr = "<pic=143>" -- ca
	elseif nChoice == 5 then
		szChoice = "G�"
		szChoiceSpr = "<pic=144>" -- ga
	elseif nChoice == 6 then
		szChoice = "Nai"
		szChoiceSpr = "<pic=145>" -- nai
	end
-- if nKind == 1 then-- tien van ne

-- else -- tien dong

-- end
if nKind == 1 then-- tien van
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCash and pPlayer.tbPut[szChoice].nCash + nPutCash > 100 then
Say("Ng��i ��t qu� 100 v�n m�t c�a r�i. Th�ng ta qu�t ti�n lu�n ��:T...",0)
return
end

if pPlayer.tbPut["Cua"] and pPlayer.tbPut["Cua"].nCash and pPlayer.tbPut["Cua"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["B�u"] and pPlayer.tbPut["B�u"].nCash and pPlayer.tbPut["B�u"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["T�m"] and pPlayer.tbPut["T�m"].nCash and pPlayer.tbPut["T�m"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["G�"] and pPlayer.tbPut["G�"].nCash and pPlayer.tbPut["G�"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["C�"] and pPlayer.tbPut["C�"].nCash and pPlayer.tbPut["C�"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["Nai"] and pPlayer.tbPut["Nai"].nCash and pPlayer.tbPut["Nai"].nCash + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

local nOwnCash = callPlayerFunction(nPlayerIndex,GetCash)
if nOwnCash < nPutCash * 10000 then
callPlayerFunction(nPlayerIndex,Say,"Kh�ng �� ti�n m� c�ng d�m ��t c�a. �i ch� kh�c ch�i gi�p k� ki�t x�c n�y",0)
return
end
callPlayerFunction(nPlayerIndex,Pay,nPutCash*10000)
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCash = pPlayer.tbPut[szChoice].nCash + nPutCash	
WriteLog(format("Nhan vat %s dat cua %s so tien %d v�n",szName,szChoice,nPutCash))
if nPutCash > 0 then--
--MsgTienVan = (format("Con b�c <color=green> %s <color> quy�t ch�i banh x�c v�i B�u Cua ��i nh�n v�i  <color=yellow> %d v�n <color> . ��ng ��nh h� Ba l�ng c� m�y ��i gi�y c�a m�y ng��i thua b�u cua �� l�i r�i ��y.!!!",szName,nPutCash))
MsgTienVan = (format("Con b�c <color=green>%s<color> �� ��t c��c:<enter> <enter>C�a %s v�i <bclr=white>%d V�n<bclr>.",szName,szChoiceSpr,nPutCash))
Msg2Map(78, MsgTienVan) 
end
self.nTotalCash = self.nTotalCash + nPutCash
else-- tien dong
if pPlayer.tbPut[szChoice] and pPlayer.tbPut[szChoice].nCoin and pPlayer.tbPut[szChoice].nCoin + nPutCash > 100 then
Say("Ng��i ��t qu� 100 ti�n ��ng m�t c�a r�i. ��ng kh� m�u nh� th� ch�..",0)
return
end

if pPlayer.tbPut["Cua"] and pPlayer.tbPut["Cua"].nCoin and pPlayer.tbPut["Cua"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["B�u"] and pPlayer.tbPut["B�u"].nCoin and pPlayer.tbPut["B�u"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["T�m"] and pPlayer.tbPut["T�m"].nCoin and pPlayer.tbPut["T�m"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["G�"] and pPlayer.tbPut["G�"].nCoin and pPlayer.tbPut["G�"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["C�"] and pPlayer.tbPut["C�"].nCoin and pPlayer.tbPut["C�"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

if pPlayer.tbPut["Nai"] and pPlayer.tbPut["Nai"].nCoin and pPlayer.tbPut["Nai"].nCoin + nPutCash > 0 then
Say("Ch� ���c ��t c��c 1 l�n",0)
return
end

local nOwnCoin = callPlayerFunction(nPlayerIndex,CalcEquiproomItemCount,4, 417, 1, -1)
if nOwnCoin < nPutCash then
callPlayerFunction(nPlayerIndex,Say,"Kh�ng �� ti�n ��ng m� c�ng d�m ��t c�a. T� �i",0)
return
end
if callPlayerFunction(nPlayerIndex,ConsumeEquiproomItem,nPutCash, 4, 417, 1, -1) ~= 1 then--
callPlayerFunction(nPlayerIndex,Say,"Xin l�i c� l�i x�y nghi�m tr�ng vui l�ng li�n h� GM")
return
end
pPlayer.tbPut[szChoice] = pPlayer.tbPut[szChoice] or {}
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin or 0-- chua co thi khoi tao
pPlayer.tbPut[szChoice].nCoin = pPlayer.tbPut[szChoice].nCoin + nPutCash
WriteLog(format("Nhan vat %s dat cua %s so tien %d ti�n ��ng",szName,szChoice,nPutCash))
-------------------------------------------------------------Luu Dat Cuoc Tung Cua--------------------------------------------------------
	local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
	write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Dat Cuoc "..szChoice.." Voi "..nPutCash.." Tien Dong\n")
	closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
if nPutCash > 0 then
MsgTienDong = (format("Con b�c <color=green>%s<color> �� ��t c��c:<enter> <enter>C�a %s v�i <bclr=white>%d Ti�n ��ng<bclr>.",szName,szChoiceSpr,nPutCash))
Msg2Map(78, MsgTienDong) 
end
self.nTotalCoin = self.nTotalCoin + nPutCash

end
end





function FishGame:OnPlayerJoin(nPlayerIndex,szName)
if not self.tbPlayerList[szName] then
self:AddNewPlayer(nPlayerIndex,szName)
return
end
if self.tbPlayerList[szName].nAwardCash > 0 then-- tra lai tien thang truoc do
	callPlayerFunction(nPlayerIndex,Earn,self.tbPlayerList[szName].nAwardCash*10000 )
	callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c s� ti�n %d v�n t� b�u cua th�t may m�n",self.tbPlayerList[szName].nAwardCash))
	WriteLog(format("Nhan vat %s th�ng so tien %d v�n",szName ,self.tbPlayerList[szName].nAwardCash))
	self.tbPlayerList[szName].nAwardCash = 0
end
if self.tbPlayerList[szName].nAwardCoin > 0 then-- tra lai tien thang truoc do
		local nCoin = self.tbPlayerList[szName].nAwardCoin
		if nCoin <= 100 then
			callPlayerFunction(nPlayerIndex,AddStackItem,nCoin,4,417,1,1,0,0)
		else-- lon hon 100
			local nRound = nCoin/100
			for i=1,nRound do
				callPlayerFunction(nPlayerIndex,AddStackItem,100,4,417,1,1,0,0)
			end
			if mod(nCoin,100) > 0 then
				callPlayerFunction(nPlayerIndex,AddStackItem,mod(nCoin,100),4,417,1,1,0,0)
			end
		end
		self.tbPlayerList[szName].nAwardCoin = 0
		callPlayerFunction(nPlayerIndex,Msg2Player,format("Ng��i nh�n ���c %d ti�n ��ng t� b�u cua th�t may m�n",nCoin))
		-- Msg2SubWorld(format("Con b�c <color=green> %s<color> �n ���c t� Banh X�c phu nh�n <color=yellow> %d ti�n ��ng <color> t� b�u cua th�t may m�n.",szName,nCoin))
-------------------------------------------------------------Luu So Tien Dong Nguoi Thang Cuoc--------------------------------------------------------
		local LogOpenItemFileName = openfile("script/global/pgaming/cobac/baucua/logs/baucua_"..date("%d_%m_%Y")..".log", "a");
		write(LogOpenItemFileName, date("%H:%M:%S").."\t Name: "..szName.."\t Chien Thang Bau Cua "..nCoin.."\n")
		closefile(LogOpenItemFileName)
------------------------------------------------------------------------------------------------------------------------------------------------
		WriteLog(format("Nhan vat %s th�ng so tien %d ��ng",szName ,nCoin))
		-- tbInfo.nAwardCoin = 0
end
self.tbPlayerList[szName].nIndex = nPlayerIndex-- tra lai index cho dung
end


function FishGame:AddNewPlayer(nPlayerIndex,szName)
self.tbPlayerList[szName] = {
nIndex = nPlayerIndex,
tbPut ={
-- ["B�u"] = {}
-- ["Cua"] = {}
-- ["T�m"] = {}
-- ["C�"] = {}
-- ["G�"] = {}
-- ["Nai"] = {}
},
nAwardCash = 0,
nAwardCoin = 0,
}
end
function FishGame:OnTime()-- moi 1 phut se chay 1 lan 
print("BAU CUA DA CHAY")
local nMin = tonumber(GetLocalDate("%M")); -- lay so phut
local nX = mod(nMin,3)-- phut 1, 2 cho danh phut thu 3 ko cho danh
if nX == 0 then-- dang tinh ket qua khong cho danh tranh bug
FishGame.nStatus = 0
if FishGame:GetNextResult() ~= 1 then-- loi tinh toan
print("Bi dien roi")
return
end
FishGame:CalAwardForPlayer()
FishGame:AddAwardForPlayer()
else
FishGame.nStatus = 1
end
-- Say("T�nh n�ng ch� ���c khai m� c�c khung gi� 6h-7h, 12h-13h,17h-19h, 22h-23h59h�ng ng�y. Vui l�ng quay l�i sau",0)
local nNowTime = tonumber(date( "%H%M "))
-- if (nNowTime >=600 and nNowTime < 700 ) or (nNowTime >=1200 and nNowTime < 1300 ) or (nNowTime >=1700 and nNowTime < 1900 ) or (nNowTime >=2200) then
if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then  
if nX == 1 then
Msg2Map(78, "<bclr=white> B�t ��u ��t c��c b�u cua, h�y l�a ch�n c�a �� xu�ng x�c n�o, th�i gian ��t c��c l� <color=yellow>1<color> ph�t.<bclr>")
end
return 1
end
-- if (nNowTime >= 0 and nNowTime < 1100) or (nNowTime >= 1300 and nNowTime < 2200)  then
 self:Stop()
 return
 -- end
-- return
end
-------------------------------------- TU DONG NOI CHUYEN --------------------------------
function OnTimer(nNpcIndex,nTimeOut)
local nNowTime = tonumber(date( "%H%M "))
    if (nNowTime > ThoiGianBatDauBauCua and nNowTime < ThoiGianKetThucBauCua ) then   
		DynamicExecute("\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua", "FishGame:Init")
    local tab_Chat = {
			"     <pic=115><pic=115><pic=115><bclr=blue><enter>Li�u th� �n Shit <pic=00>!!!<color><bclr>",
            "     <pic=36><bclr=blue><enter>Ch�c c�c nh�n s� g�p nhi�u may m�n v� ph�t t�i...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua") 
else
    local tab_Chat2 = {
      "     <pic=35><color=green><enter>"..ThoiGianBatDauBauCuaText.."<color>",
        }
		local ran = random(1,getn(tab_Chat2))
		NpcChat(nNpcIndex,tab_Chat2[ran])
		local ranTimer = random(10,20)
		SetNpcTimer(nNpcIndex,ranTimer*18)
		DynamicExecute("\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua", "FishGame:Stop")
    end
end

function Add_Npc_BauCua()
    local tb_npc_hotro = {
        {1571,3229},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (447)
            local npcName = "B�u Cua ��i Nh�n"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\cobac\\baucua\\baucua.lua")     
    end
end
