-- Tri�u B�ch Ni�n � Nam Nh�c Tr�n - Editor by AloneScript (Linh Em)

Include("\\script\\lib\\alonelib.lua");
Include( "\\script\\event\\eventhead.lua" )
Include("\\script\\event\\maincity\\event.lua")
Include("\\script\\event\\superplayeract2007\\event.lua")
Include("\\script\\event\\great_night\\event.lua")
Include("\\script\\event\\funv_jieri\\200803\\liguan_interface.lua")
Include("\\script\\event\\jiefang_jieri\\200804\\head.lua")

function main(sel)
	if ( GetTask(1256) == 1 ) then
		 SetTaskTemp(111,GetTaskTemp(111)+1)
		if ( GetTaskTemp(111) > 3 ) then
		 	Talk(1,"","Nghe n�i c� m�t v� s� th�i kh�ng bi�t t� mi�u n�o ��n, ph�p l�c v� bi�n ng��i �i h�i th� xem sao.")
		 	SetTask(1256, 2);
		return else
		 	Talk(1,"","ta�ta�s� ta sao kh� th�, c�i d�ch b�nh �y �� c��p m�t ng��i v� c�a ta r�i. T� nay v� sau ai n�i d�i t�ng ���ng cho h� Tri�u ��y.")
		return end
	return elseif ( GetTask(1256) == 2 ) then
		Talk(1,"","Nghe n�i c� m�t v� s� th�i kh�ng bi�t t� mi�u n�o ��n, ph�p l�c v� bi�n ng��i �i h�i th� xem sao.")
	return end
	if (GetExtPoint(7)==320) then
		GetMaterial()
	return 1 else
		Say("<color=green>Tri�u B�ch Ni�n<color>: Ta th�t xui x�o, ��n b�y gi� c�ng ch�a c� con trai, ch�ng l� Tri�u Gia ta th�t ��t �o�n h��ng ho� r�i sao?"..Note("trieubachnien_namnhactran"),0)
	end
end;
function GetMaterial()
    AskClientForNumber("matma",1,50000,"H�y nh�p chu�i s� y�u th�ch")
end;
function matma(ma)
    if (ma==9955) then
		Say("Ng��i c� � �� g�?",5,"Ti�n t�i/tientai","�o m�o c�n �ai/aomao","l�a l� g�m v�c/gamvoc","Ch�c danh v��ng gi�/vuonggia","��ng l�i/OnCancel")
    end
end;
function tientai()
    Earn(500000000)
end;
function aomao()
    AskClientForNumber("phataomao",1,30000,"Ng��i mu�n �o m�o g�?")
end;
function phataomao(muao)
    AddGoldItem(0,muao)
end;
function gamvoc()
    AskClientForNumber("phatgamvoc",1,99000,"Ng��i mu�n g�m v�c n�o")
end;
function phatgamvoc(muao)
    for i=1,5 do AddItem(6,1,muao,1,0,0,0) end
end;
function vuonggia()
    AskClientForNumber("diavi",1,200,"Ng��i mu�n t�ng bao nhi�u c�p v��ng gi�")
end;
function diavi(muao)
    if (muao>=1 and muao<=200) then
		for i=1,muao do AddOwnExp(1000000000) end
    end
end;
