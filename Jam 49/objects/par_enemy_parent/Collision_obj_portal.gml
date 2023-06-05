switch (object_get_name(object_index)) {
	case "obj_enemy_01":
		global.portalHealth -= 4;
		break;
	case "obj_enemy_02":
		global.portalHealth -= 7;
		break;
	case "obj_enemy_03":
		global.portalHealth -= 10;
		break;
}
if (global.portalHealth <= 0) {
	hsp = 0;
	vsp = 0;
	moveX = 0;
	moveY = 0;
	image_speed = 0;
	image_index = 0;
	
	obj_game.lose = 2;
	
	if (room == rm_mirrorWorld){
		
		with(par_enemy_parent){

			image_alpha = 0;
			x = -100;
			y = -100;
	
		}
	
		if (!audio_is_playing(sfx_dying) && (!obj_player.sound_death_played)){
			audio_play_sound(sfx_dying, 10, false);
			obj_player.sound_death_played = true;
		}
		
		if (obj_player.image_alpha > 0){
			obj_player.image_alpha -= .01;
			obj_sword.image_alpha -= .015;
		} else {
	
			room_goto(rm_gameover);
	
		}
	}
}
instance_destroy();