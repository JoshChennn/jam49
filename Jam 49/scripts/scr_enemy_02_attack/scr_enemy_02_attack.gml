// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_enemy_02_attack(){

	//perform the actual attack
	var ball1 = instance_create_layer(x - 24, y, "Instances", obj_fireball);
	var ball2 = instance_create_layer(x + 24, y, "Instances", obj_fireball);
	
		var location = (distance_to_object(obj_player) * .2) * -sign(x - obj_player.x);
	
	if (distance_to_object(obj_player) < 400){
		if (!audio_is_playing(sfx_fire_ball_01)) 
		&& (!audio_is_playing(sfx_fire_ball_02))
		&& (!audio_is_playing(sfx_fire_ball_03)) 
			audio_play_sound_at(choose(sfx_fire_ball_01, sfx_fire_ball_02, sfx_fire_ball_03), location, y, 0, 100, 300, 1, false, 10);
	}
	
	ball1.depth = obj_player.depth - 1;
	ball2.depth = obj_player.depth - 1;
	
	ball1.orientation = 0;
	ball2.orientation = 1;
	
	state = 0;

}