
-- script viet hoa By http://tranhba.com  ====================== #�###�## ======================

-- script viet hoa By http://tranhba.com  ###�#Ф#online #��###�#�#��###�#ű#�#�#�#��#�## - �#�#�### - ###�
-- script viet hoa By http://tranhba.com  Edited by peres
-- script viet hoa By http://tranhba.com  2005/09/09 PM 11:19

-- script viet hoa By http://tranhba.com  ##�###��#��###�#
-- script viet hoa By http://tranhba.com  ##�##��#
-- script viet hoa By http://tranhba.com  #�###�
-- script viet hoa By http://tranhba.com  ###ģ###�#��#�#�###��##�#�#�
-- script viet hoa By http://tranhba.com  ###�######�#̺���׿��#�
-- script viet hoa By http://tranhba.com  ##��#����#�#�##ı#�#��#�#�
-- script viet hoa By http://tranhba.com  ##�##�����#�#�#�#���#
-- script viet hoa By http://tranhba.com  #�###�####��#�###���#��#��####��#�#��ݱ#
-- script viet hoa By http://tranhba.com  #��##�#�####���##��##������##��##�##���###��
-- script viet hoa By http://tranhba.com  #�#�#ĵ#��###�####��ݴ

-- script viet hoa By http://tranhba.com  ======================================================

-- script viet hoa By http://tranhba.com  ######��#��#��###��###�#�#�#��#�##
Include ("\\script\\task\\partner\\master\\partner_master_main_05.lua");


function main()

	-- script viet hoa By http://tranhba.com  ###�##
	if taskProcess_005_02:doTaskEntity()~=0 then return end;
	
	SelectDescribe({"<npc>��Ī���#̢#�###��#�#̢#�###�Ī��㪿�#�######�#�##�#####�############����#�##�####�#####߲##��##�#�######�##�#�####�#�####�׷###",
					"#��##�#�/OnTaskExit"
					});	
end;
