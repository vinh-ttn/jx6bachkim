Include("\\script\\gb_taskfuncs.lua")
greatseed_configtab = {
	{340,3,100,"\\settings\\maps\\great_night\\maccaoquat.txt","M�c Cao Qu�t"},			
	{336,3,100,"\\settings\\maps\\great_night\\phonglangdo.txt","Phong L�ng ��"},			
	
	{322,2,100,"\\settings\\maps\\great_night\\truongbachbac.txt","Tr��ng B�ch S�n B�c"},	
	{321,2,100,"\\settings\\maps\\great_night\\truongbachnam.txt","Tr��ng B�ch S�n Nam"},		
	{225,2,30,"\\settings\\maps\\great_night\\samac1.txt"," Sa M�c 1"},		
	{226,2,30,"\\settings\\maps\\great_night\\samac2.txt"," Sa M�c 2"},		
	{227,2,40,"\\settings\\maps\\great_night\\samac3.txt"," Sa M�c 3"},		
	
	{182,1,25,"\\settings\\maps\\great_night\\nghietlongdong.txt","Nghi�t Long ��ng"},	
	{167,1,25,"\\settings\\maps\\great_night\\diemthuongson.txt","�i�m Th��ng S�n"},			
	{200,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","C� D��ng ��ng M� Cung"},	
	{92,1,25,"\\settings\\maps\\great_night\\thuccuongson.txt","Th�c C��ng S�n"},				
};
tblantern_area = {2, 21, 167, 193}
function TaskShedule()
	TaskName("Q�a Huy Ho�ng")
	TaskTime(12,00);
	TaskInterval(5)
	TaskCountLimit(0)
	OutputMsg("Q�a Huy Ho�ng");
end
function TaskContent()
	if righttime_add() ~= 1 then
		gb_SetTask("Q�a Huy Ho�ng", 12, 0);	
		return
	end;

	local nNowTime = tonumber(date("%H%M"))
	local nBatch = floor(mod(nNowTime,100)/5) + 1
	local nMapCount = getn(greatseed_configtab);
	for i = 1, nMapCount do
		local strExecute = format("dw Global_GreatSeedExecute(%d, %d, %d, [[%s]], [[%s]],%d)", greatseed_configtab[i][1], greatseed_configtab[i][2], greatseed_configtab[i][3], greatseed_configtab[i][4],greatseed_configtab[i][5],nBatch);
		GlobalExecute(strExecute);
		local szMsg = "";
		if (mod(nBatch,2) == 1) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "Q�a Huy Ho�ng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Q�a Huy Ho�ng"
		elseif (mod(nBatch,2) == 0) and greatseed_configtab[i][2] ~= 4 then
			szMsg = "Q�a Huy Ho�ng"
		elseif greatseed_configtab[i][2] == 4 then
			szMsg = "Q�a Huy Ho�ng"
		end; 
		szMsg = format("Tr��c m�t <%s> �� xu�t hi�n %s, 5 ph�t sau k�t th�c, c�c ��i hi�p chu�n b� h�i qu� !",
					szMsg,
					greatseed_configtab[i][5]);	
		GlobalExecute(format("dw AddLocalNews([[%s]])",szMsg));
	end;
end

function righttime_add()
	local nTime = tonumber(date("%H%M"));
	if (nTime >= 1200 and nTime < 1230)  then
		return 1;
	end;
	return 0;
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
