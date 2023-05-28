if (obj_player.arrow = id) {
	x = obj_player.x + lengthdir_x(40-obj_player._stretch,obj_player.mouse_dir);
	y = obj_player.y + lengthdir_y(40-obj_player._stretch,obj_player.mouse_dir);
	direction = obj_player.mouse_dir;
}
image_angle = direction;