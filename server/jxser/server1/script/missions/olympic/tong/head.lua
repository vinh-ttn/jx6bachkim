-- script viet hoa By http://tranhba.com  th�i lui ra tr� ch�i sau ��ch s�ng l�i �i�m ID, c�ng ch�nh l� ghi danh ��ch ch� �� �i 
CS_RevId = 176 
CS_RevData = 67; 

-- script viet hoa By http://tranhba.com  gia nh�p song ph��ng tr�n doanh l�c ��ch v� tr� 
CampPos1 = {1536 , 3223 }; -- script viet hoa By http://tranhba.com  m�u v�ng 
CampPos2 = {1563 , 3195 }; -- script viet hoa By http://tranhba.com  m�u t�m 

FRAME2TIME = 18; 
-- script viet hoa By http://tranhba.com  tr� ch�i l�n nh�t nh�n s� 
MAX_MEMBER_COUNT = 16; 
MS_STATE = 1; 
V_ID = 2; -- script viet hoa By http://tranhba.com  th�ng l�i tr�n doanh 
MS_TONG1ID = 1;-- script viet hoa By http://tranhba.com  hai bang h�i ��ch bang h�i ID 
MS_TONG2ID = 2; 

MS_TOTALPK = 250;-- script viet hoa By http://tranhba.com  ghi ch�p nh� ch�i ��nh ch�t k� tha nh� ch�i ��ch t�ng s� l�n 

MS_ARENAID = 15; 

TIME_NO3 = 25; -- script viet hoa By http://tranhba.com  bang h�i ��nh l�c x�c ph�t kh� 

TIMER_1 = 20 * FRAME2TIME; -- script viet hoa By http://tranhba.com 20 gi�y c�ng b� m�t c�i chi�n hu�ng 
GO_TIME = 6 ; -- script viet hoa By http://tranhba.com  v�o tr�ng th�i gian l� 2 ph�t 
END_TIME = 9 ; -- script viet hoa By http://tranhba.com  tranh t�i th�i gian 3 ph�t 

MS_NEWSVALUE = 9; -- script viet hoa By http://tranhba.com  nhi�m v� trung c�t gi� tin t�c thay ��i l��ng ��ch ��a ph��ng 
JOINSTATE = 242; 
MISSIONID = 13; 

TONGSCORE = 625; -- script viet hoa By http://tranhba.com  nhi�m v� thay ��i l��ng 

function GetLeavePos() 
return GetTask(300), GetTask(301), GetTask(302); 
end; 

-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
-- script viet hoa By http://tranhba.com  nh� ch�i y�u c�u r�i �i tr� ch�i 
function LeaveGame() 
camp = GetCamp();-- script viet hoa By http://tranhba.com  kh�i ph�c nguy�n th�y tr�n doanh 
SetRevPos(CS_RevId, CS_RevData) 
SetPunish(1)-- script viet hoa By http://tranhba.com  thi�t tr� PK tr�ng ph�t 
SetPKFlag(0)-- script viet hoa By http://tranhba.com  t�t PK ch�t m� 
SetTaskTemp(JOINSTATE, 0); 
ForbidChangePK(0); 
ForbitTrade(0); 
SetFightState(0); 

SetCurCamp(camp); 
SetLogoutRV(0);-- script viet hoa By http://tranhba.com  thi�t tr� s�ng l�i �i�m 
SetCreateTeam(1); 
SetDeathScript("");-- script viet hoa By http://tranhba.com  thi�t tr� t� vong ch�n v�n v� v� �ch 
NewWorld(GetLeavePos()) 
end; 

function GameOver() 
PTab = {}; 
for i = 1, 500 do 
idx , pidx = GetNextPlayer(MISSIONID, idx, 0); 
if (idx == 0 ) then 
break 
end 
PTab[i] = pidx; 
end 

PCount = getn(PTab); 
OldPlayer = PlayerIndex; 
for i = 1, PCount do 
PlayerIndex = PTab[i] 
if (GetCurCamp() == GetMissionV(V_ID)) then 
SetTask(TONGSCORE,1) 
end; 
LeaveGame() 
end; 
PlayerIndex = OldPlayer; 
end; 
-- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com -- script viet hoa By http://tranhba.com - 
