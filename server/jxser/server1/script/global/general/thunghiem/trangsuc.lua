
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_TRANGSUC = {
	{szName="Tr��ng sinh", tbProp={0,3491}, nQuality=1},
	{szName="B�t H�i", tbProp={0,3492}, nQuality=1},
	{szName="V� Uy", tbProp={0,3493}, nQuality=1},
	{szName="Nh��c Th�y", tbProp={0,3494}, nQuality=1},
	{szName="Tr�n Nh�c", tbProp={0,3495}, nQuality=1},
	{szName="Y�n Ba", tbProp={0,3496}, nQuality=1},
	{szName="Th�n Tu�", tbProp={0,3497}, nQuality=1},
	{szName="Truy Anh", tbProp={0,3498}, nQuality=1},
	{szName="Long ��m", tbProp={0,3499}, nQuality=1},
	{szName="L�u Hu�nh", tbProp={0,3500}, nQuality=1},
	{szName="Cu�ng Lan", tbProp={0,3501}, nQuality=1},
	{szName="Th�y Ng�c B�ng Huy�n", tbProp={0,3502}, nQuality=1},
	{szName="H�ng Anh", tbProp={0,3503}, nQuality=1},
	{szName="Ng�ng Tuy�t H�n S��ng", tbProp={0,3504}, nQuality=1},
	{szName="Di�u Gi�i Tr�n Duy�n", tbProp={0,3505}, nQuality=1},
	{szName="L�c Ph� Qu�n Tinh", tbProp={0,3506}, nQuality=1},
};

function TrangSuc()
	AddItemByTable("B�n mu�n l�y trang s�c lo�i n�o?", TAB_TRANGSUC)
end


-- pEventType:Reg("T�nh n�ng th� nghi�m", "Trang s�c", TrangSuc);