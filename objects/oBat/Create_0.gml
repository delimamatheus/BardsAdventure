/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

// Sprites
sprMove = sBat;
sprDie = sBatDie;
sprHurt = sBatHurt;

// Scripts
enemyScript[ENEMYSTATE.WANDER] = BatWander;
enemyScript[ENEMYSTATE.CHASE] = BatChase;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;

// Drops
dropChance = irandom_range(0,100);
if(dropChance > 50){
	entityDropList = [oCoin];
}
if(dropChance >=0) and (dropChance <=10){
	entityDropList = [oBatDrop]
}
