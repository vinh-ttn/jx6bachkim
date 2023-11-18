Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng -vu tru le bao
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")



function main()
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	tbAwardTemplet:Give(VuTruLeBao, 1, {"SEVENCITY", "UseGuardAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(VuTruLeBao) do
		rate = rate + VuTruLeBao[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("invalid rate: %d", rate))
	end
end

