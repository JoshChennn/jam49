if (instance_exists(obj_player)){

	depth = obj_player.depth + 10;

}

if (room == rm_mainWorld){
	//Update leaderboard
	if (instance_exists(obj_leaderboard)) {
		LootLockerSubmitScore("14517",string(global.player_exp));
	}
}

alarm[0] = 10;