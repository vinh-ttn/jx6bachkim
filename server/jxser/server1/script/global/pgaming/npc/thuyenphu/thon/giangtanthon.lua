--���ϱ��� ����� ��ͷ����Ի�
--suyu
--200306015
-- Update: Dan_Deng(2003-08-21) ���ͳ���ȼ�Ҫ��Ϊ5��

CurWharf = 2;
Include("\\script\\global\\station.lua")
---------------------------------------------------------------
function main(sel)

if (GetLevel() >= 5) then		--�ȼ��ﵽʮ��
	Say("Mu�n ng�i thuy�n �i ��u v�y?", 2, "Ng�i thuy�n/WharfFun", "Kh�ng ng�i/OnCancel");
else		
	Talk(1,"","B�n ngo�i lo�n l�c, xem ng��i tr�i g� kh�ng ch�t! Ra ngo�i th�n ta e kh�ng gi� ���c m�ng ��u!")
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
