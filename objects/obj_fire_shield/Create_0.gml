/// @description Values
	//Inherite values
	event_inherited();
	
	//Create the new animator
	animator = new animator_create();
	
	//Add animations
	animation_add(0, spr_fire_shield, 2, 0, true, true);
	
	//Play the first animation
	animation_play(animator, 0);
	
		//Create the new animator
	animator_front = new animator_create();
	
	//Add animations
	animation_add(1, spr_fire_shield_front, 2, 0, true, true);
	animation_add(2, spr_fire_shield_dash, 1, 0, true, true);
	
	//Play the first animation
	animation_play(animator_front, 1);
	
	shield_front = instance_create_depth(x,y,obj_player.depth - 10,obj_fire_shield_front)