	/// @description Setup

	// Inherit the parent event
	event_inherited();

	//Create the animator
	animator = new animator_create();
	
	//Add only one animations
	animation_add(0, spr_electric_shield, 1, 0, true, true);
	
	//Play the first animation
	animation_play(animator, 0);
	
	animator_front = new animator_create();
	
	//Add animations
	animation_add(1, spr_electric_shield_front, 1, 0, true, true);
	
	//Play the first animation
	animation_play(animator_front, 1);
	
	shield_front = instance_create_depth(x,y,obj_player.depth - 10,obj_electric_shield_front)