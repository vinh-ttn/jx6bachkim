Include("\\script\\lib\\player.lua")


LadderId = {
	[01] = {n_Id = {10500}, s_Desc = "�ua TOP - Ki�m tra th�ng b�o tr�n k�nh th� gi�i!"},
	[02] = {n_Id = {10499}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[03] = {n_Id = {10498}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[04] = {n_Id = {10497}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[05] = {n_Id = {10496}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[06] = {n_Id = {10495}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[07] = {n_Id = {10494}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[08] = {n_Id = {10493}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[09] = {n_Id = {10492}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[10] = {n_Id = {10491}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	[11] = {n_Id = {10490}, s_Desc = "Verify Client - Danh s�ch c�c t�i kho�n s� d�ng Client kh�ng h�p l�!"},
	
	[12] = {n_Id = {10489}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Th�y Y�n"},
	[13] = {n_Id = {10488}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Nga My"},
	[14] = {n_Id = {10487}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i ���ng M�n"},
	[15] = {n_Id = {10486}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Ng� ��c"},
	[16] = {n_Id = {10485}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Thi�n V��ng"},
	[17] = {n_Id = {10484}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Thi�u L�m"},
	[18] = {n_Id = {10483}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i V� �ang"},
	[19] = {n_Id = {10482}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i C�n L�n"},
	[20] = {n_Id = {10481}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i Thi�n Nh�n"},
	[21] = {n_Id = {10480}, s_Desc = "X�p h�ng Temp - Cao th� m�n ph�i C�i Bang"},
}


function SetTask(TaskNo, Value)
	return callPlayerFunction(PlayerIndex, SetTask, TaskID[TaskNo].nTaskID[1], Value)
end

function GetTask(TaskNo)
	return callPlayerFunction(PlayerIndex, GetTask, TaskID[TaskNo].nTaskID[1])
end
