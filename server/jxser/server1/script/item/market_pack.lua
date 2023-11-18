-- ���������Ʒ
-- Last edited by Giangleloi WwW.ClbGamesVN.Com

Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("V�t ph�m �� h�t h�n s� d�ng!")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	if (G ~= 6) then
		return 1;
	end
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"C�n �t nh�t 6 � tr�ng m�i c� th� nh�n v�t ph�m",  "�� ta s�p x�p l�i./Cancel",});
		return 1;
	end
	-- ������
	if P == 2340 then -- Nh�c V��ng Ki�m l� bao
		local tbAwardItem = {tbProp={4,195,1,1,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end	
	-- Ѫս����
	if P == 2401 then -- Huy�t Chi�n L�nh K� L� H�p
		local tbAwardItem = {tbProp={6,1,2212,1,0,0},nExpiredTime=nLeftTime,}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end	
	-- ɱ��� �������
	if P == 2335 or P == 2336 or P == 2337 or P == 2338 or P == 2339 then -- Thanh Tuy�t Y l� h�p, B�ng Tinh Qu�n l� h�p, Kinh Thi�n Gi�p l� h�p, Kh�p ��a Qu�n l� h�p, S�t Th� Gi�n l� h�p
		SelectSeries(P)
		return 1;
	end
	-- ����
	if P == 2328 then -- M� b�i - X�ch th�
		local tbAwardItem = {tbProp={0,10,5,2,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2329 then -- M� b�i - ��ch L�
		local tbAwardItem = {tbProp={0,10,5,4,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2330 then -- M� b�i - Tuy�t �nh
		local tbAwardItem = {tbProp={0,10,5,8,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2331 then -- M� b�i - � V�n ��p Tuy�t
		local tbAwardItem = {tbProp={0,10,5,6,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2332 then -- M� b�i - Chi�u D� Ng�c S� T�
		local tbAwardItem = {tbProp={0,10,5,10,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2333 then -- M� b�i - B�n Ti�u
		local tbAwardItem = {tbProp={0,10,6,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 2334 then -- M� b�i - Phi�n V�
		local tbAwardItem = {tbProp={0,10,7,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	-- ����
	if P == 2396 then -- M� b�i - Phi V�n
		local tbAwardItem = {tbProp={0,10,8,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 3416 then -- M� B�i - Xich long cau
		local tbAwardItem = {tbProp={0,10,15,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
	if P == 3483 or P == 4064 then -- M� B�i - Si�u Quang
		local tbAwardItem = {tbProp={0,10,13,10,5,0}, nExpiredTime = 42800}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
end
-- ѡ������
function SelectSeries(nP)
	local tbTaskSay = {"<dec>Vui l�ng ch�n thu�c t�nh:",
						format("Kim/#GetSeries(%d, %d)", nP, 0),
						format("M�c/#GetSeries(%d, %d)", nP, 1),
						format("Th�y/#GetSeries(%d, %d)", nP, 2),
						format("H�a/#GetSeries(%d, %d)", nP, 3),
						format("Th�/#GetSeries(%d, %d)", nP, 4),
					  };
	CreateTaskSay(tbTaskSay);
end

function GetSeries(nP, nSeries)
	if ConsumeItem(3, 1, 6, 1, nP, -1) ~= 1 then
		Msg2Player("Kh�u tr� v�t ph�m th�t b�i.")
		return
	end
	-- �����
	if nP == 2335 then -- Thanh Tuy�t Y l� h�p
		local tbAwardItem = {tbProp={0,2,28,3,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return
	end	
	-- ����ȹ
	if nP == 2336 then -- B�ng Tinh Qu�n l� h�p
		local tbAwardItem = {tbProp={0,2,28,6,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return
	end	
		
	-- �����
	if nP == 2337 then -- Kinh Thi�n Gi�p l� h�p
		local tbAwardItem = {tbProp={0,2,28,2,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return
	end	
		
	-- ����ȹ
	if nP == 2338 then -- Kh�p ��a Qu�n l� h�p
		local tbAwardItem = {tbProp={0,2,28,5,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return
	end	
		
	-- ɱ���
	if nP == 2339 then -- S�t Th� Gi�n l� h�p
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 1}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return
	end	
end
