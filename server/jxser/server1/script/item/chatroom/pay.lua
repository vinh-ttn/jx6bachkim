MONEY_ADDLIFETIME = 1000000

function main()
	Say("<color=green>Th� cho ph�ng t�n g�u<color>"..": ".."B�n vui l�ng nh�p t�n ph�ng t�n g�u c�n th�m gi�".."!", 2,
	"���c th�i! �� ta nh�p v�o/pay_chatroom_enter",
	"K�t th�c ��i tho�i./OnCancel");
return 1; end

function pay_chatroom_enter()
	AskClientForString("pay_chatroom_time", "", 1, 20, "Nh�p t�n ph�ng:"); 
end

function pay_chatroom_time(roomname)
	-- �����ҳ�ֵ����Ҫ����
	if (ChatRoom_FindRoom(roomname) == 0) then
		Msg2Player("Ph�ng t�n g�u <color=yellow>"..roomname.."<color> n�y kh�ng t�n t�i!")
	else
		ChatRoom_AddTime(roomname)
	end
end


function OnCancel()
end
