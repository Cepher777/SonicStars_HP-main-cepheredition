function player_state_hammerfly(){
	//If its not in spring state exit
	if(state != ST_HAMMERFLY) exit;
	
	animation_play(animator, ANIM_HAMMERSPIN);
	y_accel = 0.03125;
	
	if(ground) || (touching_ceiling) state = ST_NORMAL;
	if (state == ST_HAMMERFLY && y_speed >= -0.6) state = ST_ROLL;
}