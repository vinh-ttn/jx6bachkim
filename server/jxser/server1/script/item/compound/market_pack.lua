-- ���������Ʒ
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")
function main(nItemIndex)

	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("V�t ph�m �� qu� h�n s� d�ng")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	-- ������
	if P == 2340 then
		local tbAwardItem = {tbProp={4,195,1,1,0,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return 0;
	end	
	
	-- Ѫս����
	if P == 2401 then
		local tbAwardItem = {tbProp={6,1,2212,1,0,0},nExpiredTime=nLeftTime,}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return 0;
	end	
	
	
	-- ɱ��� �������
	if P == 2335 or P == 2336 or P == 2337 or P == 2338 or P == 2339 then
		SelectSeries(P)
		return 1;
	end
	
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

	-- ����
	if P == 2333 then
		local tbAwardItem = {tbProp={0,10,6,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return 0;
	end

	if P == 2334 then -- M� b�i - Phi�n V�
		local tbAwardItem = {tbProp={0,10,7,10,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end

	-- ����
	if P == 2396 then
		local tbAwardItem = {tbProp={0,10,8,1,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return 0;
	end
	
	if P == 3416 then -- M� B�i - H�a Tinh Kim H� V��ng
		local tbAwardItem = {tbProp={0,10,15,10,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end
		
	if P == 3483 or P == 4064 then -- M� B�i - Si�u Quang
		local tbAwardItem = {tbProp={0,10,13,10,5,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "Nh�n ���c v�t ph�m!");
		return 0;
	end

	return 1
end

-- ѡ������
function SelectSeries(nP)
	
	local tbTaskSay = {"<dec>Xin h�y ch�n ng� h�nh",
						format("Kim/#GetSeries(%d, %d)", nP, 0),
						format("M�c/#GetSeries(%d, %d)", nP, 1),
						format("Th�y /#GetSeries(%d, %d)", nP, 2),
						format("H�a/#GetSeries(%d, %d)", nP, 3),
						format("Th� /#GetSeries(%d, %d)", nP, 4),
					  };
					  
	CreateTaskSay(tbTaskSay);
end

function GetSeries(nP, nSeries)
	
	if ConsumeItem(6,1,400,10,nP,1) ~= 1 then
		Msg2Player("Kh�u tr� ��o c� th�t b�i")
		return
	end
	
	-- �����
	if nP == 2335 then
		local tbAwardItem = {tbProp={0,2,28,3,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return
	end	
	
	-- ����ȹ
	if nP == 2336 then
		local tbAwardItem = {tbProp={0,2,28,6,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return
	end	
		
	-- �����
	if nP == 2337 then
		local tbAwardItem = {tbProp={0,2,28,2,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return
	end	
		
	-- ����ȹ
	if nP == 2338 then
		local tbAwardItem = {tbProp={0,2,28,5,nSeries,0}}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return
	end	
		
	-- ɱ���
	if nP == 2339 then
		local tbAwardItem = {tbProp={6,1,400,90,nSeries,0}, nCount = 2}
		tbAwardTemplet:GiveAwardByList(tbAwardItem, "M� ra v�t ph�m mua � K� Tr�n C�c");
		return
	end	
end
