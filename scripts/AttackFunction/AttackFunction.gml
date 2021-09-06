// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackSlash(){
	
	// Attack starts
	if(sprite_index != sPlayerAttackSlash){
		
		// Set up animation
		sprite_index = sPlayerAttackSlash;
		localFrame= 0;
		image_index = 0;
		
		//Clear hit list
		if(!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);
	}
	
	AttackCalculator(sPlayerAttackSlashHB);
	
	//Update Sprite
	PlayerAnimateSprite();
	
	if(animationEnd){
		state = PlayerStateFree;
		animationEnd = false;
	}
}

function AttackWhistle(){
	PlayerActOutAnimation(sPlayerWhistleAttack,FireWhistleProjectile);
}

function FireWhistleProjectile(){
	with (instance_create_depth(floor(x),floor(y)-10,depth,oWhistleProjectile)){
		direction = other.direction;
		direction = CARDINAL_DIR * 90;
		image_speed = 0;
		speed = 4;
	}
}

function AttackCalculator(argument0){
	// Attack hitbox and Check hits
	mask_index = argument0;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, pEntity, hitByAttackNow, false);
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			// Attack if this is not attacked before
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with (hitID){
					if(object_is_ancestor(object_index,pEnemy)){
						HurtEnemy(id, 1, other.id, 10);
					}else if(entityHitScript != -1) script_execute(entityHitScript);
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
}

function HurtEnemy(_enemy, _damage, _source, _knockback){
	with (_enemy){
		if(state != ENEMYSTATE.DIE){
			enemyHP -= _damage;
			flash = 1;
			
			// Hurt ou Die
			if (enemyHP <= 0){
				state = ENEMYSTATE.DIE;
			}else if (state != ENEMYSTATE.HURT){
				statePrevious = state;
				state = ENEMYSTATE.HURT;
			}
			
			image_index = 0;
			if(_knockback != 0){
				var _knockbackDirection = point_direction(x,y,(_source).x,(_source).y);
				xTo = x - lengthdir_x(_knockback, _knockbackDirection);
				yTo = y - lengthdir_y(_knockback, _knockbackDirection);
			}
		}
	}
}
	
function SlimeHurt(){
	sprite_index = sprHurt;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if(_distanceToGo > enemySpeed){
		image_speed = 1;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed,dir);
		vSpeed = lengthdir_y(enemySpeed,dir);
		if(hSpeed != 0) image_xscale = -sign(hSpeed);
		
		// Collide and Move
		if(EnemyTileCollision()){
			xTo = x;
			yTo = y;
		}
	}else{
		x = xTo;
		y = yTo;
		if(statePrevious != ENEMYSTATE.ATTACK) state = statePrevious; else state = ENEMYSTATE.CHASE;
	}
}

function SlimeDie(){
	sprite_index = sprDie;
	image_speed = 1;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if(_distanceToGo > enemySpeed){
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed,dir);
		vSpeed = lengthdir_y(enemySpeed,dir);
		if(hSpeed !=0) image_xscale = -sign(hSpeed);
		
		// Collide and Move
		EnemyTileCollision();
	}else{
		x = xTo;
		y = yTo;
	}
	if(image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number){
		instance_destroy();
	}
	if(global.activeQuest = 1){
		global.slimeKillCounter++;	
	}
}