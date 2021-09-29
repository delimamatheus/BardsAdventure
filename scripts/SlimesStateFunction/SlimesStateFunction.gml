function SlimeAttack(){
	// How fast to move
	var _spd = enemySpeed;
	
	//Don't move while still getting ready to jump
	if (image_index < 2) _spd = 0;
	
	// Freeze animation while in mid-air and also after landing finishes
	if (floor(image_index) == 3) or (floor(image_index) == 5) image_speed = 0;
	
	// Jump distance
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	
	// Begin landing end of the animation once we're nearly done
	if (_distanceToGo < 4) and (image_index < 5) image_speed = 1;
	
	// Move
	if(_distanceToGo > _spd){
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_spd, dir);
		vSpeed = lengthdir_y(_spd, dir);
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		// Commit to move and stop moving if we hit a wall
		if(EnemyTileCollision() == true){
			xTo = x;
			yTo = y;
		}
	}else{
		x = xTo;
		y = yTo;
		if(floor(image_index) == 5){
			stateTarget = ENEMYSTATE.CHASE;
			stateWaitDuration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
}

function SlimeChase(){
	sprite_index = sprMove;
	if(instance_exists(target)) and (point_distance(x, y, target.x, target.y) <= enemyAggroRadius){
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		if(_distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed,dir);
			vSpeed = lengthdir_y(enemySpeed,dir);
		}else{
			hSpeed = lengthdir_x(_distanceToGo,dir);
			vSpeed = lengthdir_y(_distanceToGo,dir);
		}
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		// Collide and Move
		EnemyTileCollision();
	}else{
		state = ENEMYSTATE.WANDER;
	}
	
	// Check if close enough to attack
	if (instance_exists(target)) and (point_distance(x,y,target.x, target.y) <= enemyAttackRadius){
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1;
		
		// Target 8px past the player
		xTo += lengthdir_x(8,dir);
		yTo += lengthdir_y(8,dir);
	}
}

function SlimeWander(){
	sprite_index = sprMove;
	
	// At destination or given up?
		if((x == xTo) and (y ==yTo)) or (timePassed > enemyWanderDistance / enemySpeed){
			hSpeed = 0;
			vSpeed = 0;
			
			// End our move animation
			if (image_index < 1){
				image_speed = 0.0;
				image_index = 0;
			}
			
			// Set new target destination
			if(++wait >= waitDuration){
				wait = 0;
				timePassed = 0;
				dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
				xTo = x + lengthdir_x(enemyWanderDistance, dir);
				yTo = y + lengthdir_y(enemyWanderDistance, dir);
			}
		}else{ // Move towards new destination
			timePassed++;
			image_speed = 1.0;
			var _distanceToGo = point_distance(x,y,xTo,yTo);
			var _speedThisFrame = enemySpeed;
			if(_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo
			dir = point_direction(x,y,xTo,yTo);
			hSpeed = lengthdir_x(_speedThisFrame,dir);
			vSpeed = lengthdir_y(_speedThisFrame,dir);
			if(hSpeed != 0) image_xscale = sign(hSpeed);
			
			// Collide and move
			EnemyTileCollision();
		}
	
	// Check for Aggro
	if (++aggroCheck > aggroCheckDuration){
		aggroCheck = 0;
		if (instance_exists(oPlayer)) and (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius){
			state = ENEMYSTATE.CHASE;
			target = oPlayer;
		}
	}
}

function BatChase(){
	sprite_index = sprMove;
	if(instance_exists(target)) and (point_distance(x, y, target.x, target.y) <= enemyAggroRadius){
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo);
		if(_distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed,dir);
			vSpeed = lengthdir_y(enemySpeed,dir);
		}else{
			hSpeed = lengthdir_x(_distanceToGo,dir);
			vSpeed = lengthdir_y(_distanceToGo,dir);
		}
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		// Collide and Move
		EnemyTileCollision();
	}else{
		state = ENEMYSTATE.WANDER;	
	}
}

function BatWander(){
	sprite_index = sprMove;
	image_speed = 1.0;
	
	// At destination or given up?
		if((x == xTo) and (y ==yTo)) or (timePassed > enemyWanderDistance / enemySpeed){
			hSpeed = 0;
			vSpeed = 0;
			
			// Set new target destination
			if(++wait >= waitDuration){
				wait = 0;
				timePassed = 0;
				dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45);
				xTo = x + lengthdir_x(enemyWanderDistance, dir);
				yTo = y + lengthdir_y(enemyWanderDistance, dir);
			}
		}else{ // Move towards new destination
			timePassed++;
			var _distanceToGo = point_distance(x,y,xTo,yTo);
			var _speedThisFrame = enemySpeed;
			if(_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo
			dir = point_direction(x,y,xTo,yTo);
			hSpeed = lengthdir_x(_speedThisFrame,dir);
			vSpeed = lengthdir_y(_speedThisFrame,dir);
			if(hSpeed != 0) image_xscale = sign(hSpeed);
			
			// Collide and move
			EnemyTileCollision();
		}
	
	// Check for Aggro
	if (++aggroCheck > aggroCheckDuration){
		aggroCheck = 0;
		if (instance_exists(oPlayer)) and (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius){
				state = ENEMYSTATE.CHASE;
				target = oPlayer;
		}
	}
}