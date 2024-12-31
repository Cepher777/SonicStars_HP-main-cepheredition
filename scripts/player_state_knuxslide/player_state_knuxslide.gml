function player_state_knuxslide(){
	//If not sliding stop executing
	if(state != ST_KNUXSLIDE) exit;
	
	//Change flags
	direction_allow = false;
	movement_allow = false;
	
	//Change animation
	if(ground_speed != 0)
	{
		animation_play(animator, ANIM_KNUXSLIDE);
	}
	
	//Get grounded
	if(ground && ground_angle > 45 && ground_angle < 315)
	{
		state = ST_NORMAL;
		control_lock = 4;
	}
	
	//Ground event
	if(ground)
	{
		//Decelerate
		ground_speed = approach(ground_speed, 0, 0.125);
		
		//Create dust effect
		if(global.object_timer mod 8 == 0 && ground_speed != 0 && !landed)
		{
			play_sound(sfx_slide);
			create_effect(x+random_range(-8, 8), y + hitbox_h, spr_dust_effect, 0.4, depth-1, random_range(0.8, 1.2) * facing, -2, 0, 0.15);
		}
	}

	//Make knuckles Glide again if detached
	if (!ground)
	{
		var _threshold_to_glide = slide_to_glide_min_speed ;
		var _glide_spd_min = 2 ;
		
		if (abs(ground_speed) > _threshold_to_glide) or (abs(x_speed) > _threshold_to_glide) 
		{
			state = ST_KNUXGLIDE;
			animation_play(animator, ANIM_KNUXGLIDE);
			glide_speed = ((abs(x_speed) * glide_momentum_factor) + (_glide_spd_min));
		}
		// Fall if too slow
		if (abs(ground_speed) < _threshold_to_glide) or (abs(x_speed) < _threshold_to_glide) 
		{
		state = ST_KNUXFALL;
		}
	}
	
	//Change animation
	if(ground_speed == 0) 
	{
		animation_play(animator, ANIM_KNUXGETUP);
	}
	
	//Reset the state
	if(animation_is_playing(animator, ANIM_KNUXGETUP) && animation_has_finished(animator)) 
	{
		state = ST_NORMAL;
	}
}