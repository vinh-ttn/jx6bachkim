Include("\\script\\battles\\battleinfo.lua")
--�����
function main(sel)
Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","T�m hi�u quy t�c T�ng Kim ��i chi�n/help_sjbattle","Kh�ng c�n ��u! C�m �n!/cancel")
	-- Talk(1, "", "Hi�n t�i ta �ang ���c b�o tr�, c�c h� h�y quay l�i sau!")
end;

function salemedicine(sel)
Sale(99, 1)
end