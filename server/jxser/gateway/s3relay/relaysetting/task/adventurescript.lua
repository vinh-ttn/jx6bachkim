CAdventure={}

for i=1,17 do    --��ʼ���ڴ�ռ�
	CAdventure[i]={}
	CAdventure[i].names={}
	CAdventure[i].mapseg={}
end
--43��������ԭ��S�n L�c Trung
CAdventure[1].names[1]="S�n L�c Trung"
CAdventure[1].names[2]="S�n L�c Trung"
CAdventure[1].mapseg["begin"]=1
CAdventure[1].mapseg["end"]=50
--195���㵴ɽ��T�n th� th�n ph� c�n��S�n L�c Trung
CAdventure[2].names[1]="T�n th� th�n ph� c�n "
CAdventure[2].names[2]="S�n L�c Trung"
CAdventure[2].mapseg["begin"]=51
CAdventure[2].mapseg["end"]=126
--140��ҩ���ȣ�T�n th� th�n ph� c�n
CAdventure[3].names[1]="T�n th� th�n ph� c�n "
CAdventure[3].names[2]="T�n th� th�n ph� c�n "
CAdventure[3].mapseg["begin"]=127
CAdventure[3].mapseg["end"]=179
--167�����ɽ��Th�nh th� ph� c�n��S�n L�c Trung
CAdventure[4].names[1]="Th�nh th� ph� c�n"
CAdventure[4].names[2]="S�n L�c Trung"
CAdventure[4].mapseg["begin"]=180
CAdventure[4].mapseg["end"]=248
--2����ɽ��T�n th� th�n ph� c�n��S�n L�c Trung
CAdventure[5].names[1]="T�n th� th�n ph� c�n "
CAdventure[5].names[2]="S�n L�c Trung"
CAdventure[5].mapseg["begin"]=249
CAdventure[5].mapseg["end"]=324
--179������ɽ��Th�nh th� ph� c�n��S�n L�c Trung
CAdventure[6].names[1]="Th�nh th� ph� c�n"
CAdventure[6].names[2]="S�n L�c Trung"
CAdventure[6].mapseg["begin"]=325
CAdventure[6].mapseg["end"]=383
-- 7�����꣺Th�nh th� ph� c�n��S�n L�c Trung
CAdventure[7].names[1]="Th�nh th� ph� c�n"
CAdventure[7].names[2]="S�n L�c Trung"
CAdventure[7].mapseg["begin"]=384
CAdventure[7].mapseg["end"]=432
--92�����ɽ��Th�nh th� ph� c�n
CAdventure[8].names[1]="Th�nh th� ph� c�n"
CAdventure[8].names[2]="Th�nh th� ph� c�n"
CAdventure[8].mapseg["begin"]=443
CAdventure[8].mapseg["end"]=501
--70������ɽ��T�n th� th�n ph� c�n��S�n L�c Trung
CAdventure[9].names[1]="S�n L�c Trung"
CAdventure[9].names[2]="S�n L�c Trung"
CAdventure[9].mapseg["begin"]=502
CAdventure[9].mapseg["end"]=560
--90����ţɽ����Th�nh th� ph� c�n��
CAdventure[10].names[1]="Th�nh th� ph� c�n"
CAdventure[10].names[2]="Th�nh th� ph� c�n"
CAdventure[10].mapseg["begin"]=561
CAdventure[10].mapseg["end"]=619
--74�����룺T�n th� th�n ph� c�n
CAdventure[11].names[1]="T�n th� th�n ph� c�n "
CAdventure[11].names[2]="T�n th� th�n ph� c�n "
CAdventure[11].mapseg["begin"]=620
CAdventure[11].mapseg["end"]=678
--9������Դͷ��Th�nh th� ph� c�n
CAdventure[12].names[1]="Th�nh th� ph� c�n "
CAdventure[12].names[2]="Th�nh th� ph� c�n"
CAdventure[12].mapseg["begin"]=679
CAdventure[12].mapseg["end"]=737
--21��ǵ��ɽ��Th�nh th� ph� c�n��
CAdventure[13].names[1]="Th�nh th� ph� c�n"
CAdventure[13].names[2]="Th�nh th� ph� c�n"
CAdventure[13].mapseg["begin"]=738
CAdventure[13].mapseg["end"]=797
--3������������Th�nh th� ph� c�n
CAdventure[14].names[1]="Th�nh th� ph� c�n"
CAdventure[14].names[2]="Th�nh th� ph� c�n"
CAdventure[14].mapseg["begin"]=798
CAdventure[14].mapseg["end"]=857
--122���ƺ�Դͷ��T�n th� th�n ph� c�n
CAdventure[15].names[1]="T�n th� th�n ph� c�n "
CAdventure[15].names[2]="T�n th� th�n ph� c�n "
CAdventure[15].mapseg["begin"]=858
CAdventure[15].mapseg["end"]=917
-- 19���������ϣ�S�n L�c Trung
CAdventure[16].names[1]="S�n L�c Trung"
CAdventure[16].names[2]="S�n L�c Trung"
CAdventure[16].mapseg["begin"]=918
CAdventure[16].mapseg["end"]=977
--41����ţɽ����S�n L�c Trung
CAdventure[17].names[1]="S�n L�c Trung"
CAdventure[17].names[2]="S�n L�c Trung"
CAdventure[17].mapseg["begin"]=978
CAdventure[17].mapseg["end"]=1037
CAdventure.msg="C� ng��i th�y %s M�nh S�n H� X� T�c"
--���ѡ��
function CAdventure:Random()
	mapid = 1+Random(17)
	str = format(self.msg,self[mapid].names[1+Random(2)])
	return self[mapid].mapseg["begin"]+Random(self[mapid].mapseg["end"]-self[mapid].mapseg["begin"]+1),str,mapid
end
--����һ��ɽ�ӱ���
function CAdventure:NewCimelia()
	aid,str,mapid = CAdventure:Random()
	Date = GetCurrentTime()
	success = SaveCustomDataToSDBOw("Adventure",Date, 0, "iis", aid, 353,  "\\script\\item\\shanhesheji.lua");
	NotifySDBRecordChanged("Adventure", Date ,0 ,1);
	GlobalExecute(format("dw AddLocalNews([[%s]])", str));
	OutputMsg("Tai "..aid.." ID Map ["..mapid.."]: xuat hien mot bao vat!");
end

function TaskShedule()
	TaskName("Ѱ�ұ���")
	TaskInterval(30)
	TaskCountLimit(0)
end

function TaskContent()
	CAdventure:NewCimelia()
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end
