-------------------------------------------------------------------------
-- FileName		:	tureboss8089.lua
-- Author		:	xiaoyang
-- CreateTime	:	2005-04-20 11:05:14
-- Desc			:   千宝库关卡的宝箱脚本[80-89级]
-------------------------------------------------------------------------
IncludeLib( "FILESYS" );
Include("\\script\\task\\tollgate\\messenger\\qianbaoku\\enemy_tureboss.lua") 
Include("\\script\\task\\newtask\\newtask_head.lua") --调用 nt_getTask 同步变量到客户端的赖
Include("\\script\\task\\tollgate\\messenger\\messenger_losetask.lua")  --取消任务
Include("\\script\\task\\tollgate\\messenger\\messenger_timeer.lua")    --调用计时器
TabFile_Load( "\\settings\\task\\tollgate\\messenger\\messenger_tollprize.txt" , "tollprize");	 --获得同伴修练的表格

NPC_PARAM_ID = 1;        --用在boss死亡后刷出怪物的特殊盛件中，增加npc的时候作为GetNpcParam的第二位，意思是该函数取出的是代表目前死亡bossID的数字   
TUREBOSS_RELIVE=2     --每个标志的重生时间
TUREBOSS_EXP=tonumber( TabFile_GetCell( "tollprize" ,9 ,"boss_exp"))  --小怪经验
TUREBOSS_MAPID=394        --当前玩家所在地图千宝库的地图钡号？？是兜少？？
TUREBOSS_MESSENGEREXP=tonumber( TabFile_GetCell( "tollprize" ,9 ,"boss_jifen"))  --小怪经验

turegirl2=
{
--Thi誹 N� B� V﹜80-89级
{843,85,394,1436,3043,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",1},
{843,85,394,1417,3087,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",2},
{843,85,394,1409,2976,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",3},
{843,85,394,1378,2941,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",4},
{843,85,394,1408,2870,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",5},
{843,85,394,1380,2821,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",6},
{843,85,394,1420,2770,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",7},
{843,85,394,1430,2725,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",8},
{843,85,394,1415,2717,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",9},
{843,85,394,1374,2736,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",10},
{843,85,394,1398,2673,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",11},
{843,85,394,1418,2668,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",12},
{843,85,394,1412,2608,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",13},
{843,85,394,1392,2553,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",14},
{843,85,394,1420,2516,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",15},
{843,85,394,1352,3176,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",16},
{843,85,394,1350,3114,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",17},
{843,85,394,1388,3096,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",18},
{843,85,394,1348,3084,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",19},
{843,85,394,1318,3144,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",20},
{843,85,394,1271,3173,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",21},
{843,85,394,1257,3116,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",22},
{843,85,394,1242,3075,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",23},
{843,85,394,1283,3062,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",24},
{843,85,394,1265,3072,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",25},
{843,85,394,1298,3005,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",26},
{843,85,394,1410,3045,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",27},
{843,85,394,1375,2985,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",28},
{843,85,394,1360,3018,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",29},
{843,85,394,1340,3008,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",30},
{843,85,394,1338,2946,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",31},
{843,85,394,1298,2952,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",32},
{843,85,394,1266,2990,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",33},
{843,85,394,1230,2988,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",34},
{843,85,394,1244,2938,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",35},
{843,85,394,1258,2902,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",36},
{843,85,394,1247,2857,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",37},
{843,85,394,1380,2886,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",38},
{843,85,394,1314,2898,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",39},
{843,85,394,1278,2921,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",40},
{843,85,394,1280,2861,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",41},
{843,85,394,1324,2827,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",42},
{843,85,394,1286,2778,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",43},
{843,85,394,1242,2797,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",44},
{843,85,394,1279,2728,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",45},
{843,85,394,1308,2739,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",46},
{843,85,394,1386,2775,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",47},
{843,85,394,1346,2726,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",48},
{843,85,394,1260,2693,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",49},
{843,85,394,1338,2638,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",50},
{843,85,394,1361,2697,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",51},
{843,85,394,1370,2524,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",52},
{843,85,394,1307,2643,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",53},
{843,85,394,1230,2457,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",54},
{843,85,394,1257,2467,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",55},
{843,85,394,1302,2443,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",56},
{843,85,394,1289,2512,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",57},
{843,85,394,1338,2496,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",58},
{843,85,394,1316,2581,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",59},
{843,85,394,1450,3118,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",60},
{843,85,394,1475,3114,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",61},
{843,85,394,1503,3155,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",62},
{843,85,394,1590,3124,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",63},
{843,85,394,1572,3096,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",64},
{843,85,394,1444,3076,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",65},
{843,85,394,1504,3082,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",66},
{843,85,394,1531,3053,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",67},
{843,85,394,1558,3052,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",68},
{843,85,394,1569,2949,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",69},
{843,85,394,1532,2973,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",70},
{843,85,394,1441,3006,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",71},
{843,85,394,1420,2938,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",72},
{843,85,394,1477,2966,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",73},
{843,85,394,1567,2893,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",74},
{843,85,394,1578,2856,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",75},
{843,85,394,1488,2916,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",76},
{843,85,394,1496,2849,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",77},
{843,85,394,1416,2829,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",78},
{843,85,394,1519,2728,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",79},
{843,85,394,1454,2719,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",80},
{843,85,394,1437,2633,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",81},
{843,85,394,1582,2568,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",82},
{843,85,394,1577,2506,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",83},
{843,85,394,1579,2454,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",84},
{843,85,394,1544,2444,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",85},
{843,85,394,1519,2504,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",86},
{843,85,394,1456,2451,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",87},
{843,85,394,1476,2796,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",88},
{843,85,394,1518,2784,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",89},
{843,85,394,1572,2767,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",90},
{843,85,394,1454,2762,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",91},
{843,85,394,1497,2673,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",92},
{843,85,394,1497,2710,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",93},
{843,85,394,1493,2620,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",94},
{843,85,394,1445,2594,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",95},
{843,85,394,1530,2594,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",96},
{843,85,394,1497,2580,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",97},
{843,85,394,1510,2538,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",98},
{843,85,394,1550,2541,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",99},
{843,85,394,1479,2474,1,"Thi誹 N� B� V﹜",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\turegirl.lua",100}, 

}

turerobber2=
{
--B秓 Kh� Чo T芻80-89级
{848,85,394,1439,3040,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",1},
{848,85,394,1417,3079,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",2},
{848,85,394,1407,2980,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",3},
{848,85,394,1374,2942,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",4},
{848,85,394,1412,2870,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",5},
{848,85,394,1376,2821,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",6},
{848,85,394,1424,2770,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",7},
{848,85,394,1434,2725,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",8},
{848,85,394,1411,2717,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",9},
{848,85,394,1378,2736,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",10},
{848,85,394,1398,2669,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",11},
{848,85,394,1422,2668,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",12},
{848,85,394,1408,2606,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",13},
{848,85,394,1396,2553,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",14},
{848,85,394,1416,2516,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",15},
{848,85,394,1348,3176,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",16},
{848,85,394,1354,3114,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",17},
{848,85,394,1384,3096,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",18},
{848,85,394,1348,3088,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",19},
{848,85,394,1314,3144,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",20},
{848,85,394,1267,3173,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",21},
{848,85,394,1257,3112,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",22},
{848,85,394,1246,3075,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",23},
{848,85,394,1281,3058,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",24},
{848,85,394,1265,3068,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",25},
{848,85,394,1300,3005,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",26},
{848,85,394,1414,3045,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",27},
{848,85,394,1371,2985,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",28},
{848,85,394,1364,3018,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",29},
{848,85,394,1340,3004,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",30},
{848,85,394,1342,2946,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",31},
{848,85,394,1302,2952,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",32},
{848,85,394,1270,2990,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",33},
{848,85,394,1234,2988,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",34},
{848,85,394,1240,2938,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",35},
{848,85,394,1254,2902,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",36},
{848,85,394,1243,2857,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",37},
{848,85,394,1384,2886,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",38},
{848,85,394,1318,2898,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",39},
{848,85,394,1282,2921,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",40},
{848,85,394,1276,2861,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",41},
{848,85,394,1320,2827,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",42},
{848,85,394,1282,2778,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",43},
{848,85,394,1238,2797,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",44},
{848,85,394,1275,2728,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",45},
{848,85,394,1304,2729,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",46},
{848,85,394,1386,2769,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",47},
{848,85,394,1342,2726,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",48},
{848,85,394,1256,2693,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",49},
{848,85,394,1334,2638,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",50},
{848,85,394,1357,2697,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",51},
{848,85,394,1374,2524,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",52},
{848,85,394,1307,2637,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",53},
{848,85,394,1226,2457,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",54},
{848,85,394,1253,2467,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",55},
{848,85,394,1306,2443,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",56},
{848,85,394,1286,2514,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",57},
{848,85,394,1334,2496,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",58},
{848,85,394,1320,2581,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",59},
{848,85,394,1446,3118,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",60},
{848,85,394,1471,3114,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",61},
{848,85,394,1499,3155,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",62},
{848,85,394,1586,3124,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",63},
{848,85,394,1568,3096,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",64},
{848,85,394,1448,3076,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",65},
{848,85,394,1508,3082,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",66},
{848,85,394,1531,3047,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",67},
{848,85,394,1558,3046,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",68},
{848,85,394,1565,2949,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",69},
{848,85,394,1528,2930,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",70},
{848,85,394,1444,3010,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",71},
{848,85,394,1416,2938,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",72},
{848,85,394,1481,2966,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",73},
{848,85,394,1571,2893,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",74},
{848,85,394,1574,2856,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",75},
{848,85,394,1484,2916,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",76},
{848,85,394,1492,2849,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",77},
{848,85,394,1420,2829,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",78},
{848,85,394,1515,2728,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",79},
{848,85,394,1450,2719,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",80},
{848,85,394,1433,2633,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",81},
{848,85,394,1586,2568,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",82},
{848,85,394,1573,2506,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",83},
{848,85,394,1583,2454,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",84},
{848,85,394,1548,2444,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",85},
{848,85,394,1519,2498,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",86},
{848,85,394,1460,2451,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",87},
{848,85,394,1480,2796,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",88},
{848,85,394,1522,2784,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",89},
{848,85,394,1576,2767,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",90},
{848,85,394,1458,2762,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",91},
{848,85,394,1493,2673,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",92},
{848,85,394,1501,2710,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",93},
{848,85,394,1489,2620,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",94},
{848,85,394,1441,2594,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",95},
{848,85,394,1526,2594,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",96},
{848,85,394,1493,2580,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",97},
{848,85,394,1506,2538,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",98},
{848,85,394,1546,2541,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",99},
{848,85,394,1483,2474,1,"B秓 Kh� Чo T芻",1,"\\script\\task\\tollgate\\messenger\\qianbaoku\\8089\\turezei8089.lua",100}, 

}

function main()
	local name = GetName()
	local Uworld181 = GetTaskTemp(181)
	local Npcindex = GetLastDiagNpc() 					  --获得最后对话npc的index
	local TureParam = GetNpcParam(Npcindex,NPC_PARAM_ID)  --获得在该对话npc身上存储的任务变量
	if (  messenger_middletime() == 10 ) then --玩家在地图中的时间
	Msg2Player("Th藅 xin l鏸 ! "..name.."! th阨 gian nhi謒 v� t輓 s�  h誸, nhi謒 v� th蕋 b筰 !.")
		losemessengertask()
	elseif ( TureParam ~= Uworld181 ) then
		Msg2Player("Th藅 xin l鏸 , kh玭g ph秈 rng c馻 ngi, kh玭g th� m� rng!")
		return
	else		
		Msg2Player("Ngi  m� b秓 rng th祅h c玭g.")
		messenger_turego()
	end
end

