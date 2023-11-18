Include("\\script\\missions\\qianchonglou\\rule.lua")
Include("\\script\\missions\\qianchonglou\\challenger.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
IncludeLib("SETTING")
function signup()
	if tbPlayerHandle:CheckDate() ~= 1 then
		local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint)
		if nAwardPoint > 0 then
			return Talk(1, "", "Ng��i ph�i nh�n ph�n th��ng tr��c �� m�i ti�p t�c tham gia ���c.")
		end
	end
	if ST_IsTransLife() ~= 1  and GetLevel() < 120 then
		return Talk(1, "", format("%d c�p tr� xu�ng kh�ng th� tham gia ho�t ��ng n�y", 120))
	end
	local pDungeonType = DungeonType["endless tower"]
	local pChallenger = tbChallenger:new()
	pChallenger:Update()
	if pChallenger:GetPlayTime() <= 0 then
		return Talk(1, "", "Th�i gian h�m nay c�a c�c h� �� s� d�ng h�t")
	end
	if pDungeonType then
		local pDungeon = pDungeonType:new_dungeon(pDungeonType.TEMPLATE_MAP_ID, {pChallenger})
		if pDungeon then
			pChallenger:Update()
			local nMapId, nX, nY = pDungeon:GetTowerPos()
			NewWorld(nMapId, nX, nY)
		else
			print("fail")
		end
	end
end

function give_award()
	local nAwardPoint = tbPlayerHandle:GetAwardPoint(nPoint)
	if nAwardPoint <= 0 then
		return Talk(1, "","�i�m ph�n th��ng c�a c�c h� kh�ng �� �� s� d�ng ph�n th��ng n�y")
	end
	Msg2Player(format("Ng��i �� nh�n %d ph�n th��ng c�a �i�m ph�n th��ng.", nAwardPoint))
	tbPlayerHandle:SetAwardPoint(0)
end
--��ng t�nh n�ng thi�n tr�ng l�u - Modified By DinhHQ - 20120402
function dialog()
--do return end
	local szTitle = "Sau khi m� ph� b�n, m�i ng��i ch�i s� nh�n ���c s� �i�m c� s� nh�t ��nh, m�i l�n ph�t ra c�ng k�ch s� ti�u hao �i�m c� s�. C�c b�o n� kh�ng gi�ng nhau s� ti�u hao �i�m c� s� kh�ng gi�ng nhau, c� th� th�ng qua vi�c nh�n chu�t v�o b�n ph�i b�n tr�i tr�n m�n h�nh �� ��i ��ng c�p b�o n�. ��ng c�p b�o n� c�ng cao, th� t� l� ��nh tr�ng qu�i v�t c�ng l�n. Sau khi ��nh tr�ng qu�i v�t s� nh�n ���c ph�n th��ng, khi �i�m c� s� b� ti�u hao h�t, th� c�ng c� th� d�ng �i�m ph�n th��ng �� ��i b�o n�. C� m�i l�n ��nh tr�ng s� l��ng qu�i v�t nh�t ��nh, th� c� th� nh�n ���c l��ng b�o n� t��ng ��i l�n, c� th� ��nh tr�ng t�t c� ��ch nh�n trong ph�m vi xung quanh."
	local tbOpt = 
	{
		{"Ta mu�n tham gia", signup},
		{"Nh�n l�nh ph�n th��ng", give_award},
		{"H�y b� "}
	}
	CreateNewSayEx(szTitle, tbOpt)
end


Include("\\script\\misc\\eventsys\\type\\npc.lua")

--pEventType:Reg("Ch��ng ��ng Cung N�","Thi�n Tr�ng L�u", dialog, {})