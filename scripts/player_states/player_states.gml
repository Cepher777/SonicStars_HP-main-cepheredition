function player_states(){	
	//Default flags:
	if(flag_override)
	{
		direction_allow = true;
		movement_allow = true;
		collision_allow = true;
		attacking = false;
		gravity_allow = true;
		hitbox_allow = true;
	}
	
	//State allowing flags:
	can_jump = false;
	can_roll = false;
	
	//Sonic states:
	player_state_peelout();
	player_state_dropdash();
	player_state_thock();
	
	//Tails states:
	player_state_tailsfly();
	
	//Knuckles states:
	player_state_glide();
	player_state_wallclimb();
	player_state_ledgeclimb();
	player_state_knuxfall();
	player_state_knuxslide();
	
	//Amy states:
	player_state_hammerspin();
	player_state_hammerfly();
	
	//Avia states:
	
	
	//Espio states:
	player_state_smokedash();
	
	//Common states:
	player_state_normal();
	player_state_jump();
	player_state_spindash();
	player_state_roll();
	player_state_forceroll();
	player_state_lookdown();
	player_state_lookup();
	player_state_spring();
	player_state_falling();
	player_state_skid();
	player_state_knockout();
	player_state_corkscrew();
	player_state_transform();
	player_state_super();
	
	//Tails object
	player_handle_tails();
}