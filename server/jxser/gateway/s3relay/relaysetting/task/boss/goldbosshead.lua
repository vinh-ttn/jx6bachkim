--�ƽ����Ľű��趨
--1������һ���ƽ����Ĳ��������ű��ļ���������Relay\RelaySetting\Task\Ŀ��Ϣ�档
--�ڸ��ļ���ͷ���ֱ�������ƽ�����ͷ�ļ�
--����Ϣ��������
--Include("\\RelaySetting\\Task\\boss\\GoldBossHead.lua");

--2���ڷǺ�������(ȫ�ֶ���)����д��ƽ�����йص�ȫ�ֱ���ֵ
--�ֱ���
--1��Sid��ʾ������Boss�ķ����ţ�ÿ������ֻ��ͬʱ����һ��Boss��ע��Boss�����ű�����Ψһ�ģ������趨�ظ���Sid��.
--2��Interval��ʾ����Boss�ļ��ʱ��,��λΪ����
--3��Count ��ʾ�����÷����Ĵ��������Ϊ0��ʾ���޴�����ֻҪ��ʱ��ʹ������ű���
--4��StartHour, StartMin��ʾ��һ�δ�����������ʱ�䣬StartHour��ʾСʱ��StartMin��ʾ���ӡ�
--���StartHour��StartMin����-1ʱ����ʾRelayһ��������������ʼ��һ�δ���
--����:
Sid = 4
Interval = 30
Count = 4
StartHour = 3
StartMin = 19
--�����趨��ʾ����4���ƽ�����������������3��19�ֿ�ʼ��һ�δ����������Ժ�ÿ��Сʱ(30����)����һ�Σ�������4�Ρ�Ҳ������3:19 3:49 4:19 4:49����.

--3��������ʵ��Boss�Ľű�����NewBoss()
--�ú���������ڡ��ú����Ĺ����Ǿ����Ƿ�Ҫ����Boss,Boss���ڵء�������ȼ���
--��ˡ��������շ�����Ϣ4������
--�ֱ��ʾ�Ƿ�Ҫ����boss,boss���ڵ�ͼid,boss��Npcģ��id, boss�ĵȼ���
--������ϢNewBoss��ʵ��.
function NewBoss()
	return 1, 20, random(100), 50 + random(50); 
end;
--��ʾ������������ڵ�ͼIDΪ20�ĵ�ͼ�ϣ�npcģ�����1��100���,�ȼ���51��100���

--4����Relay\RelaySetting\Task\TaskList.ini�ļ������ӱ��ű�
--��[List]Ϣ��Count��ֵ��һ��ʾ��������һ����ʱ��������
--����[Task_X],��X�滻����Т��Countֵ.
--��[Task_X]��TaskFile����ű����ļ���
																			--�ƽ���������:��
																			--2004.2.13 16:27:08	

function GameSvrConnected(dwGameSvrIP)
bFind , key1, mapid = GetFirstRecordFromSDB("GoldBoss",Sid, 0, 1, 0);
if (bFind == 1) then 
	--��������ķ���������Boss������ʱ
	if (IsMapOnGameSvr(mapid, dwGameSvrIP ) == 1) then 
		bResult , npctid, npclevel, npcstate = GetCustomDataFromSDB("GoldBoss", Sid, mapid, "iii");		
		if (bResult == 1) then 
			success = SaveCustomDataToSDBOw("GoldBoss", Sid, mapid, "iii", npctid, npclevel, 0);
			NotifySDBRChanged1Svr(dwGameSvrIP, "GoldBoss", Sid ,mapid ,1);		
			msg = format("Boss Ho�ng Kim %d, ���� GameSvr %d khoi dong lien tiep Relay, xuat hien boss Hoang Kim o khu vuc %d, ID Npc%d,  Cap bac Npc%d.", Sid, dwGameSvrIP, mapid, npctid, npclevel);
			OutputMsg(msg);
		else
			success = ClearRecordOnShareDB("GoldBoss",Sid, 0,1,0);		
		end;
	else
		OutputMsg("Khoi dong lai may chu khong ton tai BOSS:"..Sid);
	end
end

end;

function GameSvrReady(dwGameSvrIP)
end

function TaskShedule()
	--���÷�������
	TaskName("BOSS HOANG KIM"..Sid)
	
	--���ü��ʱ�䣬��λΪ����
	TaskInterval(Interval)
	
	--���ô���������0��ʾ���޴���
	TaskCountLimit(Count)
	
	--�趨��ʱ������ʱ��
	if (StartHour ~= -1 and StartMin ~= -1) then 
		TaskTime(StartHour, StartMin);
	end;
	--ɾ����ǰ������
	success = ClearRecordOnShareDB("GoldBoss",Sid, 0,1,0);
	OutputMsg("Xoa du lieu thong tin boss Hoang Kim "..Sid);
end

function TaskContent()
	bFind , key1, key2 = GetFirstRecordFromSDB("GoldBoss",Sid, 0, 1, 0);
	if (bFind == 1) then
		OutputMsg("Tim duoc boss Hoang Kim o Co so du lieu".. Sid..","..key2.."thong tin chuong trinh");
		bResult , npctid, npclevel, npcstate = GetCustomDataFromSDB("GoldBoss", Sid, key2, "iii");
		msg =	format("Du lieu %d trong chuong trinh co boss Hoang Kim Npc: %d, Cap :%d, Trang Thai: %d", Sid, npctid, npclevel, npcstate);
		OutputMsg(msg);
		if (bResult == 1) then 
			if (npctid == 0 and npcstate == 0 and npclevel == 0) or (npctid ~= 0 and npclevel ~=0 and npcstate == 0) then 
				create, mapid, npcid, npclevel = NewBoss();
				if (create == 1) then 
					msg = format("Boss Hoang Kim %d thong tin khong co hoac da chet, sap xuat hien boss Hoang Kim moi Npc Map %d, Cap bac Npc  %d.   ", Sid, mapid, npcid, npclevel);
					OutputMsg(msg);
					success = SaveCustomDataToSDBOw("GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);
					NotifySDBRecordChanged("GoldBoss", Sid ,mapid ,1);
				end
			end
		end
	else
		create, mapid, npcid, npclevel = NewBoss();
		msg = format("Boss Hoang Kim %d o thong tin tren khong co xuat hien, Npc ID %d, Cap bac Npc %d,", Sid, mapid, npcid, npclevel);
		OutputMsg(msg);
		success = SaveCustomDataToSDBOw("GoldBoss",Sid, mapid, "iii", npcid, npclevel, 0);
		NotifySDBRecordChanged("GoldBoss", Sid ,mapid ,1);
	end
end

