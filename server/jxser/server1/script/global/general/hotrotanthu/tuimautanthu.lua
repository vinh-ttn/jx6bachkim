--
IncludeLib("SETTING");
Include("\\script\\lib\\awardtemplet.lua");
Include("\\script\\dailogsys\\dailogsay.lua");

function main(nItemIndex)
	dofile("script/global/general/hotrotanthu/tuimautanthu.lua")
	if (ST_GetTransLifeCount() > 5) then
		Talk(1, "", "Ch� h� tr� ng��i ch�i chuy�n sinh 5 l�n tr� xu�ng!");
	return 1 end;
	if (CalcFreeItemCellCount() < 20) then
		Talk(1, "", "H�nh trang kh�ng �� 20 � tr�ng �� nh�n m�u h� tr�");
	return 1 end;
	tbAwardTemplet:GiveAwardByList({tbProp={1,8,0,4,0,0}, nCount=30, nBindState=-2}, "T�i m�u t�n th�")
return 1 end;