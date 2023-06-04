if (global.bow_level > 0 and arrows > 0) {
	if (_stretch == 0 and arrow == 0) {
		arrow = instance_create_layer(x+lengthdir_x(40,point_dir),y+lengthdir_y(40,point_dir),"Instances",obj_arrow);
	}
	_stretch += 0.5;
	
	if (_stretch > 24) {
		_stretch = 24;
	} else {
	
		if (!audio_is_playing(sfx_stretch_bow_01)) && (!audio_is_playing(sfx_stretch_bow_02)) audio_play_sound(choose(sfx_stretch_bow_01, sfx_stretch_bow_02), 10, false);
	
	}
}