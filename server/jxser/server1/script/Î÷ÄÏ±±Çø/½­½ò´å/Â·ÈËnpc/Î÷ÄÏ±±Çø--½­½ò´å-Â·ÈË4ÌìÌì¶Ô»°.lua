--���ϱ��� ����� ·��4����Ի�
--������������񣺻��ӵĵ���
--suyu
-- Update: Dan_Deng(2003-08-11)

function main(sel)
	UTask_world18 = GetTask(46);
	if(UTask_world8 == 1) then
		Talk(1,"","H� t� ca n�i ��i khi huynh �y c� n�, s� d�n ch�u �i b�n chim, th�t th�ch qu�!")
	elseif(UTask_world18 == 2) then
		Talk(1,"","N� c�a H� T� ca ch�a l�m xong sao?")
	elseif(UTask_world18 >= 10) then
		Talk(1,"","Hay l�m, l�t n�a H� T� Ca s� ��n t�m ch�u!")
	else
		Talk(1,"","H� T� ca lu�n g�t g�m ch�u! Ch�u ph�i m�c m� huynh �y!")
	end
end;
