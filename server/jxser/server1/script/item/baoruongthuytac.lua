---------------Youtube PGaming---------------
IncludeLib("ITEM")
Include("\\script\\lib\\awardtemplet.lua")
Include("\\script\\lib\\log.lua")

function myplayersex()
	if GetSex() == 1 then 
		return "N� Hi�p";
	else
		return "��i Hi�p";
	end
end
----------------------------------------------------
function main()

------------------------------------
if GetLevel() < 50 then
	Talk(1,"",""..myplayersex().." Ch�a �� C�p 50 kh�ng th� s� d�ng")
return 1 end	
tbAwardTemplet:GiveAwardByList(tbAward,1)		
end
-----------------------------------------------------------------------------------------------------------------------
tbAward = {
	[1] = {
		{nExp_tl=500000},
	},
	[2] = {
		{szName="Ti�n Th�o L�",tbProp={6,1,71,1,0,0},nCount=1,nExpiredTime=43200,nRate=3},	
		{szName="Ph�c Duy�n L� ��i",tbProp={6,1,124,1,0,0},nCount=1,nRate=2},
		{szName="Ph�c Duy�n L� Trung",tbProp={6,1,123,1,0,0},nCount=1,nRate=5},
		{szName="Ph�c Duy�n L� Ti�u",tbProp={6,1,122,1,0,0},nCount=1,nRate=10},
		{szName="Huy�n Tinh C�p 4",tbProp={6,1,147,4,0,0,0}, tbParam={60},nCount=1,nRate=30},
		{szName="Ti�n Th�o L� ��c Bi�t",tbProp={6,1,1181,1,0,0},nCount=1,nExpiredTime=43200,nRate=0.5},
		{szName="L�nh B�i Phong L�ng ��",tbProp={4,489},nCount=1,nRate=0.1,nExpiredTime=43200},
		{szName="Tinh H�ng B�o Th�ch", tbProp={4,353,1,1,0,0},tbParam={60},nCount=1,nRate=0.005},	
		{szName="Lam Th�y Tinh",tbProp={4,238,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="L�c Th�y Tinh",tbProp={4,240,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
		{szName="T� Th�y Tinh",tbProp={4,239,1,1,0,0}, tbParam={60},nCount=1,nRate=0.005},
	},
}
------------------------------------------------------------------------------------------------------------------------------------------------