if (obj_player.arrow == id) {
	x = obj_player.x + lengthdir_x(40-obj_player._stretch,obj_player.direction);
	y = obj_player.y + lengthdir_y(40-obj_player._stretch,obj_player.direction);
	image_angle = obj_player.direction;
	direction = image_angle;
}

if (obj_player.arrow != 0) && (speed = 0) && (obj_player._stretch < 10) && (keyboard_check_released(ord("N"))){
	instance_destroy();
	obj_player.arrow = 0;	
}
