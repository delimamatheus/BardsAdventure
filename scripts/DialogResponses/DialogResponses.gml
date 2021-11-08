// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogResponses(argument0){
	switch(argument0){
		case 0: break;
		case 1: newTextBoxes("Nunca vou perdoa-los por me abandonar\nHoje vai ser o dia que tudo vai mudar",0,["2: "]); break;
		case 2: newTextBoxes("Finalmente criei coragem para sair\ndessa vila que me exilaram",0); break;
		case 3: newTextBoxes("Thanks for your responses!", 0); break;
		case 4:{
			newTextBoxes("Muito obrigado amigo!",2);
			global.questStatus[? "TheSlimeQuest"] = 1;
		} break;
		case 5:{
			newTextBoxes("Tudo bem\nestarei aqui caso mude de ideia",2);		
		} break;
		case 6:{
			newTextBoxes("Voce recebeu:\n->Coracao de vida\n->10 de ouro", 2);
		}
		default: break;
	}
}