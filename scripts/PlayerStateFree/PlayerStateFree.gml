function PlayerStateFree() {
	//Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	//Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;
	if (_oldSprite != sprite_index) localFrame = 0;

	//Update Image Index
	PlayerAnimateSprite();
	

	//Activate Key Logic
	if (keyActivate)
	{
		var _activateX = lengthdir_x(15, direction);
		var _activateY = lengthdir_y(15, direction);
		activate = instance_position(x+_activateX, y+_activateY, pEntity);
		if (activate == noone or activate.entityActivateScript == -1){
			if (alarm[0] <= 0){
			alarm[0] = 120;
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll;
			}
		}else{
			ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
			if(activate.entityNPC){
				with (activate){
					direction = point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
		
	}

	if(keyAttack) and (!keyActivate) and (global.playerEquipped != INSTRUMENTS.NONE){
		state = PlayerStateAttack;
		switch(global.playerEquipped){
			case INSTRUMENTS.WHISTLE: stateAttack = AttackWhistle; break;
			case INSTRUMENTS.DRUMS: stateAttack = AttackSlash; break;
			case INSTRUMENTS.GUITAR: stateAttack = AttackGuitar; break;
			default: break;
			
		}
	}
	
	if(keySpecialAttack) and (!keyActivate) and (global.playerEquipped != INSTRUMENTS.NONE){
		state = PlayerStateSpecialAttack;
		switch(global.playerEquipped){
			case INSTRUMENTS.WHISTLE: stateSpecialAttack = AttackWhistle; break; 
			case INSTRUMENTS.DRUMS: stateSpecialAttack = DrumSpecialAttack; break;
			case INSTRUMENTS.GUITAR: break;
			default: break;
		}
	}
	
	// Cycle Instruments
	var _cycleDirection = keySelectItem - keySelectItemDown;
	if (_cycleDirection != 0){
		do{
			global.playerEquipped += _cycleDirection;
			if (global.playerEquipped < 1) global.playerEquipped = INSTRUMENTS.TYPE_COUNT - 1;
			if(global.playerEquipped >= INSTRUMENTS.TYPE_COUNT) global.playerEquipped = 1;
		}until (global.playerItemUnlocked[global.playerEquipped]);
	}

}
