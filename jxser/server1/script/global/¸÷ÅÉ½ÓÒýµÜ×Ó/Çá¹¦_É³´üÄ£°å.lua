--������ ������ ɳ������ ���ִ���������(�����ظ�������)
-- Update: Dan_Deng(2003-08-09)

function learn()
	UTask_world32 = GetTask(32)
	if (UTask_world32 >= 80) and (UTask_world32 < 130) then
		SetTask(32,GetTask(32)+1)
	end
end;
