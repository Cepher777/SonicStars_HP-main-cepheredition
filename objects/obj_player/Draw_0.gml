/// @description Draw the player
	if(state = ST_KNOCKOUT || invincible_timer mod 12 >= 6 || invincible_timer = 0 || invincible)
	{
        
		show_debug_message(string(transform_timer))
		if (transform_timer != 0) {
			palette_swap(spr_pal_characters, (transform_timer mod 7));
		}
    
		if(super_state) && (transform_timer == 0)
		{
		 super_color_value = Wave(5,10,0.9,0);
		palette_swap(spr_pal_characters,super_color_value);
			
		}
		else if (!super_state) && (exiting == true)
		{
			if(super_color_value != 0) super_color_value -= 0.5;
			palette_swap(spr_pal_characters,super_color_value);
			if(super_color_value <= 0) exiting = false;
		}
		
		
		
		if(speed_shoes)
		{
			for (var i = 0; i < 3; ++i) 
			{
				if((global.object_timer) mod 4 = i )
				{
					if(x_speed != 0 || y_speed != 0)
					{
						var gap = 9 - (3 * i);
						with(obj_tails_object)
						{
							if(appear)
							{
								draw_sprite_ext(record_sprite[max(record_timer - gap, 0) mod 60], record_frame[max(record_timer - gap, 0) mod 60], other.record_x[max(other.record_timer - gap, 0) mod 60], other.record_y[max(other.record_timer - gap, 0) mod 60], obj_tails_object.record_direction[max(record_timer - gap, 0) mod 60], 1, obj_tails_object.record_angle[max(record_timer - gap, 0) mod 60], c_white, 1);
							}
						}
						draw_sprite_ext(record_sprite[max(record_timer - gap, 0) mod 60], record_frame[max(record_timer - gap, 0) mod 60], record_x[max(record_timer - gap, 0) mod 60], record_y[max(record_timer - gap, 0) mod 60], record_direction[max(record_timer - gap, 0) mod 60], 1, record_angle[max(record_timer - gap, 0) mod 60], c_white, 1);
					}
				}
			}
		}
		
		//Draw tails segment
		if(character = CHAR_TAILS)
		{
			with(obj_tails_object)
			{
				if(appear)
				{
					draw_animator(animator, floor(other.x), floor(other.y), image_xscale, 1, image_angle, c_white, 1);
				}
			}
		}
		
		//Draw the player:
		draw_animator(animator, floor(x), floor(y), image_xscale, 1, image_angle, c_white, 1);
		
		shader_reset();
	}
	
	//Draw spindash dust effect
	if(!global.chaotix_dust_effect && state = ST_SPINDASH && ground)
	{
		draw_sprite_ext(spr_effect_spindash, spindash_dust_frames, floor(x) - 2 * facing, floor(y) + hitbox_h + 1, facing, 1, 0, c_white, 1);	
	}
	
	draw_player_debug();