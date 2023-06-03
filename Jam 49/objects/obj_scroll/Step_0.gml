x = obj_camera.x;
y = obj_camera.y;

if (!instance_exists(obj_buttonV) and (image_index == 0 or image_index == 2)) {
	instance_create_depth(x-180, y+65, depth-1, obj_buttonV);
	instance_create_depth(x-180, y+145, depth-1, obj_buttonB);
}
else if (!instance_exists(obj_buttonEscape) and (image_index == 3 or image_index == 4)) {
	instance_create_depth(x-178, y+79, depth-1, obj_buttonF1);
	instance_create_depth(x-116, y+122, depth-1, obj_buttonEscape);
}