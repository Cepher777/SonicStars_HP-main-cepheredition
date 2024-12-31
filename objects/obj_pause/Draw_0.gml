/// @description Insert description here
// You can write your code in this editor

	/// @description Draw dev menu
	//Hope this works
	gpu_set_blendenable(false);

	var c, cx, cy, sw, sh;
	c = view_camera[view_current];
	cx = camera_get_view_x(c);
	cy = camera_get_view_y(c);
	sw = global.window_width;
	sh = global.window_height;
	draw_sprite(backgroundimage, 0, cx, cy);
	
	//It does!
	gpu_set_blendenable(true);
	
	//Draw background
	draw_set_color(make_color_rgb(120, 70, 20));
	draw_set_alpha(offset[4]);
	draw_rectangle(cx, cy, cx+sw, cy+sh, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	for (var i = 0; i < 2; ++i) 
	{
		draw_sprite(spr_pause_menu_bottom, 0, cx - 7 - timer/2 mod 15 - 432*i, cy + global.window_height + timer mod 1 + 32*i + offset[3]);
		draw_sprite(spr_pause_menu_right, 0, cx + global.window_width + timer mod 1 + 16*(1-i) + offset[2], cy  - 7 - timer/2 mod 15 + 256*i);
	}
	
	draw_sprite(spr_pause_menu_red_line, 0, cx +  global.window_width + offset[2], cy + 184-8);
	
	draw_sprite(spr_pause_menu_selector_line, 0, cx +  global.window_width + 96 + offset[0] + offset[2], cy + 68 + 16 + offset[1]);
	
	draw_sprite(spr_pause_menu_text, 0, cx +  global.window_width-48 + offset[2], cy + 68);
	draw_sprite(spr_pause_menu_text, 1, cx +  global.window_width-48 + offset[2], cy + 100);
	draw_sprite(spr_pause_menu_text, 2, cx +  global.window_width-48 + offset[2], cy + 132);
	
	
	
	