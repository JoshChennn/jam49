//If swinging sword
if swinging {
	image_angle = sword_dir;
	sword_dir -= sword_speed;
	x = obj_player.x+lengthdir_x(50,sword_dir);
	y = obj_player.y+lengthdir_y(50,sword_dir);
	if (angle_difference(sword_dir,point)*sign(sword_speed) < 0) {
		swinging = false;
	}
	
	if (irandom(5) == 0){
		var effect = instance_create_depth(x, y, depth + 1, obj_sword_effect);
		effect.image_angle = sword_dir;
	}
	
}
else if (obj_player._stretch == 0) {
	x = obj_player.x+lengthdir_x(40,obj_player.dir-55);
	y = obj_player.y+10+lengthdir_y(30,obj_player.dir-30);
	image_angle = 90;
	depth_difference = 0;
}
else {
	x = obj_camera.x-1100;
	y = obj_camera.y-1000;
}