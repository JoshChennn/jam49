length = 48;
var player_distance = length + 16;

potential_direction = point_direction(x, y, obj_player.x, obj_player.y);

var obj = instance_position(x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction), par_enemy_parent);
var player = instance_position(x + lengthdir_x(player_distance, potential_direction), y + lengthdir_y(player_distance, potential_direction), obj_player);
var circle_other = collision_circle(x, y, radius, par_enemy_parent, true, true);
var circle_player = collision_circle(x, y, radius_player, obj_player, true, true);

switch (state){

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
	
	if (distance_to_object(obj_player) <= 64){
	
		if (irandom(200) == 0) state = 1;
	
	}
	
	break;
	
	case 1: //prepare attack
	
		path_speed = 0;
	
		pre_attack_timer++;
		
		if (pre_attack_timer mod 20 == 0) blink++;
		if (blink > 1) blink = 0;
		
		if (blink) image_blend = c_red;
		else image_blend = c_white;
		
		if (pre_attack_timer >= 100){
			
			state = 2;
			pre_attack_timer = 0;
			image_blend = c_white;
			blink = 0;
			
			//perform the actual attack
			var attack = instance_create_layer(x, y, "Instances", obj_enemy_attack_normal);
			attack.direction = (direction div 45) * 45;
			attack.depth = obj_player.depth - 1;
			state = 0;
			
		}
	
	break;
	
}



if ((path_speed == 0) || (path_index = -1)) && (irandom(20) == 0) direction = point_direction(x, y, obj_player.x, obj_player.y);


/*

length = 48;
var player_distance = length + 48;

potential_direction = point_direction(x, y, obj_player.x, obj_player.y);

var obj = instance_position(x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction), par_enemy_parent);
var player = instance_position(x + lengthdir_x(player_distance, potential_direction), y + lengthdir_y(player_distance, potential_direction), obj_player);
var circle = collision_circle(x, y, radius, par_enemy_parent, true, true);

if (circle){
	
	if (collision_timer <= 0){
		
		if (irandom(1) == 0) alarm[1] = 1;
		
	}
	
} else {
	
	alarm[1] = -1;

	if (obj) && (obj != id)
	or (player){

		path_speed = 0;

	} else path_speed = movespeed;

}

if (collision_timer > 0) collision_timer--;


/*
if (position_meeting(x + lengthdir_x(length, potential_direction), y + lengthdir_y(length, potential_direction), par_enemy_parent))
or (position_meeting(x + lengthdir_x(length + 8, potential_direction), y + lengthdir_y(length + 8, potential_direction), obj_player)){

	path_speed = 0;

} else path_speed = movespeed;
