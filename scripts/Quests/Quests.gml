// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillSlimes(){
	global.activeQuest = 1;
	switch(global.questStatus[? "TheSlimeQuest"]){
		case 0:{ // Not Started
			// Offer Quest
			newTextBoxes("Fala mano, mata um slime ali pra mim",2,["4:Claro, bora lá","5:Sei não em, perigoso"]);
		}break;
		case 1:{ // In progress
			if (global.slimeKillCounter >= 1){
				// Complete quest
				newTextBoxes("Parabéns, você matou uma slime\nAqui está sua recompensa",2);
				global.questStatus[? "TheSlimeQuest"] = 2;
				global.activeQuest = 0;
				global.slimeKillCounter = 0;
				global.playerMoney += 10;
				global.playerHealthMax += 1;
			}else{
				// Reminder quest
				newTextBoxes("Normalmente elas habitam a montanha\nseguindo ao norte", 2);
			}
		}break;
		default: break;
	}
}

function KillBats(){
	global.activeQuest = 1;
	switch(global.questStatus[? "TheBatQuest"]){
	case 0:{ // Not Started
		// Offer Quest
		newTextBoxes("Fala mano, mata um morceguin ali pra mim",2,["4:Claro, bora lá","5:Sei não em, perigoso"]);
	}break;
	case 1:{ // In progress
		if (global.batKillCounter >= 1){
			// Complete quest
			newTextBoxes("Parabéns, você matou um morceguin\nAqui está sua recompensa",2);
			global.questStatus[? "TheBatQuest"] = 2;
			global.activeQuest = 0;
			global.batKillCounter = 0;
			global.playerMoney += 10;
			global.playerHealthMax += 1;
		}else{
			// Reminder quest
			newTextBoxes("Normalmente elas habitam a montanha\nseguindo ao norte", 2);
		}
	}break;
	default: break;
	}
}

function DrumQuest(){
	global.activeQuest = 1;
	switch(global.questStatus[? "Drum"]){
		case 0:{
			newTextBoxes("Essa missão é pra liberar a bateria", 0);
			global.questStatus[? "Drum"] = 1;
		}break;
		case 1:{
			if(global.questStatus[? "CollectDrum1"] == 2){
				global.questStatus[? "Drum"] = 2;
				global.activeQuest = 0;
				global.playerItemUnlocked[INSTRUMENTS.DRUMS] = true;
				newTextBoxes("Agora você pode utilizar um novo instrumento", 0);
				removeItemsInventory(QUESTITEMS.BAQUETA, 1, sQuestItems);
			}
		}break;
		default: break;
	}	
}

function CollectDrum1(){
	switch(global.questStatus[? "CollectDrum1"]){ 
		case 0:{
			newTextBoxes("Você achou uma parte da bateria", 0);
			global.questStatus[? "CollectDrum1"] = 2;
			addItemsInventory(QUESTITEMS.BAQUETA, 1, sQuestItems);
		}
	}
}