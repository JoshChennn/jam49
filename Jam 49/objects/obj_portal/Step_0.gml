if (!place_meeting(x,y,obj_player)) {
	coll_player = false;
}
//Starting to brighen up
if fading == -1 {
	fade -= .04;
	if (fade <= 0) {
		fading = 0;
		fade = 0;
	}
	obj_fade.image_alpha = fade;
}
else if fading == 1 { //Getting darker
	fade += .04;
	if (fade >= 1) {
		if (room == rm_mainWorld) room = rm_mirrorWorld;
		else room = rm_mainWorld;
		fading = -1;
		fade = 1;
	}
	obj_fade.image_alpha = fade;
}

if (room = rm_mirrorWorld) {
	repeat (4) {
		var rand_dir = irandom(359);
		instance_create_layer(x+50+lengthdir_x(400,rand_dir),y+100+lengthdir_y(300,rand_dir),"Instances",obj_particle);
		alarm_set(0,3);
	}
}