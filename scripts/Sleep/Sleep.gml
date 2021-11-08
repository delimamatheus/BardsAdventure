// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sleep(){
	global.playerHealth = global.playerHealthMax;
	RoomTransition(TRANS_TYPE.SLIDE, rHome);
	//newTextBoxes("Apos um descanso voce se sente revigorado!!\nPronto para voltar a aventura", 0);
	
}