// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_attackhitbox(){

var _hitbox_hi = 20;
var _hitbox_wi = 20;

	//Knuckles specific hitboxes
	if(state == ST_HAMMERSPIN)
	{
		atk_hitbox_top_offset = _hitbox_hi;
		atk_hitbox_bottom_offset = _hitbox_hi;
		
		atk_hitbox_left_offset = _hitbox_wi;
		atk_hitbox_right_offset = _hitbox_wi;
	}
	
	

}