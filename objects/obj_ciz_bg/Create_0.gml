/// @description Add background
	
	//Inherit the parent event
	event_inherited();
	
	//Vertical scroll factor
	var v_scroll_1 = 0.88;
	var v_scroll_2 = 0.86;
	var v_scroll_3 = 0.84;
	var v_scroll_4 = 0.83;
	var v_scroll_5 = 0.81;
	
	//Background mode (Used for BG switch)
	bg_mode = 0;
	
	////Add backgrounds, ID starting out from 0, increments by 1 with each background added
	add_background(spr_bg_ciz_sky_sun_back, 0, 1, v_scroll_1, 0, 0, -4, 0);
	add_background(spr_bg_ciz_clouds, 0, 1, v_scroll_1, -0.1, 0, 0, 0);
	add_background(spr_bg_ciz_clouds, 1, 1, v_scroll_1, -0.2, 0, 0, 0);
	add_background(spr_bg_ciz_mountains_back, 0, 0.88, v_scroll_2, 0, 0, 0, 0);
	add_background(spr_bg_ciz_mountains_front, 0, 0.77, v_scroll_3, 0, 0, 0, 0);
	add_background(spr_bg_ciz_mountains_reflection, 0, 0.77, v_scroll_3, 0, 0, 0, 0);
	add_background(spr_bg_ciz_mountains_watertop, 0, 0.77, v_scroll_3, 0, 0, 0, 0);
	add_background(spr_bg_ciz_islands_rreflection, 0, 0.66, v_scroll_4, 0, 0, 0, 0);
	add_background(spr_bg_ciz_islands, 0, 0.66, v_scroll_4, 0, 0, 0, 0);
	add_background(spr_bg_ciz_trees_back, 0, 0.55, v_scroll_5, 0, 0, 0, 0);
	add_background(spr_bg_ciz_trees_front, 0, 0.44, v_scroll_5, 0, 0, 0, 0);
	
	//Create distortion table
	var wave_radius = 4;
	var wave_amount = 64;
	
	for(var i = 0; i < wave_amount; i++)
	{
		deform_table[i] = wave_radius * dsin(360 / wave_amount * i);	
	}
	
	//add_background(spr_bg_aaz_clouds, 0, 0.9, v_scroll, -0.2, 0, 0, 0);
	//add_background(spr_bg_aaz_clouds, 1, 0.93, v_scroll, -0.15, 0, 0, 0);
	//add_background(spr_bg_aaz_clouds, 2, 0.95, v_scroll, -0.1, 0, 0, 0);
	//add_background(spr_bg_aaz_clouds, 3, 0.97, v_scroll, -0.05, 0, 0, 0);
	//add_background(spr_bg_aaz_clouds, 4, 0.99, v_scroll, 0, 0, 0, 0);
	//add_background_line(spr_bg_aaz_water, 0, 0.94, v_scroll, 0, 0, 0, 128, 2, 0.003);
	//add_background(spr_bg_aaz_mountains, 0, 0.98, v_scroll, 0, 0, 0, 80);
	//add_background(spr_bg_aaz_mountains, 1, 0.94, v_scroll, 0, 0, 0, 80);
	//add_background(spr_bg_aaz_bottom, 4, 1, v_scroll, 0, 0, 0, 164);
	//add_background(spr_bg_aaz_bottom, 2, 0.84, v_scroll, 0, 0, 0, 144);
	//add_background(spr_bg_aaz_bottom, 0, 0.8, v_scroll, 0, 0, 0, 144);
	//add_background(spr_bg_aaz_bottom, 1, 0.78, v_scroll, 0, 0, 0, 144);
	//add_background(spr_bg_aaz_bottom, 3, 0.72, v_scroll, 0, 0, 0, 144);
	//add_background(spr_bg_aaz_bottom, 5, 1, 1, 0, 0, 0, 0, false);
	//// You may use fractions as parallax factors too!
	//add_background(spr_bg_aaz_ruins, 0, 2/3, 2/3, 0, 0, 0, 354, false);
	//add_background(spr_bg_aaz_ruins, 1, 2/3, 2/3, 0, 0, 0, 930, false);
	//// HCZ-like 3d water parallax
	//add_background_line(spr_bg_aaz_water, 1, 2/3, 2/3, 0, 0, 0, 930, 1, (2/3)/96);
	///* In the above example, 2/3 is the X factor of the top part of the water, and 96 is the height.
	//This allows for the top of the water parallax to be the same speed as the horizon and the bottom
	//of the water parallax to be the same speed as the foreground. In previous versions of Harmony
	//Framework the calculation for the speeds was done in a way that required extra math to be done
	//for this effect, but now it can be done with a single divison!*/
