
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua")

Include("\\script\\global\\general\\thunghiem\\doiten.lua")
Include("\\script\\global\\general\\thunghiem\\kynangmonphai.lua")
Include("\\script\\global\\general\\thunghiem\\trangsuc.lua")
Include("\\script\\global\\general\\thunghiem\\nguhanhan.lua")
Include("\\script\\global\\general\\thunghiem\\phiphong.lua")
Include("\\script\\global\\general\\thunghiem\\point.lua")
Include("\\script\\global\\general\\thunghiem\\taytuynhanh.lua")
Include("\\script\\global\\general\\thunghiem\\thucuoi.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkim_caocap.lua")
Include("\\script\\global\\general\\thunghiem\\trangbitim.lua")
Include("\\script\\global\\general\\thunghiem\\trangbixanh.lua")
Include("\\script\\global\\general\\thunghiem\\vatphamhotro.lua")
Include("\\script\\global\\general\\thunghiem\\dieukientaobanghoi.lua")

function ThuNghiem()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		tinsert(tbSay, "Nh�n c�c lo�i �i�m/CacLoaiDiem")
		tinsert(tbSay, "Th� c��i/ThuCuoi")
		tinsert(tbSay, "V�t ph�m h� tr�/VatPhamHoTro")
		tinsert(tbSay, "Trang b� ho�ng kim/DanhSachTrangBi")
		tinsert(tbSay, "H�c k� n�ng m�n ph�i/HocKyNangMonPhai")
		tinsert(tbSay, "�i�u ki�n t�o bang h�i/DieuKienTaoBangHoi")
		tinsert(tbSay, "T�y t�y nhanh/TayTuyNhanh")
		tinsert(tbSay, "��i t�n nh�n v�t/DoiTenNhanVat")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end

function DanhSachTrangBi()
	local tbSay = {"<dec>H� tr� ng��i ch�i tham gia m�y ch� th� nghi�m"};
		-- tinsert(tbSay, "Trang b� xanh/TrangBiXanh")
		-- tinsert(tbSay, "Trang b� t�m/TrangBiTim")
		tinsert(tbSay, "Trang b� ho�ng kim/TrangBiHoangKim")
		tinsert(tbSay, "Trang b� ho�ng kim cao c�p/TrangBiHoangKimCaoCap")
		tinsert(tbSay, "Trang s�c/TrangSuc")
		tinsert(tbSay, "Phi Phong/PhiPhong")
		tinsert(tbSay, "Ng� H�nh �n/NguHanhAn")
		tinsert(tbSay, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbSay)
end


pEventType:Reg("H� Tr� T�n Th�", "Th� nghi�m m�y ch�", ThuNghiem);