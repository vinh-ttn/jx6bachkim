Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

OPTIONS = {}

function main(sel)
	Say("Ti�m ta thu�c n�o c�ng c�, d��ng th�n ki�n th�, k�o d�i tu�i th�, b� m�u �ch kh�, ng��i mu�n mua g�?",
		getn(OPTIONS),
		OPTIONS)
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
