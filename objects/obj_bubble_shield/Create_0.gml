/// @description Values
	//Inherite values
	event_inherited();
	
	//Create the new animator
	animator = new animator_create();

	//Add animations
	animation_add(0, spr_bubble_shield_back, 2, 0, true, true);
	animation_add(1, spr_bubble_shield_bounce_back, 2, 0, false, true);
	animation_add(2, spr_bubble_shield_bounce_reverse_back, 2, 0, false, true);
	
	//Play the first animation
	animation_play(animator, 0);
	
	shield_front = instance_create_depth(x,y,obj_player.depth - 10,obj_bubble_shield_front)
	
	animator_front = new animator_create();
	
		//Add animations
	animation_add(3, spr_bubble_shield, 2, 0, true, true);
	animation_add(4, spr_bubble_shield_bounce, 2, 0, false, true);
	animation_add(5, spr_bubble_shield_bounce_reverse, 2, 0, false, true);
	
	//Play the first animation
	animation_play(animator_front, 3);