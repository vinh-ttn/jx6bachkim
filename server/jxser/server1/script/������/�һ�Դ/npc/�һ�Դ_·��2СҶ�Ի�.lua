-- Ti�u Di�p � ��o Hoa Nguy�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

function main(sel)
	i = random(0,2)
	if (i == 0) then
		Say("<color=green>Ti�u Di�p<color>: G� con g� con, ch�p ch�p ch�p, m� �n �i, th�n tr�n tr�a, l�ng v�ng �ng, th�ch giun th�ch g�o."..Note("tieudiep_daohoanguyen"),0)
	end;
	if (i == 1) then
		Say("<color=green>Ti�u Di�p<color>: V�t con v�t con, �n �i �n �i, th�ch �n c�, th�ch �n t�m, v�a �i v�a k�u c�p c�p c�p."..Note("tieudiep_daohoanguyen"),0)
	end;
	if (i == 2) then
		Say("<color=green>Ti�u Di�p<color>: Th� tr�ng nh�, th�n tr�ng ng�n, hai tai d�ng ��ng, th�ch c� r�t, th�ch �n rau, nh�y qua nh�y l�i th�t ��ng y�u."..Note("tieudiep_daohoanguyen"),0)
	end;
end;

