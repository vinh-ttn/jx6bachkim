--���Ӵ���ڶ�trap��
--

Include("\\script\\lib\\getrectangle_point.lua") --��þ��ε�

function add_trap_daliheidong()
	local tbpoint =
	{
		tbtoppoint={1832,3232},
		nleftstep = 80,
		nrightstep = 75,
	}
	local nMapID = 162 --����
	local szScriptfile = "\\script\\��������\\����\\����\\trap\\����ڶ�.lua"
	local tballpoint = getRectanglePoint(tbpoint)
	for nx,tbp in tballpoint do
		AddMapTrap(nMapID,floor(tbp[1]*32),floor(tbp[2]*32),szScriptfile)
	end
SetProtectTime(18*3)
	AddSkillState(963, 1, 0, 18*3) 
end