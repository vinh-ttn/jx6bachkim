
Include("\\script\\misc\\eventsys\\type\\npc.lua");

TAB_PHIPHONG = {
	{szName="Phi phong L�ng V�n", tbProp={0,3465}, nQuality=1},
	{szName="Phi phong Tuy�t Th�", tbProp={0,3466}, nQuality=1},
	{szName="Phi phong c�p Ph� Qu�n ( d�ch chuy�n t�c th�i )", tbProp={0,3467}, nQuality=1},
	{szName="Phi phong Ngao tuy�t (D�ch chuy�n t�c th�i)", tbProp={0,3468}, nQuality=1},
	{szName="Phi phong Ng�o Tuy�t (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3469}, nQuality=1},
	{szName="Phi phong Kinh L�i (D�ch chuy�n t�c th�i)", tbProp={0,3470}, nQuality=1},
	{szName="Phi phong Kinh L�i (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3471}, nQuality=1},
	{szName="Phi phong Kinh L�i ( Tr�ng k�ch )", tbProp={0,3472}, nQuality=1},
	{szName="Phi phong Ng� Phong (D�ch chuy�n t�c th�i )", tbProp={0,3473}, nQuality=1},
	{szName="Phi phong Ng� Phong (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3474}, nQuality=1},
	{szName="Phi phong Ng� Phong (Tr�ng k�ch)", tbProp={0,3475}, nQuality=1},
	{szName="Phi Phong Ph� Quang ( d�ch chuy�n t�c th�i)", tbProp={0,3476}, nQuality=1},
	{szName="Phi Phong Ph� Quang (h�a gi�i s�t th��ng)", tbProp={0,3477}, nQuality=1},
	{szName="Phi Phong Ph� Quang ( tr�ng k�ch)", tbProp={0,3478}, nQuality=1},
	{szName="Phi Phong Kh�p Th�n (d�ch chuy�n t�c th�i)", tbProp={0,3479}, nQuality=1},
	{szName="Phi Phong Kh�p Th�n (H�a Gi�i S�t Th��ng)", tbProp={0,3480}, nQuality=1},
	{szName="Phi Phong Kh�p Th�n (Tr�ng K�ch)", tbProp={0,3481}, nQuality=1},
	{szName="Phi phong K�nh Thi�n ( D�ch chuy�n t�c th�i)", tbProp={0,3482}, nQuality=1},
	{szName="Phi phong K�nh Thi�n (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3483}, nQuality=1},
	{szName="Phi phong K�nh Thi�n ( Tr�ng k�ch)", tbProp={0,3484}, nQuality=1},
	{szName="Phi phong V� C�c ( D�ch chuy�n t�c th�i)", tbProp={0,3485}, nQuality=1},
	{szName="Phi phong V� C�c (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3486}, nQuality=1},
	{szName="Phi phong V� C�c ( Tr�ng k�ch)", tbProp={0,3487}, nQuality=1},
	{szName="Phi Phong Si�u c�p V� C�c ( D�ch chuy�n t�c th�i)", tbProp={0,3488}, nQuality=1},
	{szName="Phi Phong Si�u c�p V� C�c (X�c su�t h�a gi�i s�t th��ng)", tbProp={0,3489}, nQuality=1},
	{szName="Phi Phong Si�u c�p V� C�c ( Tr�ng k�ch)", tbProp={0,3490}, nQuality=1},
};

function PhiPhong()
	AddItemByTable("B�n mu�n l�y phi phong lo�i n�o?", TAB_PHIPHONG)
end

-- pEventType:Reg("T�nh n�ng th� nghi�m", "Phi Phong", PhiPhong);