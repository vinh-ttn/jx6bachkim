Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
Include("\\script\\lib\\awardtemplet.lua")
function main()
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	local nNpcIndex = GetLastDiagNpc()	
	if GetNpcParam(nNpcIndex, 4) ~= 1 then
		SetNpcParam(nNpcIndex, 4, 1)
		tbAwardTemplet:GiveAwardByList(%PhanThuongRuongDauNguu, "�i�m b�o r��ng")
		DelNpc(nNpcIndex)
	else
		return
	end
end

