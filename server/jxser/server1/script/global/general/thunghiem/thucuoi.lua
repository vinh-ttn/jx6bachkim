-- C�c h�m nh�n �i�m


IncludeLib("SETTING")
Include("\\script\\lib\\alonelib.lua");
Include("\\script\\global\\fuyuan.lua")
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_THUCUOI = {
	{szName="� V�n ��p Tuy�t", tbProp={0,10,5,6,0,0}, nWidth=2, nHeight=3},
	{szName="X�ch Th�", tbProp={0,10,5,7,0,0}, nWidth=2, nHeight=3},
	{szName="Tuy�t �nh", tbProp={0,10,5,8,0,0}, nWidth=2, nHeight=3},
	{szName="��ch L�", tbProp={0,10,5,9,0,0}, nWidth=2, nHeight=3},
	{szName="Chi�u D� Ng�c S� T�", tbProp={0,10,5,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phi V�n", tbProp={0,10,8,10,0,0}, nWidth=2, nHeight=3},
	{szName="B�n Ti�u", tbProp={0,10,6,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phi�n V�", tbProp={0,10,7,10,0,0}, nWidth=2, nHeight=3},
	--{szName="X�ch Long C�u", tbProp={0,10,9,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Si�u Quang", tbProp={0,10,13,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh H� V��ng", tbProp={0,10,14,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H�a Tinh Kim H� V��ng", tbProp={0,10,15,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh B�ch H� V��ng", tbProp={0,10,16,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Long Tinh H�c H� V��ng", tbProp={0,10,17,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H�n Huy�t Long C�u", tbProp={0,10,18,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n B�ch M�", tbProp={0,10,19,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n Chi�n M�", tbProp={0,10,20,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n Th�n M�", tbProp={0,10,21,10,0,0}, nWidth=2, nHeight=3},
	--{szName="S� t�", tbProp={0,10,22,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L�c ��", tbProp={0,10,23,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D��ng ��", tbProp={0,10,24,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H��u ��m", tbProp={0,10,25,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D��ng Sa", tbProp={0,10,26,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Ng� Phong", tbProp={0,10,27,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Truy �i�n", tbProp={0,10,28,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L�u Tinh", tbProp={0,10,29,10,0,0}, nWidth=2, nHeight=3},
	--{szName="X�ch Long C�u", tbProp={0,10,30,10,0,0}, nWidth=2, nHeight=3},
};

TAB_THUCUOI2 = {
	{szName="� V�n ��p Tuy�t", tbProp={0,10,5,6,0,0}, nWidth=2, nHeight=3},
	{szName="X�ch Th�", tbProp={0,10,5,7,0,0}, nWidth=2, nHeight=3},
	{szName="Tuy�t �nh", tbProp={0,10,5,8,0,0}, nWidth=2, nHeight=3},
	{szName="��ch L�", tbProp={0,10,5,9,0,0}, nWidth=2, nHeight=3},
	{szName="Chi�u D� Ng�c S� T�", tbProp={0,10,5,10,0,0}, nWidth=2, nHeight=3},
	{szName="Phi V�n", tbProp={0,10,8,10,0,0}, nWidth=2, nHeight=3},
	--{szName="B�n Ti�u", tbProp={0,10,6,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phi�n V�", tbProp={0,10,7,10,0,0}, nWidth=2, nHeight=3},
	--{szName="X�ch Long C�u", tbProp={0,10,9,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Si�u Quang", tbProp={0,10,13,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh H� V��ng", tbProp={0,10,14,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H�a Tinh Kim H� V��ng", tbProp={0,10,15,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Kim Tinh B�ch H� V��ng", tbProp={0,10,16,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Long Tinh H�c H� V��ng", tbProp={0,10,17,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H�n Huy�t Long C�u", tbProp={0,10,18,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n B�ch M�", tbProp={0,10,19,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n Chi�n M�", tbProp={0,10,20,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Phong V�n Th�n M�", tbProp={0,10,21,10,0,0}, nWidth=2, nHeight=3},
	--{szName="S� t�", tbProp={0,10,22,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L�c ��", tbProp={0,10,23,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D��ng ��", tbProp={0,10,24,10,0,0}, nWidth=2, nHeight=3},
	--{szName="H��u ��m", tbProp={0,10,25,10,0,0}, nWidth=2, nHeight=3},
	--{szName="D��ng Sa", tbProp={0,10,26,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Ng� Phong", tbProp={0,10,27,10,0,0}, nWidth=2, nHeight=3},
	--{szName="Truy �i�n", tbProp={0,10,28,10,0,0}, nWidth=2, nHeight=3},
	--{szName="L�u Tinh", tbProp={0,10,29,10,0,0}, nWidth=2, nHeight=3},
	--{szName="X�ch Long C�u", tbProp={0,10,30,10,0,0}, nWidth=2, nHeight=3},
};

function ThuCuoi()
	local tbThuCuoi = TAB_THUCUOI;
	AddItemByTable("M�i b�n ch�n lo�i th� c��i:", tbThuCuoi)
end

function ThuCuoi2()
	local tbThuCuoi = TAB_THUCUOI2;
	AddItemByTable("M�i b�n ch�n lo�i th� c��i:", tbThuCuoi)
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "Th� c��i", ThuCuoi);
-- pEventType:Reg("L�nh b�i T�n Th�", "Th� c��i", ThuCuoi);