-- ====================== �ļ���Ϣ ======================

-- ������Ե�����Խ���շѰ� - ��赱���
-- �ļ�������yubi_baoxiang.lua
-- �����ߡ����ӷ��~
-- ����ʱ�䣺2011-03-23 17:08:58

-- ======================================================

Include("\\script\\lib\\awardtemplet.lua")

--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 300tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
Include("\\script\\vng_event\\change_request_baoruong\\exp_award.lua")

local tbAward = 
{
	[1]={szName="M�t n� Nguy�n so�i",tbProp={0,11,447,1,0,0},nRate = 0.2,},
	[2]={szName="B�ch Ni�n Tr�n L�",tbProp={6,1,2266,1,0,0},nRate = 0.5,},
	[3]={szName="V�n Ni�n Tr�n L�",tbProp={6,1,2268,1,0,0},nRate = 0.2,},
	[4]={szName="Thi�n Ni�n Tr�n L�",tbProp={6,1,2267,1,0,0},nRate = 0.3,},
--Gi�i h�n �i�m kinh nghi�m m�i ng�y l� 300tri�u khi s� d�ng c�c lo�i b�o r��ng - Modified by DinhHQ - 20110428
--	[18]={nExp=1,nRate = 48.72,nCount = 1500000,},
--	[19]={nExp=1,nRate = 30.0,nCount = 2000000,},
--	[20]={nExp=1,nRate = 5.0,nCount = 5000000,},
--	[21]={nExp=1,nRate = 3.0,nCount = 10000000,},
--	[22]={nExp=1,nRate = 2.0,nCount = 20000000,},
--	[23]={nExp=1,nRate = 1.0,nCount = 50000000,},
	[18]={szName="�i�m kinh nghi�m 1", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(1500000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 48.72,
			},
	[19]={szName="�i�m kinh nghi�m 2", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(2000000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 30.0,
			},
	[20]={szName="�i�m kinh nghi�m 3", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(5000000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 5.0,
			},
	[21]={szName="�i�m kinh nghi�m 4", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(10000000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 3.0,
			},
	[22]={szName="�i�m kinh nghi�m 5", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(20000000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 2.0,
			},
	[23]={szName="�i�m kinh nghi�m 6", 
				pFun = function (tbItem, nItemCount, szLogTitle)
					%tbvng_ChestExpAward:ExpAward(50000000, "Ng�c B�ch B�o R��ng")
				end,
				nRate = 1.0,
			},

	[24]={szName="Ch�a Kh�a Nh� �",tbProp={6,1,2744,1,0,0},nRate = 1.0,},
	[25]={szName="H�n Nguy�n Linh L�",tbProp={6,1,2312,1,0,0},nRate = 0.2,},
	[26]={szName="Ng�c Qu�n",tbProp={6,1,2311,1,0,0},nRate = 0.4,},
	[27]={szName="C�m nang thay ��i tr�i ��t",tbProp={6,1,1781,1,0,0},tbParam = {60}, nRate = 5.0,},
	[28]={szName="Ti�n Th�o L� ��c bi�t",tbProp={6,1,1181,1,0,0},nRate = 1.0,},
}

nWidth = 1
nHeight = 1
nFreeItemCellLimit = 1

function main(nIndexItem)
	
	-- �ж�����Կ���Ƿ����
	local nCount = CalcItemCount(3, 6, 1, 2744, -1) 
	if nCount == 0 then
		Say("Ph�i c� Ch�a Kh�a Nh� � m�i m� ���c Ng�c B�ch B�o R��ng", 1, "��ng/no")
		return 1
	end

	if CountFreeRoomByWH(nWidth, nHeight, nFreeItemCellLimit) < nFreeItemCellLimit then
		Say(format("�� b�o ��m t�i s�n c�a ��i hi�p, xin h�y �� tr�ng %d %dx%d h�nh trang", nFreeItemCellLimit, nWidth, nHeight))
		return 1
	end
	if ConsumeItem(3, 1, 6, 1, 2744, -1) == 1 then	-- ��������Կ��
		tbAwardTemplet:GiveAwardByList(%tbAward, "use yubi_baoxiang", 1);
	end
	return 0
end
