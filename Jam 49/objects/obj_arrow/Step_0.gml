if (obj_player.arrow == id) {
	x = obj_player.x + lengthdir_x(40-obj_player._stretch,obj_player.point_dir);
	y = obj_player.y + lengthdir_y(40-obj_player._stretch,obj_player.point_dir);
	image_angle = obj_player.dir;
	direction = image_angle;
}

if (obj_player.arrow != 0) && (speed = 0) && (obj_player._stretch < 10) && (keyboard_check_released(ord("N"))){
	instance_destroy();
	obj_player.arrow = 0;	
}

if (speed > 0) && (!sound_played){
	
	sound_played = true;
	audio_play_sound(choose(sfx_shoot_bow_01, sfx_shoot_bow_02), 10, false);

}