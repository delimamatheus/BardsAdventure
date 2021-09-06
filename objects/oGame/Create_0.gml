/// @desc Initialise & Globals
randomize();

// General
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

//Quests
global.questStatus = ds_map_create();
global.questStatus[? "TheSlimeQuest"] = 0;

//Items
global.playerEquipped = INSTRUMENTS.WHISTLE;
global.playerItemUnlocked = array_create(INSTRUMENTS.TYPE_COUNT,false);
global.playerItemUnlocked[INSTRUMENTS.WHISTLE] = true;
global.playerItemUnlocked[INSTRUMENTS.DRUMS] = true;

// Camera and UI
global.iCamera = instance_create_layer(0,0,layer,oCamera);
global.iUI = instance_create_layer(0,0,layer,oUI);

// Counters
global.slimeKillCounter = 0;
global.activeQuest = 0;

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);

room_goto(ROOM_START);
