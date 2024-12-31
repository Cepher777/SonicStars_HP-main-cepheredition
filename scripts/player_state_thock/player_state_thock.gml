function player_state_thock(){
	//If its not in spring state exit
	if(state != ST_THOCK) exit;
	
	//Change animation
	animation_play(animator, ANIM_THOCK);
	
	if(ground) state = ST_NORMAL;
}