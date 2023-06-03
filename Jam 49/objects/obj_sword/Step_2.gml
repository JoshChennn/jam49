if (obj_player.dir > 180 or obj_player.dir = 0) {
	depth = obj_player.depth-1;
}
else {
	depth = obj_player.depth+1-(depth_difference*2);
}

if (depth_difference != 0) {
	if (sword_dir > 180) {
		depth = obj_player.depth-depth_difference;
	}
	else {
		depth = obj_player.depth+depth_difference;
	}
}