function player_state_super()
{
	if(!super_state) 
	{
		exit;
	}
	
	if(state != ST_TRANSFORM && floor(global.object_timer) mod 60 == 0)
	{
		global.rings -= 1;
	}
	
	if(global.rings <= 0)
	{
		super_state = false;
        exiting = true;
		global.rings = 0;
		play_music(J_SUPER, Jingle);
		player_animation_list();
		animator_reset(animator);
	}
	
	//untransform wip
	/*if(!press_y && hold_y && state != ST_TRANSFORM) 
	{
		super_state = false
		play_music(J_SUPER, Jingle);
		player_animation_list();
		animator_reset(animator);
	}*/
}