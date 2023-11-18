Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

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
	local tbSay = {}
	tinsert(tbSay,"Giao d�ch/yes")
	if CFG_HONNGUYENLINHLO == 1 then
		tinsert(tbSay,"Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
	end
	tinsert(tbSay,"Kh�ng giao d�ch/Cancel")
	Say("L�c ta c�n tr�, mu�n l�m m�t danh y gi�ng nh� Hoa ��, sau n�y l�p gia th�t sinh con �� c�i, v� nu�i m�y mi�ng �n m� ch� c� th� m� c�i ti�m thu�c n�y th�i. Chao!Con ng��i c�a ta, nhi�u chuy�n n�y gi� m� v�n ch�a h�i kh�ch quan c�n mua thu�c g�?",getn(tbSay),tbSay)
end
end

function yes()
	Sale(15) 	
end
