/// @description Insert description here
// You can write your code in this editor

	shader_set(shd_crt);
	
		if(!surface_exists(surf)) surf = surface_create(global.window_width, global.window_height);
		if(!debug || !instance_exists(obj_player)) exit;
		
		draw_surface(surf, camera_get_view_x(view_camera[view_current]), camera_get_view_y(view_camera[view_current]))	
	
	shader_reset();