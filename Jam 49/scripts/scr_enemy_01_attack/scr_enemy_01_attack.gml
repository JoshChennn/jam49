// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_enemy_01_attack(){

	//perform the actual attack
	var attack = instance_create_layer(x, y, "Instances", obj_enemy_attack_normal);
	attack.damage = damage;
	attack.direction = (direction div 45) * 45;
	attack.depth = obj_player.depth - 1;
	state = 0;

}