function player_state_transform()
{
	if(state != ST_JUMP && state != ST_TRANSFORM || super_state) exit;
	if(press_y && global.rings >= 1)
	{
		animation_play(animator,ANIM_TRANSFORM)
		state = ST_TRANSFORM;
		play_sound(sfx_twinkle);
		transform_timer = 0;
	}

	if(state != ST_TRANSFORM) exit;
	transform_timer = transform_timer + 0.16;
		
	x_speed = 0;
	y_speed = 0;
	ground_speed = 0;
	ground = false;
	direction_allow = false;
	gravity_allow = false;
	movement_allow = false;
	
	if(animation_is_playing(animator,ANIM_TRANSFORM)) && (transform_timer >= 6.0){

		super_state = true;
		direction_allow = true;
		gravity_allow = true;
		movement_allow = true;
		state = ST_NORMAL;
		play_music(J_SUPER, Jingle);
		player_animation_list();
		animator_reset(animator);
	}
}