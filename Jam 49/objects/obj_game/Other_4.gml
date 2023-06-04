alarm[0] = 1;
if (room = rm_mainWorld or room = rm_mirrorWorld) {
	repeat (50) {
		var xx,yy;
		do {
			xx = irandom(room_width);
			yy = irandom(room_height);
		} until position_empty(xx,yy);
		instance_create_layer(xx,yy,"Instances",obj_grass);
	}
}