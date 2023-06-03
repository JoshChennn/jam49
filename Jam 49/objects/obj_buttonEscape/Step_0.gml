if keyboard_check(vk_escape) image_index = 1;
else if (mouse_check_button(mb_left) and collision_point(mouse_x, mouse_y, id, true, false)) {
	image_index = 1;
}
else image_index = 0;

if (!instance_exists(obj_scroll)) {
	instance_destroy();
	exit;
}

x = obj_scroll.x - 180;
y = obj_scroll.y + 145;