/// @description Card events
	obj_player.input_disable = true
	
	//Remove the title card with debug
	if(!global.title_card)
	{
		instance_destroy();	
		if(!act_card)
		{
			camera_return();
		}
		else
		{
			fade_in_room(5);	
		}
		
		obj_player.input_disable = false;
		obj_level.disable_timer = false;	
		obj_hud.slide_in = true;
	}
	
	//Add title card timer
	timer++;
	
	//Transition in
	if(timer < 100)
	{
		if(timer > 8)  offset[0] = lerp(offset[0], 0, 0.15);
		if(timer > 50)  offset[1] = lerp(offset[1], 64+144/2, 0.1);
		if(timer > 50)  offset[2] = lerp(offset[2], 360, 0.15);
		if(timer > 60)  offset[3] = lerp(offset[3], 0, 0.15);
	}
	
	//Transition out
	if(timer > 140)
	{
		offset[0] = lerp(offset[0], -global.window_width, 0.075);		
		offset[1] = lerp(offset[1], -global.window_width-64+144/2, 0.075);		
		offset[3] = lerp(offset[3], global.window_width*2, 0.075);		
	}
	
	//Enable flags
	if(timer > 160)
	{
		if(!act_card)
		{
			camera_return();
		}
		
		obj_player.input_disable = false;
		obj_level.disable_timer = false;	
		obj_hud.slide_in = true;
		
		//End card
		if(timer = 190) instance_destroy();
	}