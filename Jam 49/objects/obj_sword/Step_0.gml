//If swinging sword
if swinging {
	image_angle = sword_dir;
	sword_dir -= sword_speed;
	x = obj_player.x+lengthdir_x(60,sword_dir);
	y = obj_player.y+lengthdir_y(60,sword_dir);
	if (angle_difference(sword_dir,point)*sign(sword_speed) < 0) {
		swinging = false;
	}
	
	if (irandom(5) == 0){
		var effect = instance_create_depth(x, y, depth + 1, obj_sword_effect);
		effect.image_angle = sword_dir;
	}
	
}
else {
	x = obj_player.x+lengthdir_x(40,obj_player.dir-55);
	y = obj_player.y+10+lengthdir_y(30,obj_player.dir-30);
	image_angle = 90;
}