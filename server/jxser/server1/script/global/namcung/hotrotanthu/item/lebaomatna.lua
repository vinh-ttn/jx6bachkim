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
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 2 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
		local tbItem ={szName="M�t N� T�n Th�",tbProp={0,11,random(537,541),1,0,0},nCount=1,nExpiredTime=10800,nBindState = -2}
		tbAwardTemplet:GiveAwardByList(tbItem, "M�t N� T�n Th�", 1)
		return 0;
end	