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

function CollectSlimeDrop(_amount){
	/*for(var i = 0; i < oInventory.totalSlots; i++){
		if(oInventory.grid_items[# INFOS.ITEM, i] != -1) and (oInventory.grid_items[# ITEMS.SLIMESDROP, i]){
			oInventory.grid_items[# INFOS.AMOUNT, i]++;
		}
	}*/
}