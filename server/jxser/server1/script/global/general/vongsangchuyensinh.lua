IL("TITLE");
IncludeLib("SETTING");
Include("\\script\\dailogsys\\dailogsay.lua");
Include("\\script\\misc\\eventsys\\type\\npc.lua");

function VongSangChuyenSinh()
	local tbOption = {"Ng��i mu�n nh�n v�ng s�ng n�o?"};
		tinsert(tbOption, "V�ng s�ng chuy�n sinh l�n 1/vongsang_ts1")
		tinsert(tbOption, "V�ng s�ng chuy�n sinh l�n 2/vongsang_ts2")
		tinsert(tbOption, "V�ng s�ng chuy�n sinh l�n 3/vongsang_ts3")
		tinsert(tbOption, "V�ng s�ng chuy�n sinh l�n 4/vongsang_ts4")
		tinsert(tbOption, "V�ng s�ng chuy�n sinh l�n 5/vongsang_ts5")
		tinsert(tbOption, "K�t th�c ��i tho�i./no")
	CreateTaskSay(tbOption)
end

function vongsang_ts1()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 1) then
		Talk(1, "", "B�n ch�a �� �i�u ki�n �� nh�n ���c h� tr� n�y, h�y �i tu luy�n ti�p �i.")
	return end
	local nID = 5001;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "B�n �ang s� d�ng v�ng s�ng n�y, kh�ng th� nh�n th�m l�n n�a. Khi n�o m�t v�ng s�ng r�i ��n ��y g�p ta �� nh�n l�i.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts2()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 2) then
		Talk(1, "", "B�n ch�a �� �i�u ki�n �� nh�n ���c h� tr� n�y, h�y �i tu luy�n ti�p �i.")
	return end
	local nID = 5002;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "B�n �ang s� d�ng v�ng s�ng n�y, kh�ng th� nh�n th�m l�n n�a. Khi n�o m�t v�ng s�ng r�i ��n ��y g�p ta �� nh�n l�i.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts3()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 3) then
		Talk(1, "", "B�n ch�a �� �i�u ki�n �� nh�n ���c h� tr� n�y, h�y �i tu luy�n ti�p �i.")
	return end
	local nID = 5003;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "B�n �ang s� d�ng v�ng s�ng n�y, kh�ng th� nh�n th�m l�n n�a. Khi n�o m�t v�ng s�ng r�i ��n ��y g�p ta �� nh�n l�i.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts4()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 4) then
		Talk(1, "", "B�n ch�a �� �i�u ki�n �� nh�n ���c h� tr� n�y, h�y �i tu luy�n ti�p �i.")
	return end
	local nID = 5004;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "B�n �ang s� d�ng v�ng s�ng n�y, kh�ng th� nh�n th�m l�n n�a. Khi n�o m�t v�ng s�ng r�i ��n ��y g�p ta �� nh�n l�i.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end

function vongsang_ts5()
	local n_transcount = ST_GetTransLifeCount();
	if (n_transcount < 5) then
		Talk(1, "", "B�n ch�a �� �i�u ki�n �� nh�n ���c h� tr� n�y, h�y �i tu luy�n ti�p �i.")
	return end
	local nID = 5005;
	if (Title_GetActiveTitle() == nID) then
		Talk(1, "", "B�n �ang s� d�ng v�ng s�ng n�y, kh�ng th� nh�n th�m l�n n�a. Khi n�o m�t v�ng s�ng r�i ��n ��y g�p ta �� nh�n l�i.")
	return end
	SetTask(1122, nID)
	Title_AddTitle(nID, 1, 30*24*60*60*18);
	Title_ActiveTitle(nID);
end


--pEventType:Reg("L� Quan", "Nh�n v�ng s�ng chuy�n sinh", VongSangChuyenSinh);