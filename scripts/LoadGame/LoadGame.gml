// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadJSONFromFile(_filename){
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer,buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
}

function LoadGame(_slot){
	global.gameSaveSlot = _slot;
	var _file = "save"+string(global.gameSaveSlot)+".sav";
	if(file_exists(_file)){
		// Load Game
		var _json = LoadJSONFromFile(_file);
		
		// Global Variables
		global.playerHealth = _json[? "playerHealth"];
		global.playerHealthMax = _json[? "playerHealthMax"];
		global.playerMoney = _json[? "playerMoney"];
		global.playerEquipped = _json[? "playerEquipped"];
		global.playerAttackType = _json[? "playerAttackType"];
		global.targetX = _json[? "targetX"];
		global.targetY = _json[? "targetY"];
		global.activeQuest = _json[? "activeQuest"];
		
		// Lists
		for(var i = 0; i < INSTRUMENTS.TYPE_COUNT; i++){
			global.playerItemUnlocked[i] = _json[? "playerItemUnlocked"][| i];
		}
		
		// Quests
		ds_map_copy(global.questStatus, _json[? "questStatus"]);
		
		// Room
		ds_map_destroy(_json);
		
		return true;
	}else{
		show_debug_message("Nothing here");
		return false;
	}
}