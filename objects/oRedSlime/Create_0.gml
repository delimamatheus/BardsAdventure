/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

// Sprites
sprMove = sRedSlime;
sprAttack = sRedSlimeAttack;
sprDie = sRedSlimeDie;
sprHurt = sRedSlimeHurt;

// Scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;

// Drops
dropChance = irandom_range(0,100);
if(dropChance > 50){
	entityDropList = [oCoin];
}
