x = obj_camera.x;
y = obj_camera.y;

if (!instance_exists(obj_buttonV) and (image_index == 0 or image_index == 2)) {
	instance_create_depth(x-180, y+65, depth-1, obj_buttonV);
	instance_create_depth(x-180, y+145, depth-1, obj_buttonB);
}
else if (!instance_exists(obj_buttonEscape) and (image_index == 3 or image_index == 4)) {
	instance_create_depth(x-178, y+79, depth-1, obj_buttonF1);
	instance_create_depth(x-115, y+163, depth-1, obj_buttonEscape);
	instance_create_depth(x+24, y-75, depth-1, obj_volumeSelect);
	instance_create_depth(x, y, depth-1, obj_volumeSliderSFX);
	instance_create_depth(x, y-75, depth-1, obj_volumeSliderMusic);
}
else {
	LootLockerSubmitScore("14517",string(global.player_exp));
}