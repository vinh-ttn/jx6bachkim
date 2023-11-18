Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

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
	Say("Ti�m ta thu�c n�o c�ng c�, d��ng th�n ki�n th�, k�o d�i tu�i th�, b� m�u �ch kh�, ng��i mu�n mua g�?",
		getn(OPTIONS),
		OPTIONS)
end
end

function yes()
	Sale(9) 
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi�p ta c�t d��c t�u/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
end
tinsert(OPTIONS, "Kh�ng giao d�ch/Cancel")
