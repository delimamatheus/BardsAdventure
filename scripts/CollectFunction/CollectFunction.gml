// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollectCoins(_amount){
	global.playerMoney += _amount;
}

function CollectLife(_amount){
	if(global.playerHealth < global.playerHealthMax){
		global.playerHealth += _amount;
	}else{
		// do nothing
	}
}

function CollectSlimeDrop(){
	addItemsInventory(ITEMS.SLIMESDROP, 1, sItems);
}

function CollectBatDrop(){
	addItemsInventory(ITEMS.BATDROP, 1, sItems);
}