// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_enemy_03_attack(){

	var dist = 32;
	var angle_diff = 45;
	var attack
	
	//perform the actual attack
	attack = instance_create_layer(x + lengthdir_x(dist, direction), y + lengthdir_y(dist, direction), "Instances", obj_enemy_attack_normal);
	attack.direction = (direction div 45) * 45 - angle_diff;
	attack.depth = obj_player.depth - 1;
	attack.damage = damage;
	
	attack = instance_create_layer(x + lengthdir_x(dist, direction), y + lengthdir_y(dist, direction), "Instances", obj_enemy_attack_normal);
	attack.direction = (direction div 45) * 45 + angle_diff;
	attack.depth = obj_player.depth - 1;
	attack.damage = damage;
	
	state = 0;

}