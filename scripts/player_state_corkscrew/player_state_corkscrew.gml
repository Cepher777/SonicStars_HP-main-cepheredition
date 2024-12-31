function player_state_corkscrew(){
    if !(state == ST_CORKSCREW or state == ST_CORKSCREW_ROLL) {
        exit ;
    }
		
    //Change flags
	direction_allow = false;
	movement_allow = true;
	gravity_allow = false;
	y_speed = 0;
	
    //Movement
    var _relative_x, _cork_angle;
    _relative_x = (x - corkscrew_xstart);
	_cork_angle = degtorad((_relative_x/(384))*360);
	
	
    // Set y position according to the relative position.
	y = corkscrew_ystart + 26 + ( 1+cos(_cork_angle) )*( corkscrew_curve_h*0.5 );

	// Change animation frame.
	if state = ST_CORKSCREW {
		if facing = 1 {
			animation_play(animator, ANIM_CORKSCREW_R);
			animation_set_frame(animator, 0+abs((radtodeg(_cork_angle)/360*12)mod 12));
		}
		if facing = -1 {
			animation_play(animator, ANIM_CORKSCREW_L);
			animation_set_frame(animator, 12-abs((radtodeg(_cork_angle)/360*12)mod 12));
		}
	}
	
	//Get input presses
	var mov = hold_right - hold_left;
	
	//Decellerate
	if (mov = 0) {
		x_speed = approach(x_speed, -1 * facing, friction_speed);
	}

    //Jump!
    if(press_action && !touching_ceiling && !force_roll){
        var _jump_str = 6;
        y_speed -= _jump_str;
        jump_flag = true;
        ground = false;
        state = ST_JUMP;
        jump_anim_speed = floor(max(0, 4-abs(ground_speed)));
        play_sound(sfx_jump);
    }
    
	//Exit from corkscrew state
	if !place_meeting(x,y,obj_corkscrew){
		if state = ST_CORKSCREW{
			state = ST_NORMAL;
			ground = true;
		}
		if state = ST_CORKSCREW_ROLL{
			state = ST_ROLL;
			ground = true;
		}
	}	
	if (abs(x_speed) < 3){
		if state = ST_CORKSCREW{
			state = ST_NORMAL;
			ground = false;
		}
		else{
			state = ST_NULL;
			ground = false;
		}
	}	
}