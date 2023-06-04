length = 48;
var player_distance = length + 16;

potential_direction = point_direction(x, y, obj_player.x, obj_player.y);

var obj = instance_position(x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction), par_enemy_parent);
var player = instance_position(x + lengthdir_x(player_distance, potential_direction), y + lengthdir_y(player_distance, potential_direction), obj_player);
var circle_other = collision_circle(x, y, radius, par_enemy_parent, true, true);
var circle_player = collision_circle(x, y, radius_player, obj_player, true, true);



if (noob_mode > 0){

	noob_mode--;
	
	pre_attack_timer++;
		
	if (pre_attack_timer mod 5 == 0) blink++;
	if (blink > 1) blink = 0;
		
	if (blink) image_blend = c_red;
	else image_blend = c_white;
		
	if (pre_attack_timer >= 80){
			
		noob_mode = 0;
		pre_attack_timer = 0;
		image_blend = c_white;
		blink = 0;
				
	}
	
	//move randomly if not colliding with walls
	if (place_meeting(x + lengthdir_x(path_speed + 8, direction), y + lengthdir_y(path_speed + 8, direction), par_wall_basic))
	or (place_meeting(x + lengthdir_x(path_speed + 8, direction), y + lengthdir_y(path_speed + 8, direction), par_enemy_parent)){
	
		path_end();
		state = 0;
		noob_mode = 0;
		alarm[0] = 1;
	
	}

} else {
	
	image_blend = c_white;
	sound_played = false;

	switch (state){

		#region STATE CHASE ENEMY / NORMAL MOVEMENT
			case 0: //chase enemy / movement
	
				if (circle_other) || (circle_player){
	
					if (collision_timer <= 0){
		
						if (irandom(1) == 0) alarm[1] = 1;
		
					}
	
					if (player){

						path_speed = 0;
						alarm[0] = 1;

					}
	
				} else {
	
					alarm[1] = -1;

					if (obj) && (obj != id)
					or (player){

						path_speed = 0;
						alarm[0] = 1;

					} else path_speed = movespeed;

				}

				if (collision_timer > 0) collision_timer--;
	
			switch (object_get_name(object_index)){
		
				case "obj_enemy_01":
			
					if (distance_to_object(obj_player) <= 320){
	
						if (irandom(200) == 0) state = 1;
	
					} else if (distance_to_object(obj_player) <= 96){
					
						if (irandom(80) == 0) state = 1;
					
					}		
			
				break;
			
				case "obj_enemy_02":
			
			
					if (distance_to_object(obj_player) >= 384) && (instance_number(obj_fireball) <= 2){
	
						if (irandom(500) == 0) state = 1;
	
					} else if (distance_to_object(obj_player) <= 64){
	
						if (irandom(200) == 0) state = 1;
	
					}				
			
			
				break;
			
			
				case "obj_enemy_03":
			
					if (distance_to_object(obj_player) <= 64){
	
						if (irandom(100) == 0) state = 1;
	
					}				
			
			
				break;
		
		
		
			}

	
			break;
		#endregion
	
		#region STATE BLINK / PREPARE ATTACK
			case 1: //prepare attack
	
				path_speed = 0;
	
				pre_attack_timer++;
		
				if (pre_attack_timer mod 10 == 0) blink++;
				if (blink > 1) blink = 0;
		
				if (blink) image_blend = c_black;
				else image_blend = c_white;
		
				if (pre_attack_timer >= 100){
					
					if (irandom(10) < 7){
						destination_x = obj_player.x;
						destination_y = obj_player.y;
					} else {
						destination_x = obj_player.x + lengthdir_x(256, obj_player.dir + choose(-45, 45));
						destination_y = obj_player.y;
					}
			
					state = 2;
					pre_attack_timer = 0;
					image_blend = c_white;
					blink = 0;
				
				}
	
			break;
		#endregion
	
		#region PERFORM ACTUAL ATTACK ACCORDING TO ENEMY TYPE
			case 2:
	
				switch (object_get_name(object_index)){
			
					case  "obj_enemy_01":
					
						scr_enemy_01_attack();
						
						if (place_meeting(x, y, par_enemy_parent)){
							other.state = 0;
							other.alarm[1] = 1;
						}
						
					break;
				
					case  "obj_enemy_02":
				
						if (distance_to_object(obj_player) >= 256) scr_enemy_02_attack();
						else if (distance_to_object(obj_player) <= 64) scr_enemy_01_attack();
						else state = 0;

					break;
			
					case  "obj_enemy_03":
						scr_enemy_03_attack();
					break;
			
				}
	
			break;
		#endregion
	
	}

}

//may randomly hurt player upon direct touch
if (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	if (irandom(30) == 0){

		obj_player.hearts -= .5;
		obj_player.blink_mode = true;
		obj_heart.alarm[0] = 10;
		
		audio_play_sound(choose(sfx_player_hit_01, sfx_player_hit_02), 10, false, 2.5);
		audio_play_sound(sfx_lose_heart, 10, false, 2.5);

	}

}

//face player when standing still
if ((path_speed == 0) || (path_index = -1)) && (irandom(20) == 0) direction = point_direction(x, y, obj_player.x, obj_player.y);

//health stuff
if (hlth <= 0){

	instance_create_depth(x, y, depth, obj_smoke);	
	instance_destroy();

}

#region FOOTPRINTS & INVISIBLE STUFF
if (state == 0){
	
	// Enemy 3 footprint & invisible stuff
	if (object_get_name(object_index) == "obj_enemy_03"){

		foot_print_timer++;
	
		//##### FADE STUFF #############
	
		var fade_amount = .02;
	
		if (distance_to_object(obj_player) > 256){
	
		#region STATE FAR AWAY
			if (invisible_state != 2){
		
				if (!invisible_state){
		
					if (image_alpha < 1) image_alpha += fade_amount;
					else {
						invisible_state = 2;
						invisible_time = 60 * irandom_range(1, 5);
					}
			
				} else {
		
					if (image_alpha > 0) image_alpha -= fade_amount;
					else {
						invisible_state = 2;
						invisible_time = 60 * irandom_range(1, 5);
					}
		
				}
		
			} else {
		
				if (invisible_counter < invisible_time){
			
					invisible_counter++;
			
				} else {
		
					invisible_counter = 0;
					state_switch++;
					if (state_switch > 1) state_switch = 0;
					invisible_state = state_switch;
		
				}
	
	
			}
		#endregion
	
		} else {
	
		#region CLOSE TO PLAYER
	
			if (distance_to_object(obj_player) > 96){
		
				image_alpha = 0;
		
			} else image_alpha = 1;

		#endregion
	
		}
	
		//##### FADE STUFF END ###########
	
		if (foot_print_timer mod 48 == 0){
	
			foot_print_orientation++;
			if (foot_print_orientation > 1) foot_print_orientation = 0;
		
			var foot_print = instance_create_depth(x, y, depth + 1, obj_enemy_03_footprint);			
			foot_print.image_index = foot_print_orientation;
			foot_print.image_angle = direction;
			
		}

	}

} else image_alpha = 1;
#endregion

depth = -y - 75;

//sketchy position limiter
if (x == 0) || (x == room_width) last_x = x;
if (y == 0) || (y == room_height) last_y = y;

if (x < 0) || (x > room_width) x = last_x;
if (y < 0) || (y > room_height) y = last_y;



