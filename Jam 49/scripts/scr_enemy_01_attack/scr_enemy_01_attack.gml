// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_enemy_01_attack(){

	if (distance_to_object(obj_player) > 24){
	
		path_delete(path);
		path = path_add();

		mp_grid_path(global.grid, path, x, y, destination_x, destination_y, true);
		path_start(path, 6 + (1 - obj_sword.swinging) * 4, path_action_stop, true);

		alarm[0] = 120;
		alarm[2] = 1;		
	
	} else {
	
		//perform the actual attack
		var attack = instance_create_layer(x, y, "Instances", obj_enemy_attack_normal);
		attack.damage = damage;
		attack.direction = (direction div 45) * 45;
		attack.depth = obj_player.depth - 1;
		state = 0;
	
	}

}