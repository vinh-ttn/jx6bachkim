--���ϱ��� �ɶ��� ·��13����֥�Ի�
Include("\\script\\task\\newtask\\branch\\zhengpai\\branch_zhengpaitasknpc.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")
function main(sel)
	Uworld1051 = nt_getTask(1051)
	if ( Uworld1051 ~= 0 ) then
		branch_helanzhi()
	else
		Say("Ch�ng ta � Th�nh �� l�m sai ��u, r�t c�c kh�! Ta ph�i m�t v�i m�n ngon cho huynh �y �� b�i b� s�c kho�.",0)
	end
end;