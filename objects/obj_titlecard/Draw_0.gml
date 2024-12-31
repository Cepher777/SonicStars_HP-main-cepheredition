/// @description Draw Title Card
	var c, cx, cy;
	
	//Screen values
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	
	//Draw whole ass water
	if(!surface_exists(surf_bg)) surf_bg = surface_create(global.window_width, global.window_height);
	
	//Draw shit in this
	surface_set_target(surf_bg);
	
	//Clear alpha
	draw_clear_alpha(c_black, 0)
	
	if(act_card)
	{
		{
			draw_set_color(c_black);
			draw_rectangle(-100, 0, offset[0]+10, global.window_height, false);
		}
	}
	
	draw_sprite(spr_title_card_bottom , 0, offset[3], global.window_height - 64)
	draw_sprite(spr_title_card_bottom_text , 0, offset[3], global.window_height - 64)
	draw_sprite(spr_title_card_bottom_text , 2, offset[3], global.window_height - 64)
	draw_sprite_ext(spr_title_card_text_bg , 0, offset[1], global.window_height - 40, 1, 1, -offset[2], c_white, 1)
	draw_sprite_ext(spr_title_card_text , 0, offset[1], global.window_height - 40, 1, 1, -offset[2], c_white, 1)
	
	//Draw the left part of the sprite
	draw_set_color(c_white);
	for (var i = 0; i < 2; ++i) {
	   draw_sprite(spr_title_card_left, 0, offset[0], 256*i - global.object_timer/2 mod 16)
	}
	
	//Done
	surface_reset_target();

	//Draw surface
	draw_surface(surf_bg, cx, cy);