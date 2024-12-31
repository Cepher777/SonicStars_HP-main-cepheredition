function player_state_glide(){
	//Trigger the glide
	if(state == ST_JUMP && character == CHAR_KNUX && press_action)
	{
		control_lock = 4;
		knuckles_angle = 90 * facing;
		y_speed = max(y_speed, 0.5);
		state = ST_KNUXGLIDE;
		facing = facing;
		animation_play(animator, ANIM_KNUXGLIDE);
		// Set Glide Speed
		var _glide_spd_min = 4 ;		
		glide_speed = ((abs(x_speed) * glide_momentum_factor) + (_glide_spd_min));	
	}
	
	//If not gliding then stop
	if(state != ST_KNUXGLIDE) 
	{
		exit;
	}
	
	//Change flags
	movement_allow = false;
	direction_allow = false;
	gravity_allow = false;
	attacking = true;
	
	//Trigger the slide
	if(ground)
	{
		state = ST_KNUXSLIDE;	
	}
	
	//Adjust y speed
	if(y_speed < 0.5) 
	{
		y_speed += 0.125;
	}
	if(y_speed > 0.5) 
	{
		y_speed -= 0.125;
	}
	
	//Force x speed to glide speed
	x_speed = glide_speed * dsin(knuckles_angle);
	
	//Accelerate
	if(knuckles_angle == 90 || knuckles_angle == -90)
	{
		glide_speed += 0.015625;
	}
	
	//Limit the glide speed
	glide_speed = clamp(glide_speed, -24, 24);
	
	//Get input
	var mov = hold_right - hold_left;
	
	//Glide turn animation
	if(mov == -1 && facing == 1 || mov == 1 && facing == -1)
	{
		facing *= -1;
		animation_set_frame(animator, 0);
		animation_play(animator, ANIM_KNUXGLIDETURN);
	}
	
	//Turn glide
	if(mov != 0) 
	{
		facing = mov;
	}
	
	//Adjust angle
	knuckles_angle = approach(knuckles_angle, 90 * facing, 2.8125);
	
	if(animation_has_finished(animator) && animation_is_playing(animator, ANIM_KNUXGLIDETURN))
	{
		
		animation_play(animator, ANIM_KNUXGLIDE);	
	}
	
	//Attach to the wall
	if(point_check((wall_w + 1) * facing, 0, false) && !line_check(wall_w * facing, hitbox_h + 6))
	{
		//Change direction
		play_sound(sfx_wallcling);
		state = ST_KNUXCLIMB;
	}
	
	//Get grounded
	if(ground && ground_angle > 45 && ground_angle < 315)
	{
		state = ST_NORMAL;
		control_lock = 4;
	}
	
	//Trigger falling if player is not pressing action button
	if(!hold_action)
	{
		ceiling_lock = 4;
		x_speed *= 0.25;
		y_speed = 0;
		state = ST_KNUXFALL;
	}
	
	//Trigger glide cancel
	if (press_down) 
	{
		state = ST_ROLL ;
		y_speed = -(glide_cancel_hop_speed) ;
		play_sound(sfx_dropdash, false);
	}

}