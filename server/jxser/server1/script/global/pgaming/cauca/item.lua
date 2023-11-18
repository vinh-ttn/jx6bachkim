Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\task\\system\\task_string.lua")
Include("\\script\\lib\\progressbar.lua")
IncludeLib("ITEM")

TaskExpCauCa	= 5746
TaskDateCauCa = 5745
MaxExpMoiNgay =  50000000

function main(nItemIndex)
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 6 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 6 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	if CheckGioiHan()==1 then
		return 1;
	end

	if P >= 4898 and P <= 4902 then
		Exp(P)		
		return 0;
	end
	return 1
end

function Exp(P)
	if (P == 4898) then		
		nExp = 500000
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		--phanthuongcamap()
		AddOwnExp(nExp);
	elseif (P == 4902) then		
		nExp = 2000000
		Msg2Player("Ch�c m�ng b�n nh�n "..nExp.." �i�m kinh nghi�m")
		SetTask(TaskExpCauCa,(nExp+GetTask(TaskExpCauCa)))
		phanthuongtom()
		AddOwnExp(nExp);
	end
end

function phanthuongcamap()
local tbAward = {
		[1]={szName="<color=green>Bao L� X�",tbProp={6,1,1350,1,0,0},nCount=15,},	
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end
function phanthuongtom()
local tbAward = {
		[1]={szName="<color=green>Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nRate=20},	
		[2]={szName="<color=green>Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nRate=3},
		[3]={szName="<color=green>Ph�c Duy�n L�",tbProp={6,1,random(122,124),1,0,0},nCount=1,nRate=40},
		[4]={szName="<color=green>T� Th�y Tinh",tbProp={4,239,1,0,0,0},nCount=1,nRate=1},
		[5]={szName="<color=green>Lam Th�y Tinh",tbProp={4,238,1,0,0,0},nCount=1,nRate=3},
		[6]={szName="<color=green>L�c Th�y Tinh",tbProp={4,240,1,0,0,0},nCount=1,nRate=3},
		[7]={szName="<color=green>Tinh H�ng B�o Th�ch",tbProp={4,353,1,0,0,0},nCount=25,nRate=3},
}
	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng m�c event");
end

function CheckGioiHan()
	old_date = GetByte(GetTask(TaskDateCauCa), 1)
	old_month = GetByte(GetTask(TaskDateCauCa), 2)
	old_year = GetByte(GetTask(TaskDateCauCa), 3)

	now_date = tonumber(date("%d"))
	now_month = tonumber(date("%m"))
	now_year = tonumber(date("%y"))

	if old_date == now_date and old_month == now_month and old_year == now_year then
		if GetTask(TaskExpCauCa) > MaxExpMoiNgay then
			Msg2Player("M�i ng�y ch� s� d�ng t�i �a "..MaxExpMoiNgay.." �i�m kinh nghi�m")
			return 1;
		end
	else
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 1, now_date))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 2, now_month))
		SetTask(TaskDateCauCa, SetByte(GetTask(TaskDateCauCa), 3, now_year))
		SetTask(TaskExpCauCa,0)
		return 0;
	end
end
