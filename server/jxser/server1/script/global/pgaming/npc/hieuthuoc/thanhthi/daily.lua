Include( "\\script\\event\\teacherday\\teacherdayhead.lua" )
Include( "\\script\\event\\teacherday\\medicine.lua" )
Include("\\script\\config\\cfg_features.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\hieuthuoc\\allhieuthuoc.lua")
OPTIONS = {}

function refine()
	DynamicExecute("\\script\\global\\jingli.lua", "dlg_entrance", PlayerIndex)
end

function main()
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
	Say("Ti�m ta s�ng nh� �i�m Th��ng s�n, tr�n �� c� h�ng ng�n lo�i th�o d��c.",
		getn(OPTIONS),
		OPTIONS)
end
end;

function yes()
	Sale(12)  		
end

if TEACHERSWITCH then
	tinsert(OPTIONS, "Gi�p ta c�t d��c t�u/brew")
end
tinsert(OPTIONS, "Giao d�ch/yes")
if CFG_HONNGUYENLINHLO == 1 then
	tinsert(OPTIONS, "Ta mu�n ch� t�o H�n Nguy�n Linh L�/refine")
end
tinsert(OPTIONS, "Kh�ng giao d�ch/Cancel")
