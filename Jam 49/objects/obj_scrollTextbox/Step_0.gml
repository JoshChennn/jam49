if (instance_exists(obj_scroll)) {
	x += (obj_scroll.x + 570 - x) * 0.04;
	y = obj_scroll.y;
}
else instance_destroy();