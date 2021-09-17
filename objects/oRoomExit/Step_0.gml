/// @description Insert description here
// You can write your code in this editor
if(instance_exists(oPlayer)) and (position_meeting(oPlayer.x, oPlayer.y,id)){
	if(oPlayer.state != PlayerStateDead){
		if(!instance_exists(oTransition)){
			global.targetRoom = targetRoom;
			global.targetX = targetX;
			global.targetY = targetY;
			global.targetDirection = oPlayer.direction;
			oCamera.snapToPlayer = true;
		
			with(oPlayer) state = PlayerStateTransition;
			RoomTransition(TRANS_TYPE.SLIDE, targetRoom);
			//instance_destroy();
			show_debug_message(targetX);
			show_debug_message(targetY);
			show_debug_message(targetRoom);
		}
	}
}
