
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

TAB_VATPHAMHOTRO = {
	{szName="Th�n H�nh Ph�", tbProp={6,1,1266,1,0,0}, nWidth=1, nHeight=1},
	{szName="C�m nang thay ��i tr�i ��t", tbProp={6,1,1781,1,0,0}, tbParam={60}, nWidth=1, nHeight=1},
	{szName="S�t th� gi�n (c�p 90)", tbProp={6,1,400,90,0,0}, nWidth=1, nHeight=2 },
	{szName="L�nh b�i Phong L�ng ��", tbProp={4,489,1,0,0,0} , nWidth=1, nHeight=1},
	--{szName="Vi�m �� L�nh", tbProp={6,1,1617,1,0,0}, nWidth=1, nHeight=1 },
	--{szName="Ng�c Long L�nh B�i", tbProp={6,1,2623,1,0,0}, nWidth=1, nHeight=1 },
	--{szName="Nh�t K� C�ng Kh�n Ph�", tbProp={6,1,2126,1,0,0} , nWidth=1, nHeight=1},
	--{szName="<B�c ��u Tr��ng Sinh Thu�t - C� S� Thi�n>", tbProp={6,1,1390,1,0,0}, nWidth=1, nHeight=1 },
	{szName="T�y T�y Kinh", tbProp={6,1,22,1,0,0}, nCount=15 , nWidth=3, nHeight=5},
	{szName="V� L�m M�t T�ch", tbProp={6,1,26,1,0,0}, nCount=15, nWidth=3, nHeight=5},
	{szName="T�i h�nh trang", tbProp={6,1,1427,1,0,0}, nWidth=1, nHeight=1},
}

function VatPhamHoTro()
	local tbVPHT = TAB_VATPHAMHOTRO;
	AddItemByTable("M�i b�n ch�n v�t ph�m h� tr�:", tbVPHT)
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "V�t ph�m h� tr�", VatPhamHoTro, {});
-- pEventType:Reg("L�nh b�i T�n Th�", "V�t ph�m h� tr�", VatPhamHoTro, {});