

-------局部变量定义 开始---------
-------局部变量定义 结束---------

tbConfig = {}
tbConfig[1] = --一个细节
{
	nId = 1,
	szMessageType = "FinishSongJin",
	szName = "B猲 th緉g t鑞g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {1,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{"5000000*(mod(GetTask(1926),256)+1)",0,"sonjin"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[2] = --一个细节
{
	nId = 2,
	szMessageType = "FinishSongJin",
	szName = "B猲 thua t鑞g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {"-1",3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{"3000000*(mod(GetTask(1926),256)+1)",0,"sonjin"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[3] = --一个细节
{
	nId = 3,
	szMessageType = "FinishSongJin",
	szName = "B猲 h遖 t鑞g kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {0,3},
	tbCondition = 
	{
		{"PlayerFunLib:CheckBT_PL_BATTLEPOINT",	{3000,">="} },
		{"PlayerFunLib:CheckTaskDaily",	{1926,0,"",">="} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddExp",	{"4000000*(mod(GetTask(1926),256)+1)",0,"sonjin"} },
		{"ThisActivity:ExecActivityDetail",	{4} },
	},
}
tbConfig[4] = --一个细节
{
	nId = 4,
	szMessageType = "nil",
	szName = "t s� l莕 T鑞g Kim",
	nStartDate = nil,
	nEndDate  = nil,
	tbMessageParam = {nil},
	tbCondition = 
	{
		{"PlayerFunLib:CheckTaskDaily",	{1926,3,"","<"} },
	},
	tbActition = 
	{
		{"PlayerFunLib:AddTaskDaily",	{1926,1} },
	},
}
