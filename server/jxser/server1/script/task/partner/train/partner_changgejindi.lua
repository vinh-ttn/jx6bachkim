Include("\\script\\task\\partner\\train\\partner_addtrainnpc.lua")

function Goto_jindichangge() 
Describe(DescLink_ChangGeMen.."# � tr��ng ca c�a c�m ��a trung , nh� ch�i c�ng ��ng b�n luy�n c�p c� th� ��t ���c kh� nhi�u ��ch kinh nghi�m , ��ng th�i c�n s� r�i xu�ng ��ng b�n b� t�ch . m�i gi� c� �i�m , c�m ��a ��ch t� ��n ng� h�nh linh l�c s� th�c t�nh , mang theo ��ng b�n t�i t� b�i , s� c� � kh�ng ngh� t�i chuy�n ph�t sinh . ng��i b�y gi� mu�n �i tr��c sao ? ", 2, 
"V�ng, ta mu�n �i /sure_gotojindi", 
" ��i l�t n�a r�i h�y n�i /OnCancel") 
end 

function OnCancel() 
end 

function sure_gotojindi() 
local filehigh = pt_GetTabFileHeight( jindienter_pos_file ) - 1 
local row = random(filehigh) 
	local posx = pt_GetTabFileData(jindienter_pos_file, row + 1, 1)
	local posy = pt_GetTabFileData(jindienter_pos_file, row + 1, 2)

if (posx > 0 and posy > 0) then 
NewWorld(539, posx, posy) 
SetFightState(1) 
else 
print("jindienter_pos_file error row = "..row) 
end 
end