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

/*function GuitarSpecialAttack(){
	if(sprite_index != sGuitarSpecialAttack){
		sprite_index = sGuitarSpecialAttack;
		localFrame = 0;
		image_index = 0;
	}
	
	PlayerAnimateSprite();
	
	AttackCalculator(sGuitarSpecialAttackHB);
	
	if(animationEnd){
		state = PlayerStateFree;
		animationEnd = false;
	}
}*/
function AttackSpecialWhistle(){
	PlayerActOutAnimation(sPlayerWhistleAttack,FireSpecialWhistleProjectile);
}

function FireSpecialWhistleProjectile(){
	with (instance_create_depth(floor(x),floor(y)-10,depth,oSpecialWhistleProjectile)){
		direction = other.direction;
		direction = CARDINAL_DIR * 90;
		image_speed = 0;
		speed = 4;
	}
}