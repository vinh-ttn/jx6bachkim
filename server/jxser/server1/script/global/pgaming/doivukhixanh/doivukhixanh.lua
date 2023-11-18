Include("\\script\\global\\pgaming\\doivukhixanh\\makeitemblue.lua")
Include("\\script\\task\\system\\task_string.lua");
Include("\\script\\activitysys\\playerfunlib.lua")
Include("\\script\\task\\random\\task_head.lua");

function main()
dofile("script/global/pgaming/doivukhixanh/doivukhixanh.lua")
	local tbOpt = 
	{
		"<dec><npc>Ng��i mu�n ch� t�o trang b� n�o ��y?",
		"Ch� t�o trang b� xanh/ITEMBLUE_MakeItem",
		"Ch� t�o trang b� xanh 2/ITEMBLUE_MakeItemBlue",
		"Ta ch� gh� qua xem th�/cancel",
	}
	CreateTaskSay(tbOpt);
end

function cancel()
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
            "     <pic=36><bclr=blue><enter>Mu�n t�m hi�u �� xanh th� mau t�m ta...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\doivukhixanh\\doivukhixanh.lua") 
end

function Add_Npc_DoiVuKhiXanh()
    local tb_npc_hotro = {
        {1571,3247},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (198)
            local npcName = "��i V� Kh� Xanh"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\doivukhixanh\\doivukhixanh.lua")     
    end
end
