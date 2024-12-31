function init_music_list()
{
	//Menu background music:
	music_add(BGM_MENU, bgm_menu, 0.00);
	
	//Stage background music:
	
	music_add( BGM_CIZ_1_RB, bgm_crystelle_island1)
	
	music_add(BGM_ARBOREAL_1, bgm_arboreal_agate1);
	music_add(BGM_ARBOREAL_2, bgm_arboreal_agate2);
	
	//Game jingles:
	music_add(J_GAME_OVER, j_game_over, 0.00, 0.00, false);
	music_add(J_INVINCIBLE, j_invincible, 0.00, 0.00, false);
	music_add(J_SPEEDSHOE, j_speedshoe, 0.00, 0.00, false);
	music_add(J_ACT_CLEAR, jingle_zone_complete, 0.00, 0.00, false);
	music_add(J_SUPER, j_super, 0.00, 0.00, false);
}

	//Setup macros for music ID
	
	//Menus and Misc.
	#macro BGM_MENU 0
	
	//Jingles
	#macro J_GAME_OVER 1
	#macro J_INVINCIBLE 2
	#macro J_SPEEDSHOE 3
	#macro J_ACT_CLEAR 4
	#macro J_SUPER 5
	
	//Crystelle Island
	#macro BGM_CIZ_1_RB 6
	
	//Test Stage
	#macro BGM_ARBOREAL_1 7
	#macro BGM_ARBOREAL_2 8
	

