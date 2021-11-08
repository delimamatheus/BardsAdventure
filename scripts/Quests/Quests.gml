// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function KillSlimes(){
	global.activeQuest = 1;
	switch(global.questStatus[? "TheSlimeQuest"]){
		case 0:{ // Not Started
			// Offer Quest
			newTextBoxes("Gostaria de matasse algumas slimes",2,["4:Aceitar","5:Recusar"]);
		}break;
		case 1:{ // In progress
			if (global.slimeKillCounter >= 1){
				// Complete quest
				newTextBoxes("Parabéns, você matou uma slime\nAqui está sua recompensa",2,["6: "]);
				global.questStatus[? "TheSlimeQuest"] = 2;
				global.activeQuest = 0;
				global.slimeKillCounter = 0;
				global.playerMoney += 10;
				global.playerHealthMax += 1;
			}else{
				// Reminder quest
				newTextBoxes("Normalmente elas habitam a montanha\nseguindo a esquerda da cidade", 2);
			}
		}break;
		default: break;
	}
}

function DrumQuest(){
	global.activeQuest = 1;
	switch(global.questStatus[? "Drum"]){
		case 0:{
			newTextBoxes("Eu perdi minha bateria em algum arbusto", 0);
			global.questStatus[? "Drum"] = 1;
		}break;
		case 1:{
			if(global.questStatus[? "CollectDrum1"] == 2){
				global.questStatus[? "Drum"] = 2;
				global.activeQuest = 0;
				global.playerItemUnlocked[INSTRUMENTS.DRUMS] = true;
				newTextBoxes("Essa nao e minha bateria...\nPode ficar pra voce\nObrigado pela ajuda", 0);
				removeItemsInventory(QUESTITEMS.BAQUETA, 1, sQuestItems);
			}
		}break;
		default: break;
	}	
}

function CollectDrum1(){
	switch(global.questStatus[? "CollectDrum1"]){ 
		case 0:{
			newTextBoxes("Voce achou uma parte da bateria", 0);
			global.questStatus[? "CollectDrum1"] = 2;
			addItemsInventory(QUESTITEMS.BAQUETA, 1, sQuestItems);
		}
	}
}