Include("\\script\\global\\pgaming\\nangcapngua\\nangcapngua.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\lib\\awardtemplet.lua");

function main()
Say("Thi�n h� ng��i c��i ng�a th� nhi�u, m� ng��i bi�t <enter>c�ch ch�m s�c ng�a h�i c� m�y ai?, v� thi�u hi�p c�  mu�n mua ng�a c�a ta kh�ng?", 3, 
	"V� vi�c Thu�n h�a, n�ng c�p chi�n m�/pgHorseUpgradeMain", 
	"Mua D�y th�ng 20v-1c /dongymua", 
	"Kh�ng c�n ��u/no");
end

function no()
end;

----------------------------------------------------

function dongymua()
	AskClientForNumber("GetDayThung",1,250,"Nh�p s� l��ng c�n mua")
end
function GetDayThung(nCount)
	local nSum = nCount * 200000
	if (GetCash() < nSum) then
		Talk(1,"","��i hi�p kh�ng �� ng�n l��ng, xin ki�m tra l�i !")
		return
	end
	Pay(nSum)
	local nItemIndex = AddStackItem(nCount, 6, 1, 4892, 0, 0, 0)
	SyncItem(nItemIndex)
	Msg2Player(format("��i hi�p nh�n ���c %d D�y Th�ng", nCount))
	
end