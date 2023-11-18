IncludeLib("FILESYS");
IncludeLib("TASKSYS");
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\gift\\libgm.lua")
Include("\\script\\global\\lib\\serverlib.lua")	
Include("\\script\\activitysys\\functionlib.lua")
szFile = "\\dulieu\\Top5.dat"

--======== TOP-NAMCUNG == 01/7/2018 ========--

function nhantop5()	
	local nCurLevel = GetLevel()
	if nCurLevel < 120 then
		Talk(1, "", "C�p �� ng��i qu� th�p mau �i �i !.")
		return 
	end
	if (GetTeamSize() > 0) then
		Talk(1, "", "H�y r�i ��i tr��c khi nh�n th��ng.")
		return 
	end
	if CalcFreeItemCellCount() < 59 then
		Say("H�y c�t b�t v�t ph�m �� ��m b�o c� 59 � tr�ng r�i h�y m�.",0);
		return
	end
	nhanthuong120()
end;

tbitem12  =
	{
 		[1]	={szName = "Ng�a B�n Ti�u", tbProp = {0,10,6,10,0,0}, nCount = 1,},
		[2]	={szName = "Trang B� H�ng �nh", tbProp = {0,204}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
		[3]	={szName = "Trang B� H�ng �nh", tbProp = {0,205}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
		[4]	={szName = "Trang B� H�ng �nh", tbProp = {0,206}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
		[5]	={szName = "Trang B� H�ng �nh", tbProp = {0,207}, nCount = 1,  nBindState = -2, nQuality = 1,nExpiredTime = 10080},
		[6]	={szName = "Trang B� ��nh Qu�c", tbProp = {0,159}, nCount = 1, nQuality = 1,},
		[7]	={szName = "Trang B� ��nh Qu�c", tbProp = {0,160}, nCount = 1,   nQuality = 1,},
		[8]	={szName = "Trang B� ��nh Qu�c", tbProp = {0,161}, nCount = 1,  nQuality = 1,},
		[9]	={szName = "Trang B� ��nh Qu�c", tbProp = {0,162}, nCount = 1,   nQuality = 1,},
		[10]	={szName = "Trang B� ��nh Qu�c", tbProp = {0,163}, nCount = 1,   nQuality = 1,},
	}

function nhanthuong120()
	if GetTask(3651) == 1 then
		Talk(1, "", "Ng��i nh�n r�i c�n tham lam sao ? !.")
		return 
	end

	local nCheck = tonumber(DBGetData(szFile,"TOP5_CHECK","SoNguoi"))
	if nCheck == null then
		nCheck = 0
	end
	if nCheck == 5  then
		return Say("�� trao th��ng cho 5 ng��i ��u ti�n r�i b�n ��n tr� r�i!!")
	end

		DBSetData(szFile,"TOP5_CHECK","SoNguoi",nCheck +1);
		Earn(10000000)
		tbAwardTemplet:GiveAwardByList(tbitem12, "Ph�n th��ng t�n th�");
		SetTask(3651,1)
		Msg2Player("Nh�n th��ng th�nh c�ng!")

end;







