Include("\\script\\missions\\bw\\bwhead.lua");

function main()
	Say("C�c h� mu�n r�i l�i ��i ph�i kh�ng",3,"��ng v�y, ta mu�n r�i kh�i ��y!/yes","Ta l� ��i tr��ng, ta mu�n bi�t th� t� thi ��u./OnShowKey","Kh�ng c�n/no")
end;

function yes()
	LeaveGame();
	NewWorld(GetTask(BW_SIGNPOSWORLD), GetTask(BW_SIGNPOSX), GetTask(BW_SIGNPOSY));
end

function no()
end
