if (irandom_range(0,10) = 1) {
	var xx = irandom_range(-30,30);
	var yy = irandom_range(-30,30);
	var part = instance_create_depth(x+xx,y+yy,depth+100,obj_particle);
	part.fade = 1/distance_to_object(obj_shield);
	part.depth = depth+1;
	if image_index = 1 part.image_blend = $b9ba05;
}

depth = -y;