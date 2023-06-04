obj_game.gems_to_gain += my_value;
instance_destroy();

if (obj_player.pick_up_sounds_playing < 4){
	audio_play_sound(sfx_gemstone_pickup, 10, false, .5, 0, choose(0.917 , 1.083, 1.249, 1.415, 1.581, 1.747));
	obj_player.pick_up_sounds_playing++;
}