function player_state_smokedash(){
	
	static Dir = 0;
	
	var hold_x_speed = 8;
	var hold_y_speed = 4;
	
	var dash_range = 8;

	var max_timer = 40;
	var min_timer = 8;
	
	if(character == CHAR_ESPIO)
	{
		if  (state != ST_SMOKEDASH && (hold_up+hold_down+hold_right+hold_left) != 0) {
			 Dir = darctan2(hold_up-hold_down,hold_right-hold_left) + 90;
		} 
		
		 if (state == ST_JUMP && press_action){
            state = ST_SMOKEDASH;
            x_speed = 0;
            y_speed = 0;
            camera_set_lag(16,16);
        }
		
		if (state == ST_SMOKEDASH) smokedash_timer++;
		
		if (state == ST_SMOKEDASH && smokedash_timer == min_timer){
			x_speed += dsin(Dir) * dash_range;
			y_speed += dcos(Dir) * dash_range;
		}
		
		if (state == ST_SMOKEDASH) && (smokedash_timer < max_timer){
			animation_play(animator, ANIM_LOOKDOWN);
			attacking = true;
			gravity_allow = false;
			movement_allow = false;
			direction_allow = false;
		}
		
		if(state == ST_SMOKEDASH) && (smokedash_timer == max_timer) || (ground) && (state == ST_SMOKEDASH){
            state = ST_ROLL;
            x_speed = dsin(Dir) * hold_x_speed;
            y_speed = dcos(Dir) * hold_y_speed;
			play_sound(sfx_slide);
			create_effect(x, y, spr_effect_explosion01, 0.2,-1);
        } 
		
		//Effects
		if (state == ST_SMOKEDASH && smokedash_timer == min_timer){
			visible = false;
			play_sound(sfx_slide);
			create_effect(x, y, spr_effect_explosion01, 0.2,-1);
		}
		if (state != ST_SMOKEDASH){
			visible = true;
			smokedash_timer = 0;
		}
	}
}