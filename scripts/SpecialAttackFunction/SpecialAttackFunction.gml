// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrumSpecialAttack(){
	global.playerAttackType = 2;
	if(sprite_index != sDrumSpecialAttack){
		sprite_index = sDrumSpecialAttack;
		localFrame = 0;
		image_index = 0;
		image_speed = 2;
	}
	
	PlayerAnimateSprite();
	
	if(animationEnd){
		state = PlayerStateFree;
		animationEnd = false;
	}
}