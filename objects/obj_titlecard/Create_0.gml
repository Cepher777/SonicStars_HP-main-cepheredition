/// @description Values
	surf_bg = surface_create(global.window_width, global.window_height);
	surf = surface_create(global.window_width, global.window_height);
	timer = 0;
	act_card = 1-global.act_transition;
	
	//Offset values
	offset[0] = global.window_width;
	offset[1] = -144;
	offset[2] = 0;
	offset[3] = global.window_width;
	
	//Disable flags
	obj_player.input_disable = true;
	obj_level.disable_timer = true;
	
	//Speed up
	if(!act_card) 
	{
		timer = 32;
	}