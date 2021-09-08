/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)) && (position_meeting(oPlayer.x, oPlayer.y,id)){
	if(oPlayer.state != PlayerStateDead){
		global.targetRoom = targetRoom;
		global.targetX = targetX;
		global.targetY = targetY;
		global.targetDirection = oPlayer.direction;
		oCamera.snapToPlayer = true;
		
		room_goto(targetRoom);
		instance_destroy();
		show_debug_message(targetX);
		show_debug_message(targetY);
		show_debug_message(targetRoom);
	}
}
