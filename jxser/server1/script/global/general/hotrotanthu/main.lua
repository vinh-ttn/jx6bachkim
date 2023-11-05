
Include("\\script\\lib\\alonelib.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\lib\\awardtemplet.lua")

Include("\\script\\global\\general\\hotrotanthu\\hotrolandau.lua")
Include("\\script\\global\\general\\hotrotanthu\\phanthuonghotro.lua")
Include("\\script\\global\\general\\hotrotanthu\\vongsangtanthu.lua")

Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")

Include("\\script\\event\\bingo_machine\\bingo_machine_gs.lua")
function HoTroTanThu()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		tinsert(tbSay, "V�ng quay may m�n/vongquaymayman")
		tinsert(tbSay, "Nh�n m�c ph�n th��ng h� tr� theo t�ng c�p ��/PhanThuongHoTro")
		tinsert(tbSay, "Nh�n t�i m�u h� tr� t�n th�/NhanTuiMauTanThu")
		tinsert(tbSay, "Nh�n L�nh b�i T�n Th�/LenhBaiTanThu")
		tinsert(tbSay, "H�c t�t c� c�c k� n�ng m�n ph�i/HocKyNangMonPhai")
		tinsert(tbSay, "Nh�n v�ng s�ng t�n th�/VongSangTanThu")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function NhanTuiMauTanThu()
	if (CalcEquiproomItemCount(6,1,4852,-1) > 0) then
		Talk(1, "", "B�n �� nh�n t�i m�u r�i, h�y ki�m tra l�i h�nh trang!")
	return end
	
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4852,1,0,0}, nBindState=-2}, "L�nh b�i T�n Th�")
end

function vongquaymayman()
	OpenBingoMachine()
end

function LenhBaiTanThu()
	if (CalcEquiproomItemCount(6,1,4851,-1) > 0) then
		Talk(1, "", "Ng��i �� c� r�i, c�n mu�n nh�n th�m n�a �?")
	return end
	tbAwardTemplet:GiveAwardByList({tbProp={6,1,4851,1,0,0}, nBindState=-2}, "T�i m�u T�n Th�")
end

pEventType:Reg("H� Tr� T�n Th�", "H� tr� ng��i ch�i", HoTroTanThu);