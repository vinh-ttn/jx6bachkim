CurWharf = 1;
Include("\\script\\global\\station.lua")
Include("\\script\\missions\\autohang\\function.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
---------------------------------------------------------------
function main(sel)
	if (GetLevel() >= 50) then
		Say("Ho�ng h� ch�n kh�c u�n quanh, em b� b�n �y c�n anh b�n n�y....", 3, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel", "�i ��o Hoa ��o (7) /go_thd");
	else
		Say("Ho�ng h� ch�n kh�c u�n quanh, em b� b�n �y c�n anh b�n n�y....", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
	end

	if (GetLevel() >= 50) and CauCa == 1 then
		Say("Ho�ng h� ch�n kh�c u�n quanh, em b� b�n �y c�n anh b�n n�y....", 4, "��a ta ��n ��a �i�m c�u c�/dendiadiemcauca","Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel", "�i ��o Hoa ��o (7) /go_thd");
	end

end;
---------------------------------------------------------------
function dendiadiemcauca()
local nRanDom = random(1,2)
if nRanDom == 1 then
NewWorld(1009, 1241, 3081)
SetFightState(0)
else
NewWorld(1009, 1566, 2511)
SetFightState(0)
end
end
---------------------------------------------------------------
function  OnCancel()

   Say("Kh�ng ti�n kh�ng th� l�n thuy�n! ",0)

end;

---------------------------------------------------------------
function go_thd()
	nRet = aexp_gotothd(241);
	-- if (nRet == 1) then
	--	Msg2Player("�������ȥ�һ������˿���ࡣ�ðɣ�������ඣ�")
	if (nRet == -1) then
		Talk(1,"","Ph� �i thuy�n ��n ��o Hoa ��o "..AEXP_TICKET.."L��ng, ng��i c� �� kh�ng? ")
	end
end
---------------------------------------------------------------
