Include("\\script\\global\\login_head.lua")
Include("\\script\\task\\task_addplayerexp.lua");
Include("\\script\\lib\\awardtemplet.lua");

function LoginMessage()
	local nLevel = GetLevel();
	if (nLevel == 1) then
		Msg2Player("<color=green>Ch�o m�ng <color=yellow>"..GetName().."<color> �� ��n v�i th� gi�i V� L�m Truy�n K�")
	end
	
	if (nLevel > 1) then		
		Msg2Player("<color=green>Server c�y cu�c gi�nh cho c�c b�n n�o �am m� game V� L�m Truy�n K� phi�n b�n HKMP. Ch�c c�c b�n c� nhi�u s�c kh�e v� c� nh�ng gi�y ph�t th� gi�n vui v� trong game.")
	end
	if GetTask(5751) == 0 then 
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,1266,0,0,0}, nBindState=-2,nExpiredTime=43200}, "test", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,438,0,0,0}, nBindState=-2,nExpiredTime=43200}, "test", 1);
	tbAwardTemplet:GiveAwardByList({tbProp = {6,1,4851,0,0,0}, nBindState=-2}, "test", 1);
	SetTask(5751,1)
	end
end

if login_add then login_add(LoginMessage, 1) end