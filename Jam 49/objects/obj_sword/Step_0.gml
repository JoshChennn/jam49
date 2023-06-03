//If swinging sword
if swinging {
	image_angle = sword_dir;
	sword_dir -= sword_speed;
	x = obj_player.x+lengthdir_x(60,sword_dir);
	y = obj_player.y+lengthdir_y(60,sword_dir);
	if (angle_difference(sword_dir,point)*sign(sword_speed) < 0) {
		swinging = false;
	}
}
else {
	x = obj_player.x+40;
	y = obj_player.y-10;
	image_angle = 60;
}