-- T�nh n�ng ��i t�n - by AloneScript

Include("\\script\\lib\\itemblue.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function TrangBiXanh()
	GetItemBlue()
end

pEventType:Reg("T�nh n�ng th� nghi�m", "Trang b� xanh", TrangBiXanh);
pEventType:Reg("L�nh b�i T�n Th�", "Trang b� xanh", TrangBiXanh);