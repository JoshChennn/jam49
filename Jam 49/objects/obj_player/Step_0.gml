//If not at a building
//if (obj_blacksmith.popup == 0 and obj_campfire.popup == 0 and obj_cityHall.popup == 0 and obj_shop.popup == 0) {
	//Movement variables

//death
if (hearts <= 0){

	hsp = 0;
	vsp = 0;
	moveX = 0;
	moveY = 0;
	image_speed = 0;
	image_index = 0;
	
	if (room == rm_mirrorWorld){
		
		with(par_enemy_parent){

			image_alpha = 0;
			x = -100;
			y = -100;
	
		}
	
		if (!audio_is_playing(sfx_dying) && (!sound_death_played)){
			audio_play_sound(sfx_dying, 10, false);
			sound_death_played = true;
		}
		
		if (image_alpha > 0){
			image_alpha -= .01;
			obj_sword.image_alpha -= .015;
		} else {
	
			room_goto(rm_gameover);
	
		}
	
	}

} else {

	if (room == rm_mirrorWorld) {	
		key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
		key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
		key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
		key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
	}
	else if (obj_blacksmith.popup == 0 and obj_campfire.popup == 0 and obj_cityHall.popup == 0 and obj_shop.popup == 0 and obj_portal.delay <= 60) {
		key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
		key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
		key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
		key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
	}
	else {
		key_left = 0;
		key_up = 0;
		key_right = 0;
		key_down = 0;
	}


	//Lucas' area stuff
	#region //LUCAS' AREA: DIRECTION DETERMINATION

	var closest_enemy = instance_nearest(x, y, par_combat_targets) 

	if (focus_potion_timer > 0) && (distance_to_object(closest_enemy) <= 128) && (vsp_dash == 0) && (hsp_dash == 0) && (!keyboard_check(ord("N"))){
	
		if (irandom(10) == 0) instance_create_depth(x + irandom_range(-24, 24), y - 48, depth - 1, obj_potion_effect);
		//auto aim at the closest enemy or fireball when not pushin a directional button
		dir = (point_direction(x, y, closest_enemy.x, closest_enemy.y) div 45) * 45;
	
	} else {
		//sketchy direction determination
	
		//direction = point_direction(0,0,key_right-key_left,key_down-key_up);
		// ^ nahh that's not a good way to handle it cause if you dont press anything it's always gonna be 0 (facing right)
		
		if (key_up && key_right) dir = 45;
		else if (key_up && key_left) dir = 135;
		else if (key_down && key_right) dir = 315;
		else if (key_down && key_left) dir = 225;
		else if (key_left) dir = 180;
		else if (key_up) dir = 90;
		else if (key_right) dir = 0;
		else if (key_down) dir = 270;
	
	}

	#endregion

	//Lucas' area stuff
	#region //LUCAS' AREA: PERFORM DASH

	//perform dash
	if (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(ord("A"))) dash_left++;
	if (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(ord("D"))) dash_right++;
	if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W"))) dash_up++;
	if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S"))) dash_down++;

	var dash_speed = 24;
	var counter_max = 15;

	//handle dash left
	if (dash_left > 1){
	
		hsp_dash = -dash_speed;
		dash_left = 0;
		audio_play_sound(sfx_dash, 10, false);
	
	} else if (dash_left > 0){

		if (dash_left_counter < counter_max)
			dash_left_counter++;
		else {
	
			dash_left = false;
			dash_left_counter = 0;
	
		}
	
	}

	//handle dash right
	if (dash_right > 1){
	
		hsp_dash = dash_speed;
		dash_right = 0;
		audio_play_sound(sfx_dash, 10, false);
	
	} else if (dash_right > 0){

		if (dash_right_counter < counter_max)
			dash_right_counter++;
		else {
	
			dash_right = false;
			dash_right_counter = 0;
	
		}
	
	}

	//handle dash up
	if (dash_up > 1){
	
		vsp_dash = -dash_speed;
		dash_up = 0;
		audio_play_sound(sfx_dash, 10, false);
	
	} else if (dash_up > 0){

		if (dash_up_counter < counter_max)
			dash_up_counter++;
		else {
	
			dash_up = false;
			dash_up_counter = 0;
	
		}
	
	}

	//handle dash down
	if (dash_down > 1){
	
		vsp_dash = dash_speed;
		dash_down = 0;
		audio_play_sound(sfx_dash, 10, false);
	
	} else if (dash_down > 0){

		if (dash_down_counter < counter_max)
			dash_down_counter++;
		else {
	
			dash_down = false;
			dash_down_counter = 0;
	
		}
	
	}

	//decrease dash timers
	if (hsp_dash > 0) hsp_dash--;
	else if (hsp_dash < 0) hsp_dash++;

	if (vsp_dash > 0) vsp_dash--;
	else if (vsp_dash < 0) vsp_dash++;

	#endregion



	//Actual movement
	hsp = key_right - key_left;
	vsp = key_down - key_up;

	//If the player is pressing a key
	if (hsp != 0 or vsp != 0) {
		//Speed up
		if (spd < spdMax) spd += acc;
		dir = point_direction(0,0,hsp,vsp);
	}
	else {
		//Slow down
		if (spd > 0) spd -= acc;
	}
	//Final movement

	moveX = lengthdir_x(spd + hsp_dash * sign(hsp_dash), dir);
	moveY = lengthdir_y(spd + vsp_dash * sign(vsp_dash), dir);

	//Horizontal collision
	if (place_meeting_obstacle(x+moveX,y)) {
		while(!place_meeting_obstacle(x+sign(moveX),y)) {
			x += sign(moveX);
		}
		moveX = 0;
	}

	x += moveX;

	//Verticle collision
	if (place_meeting_obstacle(x,y+moveY)) {
		while(!place_meeting_obstacle(x,y+sign(moveY))) {
			y += sign(moveY);
		}
		moveY = 0;
	}
	y += moveY;

	depth = -y-75;

	point_dir = point_dir + (angle_difference(dir,point_dir) * 0.5);

	//If not pulling bow
	if (!keyboard_check(ord("B"))) {
		if (arrow != 0 and _stretch > 10) {
			arrow.speed = _stretch;
			arrow = 0;
			arrows--;
		}
		_stretch = 0;
		audio_stop_sound(sfx_stretch_bow_01);
		audio_stop_sound(sfx_stretch_bow_02);
	}

	#region BLINK MODE

		if (blink_mode){
	
				blink_timer++;
		
				if (blink_timer mod 10 == 0) blink++;
				if (blink > 1) blink = 0;
		
				if (blink) image_blend = c_red;
				else image_blend = c_white;
		
				if (blink_timer >= 40){
			
					blink_mode = 0;
					blink_timer = 0;
					image_blend = c_white;
					blink = 0;
				
				}	
	
		}

	#endregion

	//Player image direction
	if (moveX != 0 or moveY != 0) { //If running
		run_delay--;
		if (run_delay == 0) {
			run_index++;
			if (run_index == 4) {
				run_index = 0;
			}
			run_delay = 10;
		}
		switch (dir) {
			case 0:
				sprite_index = spr_right;
				break
			case 45:
				sprite_index = spr_upRight;
				break;
			case 90:
				sprite_index = spr_up;
				break;
			case 135:
				sprite_index = spr_upLeft;
				break;
			case 180:
				sprite_index = spr_left;
				break;
			case 225:
				sprite_index = spr_downLeft;
				break
			case 270:
				sprite_index = spr_down;
				break;
			case 315:
				sprite_index = spr_downRight;
				break;
		}
		image_index = run_index;
	}
	else { //Still
		sprite_index = spr_playerStill;
		image_index = dir/45;
	}

	//running sound
	if (moveX != 0) || (moveY != 0){
	
		if (gain_running_sound < 1) gain_running_sound += .05;
	
		if (room == rm_mirrorWorld){
		
			audio_stop_sound(sfx_running_grass);
			if (!audio_is_playing(sfx_running_hard)) running_sound = audio_play_sound(sfx_running_hard, 10, false, 0);
		
		} else 	if (room == rm_mainWorld){
		
			audio_stop_sound(sfx_running_hard);
			if (!audio_is_playing(sfx_running_grass)) running_sound = audio_play_sound(sfx_running_grass, 10, false, 0);
		
		}
	
	} else {

		if (gain_running_sound > 0) gain_running_sound -= .1;
		else {
			audio_stop_sound(sfx_running_hard);
			audio_stop_sound(sfx_running_grass);
		}

	}

}

audio_sound_gain(running_sound, gain_running_sound, 1);

//gemstone ickup audio limiter
if (pick_up_sounds_playing >= 4) && (!audio_is_playing(sfx_gemstone_pickup)) pick_up_sounds_playing = 0;

if (hsp_dash != 0) || (vsp_dash != 0){

	var effect = instance_create_depth(x, y, depth + 2, obj_dash_effect);
	effect.sprite_index = sprite_index;
	effect.image_index = image_index;
	effect.image_speed = 0;

}