IncludeLib("SETTING")
Include("\\script\\item\\levelup_item.lua")
Include("\\script\\global\\head_qianzhuang.lua")
Include("\\script\\global\\systemconfig.lua")
Include([[\script\global\�����õ�\�ξ�\npc\·��_��ɮ.lua]])

TBMONTH = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
strimg = "<link=image[0,1]:\\spr\\npcres\\enemy\\enemy111\\enemy111_pst.spr>��c C� Ki�m:<link>"
function cg_getnextdate(oldday, num) --���oldday�ĵ�num�յ����ڣ�����060227�ĵ�5��Ϊ060304
	local nDay = tonumber(oldday)
	local nYear = floor(nDay / 10000)
	local nMonth = floor((nDay - nYear * 10000) / 100)
	nDay = nDay - nYear * 10000 - nMonth * 100 
	nDay = nDay + num
	
	while (nDay > TBMONTH[nMonth]) do
		nDay = nDay - TBMONTH[nMonth]
		if (nMonth == 12) then
			nMonth = 1
			nYear = nYear + 1
		else
			nMonth = nMonth + 1
		end
	end
return (nYear * 10000 + nMonth * 100 + nDay) end

function chuangong_main()
	-- VN_MODIFY_20060427
	if (1) then 
		Say("Hi�u xu�t sai.", 0) 
	return end 

	--if (gb_GetModule("Truy�n c�ng") ~= 1) then 
		--Say("Th�t xin l�i, truy�n c�ng ch�c n�ng t�m th�i t�t , l�n n�a m� ra th�i gian li�n ch� � quan ph��ng th�ng b�o !", 0) 
	--return end 
	if (GetTask(TV_LAST_APPLY_TIME) > 0) then 
		Say("<color=green>��c C� Ki�m<color>: "..GetName()..", �� l�u kh�ng g�p, h�m nay t�m ta c� chuy�n g�?",3,
		"Ta mu�n h�i th�m li�n quan t�i truy�n c�ng. /chuangong_info",
		"Ta mu�n h�y b� l�n truy�n c�ng l�n tr��c !/cg_undo",
		"Ta ch�ng qua l� t�i b�i ki�n minh ch� ng��i m� th�i./OnCancel") 
	else 
		Say("<color=green>��c C� Ki�m<color>: "..GetName()..", �� l�u kh�ng g�p, h�m nay t�m ta c� chuy�n g�?",2,
		"Ta mu�n h�i th�m li�n quan t�i truy�n c�ng./chuangong_info",
		"Ta ch�ng qua l� t�i b�i ki�n minh ch� ng��i m� th�i. /OnCancel") 
	end
end

function chuangong_info()
	--if (gb_GetModule("����") ~= 1) then
		--Say("Th�t xin l�i, truy�n c�ng ch�c n�ng t�m th�i t�t , l�n n�a m� ra th�i gian li�n ch� � quan ph��ng th�ng b�o!", 0)
		--return 
	--end
	local nowday = tonumber(date("%y%m%d"))
	local applytime = GetTask(TV_LAST_APPLY_TIME)
	if (applytime == 0) then 
		Describe(strimg.."Ph�m l� du l�ch giang h� �� l�u, c�p b�c t� 100 c�p ��n 160 c�p c�a ng��i, ta c�ng c� th� gi�p h�n �em m�t th�n c�ng l�c chuy�n th�nh m�t vi�n Nguy�n Th�n �an, m�t 10 c�p tr� xu�ng kh�ng c� v�o m�n ph�i l�i kh�ng b�i s� ng��i c�a ch� c�n �n Nguy�n Th�n �an li�n c� th� ��t ���c truy�n c�ng ng��i m�t th�n c�ng l�c, d� nhi�n m�t truy�n ho�n c�ng ng��i c�a v� c�ng c�ng kh�ng v� ph�n to�n ph�, b�t qu� c�ng li�n c�n d� l�i 80 c�p ��ch t�i ngh�. H�n n�a n�ng l�c ta c� h�n, c�p b�c c�ng cao ng��i c�a c�ng kh� �em v� c�ng chuy�n h�a th�nh Nguy�n Th�n �an, t� nh� m�t 100~120 ng��i c�a v�t truy�n c�ng l�c kinh nghi�m s� hao t�n 5% , 121~150 c�p s� hao t�n 10% , m� 150 c�p tr� l�n s� hao t�n 20% , <color=yellow> h�i th�m nh�ng th� n�y ch�ng l� huynh �� ng��i ngh� truy�n c�ng ? <color>", 2, 
		"��ng v�y, ta �� du l�ch giang h� �� l�u, g�n nh�t mu�n tho�i �n. /chuangong_do", "D� nhi�n kh�ng ph�i, ch�ng qua l� t�i h�i th�m m�t ch�t m� th�i. /OnCancel"); 
	elseif (nowday >= applytime ) then 
		Describe(strimg.."Truy�n c�ng ��ch chu�n b� �� t�t l�m ."..itemstr..".\n ng��i nh�t ��nh ph�i truy�n c�ng sao ? c�i n�y m�t truy�n coi nh� kh�ng th� quay ��u l�i a !<enter>6 th�ng 20 ng�y sau �em t�m th�i t�t truy�n c�ng th�n th�nh , 6 th�ng 29 ng�y 24:00 sau �em t�m th�i t�t truy�n c�ng ch�c n�ng . ", 3,
		"��ng v�y , l�ng ta � �� quy�t. /chuangong_dosure",
		"Kh�ng, ta mu�n h�y b� truy�n c�ng !/cg_undo",
		"Ch� ta suy ngh� th�m m�t ng�y �i. /OnCancel"); 
	else 
		Describe(strimg.."Ta �ang chu�n b� truy�n c�ng c�n thi�t �� nguy�n li�u ,ta ph�i "..(num2datestr(applytime)).." sau m�i c� th� chu�n b� xong !,", 2,
		"Th�t l� phi�n to�i minh ch�, v�n b�i � ch� n�y c�m �n !/OnCancel",
		"Kh�ng , ta mu�n h�y b� truy�n c�ng!/cg_undo"); 
	end
end



function num2datestr(nday)
	local year = floor(nday / 10000) + 2000
	local month = mod( floor(nday / 100) , 100)
	local day = mod(nday, 100)
return "N�m "..year.." th�ng "..month.." ng�y "..day; end

function cg_undo()
	local nowday = GetTask(TV_LAST_APPLY_TIME)
	if (nowday > 0) then 
		Describe(strimg.."Ta ��n "..num2datestr(nowday).." li�n c� th� chu�n b� xong gi�p ng��i truy�n c�ng, ng��i th�t kh�ng mu�n truy�n sao ? <enter>6 th�ng 20 ng�y sau �em t�m th�i t�t truy�n c�ng th�n th�nh, 6 th�ng 29 ng�y 24:00 sau �em t�m th�i t�t truy�n c�ng ch�c n�ng . ",2,
		"��ng v�y , ta kh�ng mu�n truy�n c�ng n�a!/cg_undo_sure",
		"Kh�ng , ta c�n l� mu�n truy�n c�ng, m�i v�a r�i nh�t th�i kh�n tr��ng n�i sai m� th�i./OnCancel") 
	else 
		Describe(strimg.."Ng��i kh�ng c� �� n�i v�i ta mu�n truy�n c�ng a. Ch�a n�i qua nh� th� n�o h�y b� ��y ? ",1,"K�t th�c ��i tho�i /OnCancel") 
	end
end

function cg_undo_sure()
	SetTask(TV_LAST_APPLY_TIME, 0)
	Describe(strimg.."���c r�i, v�y nh�ng nguy�n li�u n�y thu l�i, n�u nh� l�n sau mu�n truy�n l�i c�a n�a chu�n b� �i !",1,"C�m �n minh ch�!/OnCancel")
end

function chuangong_do()
	local nEndLevel = GetLevel()
	local nRestExp = GetExp()
	if (nEndLevel < 100) then 
		Describe(strimg.."A a, v� ti�u huynh �� n�y, l�y ng��i b�y gi� c�ng l�c t�a h� c�n ch�a �� �� l�y truy�n cho ng��i kh�c ��u. Truy�n c�ng c�n <color=yellow>c�p 100 <color> tr� l�n, ng��i n�n �i luy�n �i . ",1,"V�ng, ta bi�t!/OnCancel") 
	return end 
	if (nEndLevel >= 160) then 
		Describe(strimg.."A a , V� huynh �� n�y, v��t qua c�p 160 tr� l�n l� kh�ng th� truy�n c�ng.",1,"V�ng, ta bi�t !/OnCancel") 
	return end
	
	local nLevelFullExp = tonumber(GetTabFileData(FILE_LEVEL, nEndLevel+ 1, 2))
	local fPerc = format("%.2f", (nEndLevel)+(nRestExp/nLevelFullExp))
	
	local str = strimg.."B�y gi� v� c�ng tu vi, n�u nh� truy�n c�ng l�i c�a �em chuy�n h�a th�nh m�t <color=yellow> c�p b�c :"..fPerc.."<color>nguy�n th�n �an "
	str = str..client_main(nEndLevel, nRestExp)
	Describe(str..", B�t qu� ta c�n chu�n b� m�t tu�n l�, ng��i � ��y �o�n trong l�c t�y th�i c� th� t�i h�y b� truy�n c�ng, d� sao m�t ng��i luy�n v� ��n c�i tr�nh �� n�y kh�ng d� d�ng, m�i xin ng��i � n�i n�y �o�n th�i gian suy ngh� th�t k� c�n nh�c �i",2,
	"Minh ch� , ta �� quy�t t�m quy �n , ng�i c� th� b�t ��u chu�n b� !/chuangong_doprepair1",
	"Nh� v�y a, v�y ta suy ngh� m�t ch�t n�a tr� l�i �i . /OnCancel") 
end

function chuangong_doprepair1()
	local nowday = tonumber(date("%y%m%d"))
	local nextday = cg_getnextdate(nowday, 7)
	SetTask(TV_LAST_APPLY_TIME , nextday);
	WriteLog("[chuangong]: "..nowday.." Acc:"..GetAccount().."Role:"..GetName().." n�i l�n truy�n c�ng th�n th�nh !") 
	Describe(strimg.."V�ng ! V�y ta l�p t�c chu�n b� ng��i truy�n c�ng s� nghi, m�t tu�n l� sau <color=yellow>"..num2datestr(nextday).."<color> ng��i tr� l�i, ta cho ng��i ch�nh th�c truy�n c�ng ! D� nhi�n ng��i c�ng t�y th�i c� th� t�i ta ch� n�y h�y b� truy�n c�ng.", 1,"C�m �n minh ch�, v�y ta m�t tu�n l� sau tr� l�i !/OnCancel") 
	Msg2Player("Ng��i �� truy�n c�ng th�nh c�ng , m�t tu�n l� sau tr� l�i t�m ��c c� ki�m c� th� ch�nh th�c ti�n h�nh truy�n c�ng, c�ng ��t ���c nguy�n th�n �an ! c�ng c� th� t�y th�i t�m ��c c� ki�m h�y b� truy�n c�ng th�n th�nh !")
end

function chuangong_dosure()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("C�p b�c c�a ng��i �t h�n 100 c�p ho�c v��t qua 160 c�p kh�ng th� truy�n c�ng !",0)
	return end
	if (CalcItemCount(2,0,-1,-1,-1) > 0) then
		Say("Th�t xin l�i, truy�n c�ng, tr�n ng��i kh�ng th� gi� b� b�t k� trang b�, xin m�i c�i xu�ng trang b� n�a truy�n c�ng �i !",0)
	return end
	Describe(strimg.."Truy�n c�ng c�n tr� 2 t�m ng�n phi�u, ng��i c� hay kh�ng �� b� v�o t�i �eo l�ng ? L�c n�y th�t ph�i h�n truy�n c�ng, ng��i nh�t ��nh ph�i truy�n c�ng sao ? ",2,
	"Hai t�m ng�n phi�u �� chu�n b� xong !/chuangong_doit1",
	"Ta suy ngh� th�m m�t ch�t /OnCancel")
end

function chuangong_doit1()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("C�p b�c c�a ng��i �t h�n 100 c�p ho�c v��t qua 160 c�p kh�ng th� truy�n c�ng !",0)
	return end
	Describe(strimg.."X�c ��nh m�t l�n n�a! Ch� � : truy�n c�ng sau khi ho�n th�nh, ng��i vai tr� s� t� ��ng �o�n tuy�n. L�n n�a ��ng v�o sau, � l�ng trong t�i x�ch t�c s� t�n t�i nguy�n th�n �an m�t qu�.",2,
	"X�c nh�n/chuangong_doit",
	"K�t th�c ��i tho�i./OnCancel")
end

function chuangong_doit()
	if (GetLevel() < 100 or GetLevel() >= 160) then
		Say("C�p b�c c�a ng��i �t h�n 100 c�p ho�c v��t qua 160 c�p kh�ng th� truy�n c�ng !",0)
	return end
	local result = qz_use_silver(2, "�۴�����")
	if ( result == 0) then
		Describe(strimg.."H�nh trang c�a ng��i trong t�i x�ch kh�ng c� 2 t�m ng�n phi�u, ta kh�ng th� cho ng��i truy�n c�ng !", 1, "Oh, th�t xin l�i, ta tr� v� chu�n b� /OnCancel")	
	return elseif (result ~= 1) then
	return  end
	
	SetTask(TV_LAST_APPLY_TIME, 0)
	local nowday = tonumber(date("%y%m%d"))
	local logstr = "[chuangong]��"..nowday.." Acc:"..GetAccount().."Role:"..GetName().." �����ɹ���Level:"..GetLevel().." Exp:"..GetExp();
	DoClearSkillCore()
	DoClearPropCore()
	UpdateSkill()
	local endlevel = GetLevel()
	local restexp = GetExp()
	
	ST_LevelUp(80 - endlevel)
	local param5 = chuangong_item(endlevel, restexp)
	logstr = logstr.." ItemParam5:"..param5
	WriteLog(logstr)
end

function chuangong_item(level,restexp)
	if (restexp <0) then
		restexp = 0
	end
	
	nIt = AddItem(6,1,1061,1,0,0,0)
	SetItemMagicLevel(nIt, 1, level)
	SetItemMagicLevel(nIt, 2, restexp)

	m1 = GetByte(restexp, 3)
	m2 = GetByte(restexp, 4)
	m = m1
	m = SetByte(m1, 2, m2)
	
	n1 = SetByte(restexp, 3,0)
	n =  SetByte(n1, 4, 0)

	SetItemMagicLevel(nIt, 3, m)
	SetItemMagicLevel(nIt, 4, n)
	SetItemMagicLevel(nIt, 5, FileName2Id(GetName()))
	SyncItem(nIt)
	return GetItemParam(nIt, 5)
end

function OnCancel()
end
