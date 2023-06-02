if (instance_exists(obj_scroll)) {
	x += (obj_scroll.x + 500 - x) * 0.04;
}
else instance_destroy();