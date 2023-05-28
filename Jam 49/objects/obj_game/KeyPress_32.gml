global.player_exp += 10;

ds_map_replace(gamedata, "EXP", global.player_exp);

//Update leaderboard
if (instance_exists(obj_leaderboard)) {
	LootLockerSubmitScore("14517",string(global.player_exp));
}