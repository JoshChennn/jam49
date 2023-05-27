if (!place_meeting(x,y,obj_player)) {
	coll_player = false;
}
if fading == -1 {
	fade -= .02;
	if (fade == 0) {
		fading = 0;
	}
	obj_fade.image_alpha = fade;
}
else if fading == 1 {
	fade += .02;
	if (fade == 1) {
		if (room == rm_mainWorld) room = rm_mirrorWorld;
		else room = rm_mainWorld;
		fading = -1;
	}
	obj_fade.image_alpha = fade;
}
