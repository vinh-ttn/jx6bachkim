Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
---------------------------------
function main() 
dofile("script/global/pgaming/npc/freepk/vatphamhotro.lua")
	local tbOpt = {
		{"Mua Phi T�c Ho�n",PhiTocHoan},
		{"Mua ��i L�c Ho�n",DaiLucHoan},
		{"Mua T�ng Kim Phi T�c Ho�n",TKPhiTocHoan},
		{"Mua L�nh B�i",LenhBai},
		{"Mua Chi�n C�",ChienCo},
		{"Mua Kh�ng ��n Chi Gi�c",KhangDonChiGiac},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i Mu�n ��i Set Trang B� Ho�ng Kim M�n Ph�i kh�ng?<color>", tbOpt)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function PhiTocHoan()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/PhiTocHoan2",
	"Ta s� quay l�i sau!/no"
	);
end

function PhiTocHoan2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("PhiTocHoan3",0,nXu, "2/1: ")
end

function PhiTocHoan3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,0,6,1,1,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DaiLucHoan()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/DaiLucHoan2",
	"Ta s� quay l�i sau!/no"
	);
end

function DaiLucHoan2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("DaiLucHoan3",0,nXu, "2/1: ")
end

function DaiLucHoan3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,0,3,1,1,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TKPhiTocHoan()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/tkphitochoan2",
	"Ta s� quay l�i sau!/no"
	);
end

function tkphitochoan2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("tkphitochoan3",0,nXu, "2/1: ")
end

function tkphitochoan3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,1,190,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function LenhBai()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/LenhBai2",
	"Ta s� quay l�i sau!/no"
	);
end

function LenhBai2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("LenhBai3",0,nXu, "2/1: ")
end

function LenhBai3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,1,157,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function ChienCo()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/ChienCo2",
	"Ta s� quay l�i sau!/no"
	);
end

function ChienCo2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("ChienCo3",0,nXu, "2/1: ")
end

function ChienCo3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,1,156,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function KhangDonChiGiac()
local nXu = CalcEquiproomItemCount(4,417,1,-1);
	Describe("S� l��ng Xu hi�n c�: <color=yellow>: "..nXu.."<color><enter>     T� l� ��i 2 Xu = 1 Phi T�c Ho�n<enter>",11,
	"Ta ��ng � ��i/KhangDonChiGiac2",
	"Ta s� quay l�i sau!/no"
	);
end

function KhangDonChiGiac2()
	local nXu = CalcEquiproomItemCount(4,417,1,-1)/2
	AskClientForNumber("KhangDonChiGiac3",0,nXu, "2/1: ")
end

function KhangDonChiGiac3(n_key)
local nRuong = CalcFreeItemCellCount() 
for i=1,n_key do
		ItemIndex = AddStackItem(1,6,1,214,1,0,0)
		SetItemBindState(ItemIndex, -2)
		ConsumeEquiproomItem(2, 4, 417, 1, 1)
	end
end;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
			"     <pic=115><pic=115><pic=115><bclr=blue><enter>Mu�n gia t�ng s�c m�nh h�y t�m g�p ta <pic=00>!!!<color><bclr>",
            "     <pic=36><bclr=blue><enter>Ch�c c�c nh�n s� g�p nhi�u may m�n v� ph�t t�i...! <bclr>",            
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\npc\\freepk\\vatphamhotro.lua") 
end

function Add_Npc_VatPhamHoTro()
    local tb_npc_hotro = {
        {1579,3240},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (203)
            local npcName = "B�n V�t Ph�m H� Tr�"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\freepk\\vatphamhotro.lua")     
    end
end