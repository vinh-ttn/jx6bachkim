-- ϴPK��ʱ��.lua
-- Update: Dan_Deng(2003-11-27)
-- Timer: 9

Include("\\Script\\Global\\TimerHead.lua")

function OnTimer()
	Uworld96 = GetTask(96)
	PK_value = GetPK()
	StopTimer()
	if (Uworld96 > 0) then			-- ֻ�����η��в������PKֵ
		if (PK_value > 1) then		-- ��δϴ��PKֵ
			Msg2Player("Sau th�i gian th�nh t�m h�i c�i, t�i nghi�t c�a ng��i �� ���c gi�m nh�!")
			SetPK(PK_value - 1)
			SetTask(96,Uworld96 - 1)
			SetTimer(12 * CTime * FramePerSec, 9)						--���¿�ʼ��ʱ��12��ʱ��==120���ӣ�
		else							-- ϴ��PK��
			Msg2Player("Sau th�i gian th�nh t�m h�i c�i, ng��i r�t cu�c �� r�a s�ch t�i l�i c�a m�nh!")
			SetPK(0)
			SetTask(96,100)
		end
	end
end;
