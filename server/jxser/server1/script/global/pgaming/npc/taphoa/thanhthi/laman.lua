Include("\\script\\lib\\alonelib.lua");
Include "/script/event/chinesenewyear/eventhead.lua"
Include("\\script\\global\\global_zahuodian.lua");
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
Include("\\script\\global\\pgaming\\npc\\taphoa\\alltaphoa.lua")

function main()
if TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa ~= 1 then
	Talk(1,"","T�nh n�ng n�y hi�n t�i �ang t�m ��ng!")
	return 1
elseif TatNPCTapHoaAllThanh == 1 and ScriptMuaTBTapHoa == 1 then
	local tbOpt = {
		{"Giao D�ch",scripttaphoaall},
		{"K�t Th�c ��i Tho�i",No},
	}
	CreateNewSayEx("<color=green>Ng��i mu�n mua g�?<color>", tbOpt)
else
local Buttons = store_sel_extend();
	local nDate = tonumber(GetLocalDate("%Y%m%d%H"));
	if (nDate >= 2006122200 and nDate <= 2007011424) then
		tinsert(Buttons,1,"Mua Thi�p/BuyVnXasCard")
	end;
	Say("<color=green>T�p h�a<color>: B�n ti�m x�ng danh l� �t�p h�a nam b�c�. H�ng h�a ��ng t�y nam b�c ��u c� �� c�. S�n H� � ��ng H�i, m� l�c �� � Gobi, Kh�ng t��c Linh � L�nh Nam, da ch�n t�m � n�i Tr��ng B�ch, b�t k� l� th� ng��i �� nh�n th�y hay ch�a t�ng th�y qua, � ��y ta ��u c� c�."..Note("taphoa_laman"),
			getn(Buttons),
			Buttons)
end
end;

function yes()
	Sale(2);  				
end;

function no()
end;

function BuyNewyearItem() --Mua ��o c� ng�y l�
	Sale(101)
	return
end

function BuyChristmasCard()
	Sale(97);
end

function BuyVnXasCard()
	Sale(147)
end;