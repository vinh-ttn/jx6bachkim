-- timerhead.lua
-- C�ng c� li�n quan ��n b� h�n gi�

FramePerSec = 18 -- M�i gi�y t�m s� coi nh� ��i l��ng kh�ng ��i x� l�
CTime = 600 -- M�i canh gi� theo 600 Gi�y (10 Ph�t ) T�nh to�n

function GetRestSec(i) -- Tr�c ti�p tr� v� m�y b�m gi� c�n th�a gi�y s� 
return floor(GetRestTime(i) / FramePerSec)  end; 

function GetRestCTime(i) --Nh�n th�i gian c�n l�i c�a b� h�n gi�, l�n h�n m�t gi� ���c chuy�n ��i theo gi� Trung Qu�c
	x = floor(GetRestTime(i) / FramePerSec) 
	if (x < CTime) then -- �t h�n m�t gi�
		y = x.." gi�y " 
	else 
		y = floor(x / CTime).." c� canh gi� " 
	end 
return y end; 

function GetTimerTask(i) -- Ph�n t�ch c� ph�p t�c v� t��ng �ng theo s� ID h�n gi�
end
