if not jiefang_0804_mieshangzei then
	
jiefang_0804_mieshangzei = {}


jiefang_0804_mieshangzei.tbDate = 
{

}
--ÿ���ڣ����壬���������� 
--����ޣ�2008-12-05��2009-04-01

function jiefang_0804_mieshangzei:IsActive()
	local nData = tonumber(date("%Y%m%d"))
	local nWeek = tonumber(date("%w"))
	if nData >= 20081205 and nData <= 20090104 and (nWeek == 5 or nWeek == 6 or nWeek == 0) then
		return 1
	end
	return 0
	
end

function jiefang_0804_mieshangzei:CallBoss()
	if self:IsActive() == 1 then --ִ��
		
		local tbMap = 
		{
			{nId = 121, szName = "������", tbPos = { {251,261}, {268,293} } },
			{nId = 100, szName = "������", tbPos = { {202,211}, {219,182} } },
			{nId = 101, szName = "�����", tbPos = { {225,185}, {190,176} } },
			{nId = 174, szName = "��Ȫ��", tbPos = { {182,190}, {193,216} } },
			{nId = 53, szName = "������", tbPos = { {220,189}, {178,204} } },
			{nId = 20, szName = "�����", tbPos = { {459,365}, {452,396} } },
			{nId = 153, szName = "ʯ����", tbPos = { {226,218}, {184,217} } },
			{nId = 99, szName = "������", tbPos = { {217, 183}, {185,199} } },
		}
		local nMapCount = getn(tbMap)
		self.tbSelectedMap = {}
		for i=1, 3 do
			local nIdx = random(1,nMapCount+1-i);
			self.tbSelectedMap[i] = 
			{
				nId		= tbMap[nIdx].nId,
				szName	= tbMap[nIdx].szName,
				tbPos	= tbMap[nIdx].tbPos[random(1,2)],
			}
			
			
			local szMsg = format("ɽ������ <color=green>%s<color>ɧ�Ŵ��񣬴��Ŭ������ɽ��.", self.tbSelectedMap[i].szName)
			
			GlobalExecute(format("dwf \\script\\event\\jiefang_jieri\\200804\\mieshanzei\\callnpc.lua jiefang_0804_CallBoss(%d,%d,%d)", self.tbSelectedMap[i].nId, self.tbSelectedMap[i].tbPos[1], self.tbSelectedMap[i].tbPos[2]) )
			GlobalExecute(format("dw AddLocalCountNews([[%s]], 2)", szMsg))
			GlobalExecute(format("dw Msg2SubWorld([[%s]])", szMsg))
			OutputMsg(szMsg)
		
			tbMap[nMapCount+1-i], tbMap[nIdx] = tbMap[nIdx], tbMap[nMapCount+1-i] --��ѡ�еķŵ�����
		end
	end
end

function jiefang_0804_mieshangzei:CallReinforce(nNpcCount)
	
	if self:IsActive() == 1 and self.tbSelectedMap ~= nil and getn(self.tbSelectedMap) > 0 then
		
		for i = 1, getn(self.tbSelectedMap) do
			GlobalExecute(format("dwf \\script\\event\\jiefang_jieri\\200804\\mieshanzei\\callnpc.lua jiefang_0804_CallReinforce(%d,%d,%d,%d)", self.tbSelectedMap[i].nId, self.tbSelectedMap[i].tbPos[1], self.tbSelectedMap[i].tbPos[2], nNpcCount))
		end
		
	end

end


end