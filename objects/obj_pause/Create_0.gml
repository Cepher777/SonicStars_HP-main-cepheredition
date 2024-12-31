	/// @description Insert description here
	// You can write your code in this editor
	delay = 0
	timer = 0
	backgroundimage = sprite_create_from_surface(application_surface, 0, 0, global.window_width, global.window_height, false, 0, 0, 0);
	pausemenu = surface_create(global.window_width, global.window_height);
	
	audio_pause_all()
	//play_sound(sfx_pause);
	instance_deactivate_all(true);
	instance_activate_object(Input); 
	instance_activate_object(obj_window);
	instance_activate_object(obj_shell); 
	instance_activate_object(obj_dev); 
	
	state = 0;
	selection = 0;
	
	//selector line
	offset[0] = 0;
	offset[1] = 0;
	
	offset[2] = global.window_width;
	offset[3] = global.window_height;
	
	offset[4] = 0.0;

	

