-- ��i m�u PK

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua")

function ChangeCamp()
	if (GetCamp() == 0) then
		Talk(1, "", "B�n ch�a gia nh�p m�n ph�i, kh�ng th� thay ��i m�u phe ph�i!")
	return end
	Say("Ng��i mu�n ��i m�u c�a phe ph�i n�o?",5,
	"Ch�nh ph�i/#PlayerSetCamp(1)",
	"T� ph�i/#PlayerSetCamp(2)",
	"Trung l�p/#PlayerSetCamp(3)",
	"S�t th�/#PlayerSetCamp(4)",
	"K�t th�c ��i tho�i./no")
end

function PlayerSetCamp(nCamp)
	if (GetCamp() == nCamp) then
		Talk(1, "", "B�n �ang � m�u phe ph�i n�y, kh�ng c�n chuy�n ��i n�a ��u!")
	return end
	SetCamp(nCamp)
	SetCurCamp(nCamp)
end


--pEventType:Reg("L� Quan", "��i m�u tr�ng th�i PK", ChangeCamp);