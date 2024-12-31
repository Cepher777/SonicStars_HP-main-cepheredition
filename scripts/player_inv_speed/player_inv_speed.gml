function player_inv_speed(){
	//Subtract values
	speed_shoes = max(speed_shoes - 1, 0);
	if(knockout_type = 0)invincible_timer = max(invincible_timer - 1, 0);
	
	//Adjust flags
	if(speed_shoes = 0) speed_shoes_flag = false; else speed_shoes_flag = true;
	if(invincible_timer = 0 && invincible) invincible = false;
	
	//Stop jingles
	if(obj_music.play_data[Jingle] == "j_speedshoe" && speed_shoes = 0 && super_state)
	{
		stop_jingle(true, 1);
	}
	
	if(obj_music.play_data[Jingle] == "j_invincible" && !invincible && super_state)
	{
		stop_jingle(true, 1);
	}
	
	if(obj_music.play_data[Jingle] == "j_super" && !super_state)
	{
		stop_jingle(true, 1);
	}
	else
	{
		
	}

	//Invincible sparkles
	if(invincible && !super_state)
	{
		if(!instance_number(obj_invinciblespark))
		{
			instance_create_depth(x, y, depth-10, obj_invinciblespark);
		}
	}
}