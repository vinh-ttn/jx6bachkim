Include("\\script\\battles\\battleinfo.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
--�����
function main(sel)
if TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCHieuThuocAllThanh == 1 and ScriptMuaThuoc == 1 then
	local tbOpt = {
		{"Giao D�ch",scripthieuthuocall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua thu�c g�?<color>", tbOpt)
else
--Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua d��c ph�m/salemedicine","T�m hi�u quy t�c T�ng Kim ��i chi�n/help_sjbattle","Kh�ng c�n ��u! C�m �n!/cancel")
	Say("H�u doanh do ta ph� tr�ch! Ng��i c� c�n gi�p �� g� kh�ng?",3,"Mua Ng� Hoa Ng�c L� Ho�n Nhanh Full R��ng/nguhoangoclohoannhanh","Mua d��c ph�m/salemedicine","Kh�ng c�n ��u! C�m �n!/cancel")
	-- Talk(1, "", "Hi�n t�i ta �ang ���c b�o tr�, c�c h� h�y quay l�i sau!")
end
end

function salemedicine(sel)
Sale(99, 1)
end