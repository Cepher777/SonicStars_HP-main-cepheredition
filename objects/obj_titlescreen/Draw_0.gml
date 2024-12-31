/// @description Insert description here
// You can write your code in this editor
	
	//Draw sprites
	var _i = 0;
	for (_i = 0; _i <= sprite_total; _i ++)
	{
		draw_sprite_ext(sprite_name[_i], frame[_i], WINDOW_WIDTH / 2, (WINDOW_HEIGHT / 2), scale_x[_i], scale_y[_i], 0, c_white, 1);
	}