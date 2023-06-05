
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

if (room == rm_mirrorWorld) {
	repeat (5) {
		var xx,yy;
		do {
			xx = irandom(room_width);
			yy = irandom(room_height);
		} until position_empty(xx,yy);
		instance_create_layer(xx,yy,"Instances",obj_flag);
	}
	global.portalHealth = 100;
} else if (room == rm_mainWorld){

	exp_to_gain = 0;
	gems_to_gain = 0;

}