if !instance_exists(obj_scroll) instance_destroy();
else {
	x = obj_scroll.x+24;
	y = obj_scroll.y-selected;
}

if ((keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)) and selected == 75) {
	selected = 0;
}
else if ((keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)) and selected == 0) {
	selected = 75;
}