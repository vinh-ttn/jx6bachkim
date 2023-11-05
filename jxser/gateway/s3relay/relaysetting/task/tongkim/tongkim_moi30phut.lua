nStartHour = 0
nEndHour = 24 

local _GetStartTime = function(nNowHour, nNowMin)
	
	nNowHour = mod(nNowHour,24)
	nNowMin = mod(nNowMin,60)
	if nNowHour < nStartHour then
		return nStartHour,0
	end
	if nNowMin >= 30 and nNowMin < 60 then
		return nNowHour+1,0
	elseif nNowMin >= 0 and nNowMin < 30 then
		return nNowHour,30
	end
end


function TaskShedule()	
	local nNowHour = tonumber(date("%H"))
	local nNowMin = tonumber(date("%M"))
	TaskName( "Chi�n d�ch T�ng Kim "..nNowHour)

	local nHour,nMin = %_GetStartTime(nNowHour, nNowMin)	
	TaskTime(nHour,nMin)
	--TaskTime(nNowHour,nNowMin)

	TaskInterval(30)
	TaskCountLimit(0)
	
end


-- T�ng kim
function TaskContent()
	
	Battle_StartNewRound( 1, 1 );	-- GM ch� l�nh, kh�i ��ng t�ng kim s� c�p
	
	Battle_StartNewRound( 1, 2 );	-- GM ch� l�nh, kh�i ��ng t�ng kim trung c�p
	
	Battle_StartNewRound( 1, 3 );	-- GM ch� l�nh, kh�i ��ng t�ng kim cao c�p
	
	OutputMsg( " =========================Chien truong Tong - Kim So Cap 19 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Trung Cap 19 : 50 khoi dong --->")
	OutputMsg( " =========================Chien truong Tong - Kim Cao Cap 19 : 50 khoi dong --->")
	
	zMsg2SubWorld  = "<color=yellow>Chi�n tr��ng T�ng - Kim<color> <color=0xa9ffe0>S� c�p, Trung c�p, Cao c�p �� ��n gi� b�o danh, c�c nh�n s� giang h� nhanh ch�n tham gia ��u qu�n, Th�i gian b�o danh l� 19 ph�t."
	zAddLocalCountNews = "Chi�n tr��ng T�ng Kim �� b�t ��u b�o danh, c�c nh�n s� giang h� mau ��n khu v�c b�o danh �� tham gia chi�n tr��ng."
	GlobalExecute(format("dw Msg2SubWorld([[%s]])",zMsg2SubWorld))
	GlobalExecute(format("dw AddLocalCountNews([[%s]], 1)",zAddLocalCountNews))
	
end

function GameSvrConnected(dwGameSvrIP)

end

function GameSvrReady(dwGameSvrIP)

end


