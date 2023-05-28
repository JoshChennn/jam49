length = 48;
var player_distance = length + 16;

potential_direction = point_direction(x, y, obj_player.x, obj_player.y);

var obj = instance_position(x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction), par_enemy_parent);
var player = instance_position(x + lengthdir_x(player_distance, potential_direction), y + lengthdir_y(player_distance, potential_direction), obj_player);
var circle_other = collision_circle(x, y, radius, par_enemy_parent, true, true);
var circle_player = collision_circle(x, y, radius_player, obj_player, true, true);

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
			
				if (distance_to_object(obj_player) <= 64){
	
					if (irandom(200) == 0) state = 1;
	
				}		
			
			break;
			
			case "obj_enemy_02":
			
			
				if (distance_to_object(obj_player) >= 256){
	
					if (irandom(350) == 0) state = 1;
	
				} else if (distance_to_object(obj_player) <= 64){
	
					if (irandom(200) == 0) state = 1;
	
				}				
			
			
			break;
			
			
			case "obj_enemy_03":
			
			//YET TO BE MADE
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
		
			if (blink) image_blend = c_red;
			else image_blend = c_white;
		
			if (pre_attack_timer >= 100){
			
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

//may randomly hurt player upon direct touch
if (place_meeting(x, y, obj_player)) && (!obj_player.blink_mode){

	if (irandom(30) == 0){

		obj_player.hearts -= .5;
		obj_player.blink_mode = true;
	
	}

}

if ((path_speed == 0) || (path_index = -1)) && (irandom(20) == 0) direction = point_direction(x, y, obj_player.x, obj_player.y);



