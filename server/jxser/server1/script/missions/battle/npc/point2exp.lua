Include("\\script\\trip\\define.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

--local nExchangeTaskId = 2906
--local nExchangeTaskId_Date = 2907
local tbXunJinYuPai = {szName = "Huy�n Kim Ng�c B�i", tbProp = {6, 1, 3035, 1, 0, 0},}
local POINT2EXP_RATE = 3000

tbTripBattlePoint2Exp = {}



function tbTripBattlePoint2Exp:DialogMain()
	local szTitle = format("T� l� quy ��i �i�m c�ng hi�n li�n server v� kinh nghi�m l� 1:%d", %POINT2EXP_RATE)
	local tbOpt =
	{
		{"Ki�m tra �i�m c�ng hi�n li�n server", self.QueryPoint,{self}},
		{"��i kinh nghi�m", self.ToExp,{self}},
		{"K�t th�c ��i tho�i"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end


function tbTripBattlePoint2Exp:QueryPoint()
	local nTaskValue = GetTask(%TSK_TRIP_BATTLE_POINT)
	local szName = GetName()
	local szTitle = format("<npc><color=yellow>%s<color>�i�m c�ng hi�n li�n server c�a ng��i l� <color=yellow>%d<color>", szName, nTaskValue)
	local tbOpt =
	{
		{"Tr� v�", self.DialogMain, {self}},
		{"Ta bi�t r�i!"},
	}
	CreateNewSayEx(szTitle, tbOpt)
end

function tbTripBattlePoint2Exp:ToExp()
	
	local nMaxValue = GetTask(%TSK_TRIP_BATTLE_POINT)
	if nMaxValue <= 0 then
		return Talk(1, "", "Xin l��ng th� �i�m c�ng hi�n li�n server c�a ng��i �� ���c ��i h�t r�i")
	end
	
	g_AskClientNumberEx(0, nMaxValue, format("C�n d� l�i %d c� th� ��i", nMaxValue), {self.GetExp, {self}})
end

function tbTripBattlePoint2Exp:GetExp(nValue)
	local nCurValue = GetTask(%TSK_TRIP_BATTLE_POINT)
	if nCurValue < nValue then
		nValue = nCurValue
	end
	if nValue <= 0 then
		return
	end
	SetTask(%TSK_TRIP_BATTLE_POINT, nCurValue - nValue)
	
	local nAddExp = nValue * %POINT2EXP_RATE
	
	tbAwardTemplet:Give( {nExp_tl = nAddExp}, 1, {"TRIP", "EXCHANGE EXP"})
end