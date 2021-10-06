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

function GuitarSpecialAttack(){
	// Attack starts
	if(keyboard_check(keySpecialAttack)){
		if(sprite_index != sPlayerSpecialAttackGuitar){
		
			// Set up animation
			sprite_index = sPlayerSpecialAttackGuitar;
			localFrame= 0;
			image_index = 0;
			PlayerAnimateSprite();
		
			//Clear hit list
			if(!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
			ds_list_clear(hitByAttack);
			alarm[2] = 30;
		}
		if(keyboard_check_released(keySpecialAttack)){
			if(alarm[2] <= 0){
				
				AttackCalculator(sPlayerSpecialAttackGuitarHB);
	
				//Update Sprite
				PlayerAnimateSprite();
				
				ScreenShake(5, 20);
	
				if(animationEnd){
					state = PlayerStateFree;
					animationEnd = false;
				}
			}else{
				animationEnd = true;
				if(animationEnd){
					state = PlayerStateFree;
					animationEnd = false;
				}
			}
		}
	}
}

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