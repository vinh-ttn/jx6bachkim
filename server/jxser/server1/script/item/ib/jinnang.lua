--- �ua top by Jackson2014---

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")


function anbang()
	for i=164,167 do
		AddGoldItem(0, i)
	end
end
function dinhquoc()
	for i=159,163 do
		AddGoldItem(0, i)
	end
end
function nhutinh()
	for i=190,193 do
		AddGoldItem(0, i)
	end
end
function hiepcot()
	for i=186,189 do
		AddGoldItem(0, i)
	end
end
function thienhoang()
	for i=168,176 do
		AddGoldItem(0, i)
	end
end
function main(nItemIndex)	
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 30 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	-- an bang
	if P == 1172 then
		anbang()
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c b� �� <color=green>An Bang<color>" );
		return 0;
	end

	-- dinh quoc
	if P == 1171 then
		dinhquoc()
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c b� �� <color=green>�inh Qu�c<color>" );
		return 0;
	end

	-- hiep cot
	if P == 1250 then
		hiepcot()
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c b� �� <color=green>Hi�p C�t<color>" );
		return 0;
	end
	--nhu tinh
	if P == 1251 then
		nhutinh()
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c b� �� <color=green>Nh� T�nh<color>" );
		return 0;
	end
	if P == 4348 then
		thienhoang()
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c b� �� <color=green>Thi�n Ho�ng<color>" );
		return 0;
	end
	return 1;
end
