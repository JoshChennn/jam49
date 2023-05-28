if (_stretch == 0 and arrow == 0) {
	arrow = instance_create_layer(x+lengthdir_x(40,mouse_dir),y+lengthdir_y(40,mouse_dir),"Instances",obj_arrow);
	arrow.direction = mouse_dir;
}
_stretch += 0.5;
if (_stretch > 23) {
	_stretch = 23;
}