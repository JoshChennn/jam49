global.player_exp += 10;
global.player_gems += 10;

//Update leaderboard
if (instance_exists(obj_leaderboard)) {
	LootLockerSubmitScore("14517",string(global.player_exp));
}