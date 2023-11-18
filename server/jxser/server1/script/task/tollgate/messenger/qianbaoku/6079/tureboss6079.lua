-------------------------------------------------------------------------
-- FileName		:	tureboss6079.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-19 19:51:14
-- Desc			:   千宝库关卡的宝箱脚本[60-79级]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\enemy_tureboss.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --取消任务
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --调用计时器
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --获得同伴修练的表格

NPC_PARAM_ID = 1;        --用在boss死亡后刷出怪物的特殊盛件中，增加npc的时候作为GetNpcParam的第二位，意思是该函数取出的是代表目前死亡bossID的数字   
TUREBOSS_RELIVE=2      --每个标志的重生时间
TUREBOSS_EXP=tonumber( TabFile_GetCell( "tollprize" ,8 ,"boss_exp"))  --小怪经验
TUREBOSS_MAPID=393        --当前玩家所在地图千宝库的地图钡号？？是兜少？？
TUREBOSS_MESSENGEREXP=tonumber( TabFile_GetCell( "tollprize" ,8 ,"boss_jifen"))  --小怪经验

turegirl=
{
--被困少女60-79级
{843,70,393,1436,3043,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",1},
{843,70,393,1417,3087,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",2},
{843,70,393,1409,2976,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",3},
{843,70,393,1378,2941,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",4},
{843,70,393,1408,2870,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",5},
{843,70,393,1380,2821,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",6},
{843,70,393,1420,2770,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",7},
{843,70,393,1430,2725,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",8},
{843,70,393,1415,2717,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",9},
{843,70,393,1374,2736,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",10},
{843,70,393,1398,2673,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",11},
{843,70,393,1418,2668,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",12},
{843,70,393,1412,2608,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",13},
{843,70,393,1392,2553,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",14},
{843,70,393,1420,2516,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",15},
{843,70,393,1352,3176,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",16},
{843,70,393,1350,3114,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",17},
{843,70,393,1388,3096,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",18},
{843,70,393,1348,3084,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",19},
{843,70,393,1318,3144,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",20},
{843,70,393,1271,3173,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",21},
{843,70,393,1257,3116,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",22},
{843,70,393,1242,3075,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",23},
{843,70,393,1283,3062,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",24},
{843,70,393,1265,3072,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",25},
{843,70,393,1298,3005,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",26},
{843,70,393,1410,3045,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",27},
{843,70,393,1375,2985,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",28},
{843,70,393,1360,3018,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",29},
{843,70,393,1340,3008,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",30},
{843,70,393,1338,2946,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",31},
{843,70,393,1298,2952,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",32},
{843,70,393,1266,2990,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",33},
{843,70,393,1230,2988,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",34},
{843,70,393,1244,2938,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",35},
{843,70,393,1258,2902,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",36},
{843,70,393,1247,2857,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",37},
{843,70,393,1380,2886,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",38},
{843,70,393,1314,2898,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",39},
{843,70,393,1278,2921,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",40},
{843,70,393,1280,2861,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",41},
{843,70,393,1324,2827,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",42},
{843,70,393,1286,2778,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",43},
{843,70,393,1242,2797,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",44},
{843,70,393,1279,2728,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",45},
{843,70,393,1308,2739,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",46},
{843,70,393,1386,2775,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",47},
{843,70,393,1346,2726,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",48},
{843,70,393,1260,2693,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",49},
{843,70,393,1338,2638,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",50},
{843,70,393,1361,2697,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",51},
{843,70,393,1370,2524,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",52},
{843,70,393,1307,2643,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",53},
{843,70,393,1230,2457,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",54},
{843,70,393,1257,2467,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",55},
{843,70,393,1302,2443,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",56},
{843,70,393,1289,2512,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",57},
{843,70,393,1338,2496,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",58},
{843,70,393,1316,2581,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",59},
{843,70,393,1450,3118,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",60},
{843,70,393,1475,3114,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",61},
{843,70,393,1503,3155,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",62},
{843,70,393,1590,3124,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",63},
{843,70,393,1572,3096,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",64},
{843,70,393,1444,3076,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",65},
{843,70,393,1504,3082,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",66},
{843,70,393,1531,3053,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",67},
{843,70,393,1558,3052,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",68},
{843,70,393,1569,2949,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",69},
{843,70,393,1532,2973,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",70},
{843,70,393,1441,3006,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",71},
{843,70,393,1420,2938,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",72},
{843,70,393,1477,2966,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",73},
{843,70,393,1567,2893,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",74},
{843,70,393,1578,2856,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",75},
{843,70,393,1488,2916,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",76},
{843,70,393,1496,2849,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",77},
{843,70,393,1416,2829,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",78},
{843,70,393,1519,2728,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",79},
{843,70,393,1454,2719,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",80},
{843,70,393,1437,2633,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",81},
{843,70,393,1582,2568,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",82},
{843,70,393,1577,2506,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",83},
{843,70,393,1579,2454,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",84},
{843,70,393,1544,2444,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",85},
{843,70,393,1519,2504,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",86},
{843,70,393,1456,2451,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",87},
{843,70,393,1476,2796,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",88},
{843,70,393,1518,2784,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",89},
{843,70,393,1572,2767,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",90},
{843,70,393,1454,2762,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",91},
{843,70,393,1497,2673,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",92},
{843,70,393,1497,2710,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",93},
{843,70,393,1493,2620,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",94},
{843,70,393,1445,2594,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",95},
{843,70,393,1530,2594,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",96},
{843,70,393,1497,2580,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",97},
{843,70,393,1510,2538,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",98},
{843,70,393,1550,2541,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",99},
{843,70,393,1479,2474,1,"Thi誹 N� B� Giam",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",100}, 

}

turerobber=
{
--B秓 Kh� Чo T芻60-79级
{846,70,393,1439,3040,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",1},
{846,70,393,1417,3079,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",2},
{846,70,393,1407,2980,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",3},
{846,70,393,1374,2942,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",4},
{846,70,393,1412,2870,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",5},
{846,70,393,1376,2821,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",6},
{846,70,393,1424,2770,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",7},
{846,70,393,1434,2725,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",8},
{846,70,393,1411,2717,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",9},
{846,70,393,1378,2736,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",10},
{846,70,393,1398,2669,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",11},
{846,70,393,1422,2668,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",12},
{846,70,393,1408,2606,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",13},
{846,70,393,1396,2553,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",14},
{846,70,393,1416,2516,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",15},
{846,70,393,1348,3176,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",16},
{846,70,393,1354,3114,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",17},
{846,70,393,1384,3096,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",18},
{846,70,393,1348,3088,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",19},
{846,70,393,1314,3144,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",20},
{846,70,393,1267,3173,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",21},
{846,70,393,1257,3112,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",22},
{846,70,393,1246,3075,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",23},
{846,70,393,1281,3058,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",24},
{846,70,393,1265,3068,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",25},
{846,70,393,1300,3005,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",26},
{846,70,393,1414,3045,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",27},
{846,70,393,1371,2985,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",28},
{846,70,393,1364,3018,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",29},
{846,70,393,1340,3004,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",30},
{846,70,393,1342,2946,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",31},
{846,70,393,1302,2952,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",32},
{846,70,393,1270,2990,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",33},
{846,70,393,1234,2988,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",34},
{846,70,393,1240,2938,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",35},
{846,70,393,1254,2902,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",36},
{846,70,393,1243,2857,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",37},
{846,70,393,1384,2886,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",38},
{846,70,393,1318,2898,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",39},
{846,70,393,1282,2921,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",40},
{846,70,393,1276,2861,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",41},
{846,70,393,1320,2827,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",42},
{846,70,393,1282,2778,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",43},
{846,70,393,1238,2797,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",44},
{846,70,393,1275,2728,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",45},
{846,70,393,1304,2729,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",46},
{846,70,393,1386,2769,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",47},
{846,70,393,1342,2726,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",48},
{846,70,393,1256,2693,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",49},
{846,70,393,1334,2638,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",50},
{846,70,393,1357,2697,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",51},
{846,70,393,1374,2524,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",52},
{846,70,393,1307,2637,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",53},
{846,70,393,1226,2457,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",54},
{846,70,393,1253,2467,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",55},
{846,70,393,1306,2443,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",56},
{846,70,393,1286,2514,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",57},
{846,70,393,1334,2496,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",58},
{846,70,393,1320,2581,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",59},
{846,70,393,1446,3118,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",60},
{846,70,393,1471,3114,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",61},
{846,70,393,1499,3155,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",62},
{846,70,393,1586,3124,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",63},
{846,70,393,1568,3096,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",64},
{846,70,393,1448,3076,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",65},
{846,70,393,1508,3082,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",66},
{846,70,393,1531,3047,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",67},
{846,70,393,1558,3046,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",68},
{846,70,393,1565,2949,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",69},
{846,70,393,1528,2930,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",70},
{846,70,393,1444,3010,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",71},
{846,70,393,1416,2938,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",72},
{846,70,393,1481,2966,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",73},
{846,70,393,1571,2893,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",74},
{846,70,393,1574,2856,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",75},
{846,70,393,1484,2916,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",76},
{846,70,393,1492,2849,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",77},
{846,70,393,1420,2829,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",78},
{846,70,393,1515,2728,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",79},
{846,70,393,1450,2719,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",80},
{846,70,393,1433,2633,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",81},
{846,70,393,1586,2568,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",82},
{846,70,393,1573,2506,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",83},
{846,70,393,1583,2454,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",84},
{846,70,393,1548,2444,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",85},
{846,70,393,1519,2498,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",86},
{846,70,393,1460,2451,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",87},
{846,70,393,1480,2796,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",88},
{846,70,393,1522,2784,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",89},
{846,70,393,1576,2767,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",90},
{846,70,393,1458,2762,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",91},
{846,70,393,1493,2673,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",92},
{846,70,393,1501,2710,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",93},
{846,70,393,1489,2620,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",94},
{846,70,393,1441,2594,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",95},
{846,70,393,1526,2594,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",96},
{846,70,393,1493,2580,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",97},
{846,70,393,1506,2538,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",98},
{846,70,393,1546,2541,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",99},
{846,70,393,1483,2474,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\6079\\turezei6079.lua",100}, 
}

function main()
	local name = GetName()
	local Uworld181 = GetTaskTemp(181)
	local Npcindex = GetLastDiagNpc() 					  --获得最后对话npc的index
	local TureParam = GetNpcParam(Npcindex,NPC_PARAM_ID)  --获得在该对话npc身上存储的任务变量
	if (  messenger_middletime() == 10 ) then --玩家在地图中的时间
		Msg2Player("Xin l鏸! "..name.."! B筺  h誸 th阨 gian th鵦 hi謓 nhi謒 v� T輓 s�! Nhi謒 v� th蕋 b筰!.")
		losemessengertask()
	elseif ( TureParam ~= Uworld181 ) then
		Msg2Player("Xin l鏸! ngi ch璦 h� 頲 ngi gi� rng, kh玭g th� m� rng ra!")
		return
	else
		Msg2Player("B筺  th祅h c玭g m� chi誧 rng ra.")
		messenger_turego()
		
	end
end

