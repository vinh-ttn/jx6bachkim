IncludeLib("ITEM") 
-- script viet hoa By http://tranhba.com DinhHQ 
-- script viet hoa By http://tranhba.com 20110407: kh�ng th� � x�ng quan l�c s� d�ng vi s�n ��o l�nh b�i 
Include("\\script\\vng_feature\\forbiditem\\vngforbidspecialitem.lua")

TB_XINNIAN_GIFE = { 
[908] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"T�t c� ng� h�nh thu�c t�nh thi�u ni�n c�ng thanh ni�n ��ng b�n m�t n� ", 0}, 

[909] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"Ng�u nhi�n ng� h�nh thu�c t�nh thi�u ni�n c�ng thanh ni�n ��ng b�n m�t n� m�t ng��i trong �� ", 0}, 

[910] = { { 6, 0, 1, 1, 0, 1 },"M��i to�n ��i b� ho�n m�t b� ", 3, 1, 10}, 
[911] = { { 0, 0, 0, 10, 0, 1 },"Ng� h�nh thu�c t�nh th�p ki�m c�c m�t thanh ", 5, 0, 4}, 
[912] = { { 0, 0, 1, 10, 0, 1 },"Ng� h�nh thu�c t�nh gi� l�n �ao c�c m�t thanh ", 5, 0, 4}, 
[913] = { { 0, 0, 2, 10, 0, 1 },"Ng� h�nh thu�c t�nh kim c� ca t�ng c�c m�t c�y ", 5, 0, 4}, 
[914] = { { 0, 0, 3, 10, 0, 1 },"Ng� h�nh thu�c t�nh x� tr�i k�ch c�c m�t chi ", 5, 0, 4}, 
[915] = { { 0, 0, 4, 10, 0, 1 },"Ng� h�nh thu�c t�nh x� tr�i ch�y c�c m�t thanh ", 5, 0, 4}, 
[916] = { { 0, 1, 0, 10, 0, 1 },"Ng� h�nh thu�c t�nh b� v��ng phi�u c�c m�t chi ", 5, 0, 4}, 
[917] = { { 0, 1, 1, 10, 0, 1 },"Ng� h�nh thu�c t�nh b� th�ng �ao c�c m�t thanh ", 5, 0, 4}, 
[918] = { { 0, 1, 2, 10, 0, 1 },"Ng� h�nh thu�c t�nh kh�ng t��c linh c�c m�t chi ", 5, 0, 4}, 
[919] = { { 0, 8, 0, 10, 0, 1 },"Ng� h�nh thu�c t�nh long ph��ng huy�t ng�c tr�c c�c m�t ��i ", 5, 0, 4}, 
[920] = { { 0, 8, 1, 10, 0, 1 },"Ng� h�nh ch�c ���c thi�n t�m h� c� tay c�c m�t ��i ", 5, 0, 4}, 
[921] = { { 0, 7, 3, 10, 0, 1 },"Ng� h�nh thu�c t�nh th�ng thi�n ph�t quan c�c ��nh ��u ", 5, 0, 4}, 
[922] = { { 0, 7, 4, 10, 0, 1 },"Ng� h�nh thu�c t�nh gi�u ng�y kh�i c�c ��nh ��u ", 5, 0, 4}, 
[923] = { { 0, 6, 1, 10, 0, 1 },"Ng� h�nh thu�c t�nh b�ch kim �ai l�ng c�c m�t c�y ", 5, 0, 4}, 
[924] = { { 0, 5, 1, 10, 0, 1 },"Ng� h�nh thu�c t�nh thi�n t�m ngoa c�c m�t ��i ", 5, 0, 4}, 
[925] = { { 0, 5, 3, 10, 0, 1 },"Ng� h�nh thu�c t�nh bay ph��ng ngoa c�c m�t ��i ", 5, 0, 4}, 
[926] = { { 6, 1, 834, 2, 1, 1 },"Kim c��ng kh�ng ph� # ��ng b�n b� t�ch 2 ��n 5 c�p c�c m�t quy�n ", 4, 2, 5}, 
[927] = { { 6, 1, 835, 2, 1, 1 },"B�ch ��c b�t x�m # ��ng b�n b� t�ch 2 ��n 5 c�p c�c m�t quy�n ", 4, 2, 5}, 
[928] = { { 6, 1, 836, 2, 1, 1 },"B�ng tuy�t s� dung # ��ng b�n b� t�ch 2 ��n 5 c�p c�c m�t quy�n ", 4, 2, 5}, 
[929] = { { 6, 1, 837, 2, 1, 1 },"Ch�n h�a kh�ng l�c # ��ng b�n b� t�ch 2 ��n 5 c�p c�c m�t quy�n ", 4, 2, 5}, 
[930] = { { 6, 1, 838, 2, 1, 1 }, " l�i ��nh h� gi�p # ��ng b�n b� t�ch 2 ��n 5 c�p c�c m�t quy�n ", 4, 2, 5}, 
[931] = { { 6, 1, 849, 1, 1, 1 },"B�nh th�n kh� quy�t # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[932] = { { 6, 1, 850, 1, 1, 1 },"H� kh�ng nhanh ch�ng �nh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[933] = { { 6, 1, 851, 1, 1, 1 },"H�i th�n t� m� # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[934] = { { 6, 1, 852, 1, 1, 1 },"V� ni�m t�m tr�i qua # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[935] = { { 6, 1, 853, 1, 1, 1 },"Ng� h�nh v� t��ng # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[936] = { { 6, 1, 854, 1, 1, 1 },"Di kh� phi�u tung # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[937] = { { 6, 1, 855, 1, 1, 1 },"Hoa bay �i�p v� # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[938] = { { 6, 1, 901, 1, 1, 1 },"V� nh�n v� ng� # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[939] = { { 6, 1, 859, 1, 1, 1 },"T�nh ng�o ba ��ng # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[940] = { { 6, 1, 860, 1, 1, 1 },"�i�m m�u ch�n m�ch # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[941] = { { 6, 1, 861, 1, 1, 1 },"V�n ��c kh�ng ph�c # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[942] = { { 6, 1, 862, 1, 1, 1 },"Ng��i nh� nh� y�n # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[943] = { { 6, 1, 863, 1, 1, 1 },"Ng�ng �m quy nguy�n # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[944] = { { 6, 1, 864, 1, 1, 1 },"D�ch c�t tr�i qua # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[945] = { { 6, 1, 865, 1, 1, 1 },"Th�c th�n thu�t # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[946] = { { 6, 1, 866, 1, 1, 1 },"Ch�m th�n thu�t # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[947] = { { 6, 1, 867, 1, 1, 1 },"Huy�n con m�t ��nh th�n thu�t # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[948] = { { 6, 1, 868, 1, 1, 1 }, " �ch th� �m d��ng # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[949] = { { 6, 1, 869, 1, 1, 1 },"Tr�n an chi ng� # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[950] = { { 6, 1, 870, 1, 1, 1 },"Tam sinh h�u h�nh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[951] = { { 6, 1, 871, 1, 1, 1 },"Qu� m� m� ho�c # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[952] = { { 6, 1, 872, 1, 1, 1 },"�o�t m�nh qu�n quanh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[953] = { { 6, 1, 873, 1, 1, 1 },"Y�u h� xinh ��p �nh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[954] = { { 6, 1, 874, 1, 1, 1 },"Ho�c th�n lo�n t�m # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[955] = { { 6, 1, 875, 1, 1, 1 },"M�t m�nh b� �nh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[956] = { { 6, 1, 876, 1, 1, 1 },"T� vong ky b�n # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[957] = { { 6, 1, 877, 1, 1, 1 },"S�u h�n ��c h�t # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[958] = { { 6, 1, 878, 1, 1, 1 },"C�ng ph�ch chi nguy�n r�a # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[959] = { { 6, 1, 879, 1, 1, 1 },"H�a t�y v� t�nh # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[960] = { { 6, 1, 880, 1, 1, 1 },"Dung c�t m�t t�ch # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[961] = { { 6, 1, 882, 1, 1, 1 },"Th�m ��c tay # ��ng b�n b� t�ch 1 ��n 5 c�p c�c m�t quy�n ", 4, 1, 5}, 
[962] = { { 6, 1, 883, 1, 1, 1 },"Ba ph�c kh� # ��ng b�n b� t�ch 1 ��n 5 c�p v�n m�t quy�n ", 4, 1, 5}, 

[963] = { { { 6, 1, 926, 1, 1, 1 }, 
{ 6, 1, 927, 1, 1, 1 }, 
{ 6, 1, 928, 1, 1, 1 }, 
{ 6, 1, 929, 1, 1, 1 }, 
{ 6, 1, 930, 1, 1, 1 }, },"N�m ��ng b�n kh�ng ���c k� n�ng s�ch l� t�i ", 0}, 

[964] = { { { 6, 1, 949, 1, 1, 1 }, 
{ 6, 1, 931, 1, 1, 1 }, 
{ 6, 1, 932, 1, 1, 1 }, 
{ 6, 1, 935, 1, 1, 1 }, 
{ 6, 1, 936, 1, 1, 1 }, 
{ 6, 1, 937, 1, 1, 1 }, 
{ 6, 1, 944, 1, 1, 1 }, 
{ 6, 1, 948, 1, 1, 1 }, 
{ 6, 1, 950, 1, 1, 1 }, },"Ch�n ��ng b�n c�ng c�ng k� n�ng s�ch l� t�i ", 0}, 

[965] = { { { 6, 1, 933, 1, 1, 1 }, 
{ 6, 1, 934, 1, 1, 1 }, 
{ 6, 1, 951, 1, 1, 1 }, 
{ 6, 1, 952, 1, 1, 1 }, 
{ 6, 1, 956, 1, 1, 1 }, },"N�m kim lo�i t�nh ��ng b�n k� n�ng s�ch l� t�i ", 0}, 

[966] = { { { 6, 1, 939, 1, 1, 1 }, 
{ 6, 1, 940, 1, 1, 1 }, 
{ 6, 1, 958, 1, 1, 1 }, 
{ 6, 1, 961, 1, 1, 1 }, },"B�n m�c thu�c t�nh ��ng b�n k� n�ng s�ch l� t�i ", 0}, 

[967] = { { { 6, 1, 943, 1, 1, 1 }, 
{ 6, 1, 946, 1, 1, 1 }, 
{ 6, 1, 955, 1, 1, 1 }, 
{ 6, 1, 957, 1, 1, 1 }, },"B�n n��c thu�c t�nh ��ng b�n k� n�ng s�ch l� t�i ", 0}, 

[968] = { { { 6, 1, 942, 1, 1, 1 }, 
{ 6, 1, 953, 1, 1, 1 }, 
{ 6, 1, 954, 1, 1, 1 }, 
{ 6, 1, 959, 1, 1, 1 }, },"B�n h�a thu�c t�nh ��ng b�n k� n�ng s�ch l� t�i ", 0}, 

[969] = { { { 6, 1, 938, 1, 1, 1 }, 
{ 6, 1, 941, 1, 1, 1 }, 
{ 6, 1, 947, 1, 1, 1 }, 
{ 6, 1, 960, 1, 1, 1 }, 
{ 6, 1, 962, 1, 1, 1 }, },"N�m ��t thu�c t�nh ��ng b�n k� n�ng s�ch l� t�i ", 0}, 

[970] = { { 6, 1, 977, 1, 1, 1 },"M��i k� n�ng r� r�ng c�u ho�n ", -1, 10}, 

[971] = { { 6, 1, 130, 1, 1, 1 },"M��i r� r�ng c�u ho�n ", -1, 10}, 

[972] = { { { 0, 11, 101, 1, 1, 1 }, 
{ 0, 11, 111, 1, 1, 1 }, },"Thi�u ni�n kim phong # thanh ni�n kim phong m�t n� c�c m�t ", 0}, 

[973] = { { { 0, 11, 100, 1, 1, 1 }, 
{ 0, 11, 110, 1, 1, 1 }, },"Thi�u ni�n h�i ���ng # thanh ni�n h�i ���ng m�t n� c�c m�t ", 0}, 

[974] = { { { 0, 11, 98, 1, 1, 1 }, 
{ 0, 11, 108, 1, 1, 1 }, },"Thi�u ni�n c��i s��ng # thanh ni�n c��i s��ng m�t n� c�c m�t ", 0}, 

[975] = { { { 0, 11, 99, 1, 1, 1 }, 
{ 0, 11, 109, 1, 1, 1 }, },"Thi�u ni�n l�a nh�n # thanh ni�n l�a nh�n m�t n� c�c m�t ", 0}, 

[976] = { { { 0, 11, 97, 1, 1, 1 }, 
{ 0, 11, 107, 1, 1, 1 }, },"Thi�u ni�n l�i ki�m # thanh ni�n l�i th�n ki�m c� c�c m�t ", 0}, 

[995] = { { 6, 1, 990, 1, 1, 1 },"M��i l�i t�c ho�n ", -1, 10}, 
[996] = { { 6, 1, 985, 1, 1, 1 },"M��i tr��ng ki�n kh�n na di ph� ", -1, 10}, 
[997] = { { 6, 1, 986, 1, 1, 1 },"M��i t� d�i h�nh ��i �nh ph� ", -1, 10}, 
[998] = { { 6, 1, 982, 1, 1, 1 },"M��i huy�n thi�n b�y r�p ", -1, 10}, 
[999] = { { 6, 1, 984, 1, 1, 1 },"M��i ��ng b�ng b�y r�p ", -1, 10}, 
[1000] = { { 6, 1, 988, 1, 1, 1 },"M��i cao c�p kinh nghi�m l�nh b�i ", -1, 10}, 
[1001] = { { 6, 1, 993, 1, 1, 1 },"M��i l�i th�n ng�c ", -1, 10}, 
[1002] = { { 6, 1, 992, 1, 1, 1 },"M��i huy�n b�ng ng�c ", -1, 10}, 
[1003] = { { 6, 1, 979, 1, 1, 1 },"M��i b�ng s��ng k�n hi�u ", -1, 10}, 
[1004] = { { 6, 1, 980, 1, 1, 1 },"M��i b�o l�i k�n hi�u ", -1, 10}, 
[1014] = { { 6, 0, 1012, 1, 1, 1 },"M��i m�u xanh da tr�i y�u c� ", -1, 10}, 
[1015] = { { 6, 0, 1013, 1, 1, 1 },"M��i b�ng tuy�t ", -1, 10}, 
[1018] = { { 6, 0, 1017, 1, 1, 1 },"M��i ng�y l� l� hoa ", -1, 10}, 
[1049] = { { 6, 1, 1016, 1, 1, 1 },"M��i nh� � t�p ", -1, 10}, 
[1055] = { { 6, 1, 1053, 1, 1, 1 },"M��i huy�n th�i h� t�p ", -1, 10}, 
[1074] = { { 6, 1, 402, 1, 1, 1 }, "10 c� th�n b� ��i bao ti�n l� x� ", -1, 10}, 
[1075] = { { 6, 1, 906, 1, 1, 1 }, "10 c� cao c�p huy ho�ng qu� ", -1, 10}, 
[1137] = { { 4, 967, 1, 1, 0, 0 }, "10 c� b�ng th�ch k�t tinh ", -1, 10}, 
[1138] = { { 4, 963, 1, 1, 0, 0 }, "10 c� hoa c�c th�ch ", -1, 10}, 
[1139] = { { 4, 968, 1, 1, 0, 0 }, "10 c� ng�y �� b� phi�n ", -1, 10}, 
[1140] = { { 4, 965, 1, 1, 0, 0 }, "10 b�ng thi�m t� ", -1, 10}, 
[1141] = { { 4, 966, 1, 1, 0, 0 }, "10 c� m�u g� th�ch ", -1, 10}, 
[1142] = { { 4, 964, 1, 1, 0, 0 }, "10 c� m� n�o ", -1, 10}, 
[1143] = { { 4, 969, 1, 1, 0, 0 }, "10 c� �i�n ho�ng th�ch ", -1, 10}, 
[1373] = { { 6, 1, 74, 1, 1, 1 }, "5 c� b�ch c�u ho�n ", -1, 5}, 
[1374] = { { 6, 1, 1372, 1, 1, 1 }, "5 k� n�ng b�ch c�u ho�n ", -1, 5}, 
[1665] = { { 6, 1, 23, 1, 1, 1 }, "10 cu�n thi�t La H�n ", -1, 10}, 
[2355] = { { 6, 1, 2348, 1, 1, 0 }, "5 c� huy�n thi�n ch�y ", -1, 5}, 
[2515] = { { 6, 0, 1, 1, 1, 0 }, format("%d %s", 5,"Tr��ng m�nh ho�n "), -1, 5}, 
[2516] = { { 6, 0, 2, 1, 1, 0 }, format("%d %s", 5,"Nh� b�o ho�n "), -1, 5}, 
[2517] = { { 6, 0, 3, 1, 1, 0 }, format("%d %s", 5,"��i l�c ho�n "), -1, 5}, 
[2518] = { { 6, 0, 4, 1, 1, 0 }, format("%d %s", 5,"Cao nhanh ch�ng ho�n "), -1, 5}, 
[2519] = { { 6, 0, 5, 1, 1, 0 }, format("%d %s", 5,"Trung h�c �� nh� c�p ho�n "), -1, 5}, 
[2520] = { { 6, 0, 6, 1, 1, 0 }, format("%d %s", 5,"Nhanh ch�ng ho�n "), -1, 5}, 
[2521] = { { 6, 0, 7, 1, 1, 0 }, format("%d %s", 5,"B�ng ph�ng ho�n "), -1, 5}, 
[2522] = { { 6, 0, 8, 1, 1, 0 }, format("%d %s", 5," l�i ph�ng ho�n "), -1, 5}, 
[2523] = { { 6, 0, 9, 1, 1, 0 }, format("%d %s", 5," l�a ph�ng ho�n "), -1, 5}, 
[2524] = { { 6, 0, 10, 1, 1, 0 }, format("%d %s", 5,"��c ph�ng ho�n "), -1, 5}, 
[2525] = { { 6, 1, 2432, 1, 1, 0 }, format("%d %s", 5,"Vi s�n ��o l�nh b�i "), -1, 5}, 
[4322] = { { 6, 1, 1372, 1, 1, 1 }, "100 C�n Kh�n T�o H�a �an (��i) ", -1, 100},
} 

function main(nItemIdx) 
_,_,detail = GetItemProp(nItemIdx) 

local strItemName = GetItemName(nItemIdx) 
if strItemName == " vi s�n ��o l�nh b�i l� t�i " then 
if tbVNGForbidItem:IsForbidMap(strItemName, {tbVNGForbidItem.CHALLENGE_OF_TIME}) == 1 then 
return 1 
end 
end 

tbGift = TB_XINNIAN_GIFE[detail][1] 
if ( tbGift == nil ) then 
print("error xinnian gift "..GetItemProp(nItemIdx)) 
return 1 
end 

if (TB_XINNIAN_GIFE[detail][3] == -1) then -- script viet hoa By http://tranhba.com  theo nh� th� 4 c� tham s� tr� gi� cho bao nhi�u c� c�ng c� v�t ph�m 
if (CalcFreeItemCellCount() < TB_XINNIAN_GIFE[detail][4]) then 
Msg2Player("Chu�n b� ch� tr�ng ch�a �� #"); 
return 1; 
end; 
if (detail == 1075) then 
for i = 1, TB_XINNIAN_GIFE[detail][4] do 
local nItemID = AddItem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], tbGift[5], tbGift[6]) 
ITEM_SetExpiredTime(nItemID, 10080); 
SyncItem(nItemID) 
end 

else 
for i = 1, TB_XINNIAN_GIFE[detail][4] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], tbGift[5], tbGift[6]) 
end 
end 

elseif (detail == 909) then -- script viet hoa By http://tranhba.com  ng�u nhi�n cho m�t 
ranitem = random( getn(tbGift) ) 
addGiftitem(tbGift[ranitem][1], tbGift[ranitem][2], tbGift[ranitem][3], tbGift[ranitem][4], tbGift[ranitem][5], tbGift[ranitem][6]) 

elseif (TB_XINNIAN_GIFE[detail][3] == 0) then -- script viet hoa By http://tranhba.com  li�t bi�u trung ��ch to�n cho 
for i = 1, getn(tbGift) do 
addGiftitem(tbGift[i][1], tbGift[i][2], tbGift[i][3], tbGift[i][4], tbGift[i][5], tbGift[i][6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 3) then -- script viet hoa By http://tranhba.com  th� 3 c� tham s� # c�n k� lo�i h�nh # theo nh� �i�u ki�n 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], i, tbGift[4], tbGift[5], tbGift[6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 4) then -- script viet hoa By http://tranhba.com  th� 4 c� tham s� # c�p b�c # theo nh� �i�u ki�n 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], i, tbGift[5], tbGift[6]) 
end 

elseif (TB_XINNIAN_GIFE[detail][3] == 5) then -- script viet hoa By http://tranhba.com  th� 5 c� tham s� # ng� h�nh # theo nh� �i�u ki�n 
for i = TB_XINNIAN_GIFE[detail][4], TB_XINNIAN_GIFE[detail][5] do 
addGiftitem(tbGift[1], tbGift[2], tbGift[3], tbGift[4], i, tbGift[6]) 
end 
end 
Msg2Player("Ng�i ��t ���c <color=yellow>"..TB_XINNIAN_GIFE[detail][2]) 
end 

function addGiftitem(...) 
if ( arg.n == 6 ) then 
AddItem ( arg[1], arg[2], arg[3], arg[4], arg[5], arg[6] ) 
elseif ( arg.n == 2 ) then 
AddGoldItem( arg[1], arg[2] ) 
elseif ( arg.n == 1 ) then 
AddEventItem( arg[1] ) 
else 
print("the table of gift is wrong!!!") 
end 
end
