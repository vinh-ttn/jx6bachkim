SimCityChat = {}

SimCityChat.chatCollection = {

	"Ch�, ��ng qu� nh�!",
	"Th�m �n k�o h� l� qu� :L",
	"Th�ng An thi�u ti�n ch�a tr�",

	"K� n�y k�o h�i ��nh n� m�i ���c",
	"Th�ng kia c� ti�n ��y",

	"Tr�n ��ng n�o v�i �ng",

	"H�m nay tr�i m�t nh�",

	"Qu�n ch�o l�ng ngon qu� :)",
	"Th�ng n�o ��nh l�n tao :@",
	"ks = ds",

	"Dang ra! Dang ra!",

	"Kh�ng bi�t quan binh � ��u",

	"C� n��ng kia xinh th�t",
	"�a g� d�",

	"H� ti�u ngon nh�",

	"T��ng D��ng n�y c� g� vui?",

	"��ng �� tao g�p :@",

	"T�i b� m�c t�i r�i :L",

	"H�t ti�n r�i sao gi�?",

	"���ng xa m�t qu�",

	"Ti�m v� kh� � ��u nh� ?",

	"L�m sao luy�n skill ta?",

	"Nghe n�i D��ng Ch�u �ang m�a",

	"M�nh b� b�nh r�i",

	"Th�nh �� L�m An ��i L� ta t�m n�ng",

	"T�m em gi�a D��ng Ch�u chi�u m�a",

	"�i �u ��a �i",

	"Con Si�u Quang kia ��p qu�",

	"B� HKMP kia vip nh�",

	"�p 6 d�ng m� x�t ho�i :L",

	"��nh ho�i kh�ng th�ng n�i",

	"Mua v� l�m m�t t�ch ��y!!!!",

	"Ai b�n bk NMC ko?",

	"B�n Th�y Tinh ��y!!!",

	"Th�m n��c m�a qu�!!!",

	"Nguy hi�m! Ch�y l�!",

	"T�i kh�ng th� h�t live!",
	"Bu�n l�m chi em �i !",

	"Ai ve chai d�p ��t thao nh�m b�n h�n ?",
	"Xin ��ng h�n t�i",

	"Tao ghim n� n�y gi�",

	"Hay l� m�nh gi�t ti�n n� nh�",

	"M�a ��o n�m nay ��p th�t",

	"L�i h�t ti�n r�i",

	"Nha m�n th�ng n�y ch�a ph�t l��ng",

	"Qu�n tr� � Long th�t nh�t nh�o",

	"���ng h�m nay v�ng c�c c� n��ng nh�",

	"Nghe n�i Li�u Thanh Thanh �ang � g�n ��y",

	"H�nh nh� Huy�n Gi�c ��i S� m�i v�a �i qua",

	"C� n�n c��p nha m�n kh�ng nh� ?",

	"T�nh h�nh T�ng Kim c� v� c�ng ��y",

	"Giang h� ��n r�ng c� k� th�nh l�p �c Nh�n C�c",

	"Th�m b�nh bao qu�",

	"�au b�ng qu�",

}

SimCityChat.chatCollectionFight = {
	"Ngon nh�o v�!",
	"���ng n�y do ta m�!",
	"Mau ��ng ti�n b�o k�!",
	"Cho xin t� b�nh m�!",
	"A th�ng n�y l�o!",
	"Th�ng n�o d�m ��nh tao!",
	"��a n�o c�n l�n �ng!",
	"Nguy hi�m! Ch�y l�!",
	"M�y h� nh�c!",
	"��a n�o d�m qua ��y ki�m �n!",
	"Anh em ��u x�ng l�n !",
	"H�t n�!"
}	




-- General Helpers
function SimCityChat:getChat()
    return self.chatCollection[random(1, getn(self.chatCollection))]
end
function SimCityChat:getChatFight()
    return self.chatCollectionFight[random(1, getn(self.chatCollectionFight))]
end
