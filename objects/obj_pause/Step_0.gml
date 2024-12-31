/// @description pause
	if(Input.StartPress || Input.ActionPress)
	{
		if delay > 2 
		{
			if(selection == 0)
			{
				state = 1;
			}
			if(selection == 1)
			{
				//if(global.life > 1)
				//{
					//play_sound(sfx_menu_accept);
					instance_activate_all();
					reset_stage_data();
					fade_to_room(room, 5)
					
				//	global.life--;
				//}
				//else
				//{play_sound(sfx_menu_back);}
			}
			if(selection == 2)
			{
				//play_sound(sfx_menu_accept);
				instance_activate_all();
				reset_stage_data();
				fade_to_room(rm_stage_select, 5);
			}
		}
	}
	if(state == 1 && floor(offset[2]) > 400)
	{
		//play_sound(sfx_pause);
		audio_resume_all();
		instance_activate_all();
		surface_free(pausemenu);
		pausemenu = -1;
		instance_destroy();
	}
	
	delay += 1
	timer += 1
	
	offset[0] = lerp(offset[0], -96, 0.1);
	
	offset[1] = 32*selection;
	
	if(state == 0)
	{
		offset[2] = lerp(offset[2], 0, 0.25);
		offset[3] = lerp(offset[3], 0, 0.25);
		offset[4] = lerp(offset[4], 0.25, 0.25);
	}
	if(state == 1)
	{
		offset[2] = lerp(offset[2], global.window_width, 0.25);
		offset[3] = lerp(offset[3], global.window_height, 0.25);
		offset[4] = lerp(offset[4], 0, 0.25);
	}
	
	if(Input.UpPress)
	{
		selection -= 1;
		play_sound(sfx_scoreadd);
		offset[0] = 0;
	}
	if(Input.DownPress)
	{
		selection += 1;
		play_sound(sfx_scoreadd);
		offset[0] = 0;
	}
	
	if(selection < 0) selection = 2;
	if(selection > 2) selection = 0;