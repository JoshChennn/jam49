if !swinging {
	
	audio_play_sound(choose(sfx_sword_swing_01, sfx_sword_swing_02, sfx_sword_swing_03), 10, false);
	
	
	swinging = true;
	var _point = floor(obj_player.dir/45);
	switch (_point) {
		case 0:
			sword_dir = 100;
			break;
		case 1:
			sword_dir = 125;
			break;
		case 2:
			sword_dir = 180;
			break;
		case 3:
			sword_dir = 65;
			break;
		case 4:
			sword_dir = 85;
			break;
		case 5:
			sword_dir = 115;
			break;
		case 6:
			sword_dir = 170;
			break;
		case 7:
			sword_dir = 85;
			break;
	}
	point = _point*45-sign(angle_difference(sword_dir,_point*45))*45;
	sword_speed = angle_difference(sword_dir,point)/12;
}

