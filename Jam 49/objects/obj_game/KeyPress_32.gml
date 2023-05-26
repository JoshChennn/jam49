player_experience_points += 10;

ds_map_replace(gamedata, "EXP", player_experience_points); //if we're calling this function from anywhere else we must say obj_game.gamedata for the ID

