Include("\\script\\lib\\composeex.lua")
Include("\\script\\dailogsys\\dailogsay.lua")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\general\\thunghiem\\trangbihoangkimmaxopkhoa.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-----------------------------------------------
TL1 = {"M�ng Long Ch�nh H�ng T�ng M�o","M�ng Long Kim Ti Ch�nh H�ng C� Sa","M�ng Long Huy�n Ti Ph�t ��i","M�ng Long Ph�t Ph�p Huy�n B�i","M�ng Long ��t Ma T�ng h�i"}
TL2 = {"Ph�c Ma T� Kim C�n","Ph�c Ma Huy�n Ho�ng C� Sa","Ph�c Ma � Kim Nhuy�n �i�u","Ph�c Ma Ph�t T�m Nhuy�n Kh�u","Ph�c Ma Ph� �� T�ng h�i"}
TL3 = {"T� Kh�ng Gi�ng Ma Gi�i �ao","T� Kh�ng T� Kim C� Sa","T� Kh�ng H� ph�p Y�u ��i","T� Kh�ng Nhuy�n B� H� Uy�n","T� Kh�ng Gi�i Lu�t Ph�p gi�i"}

TV1 = {"H�m Thi�n Kim Ho�n ��i Nh�n Th�n Ch�y","H�m Thi�n V� Th�n T��ng Kim Gi�p","H�m Thi�n Uy V� Th�c y�u ��i","H�m Thi�n H� ��u Kh�n Th�c Uy�n","H�m Thi�n Th�a Long Chi�n Ngoa"}
TV2 = {"K� Nghi�p B�n L�i To�n Long th��ng","K� Nghi�p Huy�n V� Ho�ng Kim Kh�i","K� Nghi�p B�ch H� V� Song kh�u","K� Nghi�p H�aV�n K� L�n Th� ","K� Nghi�p Chu T��c L�ng V�n Ngoa"}
TV3 = {"Ng� Long L��ng Ng�n B�o �ao","Ng� Long Chi�n Th�n Phi Qu�i gi�p","Ng� Long Thi�n M�n Th�c Y�u ho�n","Ng� Long T�n Phong H� y�n","Ng� Long Tuy�t M�nh Ch� ho�n"}

NM1 = {"V� Gian � Thi�n Ki�m","V� Gian Thanh Phong Truy Y","V� Gian Ph�t V�n Ti ��i","V� Gian C�m V�n H� Uy�n","V� Gian B�ch Ng�c B�n Ch� "}
NM2 = {"V� Ma Ma Ni qu�n","V� Ma T� Kh�m C� Sa","V� Ma B�ng Tinh Ch� Ho�n","V� Ma T�y T��ng Ng�c Kh�u ","V� Ma H�ng Truy Nhuy�n Th�p h�i"}
NM3 = {"V� Tr�n Ng�c N� T� T�m qu�n","V� Tr�n Thanh T�m H��ng Thi�n Ch�u","V� Tr�n T� Bi Ng�c Ban Ch� ","V� Tr�n Ph�t T�m T� H�u Y�u Ph�i","V� Tr�n Ph�t Quang Ch� Ho�n"}

TY1 = {"T� Ho�ng Ph�ng Nghi �ao","T� Ho�ng Tu� T�m Khinh Sa Y","T� Ho�ng Phong Tuy�t B�ch V�n Th�c ��i","T� Ho�ng B�ng Tung C�m uy�n","T� Ho�ng Th�y Ng�c Ch� Ho�n"}
TY2 = {"B�ch H�i Uy�n ��ng Li�n Ho�n �ao","B�ch H�i Ho�n Ch�u V� Li�n","B�ch H�i H�ng Linh Kim Ti ��i","B�ch H�i H�ng L�ng Ba","B�ch H�i Khi�n T� Ch� ho�n"}

ND1 = {"U Lung Kim X� Ph�t ��i","U Lung X�ch Y�t M�t trang","U Lung Thanh Ng� Tri�n y�u","U Lung Ng�n Th�m H� Uy�n","U Lung M�c Th� Nhuy�n L� "}
ND2 = {"Minh �o T� S�t ��c Nh�n","Minh �o U ��c �m Y","Minh �o ��c Y�t Ch� Ho�n","Minh �o H� C�t H� uy�n","Minh �o Song Ho�n X� H�i"}
ND3 = {"Ch� Ph��c Ph� gi�p ��u ho�n","Ch� Ph��c Di�t L�i C�nh Ph� ","Ch� Ph��c U �o Ch� Ho�n","Ch� Ph��c Xuy�n T�m ��c Uy�n","Ch� Ph��c B�ng H�a Th�c C�t Ngoa"}

DM1 = {"B�ng H�n ��n Ch� Phi �ao","B�ng H�n Huy�n Y Th�c Gi�p","B�ng H�n T�m Ti�n Y�u Kh�u","B�ng H�n Huy�n Thi�n B�ng H�a B�i","B�ng H�n Nguy�t �nh Ngoa"}
DM2 = {"Thi�n Quang Hoa V� M�n Thi�n","Thi�n Quang ��nh T�m Ng�ng Th�n Ph� ","Thi�n Quang S�m La Th�c ��i","Thi�n Quang Song B�o H�n Thi�t Tr�c","Thi�n Quang Th�c Thi�n Ph��c ��a Ho�n"}
DM3 = {"S�m Hoang Phi Tinh �o�t H�n","S�m Hoang KimTi�n Li�n Ho�n Gi�p","S�m Hoang H�n Gi�o Y�u Th�c","S�m Hoang Huy�n Thi�t T��ng Ng�c B�i","S�m Hoang Tinh V�n Phi L� "}
DM4 = {"��a Ph�ch Ng� h�nh Li�n Ho�n Qu�n","��a Ph�ch H�c Di�m Xung Thi�n Li�n","��a Ph�ch T�ch L�ch L�i H�a Gi�i","��a Ph�ch Kh�u T�m tr�c","��a Ph�ch ��a H�nh Thi�n L� Ngoa"}

CB1 = {"��ng C�u Phi Long ��u ho�n","��ng C�u Gi�ng Long C�i Y","��ng C�u Ti�m Long Y�u ��i","��ng C�u Kh�ng Long H� Uy�n","��ng C�u Ki�n Long Ban Ch� "}
CB2 = {"��ch Kh�i L�c Ng�c Tr��ng","��ch Kh�i C�u ��i C�i Y","��ch Kh�i Tri�n M�ng y�u ��i","��ch Kh�i C�u T�ch B� H� uy�n","��ch Kh�i Th�o Gian Th�ch gi�i"}

TN1 = {"Ma S�t Qu� C�c U Minh Th��ng","Ma S�t T�n D��ng �nh Huy�t Gi�p","Ma S�t X�ch K� T�a Y�u Kh�u","Ma S�t C� H�a Li�u Thi�n uy�n","Ma S�t V�n Long Th� Ch�u gi�i"}
TN2 = {"Ma Ho�ng Kim Gi�p Kh�i","Ma Ho�ng �n Xu�t H� H�ng Khuy�n","Ma Ho�ng Kh� C�c Th�c y�u ��i","Ma Ho�ng Huy�t Y Th� Tr�c","Ma Ho�ng ��ng ��p Ngoa"}
TN3 = {"Ma Th� Li�t Di�m Qu�n Mi�n","Ma Th� L� Ma Ph� T�m Li�n","Ma Th� Nghi�p H�a U Minh Gi�i","Ma Th� Huy�t Ng�c Th�t S�t B�i","Ma Th� s�n  H�i Phi H�ng L� "}

VD1 = {"L�ng Nh�c Th�i C�c Ki�m","L�ng Nh�c V� Ng� ��o b�o","L�ng Nh�c N� L�i Gi�i","L�ng Nh�c V� C�c Huy�n Ng�c B�i","L�ng Nh�c Thi�n ��a Huy�n Ho�ng gi�i"}
VD2 = {"C�p Phong Ch�n V� Ki�m","C�p Phong Tam Thanh Ph� ","C�p Phong Huy�n Ti Tam �o�n c�m","C�p Phong Th�y Ng�c Huy�n Ho�ng B�i","C�p Phong Thanh T�ng Ph�p gi�i"}

CL1 = {"S��ng Tinh Thi�n Ni�n H�n Thi�t","S��ng Tinh Ng�o S��ng ��o b�o","S��ng Tinh Thanh Phong L� ��i","S��ng Tinh Thi�n Tinh B�ng Tinh th� ","S��ng Tinh Phong B�o ch� ho�n"}
CL2 = {"L�i Khung H�n Tung B�ng B�ch quan","L�i Khung Thi�n ��a H� ph� ","L�i Khung Phong L�i Thanh C�m ��i","L�i Khung Linh Ng�c U�n L�i","L�i Khung C�u Thi�n D�n L�i gi�i"}
CL3 = {"V� �o B�c Minh ��o qu�n","V� �o Ki B�n ph� ch� ","V� �o Th�c T�m ch� ho�n","V� �o Thanh �nh Huy�n Ng�c B�i","V� �o Tung Phong Tuy�t �nh ngoa"}
---------------------------------
function main() 
dofile("script/global/pgaming/npc/freepk/chuyendoitrangbihkmp.lua")
	local tbOpt = {
		{"��i Set Ho�ng Kim M�n Ph�i T�y Ch�n",DoiTrangBiHKMP},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i Mu�n ��i Set Trang B� Ho�ng Kim M�n Ph�i kh�ng?<color>", tbOpt)
end

function main()
dofile("script/global/pgaming/npc/freepk/chuyendoitrangbihkmp.lua")
	local tbOpt = {
		{"Thi�u L�m Quy�n",TLQuyen},
		{"Thi�u L�m B�ng",TLCon},
		{"Thi�u L�m �ao",TLDao},
		{"Thi�n V��ng Ch�y",TVChuy},
		{"Thi�n V��ng Th��ng",TVThuong},
		{"Thi�n V��ng �ao",TVDao},
		{"Nga My Ki�m",NMKiem},
		{"Nga My Ch��ng",NMChuong},
		{"Nga My Buff",NMBuff},
		{"Trang Sau",main2},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>��t v�o Set M�n ph�i ng��i mu�n ��i sang ph�i kh�c<color>", tbOpt)
end

function main2()
	local tbOpt = {
		{"Th�y Y�n �ao",TYDao},
		{"Th�y Y�n Song �ao",TYSongDao},
		{"Ng� ��c Ch��ng",NDChuong},
		{"Ng� ��c �ao",NDDao},
		{"Ng� ��c B�a",NDBua},
		{"���ng M�n Phi �ao",DMPhiDao},
		{"���ng M�n T� Ti�n",DMTuTien},
		{"���ng M�n Phi Ti�u",DMPhiTieu},
		{"���ng M�n B�y",DMBay},
		{"Trang Sau",main3},
		{"Trang Tr��c",main},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>��t v�o Set M�n ph�i ng��i mu�n ��i sang ph�i kh�c<color>", tbOpt)
end

function main3()
	local tbOpt = {
		{"C�i Bang R�ng",CBRong},
		{"C�i Bang B�ng",CBBong},
		{"Thi�n Nh�n K�ch",TNKich},
		{"Thi�n Nh�n �ao",TNDao},
		{"Thi�n Nh�n B�a",TNBua},
		{"V� �ang Quy�n",VDQuyen},
		{"V� �ang Ki�m",VDKiem},
		{"C�n L�n �ao",CLDao},
		{"C�n L�n Ki�m",CLKiem},
		{"C�n L�n B�a",CLBua},
		{"Trang Tr��c",main2},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>��t v�o Set M�n ph�i ng��i mu�n ��i sang ph�i kh�c<color>", tbOpt)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLQuyen()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TLQuyen_1", "onCancel",1 );
end

function TLQuyen_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL1) do
				if szName == %TL1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLCon()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TLCon_1", "onCancel",1 );
end

function TLCon_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL2) do
				if szName == %TL2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TLDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TLDao_1", "onCancel",1 );
end

function TLDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TL3) do
				if szName == %TL3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVChuy()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TVChuy_1", "onCancel",1 );
end

function TVChuy_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV1) do
				if szName == %TV1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVThuong()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TVThuong_1", "onCancel",1 );
end

function TVThuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV2) do
				if szName == %TV2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TVDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TVDao_1", "onCancel",1 );
end

function TVDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TV3) do
				if szName == %TV3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMKiem()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NMKiem_1", "onCancel",1 );
end

function NMKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM1) do
				if szName == %NM1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMChuong()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NMChuong_1", "onCancel",1 );
end

function NMChuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM2) do
				if szName == %NM2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NMBuff()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NMBuff_1", "onCancel",1 );
end

function NMBuff_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%NM3) do
				if szName == %NM3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TYDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TYDao_1", "onCancel",1 );
end

function TYDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TY1) do
				if szName == %TY1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TYSongDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TYSongDao_1", "onCancel",1 );
end

function TYSongDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TY2) do
				if szName == %TY2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDChuong()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NDChuong_1", "onCancel",1 );
end

function NDChuong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND1) do
				if szName == %ND1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NDDao_1", "onCancel",1 );
end

function NDDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND2) do
				if szName == %ND2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NDBua()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "NDBua_1", "onCancel",1 );
end

function NDBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%ND3) do
				if szName == %ND3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "DMPhiDao_1", "onCancel",1 );
end

function DMPhiDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM1) do
				if szName == %DM1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMTuTien()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "DMTuTien_1", "onCancel",1 );
end

function DMTuTien_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM2) do
				if szName == %DM2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMPhiTieu()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "DMPhiTieu_1", "onCancel",1 );
end

function DMPhiTieu_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM3) do
				if szName == %DM3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function DMBay()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "DMBay_1", "onCancel",1 );
end

function DMBay_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%DM4) do
				if szName == %DM4[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CBRong()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "CBRong_1", "onCancel",1 );
end

function CBRong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CB1) do
				if szName == %CB1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CBBong()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "CBBong_1", "onCancel",1 );
end

function CBBong_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CB2) do
				if szName == %CB2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNKich()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TNKich_1", "onCancel",1 );
end

function TNKich_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN1) do
				if szName == %TN1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TNDao_1", "onCancel",1 );
end

function TNDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN2) do
				if szName == %TN2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function TNBua()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "TNBua_1", "onCancel",1 );
end

function TNBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%TN3) do
				if szName == %TN3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VDQuyen()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "VDQuyen_1", "onCancel",1 );
end

function VDQuyen_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%VD1) do
				if szName == %VD1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function VDKiem()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "VDKiem_1", "onCancel",1 );
end

function VDKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%VD2) do
				if szName == %VD2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLDao()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "CLDao_1", "onCancel",1 );
end

function CLDao_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL1) do
				if szName == %CL1[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLKiem()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "CLKiem_1", "onCancel",1 );
end

function CLKiem_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL2) do
				if szName == %CL2[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CLBua()
	GiveItemUI( "��i Set HKMP Kh�c", "B�n c�n chu�n b� 1 Set Trang B� HKMP v� "..TienDongChuyenTrangBi.." ti�n ��ng, th� c� th� ��i ���c 1 Set Ho�ng Kim M�n ph�i t�y ch�n kh�c.", "CLBua_1", "onCancel",1 );
end

function CLBua_1( nCount )
	countvk = 0
	if nCount ~= 5 then						
		Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
		return 0
	else
		for i = 1, nCount do
			local nItemIndex = GetGiveItemUnit(i)
			szName = GetItemName(nItemIndex)
			for i=1, getn(%CL3) do
				if szName == %CL3[i] then
					countvk = countvk + 1
				end
			end
		end
		if countvk ~= 5 then
				Say("Xin ki�m tra k�, trang b� b�n ��a ta kh�ng ph� h�p y�u c�u!",0)
				return 0
		end
		if CalcFreeItemCellCount() < 10 then
			Say("H�y ch�c ch�n r�ng b�n c� �� ch� tr�ng trong h�nh trang.",0)
			return 0
		end
		if (CalcEquiproomItemCount(4, 417, 1, 1)>=TienDongChuyenTrangBi) then
			for i = 1, nCount do		
				nItemIndex = GetGiveItemUnit( i )
				k = RemoveItemByIndex( nItemIndex )
				if ( k ~= 1 ) then
					Say("Chuy�n g� v�y, sao ng��i c� th� g�t ta?",0)
					return 0
				end		
			end
			ConsumeEquiproomItem(TienDongChuyenTrangBi, 4, 417, 1, 1)
			TRANGBIHOANGKIMMAXKHOA()
			Msg2Player("Ch�c M�ng "..GetName().." ��i trang b� Th�nh C�ng")
		else
			Say("Kh�ch quan �ang tr�u ch�c ti�u nh�n hay th�t s� ng��i c� �� "..TienDongChuyenTrangBi.." Ti�n ��ng kh�ng?", 0);
		end	
	end
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function OnTimer(nNpcIndex,nTimeOut)
    local tab_Chat = {
        "     <pic=41><bclr=fire><enter>C�m th�y ch�n trang b� m�n ph�i tr�n ng��i h�y ��n v�i ta<bclr>",
            "     <pic=36><bclr=blue><enter>Ch�c c�c nh�n s� g�p nhi�u may m�n v� ph�t t�i...! <bclr>",
            "     <pic=115><pic=115><pic=115><bclr=blue><enter>Mu�n thay ��i trang b� th� h�y t�m ta!!!<color><bclr>",
    }
    local ran = random(1,getn(tab_Chat))
    NpcChat(nNpcIndex,tab_Chat[ran])
    local ranTimer = random(10,20)
    SetNpcTimer(nNpcIndex,ranTimer*18)
    SetNpcScript(nNpcIndex,"\\script\\global\\pgaming\\npc\\freepk\\chuyendoitrangbihkmp.lua") 
end

function Add_Npc_ChuyenDoiTrangBiHKMP()
    local tb_npc_hotro = {
        {1579,3222},
    }
    local nMapIndex = SubWorldID2Idx(78)
    for i=1,getn(tb_npc_hotro) do
            local npcID    = (198)
            local npcName = "Chuy�n ��i Trang B� HKMP"
            local npcdialog = AddNpc(npcID,0,nMapIndex,(tb_npc_hotro[i][1])*32,(tb_npc_hotro[i][2])*32,0,npcName,1)
            SetNpcTimer(npcdialog,5*18)
            SetNpcScript(npcdialog,"\\script\\global\\pgaming\\npc\\freepk\\chuyendoitrangbihkmp.lua")     
    end
end