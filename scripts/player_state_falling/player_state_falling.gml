function player_state_falling(){
	//If its not in spring state exit
	if(state != ST_FALLING) exit;
	
	//Change animation
	animation_play(animator, ANIM_FALLING);
	
	if(ground) state = ST_NORMAL;
}