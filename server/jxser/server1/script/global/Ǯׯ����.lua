Include("\\script\\global\\systemconfig.lua")
Include("\\script\\task\\newtask\\newtask_head.lua")	
Include("\\script\\global\\vn\\extpointfunc_proc.lua")
Include("\\script\\activitysys\\npcdailog.lua")

function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
-------------------------------------------------------------------------
function main()
dofile("script/global/vn/gamebank_proc.lua")
	if (GetBoxLockState() == 0) then
		local tbOpt = {
			{"Ta Mu�n R�t ti�n ��ng",Rut_KNB},
			{"Nh�n Ti�n Gh� Qua Th�i",No},
		}
		CreateNewSayEx("<color=green>T�i Kho�n: <color=red>"..GetAccount().."<color> - Nh�n V�t: <color=red>"..GetName().."<color>\nTi�n ��ng c�n l�i: <color=yellow>"..GetExtPoint(1).."<color>", tbOpt)
	else
		Talk(1,"","<color=green>"..myplayersex().." H�y M� Kh�a R��ng Tr��c<color>")
	end
end