-- Xa phu � Nam Nh�c Tr�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");

CurStation = 11;
Include("\\script\\global\\station.lua")
--Include("\\script\\global\\skills_table.lua")

function main(sel)
--	check_update()					-- ���ܸ��¡����ɼӱ�ʶ��2004-05-31��
--	UTask_world15 = GetTask(15)
--	if (UTask_world15 < 255) then	
--		Say("���򣺰������ڵ�����Խ��Խ�����ˣ�ԭ�����в��ٸ��̴�үȥ��ũ���Ƕ����棬���������֪���Ķ��ܳ�һȺ��Ҷ���·��ٿ��ˣ�������������Ӱ�죬��������ܸ�����Щ��Ҷ��ͺ��ˡ�����Ҹ���ʮֻ���ӣ��Ϳ��������������ʹ��һ�γ�����Ҫ������", 2, "��æ/yes", "����æ/no")
--		SetTask(15, 1)
--	else
		Say("<color=green>Xa phu<color>: L�m ngh� xa phu th�t l� kh� c�c, c� l�c ��n ch�o tr�ng c�ng kh�ng c� m� �n!"..Note("xaphu_namnhactran"), 4, "Nh�ng n�i �� �i qua/WayPointFun", "Nh�ng th�nh th� �� �i qua/StationFun", "Quay l�i ��a �i�m c� /TownPortalFun", "Kh�ng c�n ��u/OnCancel");
--	end
end;

function yes()
	Task0013 = GetTaskTemp(13);
	if (Task0013 < 10) then			--û��ɱ��ʮֻ��Ҷ��
		Say("L�m ngh� xa phu th�t l� kh� c�c, c� l�c ��n ch�o tr�ng c�ng kh�ng c� m� �n!", 4, "Nh�ng n�i �� �i qua/WayPointFun", "Nh�ng th�nh th� �� �i qua/StationFun", "Quay l�i ��a �i�m c� /TownPortalFun", "Kh�ng c�n ��u/OnCancel");
	else
		SetTaskTemp(13, 0)
		Say("C�m �n ng��i �� b�t d�m ta H�c Di�p H�u! Ta ��a ng��i �i mi�n ph�!", 4, "Nh�ng n�i �� �i qua/WayPointFun", "Nh�ng th�nh th� �� �i qua/StationFun", "Quay l�i ��a �i�m c� /TownPortalFun", "Kh�ng c�n ��u/OnCancel")
	end
end;

function  OnCancel()
	Say("Kh�ng ti�n kh�ng th� ng�i xe!",0)
end;
