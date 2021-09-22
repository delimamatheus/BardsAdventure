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
	_hasItem = false;
	for(var i = 0; i < oInventory.totalSlots; i++){
		oInventory.grid_items[# INFOS.AMOUNT, i] = 0;
		if(oInventory.grid_items[# INFOS.ITEM, i] == -1) and (_hasItem == false){
			oInventory.grid_items[# INFOS.ITEM, i] = ITEMS.SLIMESDROP;
			oInventory.grid_items[# INFOS.AMOUNT, i]++;
			_hasItem = true;
		}else if(oInventory.grid_items[# INFOS.ITEM, i] == ITEMS.SLIMESDROP){
			oInventory.grid_items[# INFOS.AMOUNT, i]++;
		}
	}
}