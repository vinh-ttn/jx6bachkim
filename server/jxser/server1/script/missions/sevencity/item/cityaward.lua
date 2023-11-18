Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\pgaming\\configserver\\phanthuonghoatdong.lua")
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 50tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

function main(nItemIndex)
	local nRuong = CalcFreeItemCellCount() 
	if nRuong < SoLuongRuongTrongNhanThuong then
		Talk(1,"","Kh�ng �� "..SoLuongRuongTrongNhanThuong.." r��ng ch�a ��, kh�ng th� nh�n th��ng")
		return 1
	end
	tbAwardTemplet:Give(CongThanhLeBao, 1, {"SEVENCITY", "UseCityAward"})
	return 0
end

function test()
	local rate = 0
	for i = 1, getn(CongThanhLeBao) do
		rate = rate + CongThanhLeBao[i].nRate
	end
	if (floor(rate) ~= 100) then
		error(format("total rate is wrong", rate))
	end
end
