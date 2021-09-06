/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

dropChance = irandom_range(0,100);

if(dropChance <= 25){
	entityDropList = [oCoin];
}

if(dropChance > 25) and (dropChance <= 45){
	entityDropList = [oLifeDrop];
}

if(dropChance > 45) and (dropChance <= 50){
	entityDropList = [oCoin, oLifeDrop];
}

if(dropChance > 50) and (dropChance < 100){
	// nothing
}

if(dropChance == 100){
	entityDropList = [oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin,oCoin]
}

