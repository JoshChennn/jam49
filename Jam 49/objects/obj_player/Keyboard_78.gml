if (global.bow_level > 0) {
	if (_stretch == 0 and arrow == 0) {
		arrow = instance_create_layer(x+lengthdir_x(40,point_dir),y+lengthdir_y(40,point_dir),"Instances",obj_arrow);
	}
	_stretch += 0.5;
	if (_stretch > 24) {
		_stretch = 24;
	}
}