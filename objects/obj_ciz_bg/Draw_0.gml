	//Because i'm distorting the sprite instead of the surface, i have to repeat the texture to the background repeats correctly
	gpu_set_tex_repeat(true);
	
	//Draw the background
	for(var i = 0; i < bg_id; i++)
	{
		//Interrupt 5th parallax layer, then distort it
		if(i == 5 || i == 7)
		{
			surface_deform(432, 496, deform_table, global.object_timer / 4);
		}
		//Draw the background
		draw_background_layer(i);
		
		//Reset all of the shaders
		shader_reset();
	}
	
	//Stop texture repition
	gpu_set_tex_repeat(false);