
-- script viet hoa By http://tranhba.com  ====================== v�n ki�n tin t�c ====================== 

-- script viet hoa By http://tranhba.com  ki�m hi�p t�nh duy�n online b�i th��ng lo�i ho�t ��ng ��ch ��u v�n ki�n 
-- script viet hoa By http://tranhba.com  Edited by peres 
-- script viet hoa By http://tranhba.com  2006/03/17 PM 15:42 

-- script viet hoa By http://tranhba.com  ph�o b�ng . ��m h�m �� ��ch ph�o b�ng . 
-- script viet hoa By http://tranhba.com  n�ng nh� h�n � m�a to ng��i c�a b�y trung , ��ng � sau l�ng c�a n�ng �m � n�ng . 
-- script viet hoa By http://tranhba.com  h�n �m �p ��ch da , h�n m�i v� ��o quen thu�c . ph�o b�ng chi�u s�ng �nh m�t c�a n�ng . 
-- script viet hoa By http://tranhba.com  h�t th�y kh�ng th� v�n h�i �� 

-- script viet hoa By http://tranhba.com  ====================================================== 

-- script viet hoa By http://tranhba.com  m�t ng� ��i t��ng lo�i ��ch �ng h� 
Include ("\\script\\lib\\mem.lua"); 

CRemedy = { 

_nServer = 0, -- script viet hoa By http://tranhba.com  b�i th��ng ch� ��nh khu d�ng/u�ng , n�u v� 0 l� t�t c� khu d�ng/u�ng th�ng d�ng 
_nStartDate = 0, -- script viet hoa By http://tranhba.com  b�i th��ng b�t ��u ��ch nh�t k� 
_nEndDate = 0, -- script viet hoa By http://tranhba.com  b�i th��ng k�t th�c ��ch nh�t k� 
_nTaskID = 0, -- script viet hoa By http://tranhba.com  chi�m �o�t d�ng nhi�m v� thay ��i l��ng 
_nTimes = 0, -- script viet hoa By http://tranhba.com  m�i ng��i c� th� nh�n l�y ��ch nhi�u nh�t s� l�n 
_nLevel = 0, -- script viet hoa By http://tranhba.com  nh�n l�y ��ch c�p b�c h�n ch� , 0 v� t�y � c�p b�c 
_szRemedyName = "", -- script viet hoa By http://tranhba.com  b�i th��ng ho�t ��ng ��ch t�n 

-- script viet hoa By http://tranhba.com  c�u t�o h�m s� , khu d�ng/u�ng , b�t ��u nh�t k� , k�t th�c nh�t k� , chi�m �o�t d�ng nhi�m v� thay ��i l��ng , b�i th��ng ho�t ��ng ��ch t�n # nh�ng v� v� �ch # 
__new = function(self, arg) 
self._nServer = arg[1]; 
self._nStartDate = arg[2]; 
self._nEndDate = arg[3]; 
self._nTaskID = arg[4]; 
self._nLevel = arg[5]; 
self._szRemedyName = arg[6]; 
end, 

checkPay = function(self) 

local bServer, bDate, bTask, bLevel = 0,0,0,0; -- script viet hoa By http://tranhba.com  c�n th�a m�n c�i n�y b�n �i�u ki�n m�i c� th� th�ng qua 

local nNowServer = GetGateWayClientID(); 

local nNowDate = tonumber(GetLocalDate("%y%m%d")); 

-- script viet hoa By http://tranhba.com  chia ra l�y ���c b�t ��u c�ng k�t th�c ��ch n�m / th�ng / ng�y 
local nStartYear = tonumber(strsub(tostring(self._nStartDate),1,1)); 
local nStartMonth = tonumber(strsub(tostring(self._nStartDate),2,3)); 
local nStartDay = tonumber(strsub(tostring(self._nStartDate),4,5)); 

local nEndYear = tonumber(strsub(tostring(self._nEndDate),1,1)); 
local nEndMonth = tonumber(strsub(tostring(self._nEndDate),2,3)); 
local nEndDay = tonumber(strsub(tostring(self._nEndDate),4,5)); 

local nNowTimes = GetTask(self._nTaskID); 

local aryErrorMsg = {"<enter>"}; 

-- script viet hoa By http://tranhba.com  ki�m tr�c khu d�ng/u�ng t�n c� hay kh�ng gi�ng nhau 
if self._nServer~=0 then 
if self._nServer==nNowServer then 
bServer = 1; 
else 
bServer = 0; 
tinsert(aryErrorMsg, " l�n n�y b�i th��ng ho�t ��ng kh�ng thu�c v� v�n khu d�ng/u�ng . <enter>"); 
end; 
else 
bServer = 1; 
end; 

-- script viet hoa By http://tranhba.com  ki�m tr�c nh�t k� c� hay kh�ng � trong ph�m vi 
if nNowDate>=self._nStartDate and nNowDate<=self._nEndDate then 
bDate = 1; 
else 
bDate = 0; 
tinsert(aryErrorMsg,"�� v��t qua nh�n l�y ��ch nh�t k� ph�m vi , nh�n l�y ��ch nh�t k� t� #<color=yellow>"..nStartYear.." n�m "..nStartMonth.." th�ng "..nStartDay.." ng�y <color> b�t ��u ��n #<color=yellow>".. 
nEndYear.." n�m "..nEndMonth.." th�ng "..nEndDay.." ng�y <color> ch�n ch� . <enter>"); 
end; 

if GetLevel()>=self._nLevel then 
bLevel = 1; 
else 
bLevel = 0; 
tinsert(aryErrorMsg,"Kh�ng c� ��t t�i nh�n l�y b�i th��ng c�p b�c , nh�n v�t c�p b�c nh�t ��nh ph�i l�n h�n <color=yellow>"..self._nLevel.." c�p <color><enter> . "); 
end; 

-- script viet hoa By http://tranhba.com  ki�m tr�c nh�n l�y ��ch s� l�n c� hay kh�ng �� ��t t�i 
if nNowTimes<1 then 
bTask = 1; 
else 
bTask = 0; 
tinsert(aryErrorMsg,"�� ��t t�i m�i ng��i c� th� nh�n l�y ��ch s� l�n h�n ch� . <enter>"); 
end; 

-- script viet hoa By http://tranhba.com  to�n b� �i�u ki�n c�ng ph� h�p m�i th�ng qua , n�u nh� kh�ng th�ng qua , l� tr� v� th�t b�i t� ph� ��m t� 
if bServer==1 and bDate==1 and bTask==1 and bLevel==1 then 
return 1; 
else 
return aryErrorMsg; 
end; 
end, 

-- script viet hoa By http://tranhba.com  b�i th��ng cho nh� ch�i ��ch ch� h�m s� 
payForPlayer = function(self) 

local nResult = self:checkPay(); 

if nResult==1 then 
-- script viet hoa By http://tranhba.com  tr��c vi�t s� li�u n�a ph�t b�i th��ng , �� tr�nh xu�t hi�n c� ��ch t�nh hu�ng 
self:writeData(); 
self:payProcess(); 
return 1; 
else 
return nResult; 
end; 
end, 

-- script viet hoa By http://tranhba.com  b�i th��ng cho nh� ch�i ch� qu� tr�nh , nh�ng th�a k� 
payProcess = function(self) 
return 1; 
end, 

-- script viet hoa By http://tranhba.com  vi�t v�o s� li�u ��ch qu� tr�nh , nh�ng th�a k� 
writeData = function(self) 
		SetTask(self._nTaskID, GetTask(self._nTaskID) + 1);

if self._szRemedyName~=nil then 
WriteLog("["..self._szRemedyName.."]"..date("[%y n�m %m th�ng %d ng�y %H l�c %M ph�n ]").."[ tr��ng m�c #"..GetAccount().."][ vai tr� #"..GetName().."]#".." thi h�nh m�t l�n nh�n l�y thao t�c . "); 
end; 

return 1; 
end, 
} 
