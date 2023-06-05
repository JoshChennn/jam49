if !instance_exists(obj_scroll) instance_destroy();
else {
	x = obj_scroll.x-115 + global.musicVol/10*28;
	y = obj_scroll.y;
}

if ((keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)) and obj_volumeSelect.selected == 0 and global.musicVol > 1) {
	global.musicVol -= 10;
}
else if ((keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and obj_volumeSelect.selected == 0 and global.musicVol < 99) {
	global.musicVol += 10;
}