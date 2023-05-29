if (image_blend != c_grey) {
	switch _id {
		case 0: //Buy bow
			global.bow_level = 1;
			global.gems -= 15;
			break;
		case 1:
			obj_player.hearts = clamp(obj_player.hearts+1,0,3);
			global.gems -= 10;
			break;
	}
}