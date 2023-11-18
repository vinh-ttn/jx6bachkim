--- �ua top by Nam Cung Nhat Thien---

Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\activitysys\\functionlib.lua")
Include("\\script\\lib\\log.lua")
IncludeLib("SETTING")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\task\\system\\task_string.lua");
IncludeLib("ITEM")


tbitem1  =
	{
		[1]	={szName = "Kim S�ng D��c (ti�u)", tbProp = {1, 0, 0, 1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Ng�ng Th�n ��n (ti�u)", tbProp = {1, 1, 0,1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "L� Bao M�t N� T�n Th�", tbProp = {6, 1, 2428,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 10", tbProp = {6, 1, 4259,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem10  =
	{
		[1]	={szName = "Kim S�ng D��c (trung)", tbProp = {1, 0, 0, 2,0,0}, nCount = 10, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Ng�ng Th�n ��n (trung)", tbProp = {1, 1, 0,2,0,0}, nCount = 10, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 20", tbProp = {6, 1, 4260,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem20  =
	{
		[1]	={szName = "Kim S�ng D��c (��i)", tbProp = {1, 0, 0, 3,0,0}, nCount = 10, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Ng�ng Th�n �an (��i)", tbProp = {1, 1, 0,3,0,0}, nCount = 10, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 30", tbProp = {6, 1, 4261,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem30  =
	{
		[1]	={szName = "H�i thi�n t�i t�o l� bao", tbProp = {6, 1, 2527, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "L� Bao M�t N� T�n Th�", tbProp = {6, 1, 2428,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 40", tbProp = {6, 1, 4262,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem40  =
	{
		[1]	={szName = "H�i thi�n t�i t�o l� bao", tbProp = {6, 1, 2527, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Ph�o Hoa", tbProp = {6, 0, 11,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 50", tbProp = {6, 1, 4263,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem50  =
	{
		[1]	={szName = "H�i thi�n t�i t�o l� bao", tbProp = {6, 1, 2527, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName = "Hoa h�ng", tbProp = {6, 0, 20,1,0,0}, nCount = 5, nExpiredTime = 10080, nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
		[4]	={szName = "T�n th� l� bao c�p 60", tbProp = {6, 1, 4264,1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
tbitem60  =
	{
		[1]	={szName = "Phi T�c ho�n", tbProp = {1, 6, 0, 1,0,0}, nCount = 3, nExpiredTime = 10080, nBindState = -2},
		[2]	={szName="Phong V�n Chi�u th",tbProp={6,1,155,1,0,0},nCount=3,nExpiredTime=10080,nBindState = -2},
		[3]	={szName = "Ti�n th�o l�", tbProp = {6, 1, 71, 1,0,0}, nCount = 1, nExpiredTime = 10080, nBindState = -2},
	}
function main(nItemIndex)
	dofile("script/global/namcung/tanthuitem.lua");	
	local G,D,P,nLevel = GetItemProp(nItemIndex);
	local nExPiredTime = ITEM_GetExpiredTime(nItemIndex);
	local nLeftTime = nExPiredTime - GetCurServerTime();
	if nExPiredTime ~= 0 and nLeftTime <= 60 then
		Msg2Player("V�t ph�m �� qu� h�n s� d�ng")
		return 0;
	end
	nLeftTime = floor((nLeftTime)/60);
	
	if (G ~= 6) then
		return 1;
	end
	
	if CalcFreeItemCellCount() < 30 then
		CreateTaskSay({"Xin h�y s�p x�p l�i h�nh trang! Nh� �� tr�ng 30 � tr� l�n nh�!",  "���c r�i./Cancel",});
		return 1;
	end
	
	-- cap1
	if P == 4258 then
		tbAwardTemplet:GiveAwardByList(tbitem1, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 1" );
		return 0;
	end	
	
	-- cap10
	if (P == 4259 and GetLevel() >= 10) then
		tbAwardTemplet:GiveAwardByList(tbitem10, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 10" );
		return 0;
	
	-- cap20
	elseif (P == 4260 and GetLevel() >= 20) then
		tbAwardTemplet:GiveAwardByList(tbitem20, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 20" );
		return 0;

	-- cap30
	elseif P == 4261 and GetLevel() >= 30 then
		tbAwardTemplet:GiveAwardByList(tbitem30, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 30" );
		return 0;

	-- cap40
	elseif P == 4262 and GetLevel() >= 40 then
		tbAwardTemplet:GiveAwardByList(tbitem40, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 40" );
		return 0;

	-- cap50
	elseif P == 4263 and GetLevel() >= 50 then
		tbAwardTemplet:GiveAwardByList(tbitem50, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 50" );
		return 0;
	
	-- cap60
	elseif P == 4264 and GetLevel() >= 60 then
		tbAwardTemplet:GiveAwardByList(tbitem60, "Ph�n th��ng t�n th�");
		Msg2Player( "Ch�c M�ng <color=yellow>"..GetName().."<color> �� nh�n ���c ph�n th��ng t�n th� c�p 60" );
		return 0;
	else
	Talk(1, "", " ��ng c�p kh�ng �� ! H�y mau �i t�p luy�n th�m  ! ");
	return 1
end

end
