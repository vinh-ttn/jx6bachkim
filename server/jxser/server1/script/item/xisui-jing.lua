--Create by yfeng ,2004-3-9
--����֮�飬80���������ʹ��֮�󣬿��Ի��1��Ǳ��
--���ÿ��2�������Զ�һ��Ǳ�ܵ㣬������5��Ǳ�ܵ�
--����89���������ʹ�ÿ��Ի��5��Ǳ�ܵ�
--����Ʒͬһ���ֻ��ʹ��15��
--�������81��4λ��ʾʹ�ø���Ʒ�Ĵ���
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
function main(sel)
	times = GetTask(81)
	point= {
		{pot=1,msg="m�t �i�m"},
		{pot=2,msg="m�t v�i"},
		{pot=3,msg="m�t s�"},
		{pot=4,msg="kh�ng �t"},
		{pot=5,msg="h�i nhi�u"}
	}
	str ={
		"B�n �� xem k� quy�n T�y T�y Kinh nh�ng kh�ng th� hi�u: ( ",
		"B�n �� ��c T�y T�y Kinh, nh�n ���c %s",
		"B�n �� xem k� quy�n T�y T�y Kinh nh�ng kh�ng th� hi�u: ( "
	}
	level = GetLevel()
	if(level < 80) then  --�ȼ�̫�ͣ�����ʹ��
		Msg2Player(str[1])
		return 1
	end
	if(times > GioiHanTTK) then --ʹ�ó�������
		Msg2Player("S� d�ng l�n th�: "..times.." - "..str[3])
	return 1
	end
	if(level > 89) then --���ȼ�����Ǳ��
		level = 89
	end
	index = floor((level -80)/2) +1
	AddProp(point[index].pot)
	SetTask(81,times+1)
	Msg2Player(format(str[2],point[index].msg))
	return 0
end

