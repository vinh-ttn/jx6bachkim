BOSS_INFO = {
	{"C� B�ch", 566, 95, 0, {"Ph� Dung ��ng","S�n B�o ��ng","city"}},
	{"Huy�n Gi�c ��i S�", 740, 95, 0, {"Nh�n Th�ch ��ng","Thanh kh� ��ng","city"}},
	{"���ng Phi Y�n", 1366, 95, 1, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	{"Lam Y Y", 582, 95, 1, {"V� L�ng ��ng","Phi Thi�n ��ng","city"}},
	{"H� Linh Phi�u", 568, 95, 2, {"Tr��ng B�ch s�n B�c","V� Danh ��ng","city"}},
	{"Y�n Hi�u Tr�i", 744, 95, 2, {"Sa M�c s�n  ��ng 1","Sa M�c s�n  ��ng 3","city"}},
	{"M�nh Th��ng L��ng", 583, 95, 3, {"Sa m�c ��a bi�u","Sa M�c s�n  ��ng 2","city"}},
	{"Gia Lu�t T� Ly", 563, 95, 3, {"L��ng Th�y ��ng","D��ng Trung ��ng","city"}},
	{"��o Thanh Ch�n Nh�n", 562, 95, 4, {"Tr��ng B�ch s�n Nam","M�c Cao Qu�t","city"}},
	{"Tuy�n C� T�", 747, 95, 4, {"T�y S�n ��o","Phi Thi�n ��ng","city"}},
	{"V��ng T�", 739, 95, 0, {"V� L�ng ��ng","Ph� Dung ��ng","city"}},
	{"Huy�n Nan ��i S�", 1365, 95, 0, {"Phong L�ng ��","Kho� Lang ��ng","city"}},
	{"���ng B�t Nhi�m", 741, 95, 1, {"Tr��ng B�ch s�n Nam","Nh�n Th�ch ��ng","city"}},
	{"B�ch Doanh Doanh", 742, 95, 1, {"Thanh kh� ��ng","Sa m�c ��a bi�u","city"}},
	{"Thanh Tuy�t S� Th�i", 743, 95, 2, {"T�y S�n ��o","D��ng Trung ��ng","city"}},
	{"Chung Linh T�", 567, 95, 2, {"Phi Thi�n ��ng","V� Danh ��ng","city"}},
	{"H� Nh�n Ng�", 745, 95, 3, {"Nh�n Th�ch ��ng","L��ng Th�y ��ng","city"}},
	{"�oan M�c Du�", 565, 95, 3, {"Phong L�ng ��","S�n B�o ��ng","city"}},
	{"T� ��i Nh�c", 1367, 95, 4, {"M�c B�c Th�o Nguy�n","V� L�ng ��ng","city"}},
	{"Thanh Li�n T�", 1368, 95, 4, {"Tr��ng B�ch s�n B�c","Sa M�c s�n  ��ng 3","city"}},
}
function TaskShedule()
	TaskName( "Xoa BOSS DAI HOANG KIM 23:00" );
	TaskInterval( 1440 );
	TaskTime( 23, 00 );
	TaskCountLimit( 0 );
	OutputMsg( "=====> Xoa Boss Dai Hoang Kim :  23:00" );
end

function TaskContent()
	for i = 1, getn(BOSS_INFO) do
		bossname = BOSS_INFO[i][1]
		bossid = BOSS_INFO[i][2]
		GlobalExecute(format("dw XoaBossDai(%d, [[%s]] )",bossid,bossname));
	end
	OutputMsg( "=====> Xoa Boss Dai Hoang Kim :  22:50" );
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
