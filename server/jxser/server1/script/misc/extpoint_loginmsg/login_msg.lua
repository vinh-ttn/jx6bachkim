Include("\\script\\global\\login_head.lua")
Include("\\script\\global\\systemconfig.lua")
Include("\\script\\misc\\vngpromotion\\ipbonus\\ipbonus_2_head.lua");



LOGINMSG_EXTPOINTID	= 7;
LOGINMSG_BITL			= 1;
LOGINMSG_BITH			= 4;
TB_LOGINMSG_BYBIT = {
-- [1]	= "T�i kho�n c�a b�n �ang ���c ��ng k� s� gi�y t� m�i. B�n h�y ��ng nh�p b�ng m�t m� 2 v�o https://acc.volam.com.vn �� bi�t th�ng tin chi ti�t",
-- [2]	= "T�i kho�n c�a b�n �ang ���c ��ng k� email m�i. B�n h�y ��ng nh�p b�ng m�t m� 2 v�o https://acc.volam.com.vn �� bi�t th�ng tin chi ti�t",
-- [3]	= "T�i kho�n c�a b�n ch�a ��ng k� s� gi�y t� t�y th�n. B�n h�y ��ng nh�p b�ng m�t m� 2 v�o https://acc.volam.com.vn �� bi�t th�ng tin chi ti�t",
-- [4]	= "T�i kho�n c�a b�n ch�a ��ng k� email. B�n h�y ��ng nh�p b�ng m�t m� 2 v�o https://acc.volam.com.vn �� bi�t th�ng tin chi ti�t",
};

function extpoint_loginmsg()
	if (not SYSCFG_EXTPOINTID7_LOGINMSG) then
		return
	end;
	
	-- ֻ��Խ�ϰ汾���д˹���
	if (SYSCFG_PRODUCT_REGION_ID ~= DEF_PRODUCT_REGION_VN) then
		return
	end
		
	local nExtP = GetExtPoint(LOGINMSG_EXTPOINTID);
	if (nExtP ~= 0) then
		for i = LOGINMSG_BITL, LOGINMSG_BITH do
			if (GetBit(nExtP, i) == 1 and TB_LOGINMSG_BYBIT[i]) then
				Msg2Player(TB_LOGINMSG_BYBIT[i])
			end;
		end;
	end;
	
	if IsIPBonus() == 1 then
		IpBonus_Start()
	end;
end;

-- if login_add then login_add(extpoint_loginmsg, 2) end
