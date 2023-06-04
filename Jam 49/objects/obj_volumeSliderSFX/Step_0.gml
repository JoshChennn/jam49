if !instance_exists(obj_scroll) instance_destroy();
else {
	x = obj_scroll.x-130 + global.sfxVol/10*30.5;
	y = obj_scroll.y-75;
}

if ((keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left)) and obj_volumeSelect.selected == 75 and global.sfxVol > 0) {
	global.sfxVol -= 10;
}
else if ((keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right)) and obj_volumeSelect.selected == 75 and global.sfxVol < 100) {
	global.sfxVol += 10;
}