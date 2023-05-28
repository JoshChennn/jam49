// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar
function scr_enemy_02_attack(){

	//perform the actual attack
	var ball1 = instance_create_layer(x - 24, y, "Instances", obj_fireball);
	var ball2 = instance_create_layer(x + 24, y, "Instances", obj_fireball);

	ball1.depth = obj_player.depth - 1;
	ball2.depth = obj_player.depth - 1;
	
	ball1.orientation = 0;
	ball2.orientation = 1;
	
	state = 0;

}