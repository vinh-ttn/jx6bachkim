-- script viet hoa By tuanglit  may m�n v� s� 
-- script viet hoa By tuanglit  Fanghao Wu 
-- script viet hoa By tuanglit  2004.11.13 

LOTTERY_GOLD_TYPENAME = "lottery_gold"; -- script viet hoa By tuanglit  v� s� t�n , ��i �ng \settings\lotterys.txt ��ch LOTTERY_NAME 
EXTPOINT_LOTTERY_GOLD = 3; -- script viet hoa By tuanglit  nh�n l�y v� s� ph�n �o�n ��ch ph�t tri�n �i�m ��ch bi�n s� 
MONTH_CARD_EXTPOINT_COST = 2; -- script viet hoa By tuanglit  sung m�t t� th�ng t�p ��ng gi�i ��ch ph�t tri�n �i�m ��m 
WEEK_CARD_EXTPOINT_COST = 1; -- script viet hoa By tuanglit  sung m�t t� chu t�p ��ng gi�i ��ch ph�t tri�n �i�m ��m 
MONTH_CARD_LOTTERY_ID_COUNT = 10; -- script viet hoa By tuanglit  th�ng t�p ��i l�y v� s� bao h�m ��ch d�y s� ��m 
WEEK_CARD_LOTTERY_ID_COUNT = 5; -- script viet hoa By tuanglit  chu t�p ��i l�y v� s� bao h�m ��ch d�y s� ��m 


-- script viet hoa By tuanglit  ph�n th��ng thi�t tr� c�ch th�c v� # { 
-- script viet hoa By tuanglit  " ph�n th��ng mi�u t� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { h�u ch�n ph�n th��ng 1 t�n , { h�u ch�n ph�n th��ng 1 tham s� }, h�u ch�n ph�n th��ng 1 c� ��m , h�u ch�n ph�n th��ng 1 r�t tr�ng kh�i ��m }, 
-- script viet hoa By tuanglit  ... 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  th� 1 k� #2004.11.22 - 2004.11.28#-- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit  
-- script viet hoa By tuanglit  FIRST_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  " an bang chi b�ng tinh th�ch gi�y chuy�n 1 con ", 
-- script viet hoa By tuanglit  { { " an bang chi b�ng tinh th�ch gi�y chuy�n ", { 4, 2549, 0, 164 }, 1, 1 }, } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  SECOND_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  "# v� l�m b� t�ch #1 v�n ", 
-- script viet hoa By tuanglit  { { " v� l�m b� t�ch ", { 6, 1, 26, 1, 0, 0, 0 }, 1, 1 }, } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD1 = { 
-- script viet hoa By tuanglit  " ti�n th�o l� 10 c� ", 
-- script viet hoa By tuanglit  { { " ti�n th�o l� ", { 6, 1, 71, 1, 0, 0, 0 }, 10, 1 }, } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD2 = { 
-- script viet hoa By tuanglit  " ti�n th�o l� 2 c� ", 
-- script viet hoa By tuanglit  { { " ti�n th�o l� ", { 6, 1, 71, 1, 0, 0, 0 }, 2, 1 }, } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  th� 2 k� #2004.11.28 - 2004.12.05#-- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit  
-- script viet hoa By tuanglit  FIRST_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  " ��nh n��c h� li�t ho�ng kim trang b� ng�u nhi�n 1 m�n ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ��nh qu�c chi l�a m�ng xanh tr��ng sam ", { 0, 159 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi � sa ph�t quan ", { 0, 160 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi x�ch quy�n m�m ngoa ", { 0, 161 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi t� ��ng h� c� tay ", { 0, 162 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi ng�n t�m �ai l�ng ", { 0, 163 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  SECOND_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  "# v� l�m b� t�ch #1 v�n ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " v� l�m b� t�ch ", { 6, 1, 26, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD1 = { 
-- script viet hoa By tuanglit  " th�y tinh ho�c �� th�m b�o th�ch 1 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " lan th�y tinh ", { 4, 238, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " t� th�y tinh ", { 4, 239, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " n��c bi�c tinh ", { 4, 240, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " �� th�m b�o th�ch ", { 4, 353, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD2 = { 
-- script viet hoa By tuanglit  " ti�n th�o l� 2 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ti�n th�o l� ", { 6, 1, 71, 1, 0, 0, 0 }, 2, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  th� 3 k� #2004.12.05 - 2004.12.12#-- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit  
-- script viet hoa By tuanglit  FIRST_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  " k� nghi�p chi s�m ��nh chui long s�ng 1 �em ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " k� nghi�p chi s�m ��nh chui long s�ng ", { 0, 21 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  SECOND_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  " ��nh qu�c an bang ho�ng kim trang b� 1 m�n ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ��nh qu�c chi l�a m�ng xanh tr��ng sam ", { 0, 159 }, 1, 10 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi � sa ph�t quan ", { 0, 160 }, 1, 8 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi x�ch quy�n m�m ngoa ", { 0, 161 }, 1, 14 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi t� ��ng h� c� tay ", { 0, 162 }, 1, 12 }, 
-- script viet hoa By tuanglit  { " ��nh qu�c chi ng�n t�m �ai l�ng ", { 0, 163 }, 1, 14 }, 
-- script viet hoa By tuanglit  { " an bang chi b�ng tinh th�ch gi�y chuy�n ", { 0, 164 }, 1, 8 }, 
-- script viet hoa By tuanglit  { " an bang chi hoa c�c th�ch chi�c nh�n ", { 0, 165 }, 1, 12 }, 
-- script viet hoa By tuanglit  { " an bang chi �i�n ho�ng th�ch ng�c b�i ", { 0, 166 }, 1, 12 }, 
-- script viet hoa By tuanglit  { " an bang chi m�u g� th�ch chi�c nh�n ", { 0, 167 }, 1, 10 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD1 = { 
-- script viet hoa By tuanglit  " th�y tinh ho�c �� th�m b�o th�ch 1 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " lan th�y tinh ", { 4, 238, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " t� th�y tinh ", { 4, 239, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " n��c bi�c tinh ", { 4, 240, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " �� th�m b�o th�ch ", { 4, 353, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit  OTHER_PRIZE_AWARD2 = { 
-- script viet hoa By tuanglit  " ti�n th�o l� 2 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ti�n th�o l� ", { 6, 1, 71, 1, 0, 0, 0 }, 2, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 


-- script viet hoa By tuanglit  th� 5 k� #2004.12.27 - 2005.01.02#-- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit -- script viet hoa By tuanglit  
-- script viet hoa By tuanglit FIRST_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  " c�c m�n ph�i ��i ho�ng kim trang b� ng�u nhi�n m�t m�n ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ma ho�ng chi theo nh� ra h� h�ng v�ng ", { 0, 107 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " c�ng phong chi ba thanh ph� ", { 0, 122 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " v� y�m chi t�m gi�ng ng�c tr� ", { 0, 39 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " ��ng s�t chi b�ch ng�c c�n kh�n b�i ", { 0, 144 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " c�ng th� chi h�ng long c�i y ", { 0, 92 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " u l�ng chi m�c chu m�m l� ", { 0, 60 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit SECOND_PRIZE_AWARD = { 
-- script viet hoa By tuanglit  "# v� l�m b� t�ch #1 v�n ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " v� l�m b� t�ch ", { 6, 1, 26, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit OTHER_PRIZE_AWARD1 = { 
-- script viet hoa By tuanglit  " th�y tinh ho�c �� th�m b�o th�ch 1 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " lan th�y tinh ", { 4, 238, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " t� th�y tinh ", { 4, 239, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " n��c bi�c tinh ", { 4, 240, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  { " �� th�m b�o th�ch ", { 4, 353, 1, 1, 0, 0, 0 }, 1, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 
-- script viet hoa By tuanglit OTHER_PRIZE_AWARD2 = { 
-- script viet hoa By tuanglit  " ti�n th�o l� 3 c� ", 
-- script viet hoa By tuanglit  { 
-- script viet hoa By tuanglit  { " ti�n th�o l� ", { 6, 1, 71, 1, 0, 0, 0 }, 3, 1 }, 
-- script viet hoa By tuanglit  } 
-- script viet hoa By tuanglit  }; 


-- script viet hoa By tuanglit  th� 6 k� (2005.01.02 - 2005.01.09) 
FIRST_PRIZE_AWARD = { 
"An bang tinh th�ch h�ng li�n 1 c�i.", 
{ 
{ "An bang tinh th�ch h�ng li�n", { 0, 164 }, 1, 1 }, 
} 
}; 
SECOND_PRIZE_AWARD = { 
"T�y T�y Kinh 1 c�i. ", 
{ 
{ " T�y T�y Kinh ", { 6, 1, 22, 1, 0, 0, 0 }, 1, 1 }, 
} 
}; 
OTHER_PRIZE_AWARD1 = { 
"��i b�ch c�u ho�n 3 c�i", 
{ 
{ "��i b�ch c�u ho�n", { 6, 1, 130, 1, 0, 0, 0 }, 3, 1 }, 
} 
}; 
OTHER_PRIZE_AWARD2 = { 
"��i b�ch c�u ho�n 1 c�i.", 
{ 
{ "��i b�ch c�u ho�n", { 6, 1, 130, 1, 0, 0, 0 }, 1, 1 }, 
} 
}; 

-- script viet hoa By tuanglit  may m�n v� s� th�c ��n h�ng 
function onLotteryGold() 
Say( "L� quan : Xin ch�o, c�m �n m�i ng��i �� �ng h� ch�ng t�i, k� t� ng�y 22-11-2014 ho�t ��ng x� s� may m�n s� khai m�. C� ch� nh�t h�ng tu�n, b�n s� nh�n ���c ph�n th��ng phong ph�. N�u b�n kh�ng c� b�t k� c�u h�i , b�n c� th� th�y m�t l�i gi�i th�ch v� x� s� may m�n ", 5,"Nh�n l�y v� s� may m�n/onLotteryGold_Gain","Tuy�n b� v� s� may m�n/onLotteryGold_Prize","Ki�m tra v� s� may m�n/onLotteryGold_QueryPrize", " Li�n quan t�i v� s� may m�n/onLotteryGold_About","Ta ch�ng qu� gh� th�m m�t ch�t /onCancel" ); 
end 

-- script viet hoa By tuanglit  kh�ng ph�i l� D��ng Ch�u ��ch l� quan ��ch ��i tho�i 
function onLotteryGoldEx() 
Say( "L� quan : Xin ch�o , c�m �n m�i ng��i �� �ng h� ch�ng t�i, k� t� ng�y 22-11-2014 ho�t ��ng x� s� may m�n s� khai m�. C� ch� nh�t h�ng tu�n, b�n s� nh�n ���c ph�n th��ng phong ph�. ng�i �em ��t ���c ch�ng ta ��a ra ��ch c�c lo�i phong ph� ph�n th��ng , Ch� di�n ra s� ki�n �: <color=red> D��ng Ch�u <color> ��n t�m l� quan �� ti�n h�nh.",0); 
end 

-- script viet hoa By tuanglit  nh�n l�y may m�n v� s� 
function onLotteryGold_Gain() 

Say( "L� quan : Hi�n nay �� ph�t h�nh x� s� ki�n thi�n, xin h�y ch� � v� th�i gian", 1,"Ta bi�t, c�m �n/main"); 
do return end 

local nWeekDay = tonumber( date( "%w" ) ); 
local nHour = tonumber( date( "%H" ) ); 
if( nWeekDay == 0 and nHour >= 8 and nHour < 11 ) then 
Say( "L� quan : R�t xin l�i, Ch� nh�t h�ng tu�n t� 8:00 ��n 11:00 th�i gian �� trao ��i x� s�, h�y xem ho�t ��ng � V� s� may m�n � , �a t� h�p t�c . ", 1,"Ta bi�t r�i, c�m �n/onLotteryGold" ); 
do return end 
end 
local nEPValue = GetExtPoint( EXTPOINT_LOTTERY_GOLD ); 
local nMonthCardCount = 0; 
local nWeekCardCount = 0; 
local nMonthLotteryCount = 0; 
local nWeekLotteryCount = 0; 
local szSayContent = ""; 

if( nEPValue >= WEEK_CARD_EXTPOINT_COST ) then 
nMonthCardCount = floor( nEPValue / MONTH_CARD_EXTPOINT_COST ); 
nWeekCardCount = floor( mod( nEPValue, MONTH_CARD_EXTPOINT_COST ) / WEEK_CARD_EXTPOINT_COST ); 
szSayContent = "<#>L� quan : ng�i c� th� nh�n l�y "; 
if( nMonthCardCount > 0 ) then 
szSayContent = szSayContent.." <color=yellow>"..nMonthCardCount.."<#><color> 10 v� s� ng�u nhi�n trong g�i."; 
end 
if( nWeekCardCount > 0 ) then 
if( nMonthCardCount > 0 ) then 
szSayContent = szSayContent.."<#>v� "; 
end 
szSayContent = szSayContent.." <color=yellow>"..nWeekCardCount.."<#><color> 5 s� ng�u nhi�n trong g�i."; 
end 
szSayContent = szSayContent.."<#> H�y d�n d�p h�nh trang, h�y ch�c ch�n r�ng v�n �� ch�a v� s�, kh�ng �� cho ng��i kh�c l�y."; 
		if( nMonthCardCount + nWeekCardCount > 10 ) then
Say( szSayContent, 4,"H�nh trang �� ��/onLotteryGold_Gain_All","H�nh trang kh�ng �� ch� tr�ng, ta ��a 10 v� s� ��u ti�n/onLotteryGold_Gain_10","H�nh trang kh�ng �� ch� tr�ng, ta ��a tr��c 1 v� s� /onLotteryGold_Gain_1","T�i s� s�p x�p h�nh trang/onCancel" ); 
else 
Say( szSayContent, 3,"H�nh trang �� ��/onLotteryGold_Gain_All","H�nh trang kh�ng �� ch� tr�ng , ta ��a tr��c 1 v� s�/onLotteryGold_Gain_1","T�i s� s�p x�p h�nh trang/onCancel" ); 
end 
else 
Say( "L� quan : Th�t xin l�i, b�n ch�a mua ho�c b�n �� nh�n v� s� r�i, Ho�t ��ng n�y l� m�t �u ��i ��c bi�t b�n c� th� nh�n ���c b�c v� trang b�, b�n h�y suy ngh� th�t k�.", 0 ); 
end 
end 

-- script viet hoa By tuanglit  nh�n l�y may m�n v� s� - x�c nh�n nh�n l�y to�n b� v� s� 
function onLotteryGold_Gain_All() 
onLotteryGold_Gain_Count( 0 ); 
end 

-- script viet hoa By tuanglit  nh�n l�y may m�n v� s� - x�c nh�n nh�n l�y 10 t� v� s� 
function onLotteryGold_Gain_10() 
onLotteryGold_Gain_Count( 10 ); 
end 

-- script viet hoa By tuanglit  nh�n l�y may m�n v� s� - x�c nh�n nh�n l�y 1 t� v� s� 
function onLotteryGold_Gain_1() 
onLotteryGold_Gain_Count( 1 ); 
end 

-- script viet hoa By tuanglit  nh�n l�y may m�n v� s� - x�c nh�n nh�n l�y ch� ��nh s� m�c ��ch v� s� #0 b�y t� nh�n l�y to�n b� # 
function onLotteryGold_Gain_Count( nLotteryCount ) 
local nEPValue = GetExtPoint( EXTPOINT_LOTTERY_GOLD ); 
local nMonthCardCount = 0; 
local nWeekCardCount = 0; 
local nMonthLotteryCount = 0; 
local nWeekLotteryCount = 0; 

if( nEPValue >= WEEK_CARD_EXTPOINT_COST ) then 
nMonthCardCount = floor( nEPValue / MONTH_CARD_EXTPOINT_COST ); 
nWeekCardCount = floor( mod( nEPValue, MONTH_CARD_EXTPOINT_COST ) / WEEK_CARD_EXTPOINT_COST ); 
if( nLotteryCount == 0 ) then 
			nLotteryCount = nMonthCardCount + nWeekCardCount;
end 
for i = 1, nMonthCardCount do 
if( i > nLotteryCount ) then 
break; 
end 
if( Lottery_GenerateItem( LOTTERY_GOLD_TYPENAME, MONTH_CARD_LOTTERY_ID_COUNT ) == 1 ) then 
				nMonthLotteryCount = nMonthLotteryCount + 1;
PayExtPoint( EXTPOINT_LOTTERY_GOLD, MONTH_CARD_EXTPOINT_COST ); 
end 
end 
for i = 1, nWeekCardCount do 
			if( ( nMonthLotteryCount + i ) > nLotteryCount ) then
break; 
end 
if( Lottery_GenerateItem( LOTTERY_GOLD_TYPENAME, WEEK_CARD_LOTTERY_ID_COUNT ) == 1 ) then 
				nWeekLotteryCount = nWeekLotteryCount + 1;
PayExtPoint( EXTPOINT_LOTTERY_GOLD, WEEK_CARD_EXTPOINT_COST ); 
end 
end 

		if( ( nMonthLotteryCount + nWeekLotteryCount ) > 0 ) then
szSayContent = "<#> l� quan # ng�i �� nh�n l�y "; 
if( nMonthLotteryCount > 0 ) then 
szSayContent = szSayContent.." <color=yellow>"..nMonthLotteryCount.."<#><color> t� 10 ng�u nhi�n d�y s� ��ch b�/v� phi�u "; 
end 
if( nWeekLotteryCount > 0 ) then 
if( nMonthLotteryCount > 0 ) then 
szSayContent = szSayContent.."<#> c�ng "; 
end 
szSayContent = szSayContent.." <color=yellow>"..nWeekLotteryCount.."<#><color> t� 5 ng�u nhi�n d�y s� ��ch b�/v� phi�u "; 
end 
szSayContent = szSayContent.."<#> , xin/m�i � B�c Kinh th�i gian v�n ch� nh�t s�ng s�m 11#00 khi ��n ch� nh�t s�ng s�m 11#00 gi�a t�i ��i t��ng �i . "; 
			if( ( nMonthLotteryCount + nWeekLotteryCount ) < ( nMonthCardCount + nWeekCardCount ) ) then
szSayContent = szSayContent.."<#> ng�i c�n c� m�y t� v� s� � ta ��y m� , ch� qu�n � v�n ch� nh�t 8#00 t�i tr��c d�n �i nga . "; 
end 
Say( szSayContent, 0 ); 

			Msg2Player( "<#>�������"..(nMonthLotteryCount+nWeekLotteryCount).."<#>�����˲�Ʊ" );
WriteLog( format( "[%s] %s(%s) nh�n l�y %d t� 10 d�y s� v� s� %d t� 5 d�y s� v� s� \r\n", date("%Y-%m-%d %H:%M:%S"), GetAccount(), GetName(), nMonthLotteryCount, nWeekLotteryCount ) ); 
else 
Say( " l� quan # may m�n v� s� t�m th�i kh�ng c�ch n�o nh�n l�y , xin h�u th� l�i , c�m �n . ", 0 ); 
end 
end 
end 

-- script viet hoa By tuanglit  may m�n v� s� ��i t��ng 
function onLotteryGold_Prize() 

Say(" l� quan # th��ng ��ng th�i v� s� kh�ng c� ph�t ���c nga , c� th� ph�t ���c th�i gian k�nh xin ng�i � l�u � . ",0) 
do return end 

local nPrizeIssueID = Lottery_GetLatestPrizeInfo( LOTTERY_GOLD_TYPENAME ); 
if( nPrizeIssueID > 0 ) then 
Say( "<#><color=yellow> th� "..format( "%03d", nPrizeIssueID ).."<#> k� may m�n v� s� ph�n th��ng <color>#\n nh�t ��ng t��ng #"..FIRST_PRIZE_AWARD[1].."<#>\n nh� ��ng t��ng #"..SECOND_PRIZE_AWARD[1].."<#>\n k� ni�m t��ng #[ ��i b�/v� phi�u ]"..OTHER_PRIZE_AWARD1[1].."<#> [ ti�u b�/v� phi�u ]"..OTHER_PRIZE_AWARD2[1].."<#>\n<color=red> ch� # b�i v� ph�n th��ng s� l��ng kh� nhi�u , � ��i t��ng tr��c xin ch� � s�a sang l�i t�i �eo l�ng , b�o ��m c� ��y �� kh�ng gian �� ��a ph�n th��ng . �� ngh� kh�ng mu�n m�t l�n ��i qu� nhi�u v� s� . <color>", 2,"Kh�ng th�nh v�n �� , t�i �eo l�ng c� ��y �� kh�ng gian /onLotteryGold_Prize_Check","Ta n�a s�a sang m�t ch�t t�i �eo l�ng �i /onCancel" ); 
else 
Say("May m�n v� s� ch�a khai t��ng , xin/m�i v�i v�n ch� nh�t bu�i s�ng 11:00 sau tr� l�i �i , c�m �n . ", 1,"Ta bi�t , c�m �n /onLotteryGold" ); 
end 
end 

-- script viet hoa By tuanglit  may m�n v� s� ��i t��ng - v� s� ��i t��ng gi�i m�t 
function onLotteryGold_Prize_Check() 

local nPrizeIssueID = Lottery_GetLatestPrizeInfo( LOTTERY_GOLD_TYPENAME ); 
GiveItemUI("Th� "..format( "%03d", nPrizeIssueID ).." k� may m�n v� s� ��i t��ng ", " l� quan # xin/m�i �em t�i ��i t��ng th�i gian v� s� th� v�o gi�i n�y m�t trung , ch�ng ta �em �em ng�i ��t ���c ��ch ph�n th��ng t� ��ng b� v�o ng�i ��ch v�t ph�m lan . n�u v� s� �� qua k� , th� kh�ng ph�p ��i . <color=white> ch� # b�i v� ph�n th��ng s� l��ng kh� nhi�u , kh�ng mu�n m�t l�n ��i qu� nhi�u v� s� , �� ng�a t�i �eo l�ng kh�ng gian ch�a �� , ph�n th��ng r�i xu�ng . <color>", "onLotteryGold_Prize_Confirm", "onCancel" ); 
end 

-- script viet hoa By tuanglit  may m�n v� s� ��i t��ng - v� s� ��i t��ng gi�i m�t � x�c ��nh � tr� v� �i�u h�m s� 
function onLotteryGold_Prize_Confirm( nCount ) 
local nLotteryItemIndex, nLotteryIDCount, nPrize1Count, nPrize2Count, nPrize1TotalCount, nPrize2TotalCount, nOtherPrizeTotalCount; 
local nLotteryItemCount = 0; 
local nPrize1TotalCount = 0; 
local nPrize2TotalCount = 0; 
local nOtherPrizeTotalCount = 0; 
local szHeOrShe; 

if( GetSex() == 1 ) then 
szHeOrShe = " n�ng "; 
else 
szHeOrShe = " h�n "; 
end 

for i = 1, nCount do 
local nLotteryItemIndex = GetGiveItemUnit( i ); 
local nLotteryIssueID = GetItemParam( nLotteryItemIndex, 1 ); 
local nLotteryIDCount, nPrize1Count, nPrize2Count = Lottery_CheckPrize( LOTTERY_GOLD_TYPENAME, nLotteryItemIndex ); 
local nRandAwardIdx; 

if( nLotteryIDCount > 0 ) then 
			nLotteryItemCount = nLotteryItemCount + 1;
if( RemoveItemByIndex( nLotteryItemIndex ) == 1 ) then 
if( nPrize1Count > 0 or nPrize2Count > 0 ) then 
for j = 1, nPrize1Count do 
local aryProbability = {}; 
for k = 1, getn( FIRST_PRIZE_AWARD[2] ) do 
aryProbability[k] = FIRST_PRIZE_AWARD[2][k][4]; 
end 
nRandAwardIdx = randByProbability( aryProbability ); 
for k = 1, FIRST_PRIZE_AWARD[2][nRandAwardIdx][3] do 
addAward( FIRST_PRIZE_AWARD[2][nRandAwardIdx][2] ); 
end 
Lottery_WriteLog( LOTTERY_GOLD_TYPENAME, format( "[%s] %s(%s) nh�n l�y th� %d k� ��ch nh�t ��ng t��ng ph�n th��ng %d c� %s\r\n", date("%Y-%m-%d %H:%M:%S"), GetAccount(), GetName(), nLotteryIssueID, FIRST_PRIZE_AWARD[2][nRandAwardIdx][3], FIRST_PRIZE_AWARD[2][nRandAwardIdx][1] ) ); 
Msg2Player( "<#> ng�i thu ���c "..FIRST_PRIZE_AWARD[2][nRandAwardIdx][3].."<#> c� "..FIRST_PRIZE_AWARD[2][nRandAwardIdx][1] ); 
AddGlobalNews( "<#> ��c tin t�c t�t , "..GetName().."<#> � D��ng Ch�u ��ch l� quan ch� s� nh�n l�y ��ch th� "..format("%03d", nLotteryIssueID).."<#> k� may m�n v� s� trung ph�i nh�t ��ng t��ng , ��t ���c "..FIRST_PRIZE_AWARD[2][nRandAwardIdx][1]..FIRST_PRIZE_AWARD[2][nRandAwardIdx][3].."<#> m�n , �� cho ch�ng ta trung t�m ch�c ph�c "..szHeOrShe.."<#> . ch�ng ta mong ��i s� tham d� c�a ng�i , c�m �n . "); 
end 
for j = 1, nPrize2Count do 
local aryProbability = {}; 
for k = 1, getn( SECOND_PRIZE_AWARD[2] ) do 
aryProbability[k] = SECOND_PRIZE_AWARD[2][k][4]; 
end 
nRandAwardIdx = randByProbability( aryProbability ); 
for k = 1, SECOND_PRIZE_AWARD[2][nRandAwardIdx][3] do 
addAward( SECOND_PRIZE_AWARD[2][nRandAwardIdx][2] ); 
end 
Lottery_WriteLog( LOTTERY_GOLD_TYPENAME, format( "[%s] %s(%s) nh�n l�y th� %d k� ��ch nh� ��ng t��ng ph�n th��ng %d c� %s\r\n", date("%Y-%m-%d %H:%M:%S"), GetAccount(), GetName(), nLotteryIssueID, SECOND_PRIZE_AWARD[2][nRandAwardIdx][3], SECOND_PRIZE_AWARD[2][nRandAwardIdx][1] ) ); 
Msg2Player( "<#> ng�i thu ���c "..SECOND_PRIZE_AWARD[2][nRandAwardIdx][3].."<#> c� "..SECOND_PRIZE_AWARD[2][nRandAwardIdx][1] ); 
AddGlobalNews( format("��c tin t�c t�t , %s � D��ng Ch�u ��ch l� quan ch� s� nh�n l�y ��ch th� %03d k� may m�n v� s� trung ph�i nh� ��ng t��ng , ��t ���c %s%d c� , �� cho ch�ng ta trung t�m ch�c ph�c %s . ch�ng ta mong ��i s� tham d� c�a ng�i , c�m �n . ", GetName(), nLotteryIssueID, SECOND_PRIZE_AWARD[2][nRandAwardIdx][1], SECOND_PRIZE_AWARD[2][nRandAwardIdx][3], szHeOrShe ) ); 
end 
					nPrize1TotalCount = nPrize1TotalCount + nPrize1Count;
					nPrize2TotalCount = nPrize2TotalCount + nPrize2Count;
else 
if( nLotteryIDCount == 10 ) then 
local aryProbability = {}; 
for k = 1, getn( OTHER_PRIZE_AWARD1[2] ) do 
aryProbability[k] = OTHER_PRIZE_AWARD1[2][k][4]; 
end 
nRandAwardIdx = randByProbability( aryProbability ); 
for j = 1, OTHER_PRIZE_AWARD1[2][nRandAwardIdx][3] do 
addAward( OTHER_PRIZE_AWARD1[2][nRandAwardIdx][2] ); 
end 
WriteLog( format( "[%s] %s(%s) nh�n l�y th� %d k� ��ch tam ��ng t��ng ��i b�/v� phi�u ph�n th��ng %d c� %s\r\n", date("%Y-%m-%d %H:%M:%S"), GetAccount(), GetName(), nLotteryIssueID, OTHER_PRIZE_AWARD1[2][nRandAwardIdx][3], OTHER_PRIZE_AWARD1[2][nRandAwardIdx][1] ) ); 
Msg2Player( "<#> ng�i thu ���c "..OTHER_PRIZE_AWARD1[2][nRandAwardIdx][3].."<#> c� "..OTHER_PRIZE_AWARD1[2][nRandAwardIdx][1] ); 
else 
local aryProbability = {}; 
for k = 1, getn( OTHER_PRIZE_AWARD2[2] ) do 
aryProbability[k] = OTHER_PRIZE_AWARD2[2][k][4]; 
end 
nRandAwardIdx = randByProbability( aryProbability ); 
for j = 1, OTHER_PRIZE_AWARD2[2][nRandAwardIdx][3] do 
addAward( OTHER_PRIZE_AWARD2[2][nRandAwardIdx][2] ); 
end 
WriteLog( format( "[%s] %s(%s) nh�n l�y th� %d k� ��ch tam ��ng t��ng ti�u b�/v� phi�u ph�n th��ng %d c� %s\r\n", date("%Y-%m-%d %H:%M:%S"), GetAccount(), GetName(), nLotteryIssueID, OTHER_PRIZE_AWARD2[2][nRandAwardIdx][3], OTHER_PRIZE_AWARD2[2][nRandAwardIdx][1] ) ); 
Msg2Player( "<#> ng�i thu ���c "..OTHER_PRIZE_AWARD2[2][nRandAwardIdx][3].."<#> c� "..OTHER_PRIZE_AWARD2[2][nRandAwardIdx][1] ); 
end 
					nOtherPrizeTotalCount = nOtherPrizeTotalCount + 1;
end 
end 
end 
end 
if( nLotteryItemCount > 0 ) then 
local szPrizeResultContent = " L� quan : Ch�c m�ng ng�i, � ng�i ��i ��ch v� s� trung b�n tr�ng li�u <color=yellow>" 
if( nPrize1TotalCount > 0 ) then 
szPrizeResultContent = szPrizeResultContent.."<#> nh�t ��ng t��ng "..nPrize1TotalCount.."<#> c� "; 
end 
if( nPrize2TotalCount > 0 ) then 
szPrizeResultContent = szPrizeResultContent.."<#> nh� ��ng t��ng "..nPrize2TotalCount.."<#> c� "; 
end 
if( nOtherPrizeTotalCount > 0 ) then 
szPrizeResultContent = szPrizeResultContent.."<#> k� ni�m t��ng "..nOtherPrizeTotalCount.."<#> c� "; 
end 
szPrizeResultContent = szPrizeResultContent.."<color>" 
Say( szPrizeResultContent, 0 ); 
else 
Say("Xin/m�i ki�m tra ng�i �� ��a ch�nh l� h�u hi�u ��i t��ng k� b�n trong ��ch may m�n v� s� ", 3,"M�i v�a r�i l�m , ta l�n n�a �� �i /onLotteryGold_Prize","Ta mu�n nh�n m�t ch�t trung t��ng v� s� d�y s� /onLotteryGold_QueryPrize","Ta kh�ng c� mu�n ��i ��ch v� s� , l�n sau tr� l�i �i /onCancel" ); 
end 
end 

-- script viet hoa By tuanglit  tu�n tra th��ng k� trung t��ng d�y s� 
function onLotteryGold_QueryPrize() 


Say("L� quan : th��ng ��ng th�i v� s� kh�ng c� ph�t ���c nga , c� th� ph�t ���c th�i gian k�nh xin ng�i � l�u � . ",0) 
do return end 

local szResultPrize1, szResultPrize2; 
local nPrizeIssueID, nPrize1Count, nPrize2Count; 
local aryaryszPrize1ID = {}; 
local aryaryszPrize2ID = {}; 

nPrizeIssueID, aryaryszPrize1ID, aryaryszPrize2ID = Lottery_GetLatestPrizeInfo( LOTTERY_GOLD_TYPENAME ); 
nPrize1Count = getn( aryaryszPrize1ID ); 
nPrize2Count = getn( aryaryszPrize2ID ); 
if( nPrizeIssueID > 0 ) then 
for i = 1, nPrize1Count do 
if( aryaryszPrize1ID[i] == nil or tonumber( aryaryszPrize1ID[i] ) < 0 ) then 
aryaryszPrize1ID[i] = " ( v� �ch ) "; 
end 
end 
for i = 1, nPrize2Count do 
if( aryaryszPrize2ID[i] == nil or tonumber( aryaryszPrize2ID[i] ) < 0 ) then 
aryaryszPrize2ID[i] = " ( v� �ch ) "; 
end 
end 
szResultPrize1 = "<#> th��ng k� (<color=red> th� "..format( "%03d", nPrizeIssueID ).."<#><color>) k� may m�n v� s� trung th�i tin t�c \n"; 
szResultPrize1 = szResultPrize1.."<#><color=yellow> nh�t ��ng t��ng <color> may m�n d�y s� #\n<color=yellow>"; 
for i = 1, nPrize1Count do 
szResultPrize1 = szResultPrize1..aryaryszPrize1ID[i].." "; 
end 
szResultPrize2 = "<#> th��ng k� (<color=red> th� "..format( "%03d", nPrizeIssueID ).."<#><color>) k� may m�n v� s� trung th�i tin t�c \n"; 
szResultPrize2 = szResultPrize2.."<#><color=yellow> nh� ��ng t��ng <color> may m�n d�y s� #\n<color=yellow>"; 
for i = 1, nPrize2Count do 
szResultPrize2 = szResultPrize2..aryaryszPrize2ID[i].." "; 
if( mod( i, 7 ) == 0 ) then 
szResultPrize2 = szResultPrize2.."\n"; 
end 
end 
Talk( 2, "onLoteryGold", szResultPrize1, szResultPrize2 ); 
else 
Say("May m�n v� s� ch�a khai t��ng , xin/m�i v�i <color=yellow> v�n ch� nh�t 11#00<color> sau tr� l�i tu�n tra , c�m �n . ", 1,"Ta bi�t , c�m �n /onLotteryGold" ); 
end 
end 

-- script viet hoa By tuanglit  li�n quan t�i may m�n v� s� 
function onLotteryGold_About() 
Talk( 3, "", " l� quan # may m�n v� s� n�y ��y b�/v� phi�u ph��ng th�c t�ng cho ng�i , m�i sung tr� gi� m�t t� 30 nguy�n sung tr� gi� t�p ��t ���c 1 t� b�/v� phi�u , phi�u b�n trong bao h�m <color=yellow>10<color> c� ng�u nhi�n d�y s� . m�i sung tr� gi� m�t t� 10 nguy�n sung tr� gi� t�p ��t ���c 1 t� b�/v� phi�u , phi�u b�n trong bao h�m <color=yellow>5<color> c� ng�u nhi�n d�y s� . ", " l� quan # cho ph�p sung t�p nh�n l�y v� s� ��ch th�i gian l� # m�i k� v� s� � n�n v� s� ph�t ���c <color=yellow> ch� nh�t s�ng s�m 11#00 t�i cu�i tu�n ng�y s�ng s�m 8#00<color> nh�n l�y . <color=red> m� m�i tu�n ng�y ��ch s�ng s�m 8#00 t�i 11#00, s� sung ��ch t�p kh�ng th� nh�n l�y v� s� . <color>", " l� quan # � ch� nh�t s�ng s�m 11#00 ch�ng ta �em th�ng b�o khi k� trung t��ng d�y s� , ng�i � ��t ���c v� s� sau nh�ng c�n c� phi�u m�t ��ch ��i t��ng th�i gian c�ng m�nh ��ch ng�u nhi�n d�y s� t�i ��i ph�n th��ng . " ); 
end 

-- script viet hoa By tuanglit  v�n k� v� s� khai t��ng c�ng kh�i ��ng m�i ��ng th�i v� s� #SystemTask m�i ng�y ��nh l�c �i�u d�ng # 
function onLotteryGold_UpdateIssue() 

do return end; 

local nLotteryLatestIssueID = Lottery_UpdateIssue( LOTTERY_GOLD_TYPENAME ); 
if( nLotteryLatestIssueID > 0 ) then 
local nPrizeIssueID, nPrize1Count, nPrize2Count; 
local aryszPrize1ID = {}; 
local aryszPrize2ID = {}; 

nPrizeIssueID, aryaryszPrize1ID, aryaryszPrize2ID = Lottery_GetLatestPrizeInfo( LOTTERY_GOLD_TYPENAME ); 
nPrize1Count = getn( aryaryszPrize1ID ); 
nPrize2Count = getn( aryaryszPrize2ID ); 
if( nPrizeIssueID > 0 ) then 
for i = 1, nPrize1Count do 
if( aryaryszPrize1ID[i] == nil or tonumber( aryaryszPrize1ID[i] ) < 0 ) then 
aryaryszPrize1ID[i] = " ( v� �ch ) "; 
end 
end 
for i = 1, nPrize2Count do 
if( aryaryszPrize2ID[i] == nil or tonumber( aryaryszPrize2ID[i] ) < 0 ) then 
aryaryszPrize2ID[i] = " ( v� �ch ) "; 
end 
end 
local szNewsContent = "<#> s� b�n ngo�i # s� b�n ngo�i # th� "..format( "%03d", nPrizeIssueID ).."<#> k� may m�n v� s� khai t��ng n�a/r�i # nh�t ��ng t��ng may m�n m� s� l� "; 
for i = 1, nPrize1Count do 
szNewsContent = szNewsContent..aryaryszPrize1ID[i].." "; 
end 
szNewsContent = szNewsContent.."<#> , nh� ��ng t��ng may m�n m� s� l� "; 
for i = 1, nPrize2Count do 
szNewsContent = szNewsContent..aryaryszPrize2ID[i].." "; 
end 
szNewsContent = szNewsContent.."<#> . v�n k� nh�t ��ng t��ng ph�i ch� t��ng ��t ���c "..FIRST_PRIZE_AWARD[1].."<#> # nh� ��ng t��ng ph�i ch� t��ng ��t ���c "..SECOND_PRIZE_AWARD[1].."<#> # m�i ng��i v�i v�ng tra ��i v�i m�nh m�t ch�t ��ch v� s� , c�ng k�p th�i ��n D��ng Ch�u l� quan ch� nh�n l�y ph�n th��ng #"; 
AddGlobalCountNews( szNewsContent, 3 ); 
end 
end 
end 

-- script viet hoa By tuanglit  h�y b� 
function onCancel() 
end 

-- script viet hoa By tuanglit  c�n c� nh��c ki�n c� ch� ��nh x�c su�t ��ch ch�n h�ng ng�u nhi�n ch�n l�a m�t h�ng 
function randByProbability( aryProbability ) 
local nRandNum; 
local nSum = 0; 
local nArgCount = getn( aryProbability ); 
for i = 1, nArgCount do 
		nSum = nSum + aryProbability[i];
end 
	nRandNum = mod( random( nSum ) + random( 191 ), nSum ) + 1;
for i = nArgCount, 1, -1 do 
nSum = nSum - aryProbability[i]; 
if( nRandNum > nSum ) then 
return i; 
end 
end 
end 

-- script viet hoa By tuanglit  cho nh� ch�i ch� ��nh tham s� ��ch ph�n th��ng 
function addAward( aryAwardParam ) 
local nAwardParamCount = getn( aryAwardParam ); 
if( nAwardParamCount == 2 ) then 
return AddGoldItem( aryAwardParam[1], aryAwardParam[2] ); 
elseif( nAwardParamCount == 4 ) then 
return AddVerGoldItem( aryAwardParam[1], aryAwardParam[2], aryAwardParam[3], aryAwardParam[4] ); 
elseif( nAwardParamCount == 7 ) then 
return AddItem( aryAwardParam[1], aryAwardParam[2],aryAwardParam[3], aryAwardParam[4], aryAwardParam[5], aryAwardParam[6], aryAwardParam[7] ); 
end 
return 0; 
end
