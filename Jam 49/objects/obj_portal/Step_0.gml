depth = -y;

leave_possible = true;
if (room = rm_mirrorWorld) {
	with (obj_flag) {
		if !active other.leave_possible = false;
	}
}
if (!place_meeting(x,y,obj_player)) {
	coll_player = false;
	if (delay <= 60) delay = 0;
}
//depth = -y+200;
if (delay > 30){
	
	//Starting to brighen up
	if fading == -1 {
		fade -= .04;
		if (fade <= 0) {
			fading = 0;
			fade = 0;
			delay = 0;
		}
		obj_fade.image_alpha = fade;
	}
	else if fading == 1 { //Getting darker
		fade += .04;
		if (fade >= 1){
			
			audio_play_sound(sfx_portal, 10, false, 3);
			
			if (room == rm_mainWorld) room = rm_mirrorWorld;
			else room = rm_mainWorld;
			fading = -1;
			fade = 1;
		}
		obj_fade.image_alpha = fade;
	}
		
	}



if (room = rm_mirrorWorld) {
	repeat (7) {
		var rand_dir = irandom(359);
		var r = 400;
		if (instance_exists(obj_shield)) 
		var a = instance_create_layer(x + lengthdir_x(r*obj_shield.image_xscale, rand_dir), y + lengthdir_y(r * .75*obj_shield.image_xscale, rand_dir), "Instances", obj_particle);
		if leave_possible a.image_blend = $b9ba05;
		alarm_set(0,3);
	}
	
	var gain = (1 / distance_to_object(obj_player)) * 250;
	var location = (distance_to_object(obj_player) * .2) * -sign(x - obj_player.x);
	clamp(gain, 0.001, 2);
	if (!audio_is_playing(bgs_portal)) audio_play_sound_at(bgs_portal, location, y, 0, 100, 300, 1, false, 10);
	audio_sound_gain(bgs_portal, gain, 1);
}