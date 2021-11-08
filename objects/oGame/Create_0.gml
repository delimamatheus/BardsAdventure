/// @desc Initialise & Globals
randomize();
window_set_fullscreen(1);

// General
global.gameSaveSlot = 0;
global.gamePaused = false;
global.textSpeed = 0.75;
global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

//Player
global.playerHealthMax = 3;
global.playerHealth = global.playerHealthMax;
global.playerMoney = 0;
global.playerAttackType = 0;
/*
	1 - Whistle
	2 - Drum
	3 - Guitar
*/

//Quests
global.questStatus = ds_map_create();
global.questStatus[? "TheSlimeQuest"] = 0;
global.questStatus[? "TheBatQuest"] = 0;
global.questStatus[? "Drum"] = 0;
global.questStatus[? "CollectDrum1"] = 0;

//Items
global.playerEquipped = INSTRUMENTS.WHISTLE;
global.playerItemUnlocked = array_create(INSTRUMENTS.TYPE_COUNT,false);
global.playerItemUnlocked[INSTRUMENTS.WHISTLE] = true;
global.playerItemUnlocked[INSTRUMENTS.DRUMS] = false;
global.playerItemUnlocked[INSTRUMENTS.GUITAR] = false;

// Camera and UI
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.iUI = instance_create_layer(0,0,layer,oUI);

// Counters
global.slimeKillCounter = 0;
global.batKillCounter = 0;
global.activeQuest = 0;

global.inventoryOpen = false;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START);
//room_goto(rForest);
