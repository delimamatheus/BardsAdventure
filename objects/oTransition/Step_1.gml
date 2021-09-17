/// @desc Progress Transition
if(type == TRANS_TYPE.NONE){
	with (oPlayer) state = PlayerStateTransition;

	if (leading == OUT)
	{
		percent = min (1, percent + 1);
		if (percent >= 1) //If screen fully obscured
		{
			room_goto(target); 
			leading = IN;
		}
	}
	else //leading == IN
	{
		percent = max (0, percent - 1);
		if (percent <= 0) //If screen fully revealed
		{
			with (oPlayer) state = PlayerStateFree;
			instance_destroy();
		}
	}
}else{
	with (oPlayer) state = PlayerStateTransition;

	if (leading == OUT)
	{
		percent = min (1, percent + TRANSITION_SPEED);
		if (percent >= 1) //If screen fully obscured
		{
			room_goto(target); 
			leading = IN;
		}
	}
	else //leading == IN
	{
		percent = max (0, percent - TRANSITION_SPEED);
		if (percent <= 0) //If screen fully revealed
		{
			with (oPlayer) state = PlayerStateFree;
			instance_destroy();
		}
	}
}