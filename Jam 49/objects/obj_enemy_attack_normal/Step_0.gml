image_angle = direction;

if (!hit_player) && (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	hit_player = true;
	obj_player.hearts -= damage;
	obj_player.blink_mode = true;
	audio_play_sound(choose(sfx_player_hit_01, sfx_player_hit_02), 10, false, 2.5);
	audio_play_sound(sfx_lose_heart, 10, false, 1);
	obj_heart.alarm[0] = 10;

}