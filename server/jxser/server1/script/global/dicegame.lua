Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")

function main()
	-- dofile("script/global/dicegame.lua");		
	local szTitle = "<color=red>Ch� s�ng b�c<color>.<enter><color=yellow>Ng��i c� mu�n ��i ��i kh�ng ?<color><enter>H�y ��nh c��c v�i ta th� m�t v�n xem v�n may c�a ng��i th� n�o... ! <enter>H�n xui do tr�i, li�u m�ng do ng��i"
	local tbOpt = {
		{"V�ng ta mu�n th� 1 l�n", game},	
		{"Ta mu�n h�i th�m m�t ch�t", help},
		{"Tho�t"},
	}
	CreateNewSayEx(szTitle, tbOpt)		
end

function game()
	AskClientForNumber("tiencuoc",1,GetCash(),"Nh�p s� ti�n c��c:")
end;

function tiencuoc(nMoney)
	if (GetCash() < nMoney) then
		Talk(1,"","B�n kh�ng �� ti�n")
	return end
	OpenDice(nMoney)
end

function help()
	Talk(5, "", "Ng�y x�a ta l� �� t� <color=red>C�i Bang<color> ng��i c� tin ko ?", "Ha ha ha ! V� ham m� c� b�c n�n ta b� tr�c xu�t kh�i s� m�n........ !",
	"Nh�ng v�n xui ch� theo ta m�t th�i gian ng�n, �ng tr�i qu� nhi�n c� m�t..............",
	"B�y gi� ta �� l� ph� h� c�a v�ng <color=green>D��ng Ch�u<color> n�y, ng��i c� mu�n th� c��c �� l�m gi�u kh�ng ?",
	"M�t ng�y n�o �� ta s� ph�c h�ng l�i <color=red>C�i Bang<color> ! h�y ch� �� ! ha ha ha !...");
end;

