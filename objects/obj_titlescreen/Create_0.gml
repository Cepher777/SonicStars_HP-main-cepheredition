/// @ Sprite Values
// You can write your code in this editor
	//Total number of Sprites
	sprite_total = 12 ;
	
	// Create Sprites
	var _i = 0;
	for (_i = 0; _i <= sprite_total; _i ++)
	{
		sprite_name[_i] = spr_ts_ringandlogo;
		pos_x[_i] = 0;
		pos_y[_i] = 0;
		off_x[_i] = 0;
		off_y[_i] = 0;
		scale_x[_i] = 1;
		scale_y[_i] = 1;
		
		frame[_i] = 0;
		frame_min[_i] = 0;
		frame_max[_i] = 0;
		frame_spd[_i] = 0;
		frame_lpoint[_i] = 0;
		frame_loop[_i] = true;
	}
	
	fade_in_room(3);