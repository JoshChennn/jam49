global.player_gems += my_value;
instance_destroy();
audio_play_sound(sfx_gemstone_pickup, 10, false, random_range(.6,.75), 0, choose(0.917 , 1.083, 1.249, 1.415, 1.581, 1.747));