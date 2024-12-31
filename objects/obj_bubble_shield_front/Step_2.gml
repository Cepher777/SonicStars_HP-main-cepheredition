/// @ Positionary
// You can write your code in this editor

	x = floor(obj_player.x);
	y = floor(obj_player.y);

	//Don't make it appear or usable when player is inbincible
	if (obj_player.invincible || obj_player.super_state) 
	{
		visible = false;
	}
	else
	{
		visible = true;
	}