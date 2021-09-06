// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerActOutAnimation(_sprite, _endScript){
	state = PlayerStateAct;
	sprite_index = _sprite;
	if(argument_count > 1) animationEndScript = _endScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}