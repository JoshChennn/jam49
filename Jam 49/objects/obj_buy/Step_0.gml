switch (_id) {
	case 0: //Button for Bow
		if (global.bow_level > 0) {
			image_blend = c_grey;
		}
		else {
			image_blend = c_white;
		}
		x = obj_camera.x - 300;
		y = obj_camera.y + 200;
		break;
	case 1: //Button for more lives
		if (obj_player.hearts == 3) {
			image_blend = c_grey;
		}
		else {
			image_blend = c_white;
		}
		x = obj_camera.x + 100;
		y = obj_camera.y + 200;
		break;
}