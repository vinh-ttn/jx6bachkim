	-- d�ng cho gi�i quy�t 2005 ni�n 11 th�ng t�ng kim c� ph�n bug chuy�n h�u x� l�, c� ch� t�c thanh tr� s� h�u t�ng kim b�ng x�p h�ng c�ng n�ng

	TAB_SJ_LADDERID =

	{	10008	,

	10009	,

	10011	,

	10012	,

	10013	,

	10014	,

	10017	,

	10018	,

	10020	,

	10021	,

	10022	,

	10023	,

	10036	,

	10037	,

	10038	,

	10039	,

	10040	,

	10041	,

	10044	,

	10045	,

	10046	,

	10047	,

	10048	,

	10049	,

	10052	,

	10053	,

	10054	,

	10055	,

	10056	,

	10057	,

	10060	,

	10061	,

	10062	,

	10063	,

	10064	,

	10065	,

	10068	,

	10069	,

	10070	,

	10071	,

	10072	,

	10073	,

	10076	,

	10077	,

	10078	,

	10079	,

	10080	,

	10081	,

	10084	,

	10085	,

	10085	,

	10086	,

	10086	,

	10087	,

	10088	,

	10089	,

	10090	,

	10097	,

	10098	,

	10099	,

	10100	,

	10101	,

	10102	,

	10103	,

	10104	,

	10105	,

	10106	,

	10107	,

	10108	,

	10109	,

	10110	,

	10111	,

	10112	,

	10113	,

	10114	,

	10115	,

	10116	,

	10147	,

	10148	,

	10149	,

	10150	,

	10151	,

	10152	,

	10153	,

	10154	,

	10155	,


	10156	,

	10157	,

	10158	,

	10159	,

	10160	,

	10161	,

	10162	,

	};

	function sj_ClearAllLadder()

	for i = 1, getn(TAB_SJ_LADDERID) do

	Ladder_ClearLadder(TAB_SJ_LADDERID[i])

	end

	OutputMsg( "C�t b� t�ng kim t��ng quan b�i danh b�ng t� li�u!")

	end

	function TaskShedule()

	-- thi�t tr� ph��ng �n t�n g�i

	TaskName( "C�t b� t�ng kim t��ng quan b�i danh b�ng t� li�u!" );

	-- ch� ch�p h�nh m�t l�n, d�ng cho gi�i quy�t 2005 ni�n 11 th�ng t�ng kim c� ph�n bug chuy�n h�u x� l�

	TaskInterval( 244000 );

	-- thi�t tr� g�y ra s� l�n, 0 bi�u th� v� h�n s� l�n

	TaskCountLimit(1);

	-- ph�t ra kh�i ��ng tin t�c

	end

	function TaskContent()

	if (tonumber(date( "%Y%m%d ")) > 20051116) then

	OutputMsg(" [ c�t b� t�ng kim t��ng quan b�i danh b�ng t� li�u ] nhi�m v� �� qua k�, b�t n�ng ch�p h�nh.")

	return

	end

	sj_ClearAllLadder();

	OutputMsg( "�� c�t b� ho�n s� h�u t�ng kim ��ng h�ng th� t� li�u! ");

	end


