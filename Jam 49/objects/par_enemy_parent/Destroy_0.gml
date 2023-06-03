var amount = floor(irandom_range(1, max_hlth / choose(3, 4, 5)));

if (irandom(5) == 0){
	
	repeat(amount){

		instance_create_depth(x + irandom_range(-64, 64), y - irandom_range(0, 48), depth - 1, obj_gemstone);

	}
	
}
switch (object_get_name(object_index)) {
	case "obj_enemy_01":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[0];
		}
		break;
	case "obj_enemy_02":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[1];
		}
		break;
	case "obj_enemy_03":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[2];
		}
		break;
}


// INCREASE EXP -- TEMPORARY
global.player_exp += 10;
//Update leaderboard
if (instance_exists(obj_leaderboard)) {
	LootLockerSubmitScore("14517",string(global.player_exp));
}