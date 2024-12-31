// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_state_hammerspin(){
//Add dropdash timer
	if(character == CHAR_AMY){
		if(press_action && hammer_spin_timer < 1 && state = ST_JUMP ||
		hold_action && hammer_spin_timer != 0 && state = ST_JUMP)
		{
			state = ST_HAMMERSPIN;
			hammer_spin_timer++;

			

		}
	}
	
	if (state == ST_HAMMERSPIN && hammer_spin_timer <= 16) {
		hammer_spin_timer++;
	}
	//Trigger the dropdash state
	if(hammer_spin_timer == 16)
	{
		play_sound(sfx_dropdash);
	}
	
	//Reset the timer
	if(state != ST_HAMMERSPIN || state == ST_THOCK || shield != S_NONE && shield != S_NORMAL)
	{
		
		hammer_spin_timer = 0;
	}
		
	
	//If not dropdash stop
	if(state != ST_HAMMERSPIN) 
	{
		exit;
	}
	
	//Animate dropdash
	animation_play(animator, ANIM_DROPDASH);
	
	//Make it attack
	attacking = true;
	
	//Go back to jump when not holding the button and charge is not enough
	if(!hold_action && hammer_spin_timer <= 1){
		hammer_spin_timer = -1;
		state = ST_JUMP;
	}	
	//Release the Hammerspin
	if(!hold_action) && (state = ST_HAMMERSPIN){
		dropdash_timer = -1;
		state = ST_HAMMERFLY;
		y_speed = -2.5;
	}
		//Land the dropdash
	if(!landed && ground){
		hammer_spin_timer = 0;
		state = ST_NORMAL;
	}
}