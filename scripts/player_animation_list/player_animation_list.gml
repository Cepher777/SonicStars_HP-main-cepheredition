function player_animation_list(){
	switch(global.character)
	{
		case CHAR_SONIC:
		if(super_state)
		{
			animation_add(ANIM_STAND, spr_super_sonic_idle, 0.1);
			//animation_add(ANIM_WAIT, spr_super_sonic_wait, [8,64,64,32], 3, true, true);
			//animation_add(ANIM_WAITING, spr_super_sonic_wait, [8,64,8], 1, true, true);
			animation_add(ANIM_WALK, spr_super_sonic_walk, 3, 0, true, true);
			animation_add(ANIM_RUN, spr_super_sonic_run, 2, 0, true, true);
			animation_add(ANIM_MAXRUN, spr_super_sonic_maxrun, 0, 0, true, true);
			animation_add(ANIM_ROLL, spr_sonic_roll, 0, 0, true, true);
			animation_add(ANIM_FORCEROLL, spr_sonic_roll, 0, 0, true, true);
			animation_add(ANIM_LOOKDOWN, spr_super_sonic_lookdown, 0.4, 0, false, false);
			animation_add(ANIM_LOOKUP, spr_super_sonic_lookup, 0.4, 0, false, false);
			animation_add(ANIM_SPINDASH, spr_sonic_spindash, 0.6, 0, true, false);
			animation_add(ANIM_SPRING, spr_super_sonic_spring, 0.4, 0, true, false);
			animation_add(ANIM_FALLING, spr_super_sonic_falling, 4, 2, true, true);
			animation_add(ANIM_SKID, spr_super_sonic_skid, 0.4, 0, false, false);
			animation_add(ANIM_SKIDTURN, spr_super_sonic_skidturn, 0.3, 0, false, false);
			animation_add(ANIM_HURT, spr_sonic_hurt, 0.3, 0, false, false);
			animation_add(ANIM_DIE, spr_sonic_death, 0.3, 0, false, false);
			animation_add(ANIM_DROWN, spr_sonic_drown, 0.3, 0, false, false);
			animation_add(ANIM_BREATHE, spr_sonic_breathe, 16, 0, false, true);
			animation_add(ANIM_PUSH, spr_super_sonic_push, 0.1, 0, true, false);
			animation_add(ANIM_LEDGE1, spr_sonic_ledge1, 0.1, 0, true, false);
			animation_add(ANIM_LEDGE2, spr_super_sonic_ledge2, 0.1, 0, true, false);
			animation_add(ANIM_VICTORY, spr_sonic_victory, 0.1, 1, true, false);
			animation_add(ANIM_DROPDASH, spr_sonic_dropdash, 0.5, 1, true, false);
			animation_add(ANIM_THOCK, spr_sonic_thock, 3, 2, true, true);
			animation_add(ANIM_CORKSCREW_R, spr_super_sonic_twirl_right, 0, 0, true, false);
			animation_add(ANIM_CORKSCREW_L, spr_super_sonic_twirl_left, 0, 0, true, false);
		}
		else
		{
			animation_add(ANIM_TRANSFORM, spr_sonic_transform, 2, 5, true, true);
			animation_add(ANIM_STAND, spr_sonic_idle, 0.2);
			animation_add(ANIM_WAIT, spr_sonic_wait, [8,64,64,32], 3, true, true);
			animation_add(ANIM_WAITING, spr_sonic_waiting, [8,64,8], 1, true, true);
			animation_add(ANIM_WALK, spr_sonic_walk, 3, 0, true, true);
			animation_add(ANIM_RUN, spr_sonic_run, 2, 0, true, true);
			animation_add(ANIM_MAXRUN, spr_sonic_peelout, 0, 0, true, true);
			animation_add(ANIM_ROLL, spr_sonic_roll, 0, 0, true, true);
			animation_add(ANIM_FORCEROLL, spr_sonic_roll, 0, 0, true, true);
			animation_add(ANIM_LOOKDOWN, spr_sonic_lookdown, 0.4, 0, false, false);
			animation_add(ANIM_LOOKUP, spr_sonic_lookup, 0.4, 0, false, false);
			animation_add(ANIM_SPINDASH, spr_sonic_spindash, 0.6, 0, true, false);
			animation_add(ANIM_SPRING, spr_sonic_spring, 0.4, 0, true, false);
			animation_add(ANIM_FALLING, spr_sonic_falling, 4, 2, true, true);
			animation_add(ANIM_SKID, spr_sonic_skid, 0.4, 0, false, false);
			animation_add(ANIM_SKIDTURN, spr_sonic_skidturn, 0.3, 0, false, false);
			animation_add(ANIM_HURT, spr_sonic_hurt, 0.3, 0, false, false);
			animation_add(ANIM_DIE, spr_sonic_death, 0.3, 0, false, false);
			animation_add(ANIM_DROWN, spr_sonic_drown, 0.3, 0, false, false);
			animation_add(ANIM_BREATHE, spr_sonic_breathe, 16, 0, false, true);
			animation_add(ANIM_PUSH, spr_sonic_push, 0.1, 0, true, false);
			animation_add(ANIM_LEDGE1, spr_sonic_ledge1, 0.1, 0, true, false);
			animation_add(ANIM_LEDGE2, spr_sonic_ledge2, 0.1, 0, true, false);
			animation_add(ANIM_VICTORY, spr_sonic_victory, 0.1, 1, true, false);
			animation_add(ANIM_DROPDASH, spr_sonic_dropdash, 0.5, 1, true, false);
			animation_add(ANIM_THOCK, spr_sonic_thock, 3, 2, true, true);
			animation_add(ANIM_CORKSCREW_R, spr_sonic_twirl_right, 0, 0, true, false);
			animation_add(ANIM_CORKSCREW_L, spr_sonic_twirl_left, 0, 0, true, false);
		}
		break;
		
		
		case CHAR_TAILS:
		animation_add(ANIM_TRANSFORM, spr_tails_transform, 2, 5, true, true);
		animation_add(ANIM_STAND, spr_tails_idle, [60, 6], 0, true, true);
		animation_add(ANIM_WAIT, spr_tails_wait, [80, 10], 0, true, true);
		animation_add(ANIM_WALK, spr_tails_walk, 3, 0, true, true);
		animation_add(ANIM_RUN, spr_tails_run, 2, 0, true, true);
		animation_add(ANIM_MAXRUN, spr_tails_maxrun, 1, 0, true, true);
		animation_add(ANIM_ROLL, spr_tails_roll, 0.4, 0, true, false);
		animation_add(ANIM_LOOKDOWN, spr_tails_lookdown, 0.4, 0, false, false);
		animation_add(ANIM_LOOKUP, spr_tails_lookup, 0.4, 0, false, false);
		animation_add(ANIM_SPINDASH, spr_tails_spindash, 0.6, 0, true, false);
		animation_add(ANIM_SPRING, spr_tails_spring, 0.4, 0, true, false);
		animation_add(ANIM_FALLING, spr_tails_falling, 4, 2, true, true);
		animation_add(ANIM_SKID, spr_tails_skid, 0.4, 0, false, false);
		animation_add(ANIM_SKIDTURN, spr_tails_skidturn, 0.3, 0, false, false);
		animation_add(ANIM_HURT, spr_tails_hurt, 0.3, 0, false, false);
		animation_add(ANIM_DIE, spr_tails_die, 0.3, 0, false, false);
		animation_add(ANIM_TAILSFLY, spr_tails_fly, 0.3, 0, true, false);
		animation_add(ANIM_TAILSTIRED, spr_tails_tired, 0.2, 0, true, false);
		animation_add(ANIM_TAILSSWIM, spr_tails_swim, 0.3, 0, true, false);
		animation_add(ANIM_TAILSSWIMTIRED, spr_tails_swim_tired, 0.2, 0, true, false);	
		animation_add(ANIM_DROWN, spr_tails_drown, 0.3, 0, false, false);
		animation_add(ANIM_BREATHE, spr_tails_breathe, 16, 0, false, true);
		animation_add(ANIM_PUSH, spr_tails_push, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE1, spr_tails_ledge1, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE2, spr_tails_ledge2, 0.1, 0, true, false);
		animation_add(ANIM_VICTORY, spr_tails_victory, 0.1, 0, false, false);
		animation_add(ANIM_CORKSCREW_R, spr_tails_twirl_right, 0, 0, true, false);
		animation_add(ANIM_CORKSCREW_L, spr_tails_twirl_left, 0, 0, true, false);
		break;
		
		case CHAR_KNUX:
		animation_add(ANIM_TRANSFORM, spr_knuckles_transform, 2, 5, true, true);
		animation_add(ANIM_STAND, spr_knuckles_idle, 0.2, 0, true, false);
		animation_add(ANIM_WAIT, spr_knuckles_wait, [8, 80,8,5], 4, true, true);
		animation_add(ANIM_WAITING, spr_knuckles_waiting, [4,4,4,4,4,4,4,4,16,8,8], 0, false, true);
		animation_add(ANIM_WALK, spr_knuckles_walk, 3, 0, true, true);
		animation_add(ANIM_RUN, spr_knuckles_run, 0, 0, true, true);
		animation_add(ANIM_MAXRUN, spr_knuckles_maxrun, 0, 0, true, true);
		animation_add(ANIM_ROLL, spr_knuckles_roll, 0, 0, true, true);
		animation_add(ANIM_LOOKDOWN, spr_knuckles_lookdown, 0.4, 0, false, false);
		animation_add(ANIM_LOOKUP, spr_knuckles_lookup, 0.4, 0, false, false);
		animation_add(ANIM_SPINDASH, spr_knuckles_spindash, 0.6, 0, true, false);
		animation_add(ANIM_SPRING, spr_knuckles_spring, 0.4, 0, true, false);
		animation_add(ANIM_FALLING, spr_knuckles_falling, 4, 2, true, true);
		animation_add(ANIM_SKID, spr_knuckles_skid, 0.2, 0, false, false);
		animation_add(ANIM_SKIDTURN, spr_knuckles_skidturn, 0.3, 0, false, false);
		animation_add(ANIM_HURT, spr_knuckles_hurt, 0.3, 0, false, false);
		animation_add(ANIM_DIE, spr_knuckles_death, 0.3, 0, false, false);
		animation_add(ANIM_KNUXGLIDE, spr_knuckles_glide, 2, 0, true, true);
		animation_add(ANIM_KNUXGLIDETURN, spr_knuckles_turn, 16, 0, false, true);
		animation_add(ANIM_KNUXCLIMBUP, spr_knuckles_climb, 0.12, 0, true, false);
		animation_add(ANIM_KNUXCLIMBDOWN, spr_knuckles_climb_down, 0.12, 0, true, false);
		animation_add(ANIM_KNUXCLIMBIDLE, spr_knuckles_climb_idle, 0.12, 0, false, false);
		animation_add(ANIM_KNUXLEDGE, spr_knuckles_edge_climb, 4, 0, false, true);
		animation_add(ANIM_KNUXFALL, spr_knuckles_fall, 0.2, 0, false, false);
		animation_add(ANIM_KNUXLAND, spr_knuckles_landed, 0.2, 0, false, false);
		animation_add(ANIM_KNUXSLIDE, spr_knuckles_slide, 0.2, 0, false, false);
		animation_add(ANIM_KNUXGETUP, spr_knuckles_getup, 0.2, 0, false, false);
		animation_add(ANIM_DROWN, spr_knuckles_drown, 0.3, 0, false, false);
		animation_add(ANIM_BREATHE, spr_knuckles_breathe, 16, 0, false, true);
		animation_add(ANIM_PUSH, spr_knuckles_push, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE1, spr_knuckles_ledge1, [8,8,8,8,8,8,48,8], 9, true, true);
		animation_add(ANIM_LEDGE2, spr_knuckles_ledge2, [8,8,8,8,8,8,48,8], 9, true, true);
		animation_add(ANIM_VICTORY, spr_knuckles_victory, 0.1, 0, false, false);
		animation_add(ANIM_CORKSCREW_R, spr_knuckles_twirl_right, 0, 0, true, false);
		animation_add(ANIM_CORKSCREW_L, spr_knuckles_twirl_left, 0, 0, true, false);
		break;
		
		case CHAR_AMY:
		animation_add(ANIM_TRANSFORM, spr_amy_transform, 2, 5, true, true);
		animation_add(ANIM_STAND, spr_amy_idle, 0.2)
		animation_add(ANIM_WAIT, spr_amy_wait, [8,64,64,32], 3, true, true);
		animation_add(ANIM_WAITING, spr_amy_waiting, [8,64,8], 1, true, true);
		animation_add(ANIM_WALK, spr_amy_walk, 3, 0, true, true);
		animation_add(ANIM_RUN, spr_amy_run, 2, 0, true, true);
		animation_add(ANIM_MAXRUN, spr_amy_maxrun, 0, 0, true, true);
		animation_add(ANIM_ROLL, spr_amy_roll, 0, 0, true, true);
		animation_add(ANIM_LOOKDOWN, spr_amy_lookdown, 0.4, 0, false, false);
		animation_add(ANIM_LOOKUP, spr_amy_lookup, 0.4, 0, false, false);
		animation_add(ANIM_SPINDASH, spr_amy_spindash, 0.6, 0, true, false);
		animation_add(ANIM_SPRING, spr_amy_spring, 0.4, 0, true, false);
		animation_add(ANIM_FALLING, spr_amy_falling, 4, 3, true, true);
		animation_add(ANIM_SKID, spr_amy_skid, 0.4, 0, false, false);
		animation_add(ANIM_SKIDTURN, spr_amy_skidturn, 0.3, 0, false, false);
		animation_add(ANIM_HURT, spr_amy_hurt, 0.3, 0, false, false);
		animation_add(ANIM_DIE, spr_amy_death, 0.3, 0, false, false);
		animation_add(ANIM_DROWN, spr_amy_drown, 0.3, 0, false, false);
		animation_add(ANIM_BREATHE, spr_amy_breathe, 16, 0, false, true);
		animation_add(ANIM_PUSH, spr_amy_push, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE1, spr_amy_ledge1, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE2, spr_amy_ledge2, 0.1, 0, true, false);
		animation_add(ANIM_VICTORY, spr_amy_victory, 0.1, 0, false, false);
		animation_add(ANIM_DROPDASH, spr_amy_dropdash, 0.5, 1, true, false);
		animation_add(ANIM_HAMMERSPIN, spr_amy_hammertwirl, 1, 0, true, true);
		animation_add(ANIM_CORKSCREW_R, spr_amy_twirl_right, 0, 0, true, false);
		animation_add(ANIM_CORKSCREW_L, spr_amy_twirl_left, 0, 0, true, false);
		break;
		
		case CHAR_AVIA:
		animation_add(ANIM_TRANSFORM, spr_avia_transform, 2, 5, true, true);
		animation_add(ANIM_STAND, spr_avia_idle, 0.2)
		animation_add(ANIM_WALK, spr_avia_walk, 3, 0, true, true);
		animation_add(ANIM_RUN, spr_avia_run, 2, 0, true, true);
		animation_add(ANIM_MAXRUN, spr_avia_maxrun, 0, 0, true, true);
		animation_add(ANIM_ROLL, spr_avia_roll, 0, 0, true, true);
		animation_add(ANIM_LOOKDOWN, spr_avia_lookdown, 0.4, 0, false, false);
		animation_add(ANIM_LOOKUP, spr_avia_lookup, 0.4, 0, false, false);
		animation_add(ANIM_SPINDASH, spr_avia_spindash, 0.6, 0, true, false);
		animation_add(ANIM_SPRING, spr_avia_spring, 0.4, 0, true, false);
		animation_add(ANIM_FALLING, spr_avia_falling, 4, 2, true, true);
		animation_add(ANIM_SKID, spr_avia_skid, 0.4, 0, false, false);
		animation_add(ANIM_SKIDTURN, spr_avia_skidturn, 0.3, 0, false, false);
		animation_add(ANIM_HURT, spr_avia_hurt, 0.3, 0, false, false);
		animation_add(ANIM_DIE, spr_avia_death, 0.3, 0, false, false);
		animation_add(ANIM_DROWN, spr_avia_drown, 0.3, 0, false, false);
		animation_add(ANIM_BREATHE, spr_avia_breathe, 16, 0, false, true);
		animation_add(ANIM_PUSH, spr_avia_push, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE1, spr_avia_ledge1, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE2, spr_avia_ledge2, 0.1, 0, true, false);
		animation_add(ANIM_VICTORY, spr_avia_victory, 0.1, 1, true, false);
		animation_add(ANIM_CORKSCREW_R, spr_avia_twirl_right, 0, 0, true, false);
		animation_add(ANIM_CORKSCREW_L, spr_avia_twirl_left, 0, 0, true, false);
		break;
		
		case CHAR_ESPIO:
		animation_add(ANIM_TRANSFORM, spr_espio_transform, 2, 5, true, true);
		animation_add(ANIM_STAND, spr_espio_idle, 0.2);
		animation_add(ANIM_WAIT, spr_espio_wait, [8,4,4,4], 1, true, true);
		animation_add(ANIM_WAITING, spr_espio_waiting, [64,8,8,32,8,8,32,8,8], 3, true, true);
		animation_add(ANIM_WALK, spr_espio_walk, 3, 0, true, true);
		animation_add(ANIM_RUN, spr_espio_run, 2, 0, true, true);
		animation_add(ANIM_MAXRUN, spr_espio_maxrun, 0, 0, true, true);
		animation_add(ANIM_ROLL, spr_espio_roll, 0, 0, true, true);
		animation_add(ANIM_FORCEROLL, spr_espio_forceroll, 0, 0, true, true);
		animation_add(ANIM_LOOKDOWN, spr_espio_lookdown, 0.4, 0, false, false);
		animation_add(ANIM_LOOKUP, spr_espio_lookup, 0.4, 0, false, false);
		animation_add(ANIM_SPINDASH, spr_espio_spindash, 0.6, 0, true, false);
		//animation_add(ANIM_SPRING, spr_espio_spring, 0.4, 0, true, false);
		//animation_add(ANIM_FALLING, spr_espio_falling, 4, 2, true, true);
		animation_add(ANIM_SKID, spr_espio_skid, 0.4, 0, false, false);
		animation_add(ANIM_SKIDTURN, spr_espio_skidturn, 0.3, 0, false, false);
		animation_add(ANIM_HURT, spr_espio_hurt, 0.3, 0, false, false);
		animation_add(ANIM_DIE, spr_espio_death, 0.3, 0, false, false);
		animation_add(ANIM_DROWN, spr_espio_drown, 0.3, 0, false, false);
		animation_add(ANIM_BREATHE, spr_espio_breathe, 16, 0, false, true);
		//animation_add(ANIM_PUSH, spr_espio_push, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE1, spr_espio_ledge1, 0.1, 0, true, false);
		animation_add(ANIM_LEDGE2, spr_espio_ledge2, 0.1, 0, true, false);
		animation_add(ANIM_VICTORY, spr_espio_victory, 0.1, 2, true, false);
		//animation_add(ANIM_CORKSCREW_R, spr_espio_twirl_right, 0, 0, true, false);
		//animation_add(ANIM_CORKSCREW_L, spr_espio_twirl_left, 0, 0, true, false);
		break;
	}
}