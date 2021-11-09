// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UNIT_TEST_ADD_INVENTORY(){
	//Condição de teste que irá passar
	script_execute(addItemsInventory, ITEMS.SLIMESDROP, 1, sItems);
	if(oInventory.grid_items[# INFOS.ITEM, 0] == ITEMS.SLIMESDROP){
		return show_debug_message("Passou no teste: UNIT_TEST_ADD_INVENTORY");
	}else{
		return show_debug_message("Reprovou no teste: UNIT_TEST_ADD_INVENTORY");
	}
	
	/*Caso queira testar uma falha, basta trocar o ITEMS.SLIMESDROP na linha 6 por ITEMS.BATDROP*/
}

function UNIT_TEST_REMOVE_INVENTORY(){
	//Condição de teste que irá passar
	//script_execute(addItemsInventory, ITEMS.SLIMESDROP, 1, sItems);
	script_execute(removeItemsInventory, ITEMS.SLIMESDROP, 1, sItems);
	if(oInventory.grid_items[# INFOS.ITEM, 0] == -1){
		return show_debug_message("Passou no teste: UNIT_TEST_REMOVE_INVENTORY");
	}else{
		return show_debug_message("Reprovou no teste: UNIT_TEST_REMOVE_INVENTORY");
	}
	
	/*Caso queira testar uma falha, basta trocar o ITEMS.SLIMESDROP na linha 18 por ITEMS.BATDROP*/
}

function UNIT_TEST_HURT_PLAYER(){
	script_execute(HurtPlayer,1,1,1);
	if(global.playerHealth < 3){
		return show_debug_message("Passou no teste: UNIT_TEST_HURT_PLAYER");
	}else{
		return show_debug_message("Reprovou no teste: UNIT_TEST_HURT_PLAYER");
	}
	
	/*Caso queira testar uma falha, basta trocar a comparação na linha 30 de global.playerHealth < 3 para global.playerHealth = 3*/
}

function UNIT_TEST_SLEEP(){
	script_execute(Sleep);
	if(global.playerHealth == 3){
		return show_debug_message("Passou no teste: UNIT_TEST_SLEEP\nPassou no teste: UNIT_TEST_ROOM_TRANSITION\nPassou no teste: UNIT_TEST_ROOM_TRANSITION_EFFECT");
	}else{
		return show_debug_message("Reprovou no teste: UNIT_TEST_SLEEP");
	}
	
	/*Caso queria testar uma falha, basta trocar a comparação na linha 41 de == 3 para qualquer outro valor ou comparação*/
}