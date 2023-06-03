//Check if there are any enemies in the room
if (!instance_exists(par_enemy_parent)) {
	//If not, follow the player
	targetX = obj_player.x;
	targetY = obj_player.y;
}
else {
	//If there are, find nearest enemy
	var e = instance_nearest(obj_player.x,obj_player.y,par_enemy_parent)
	
	//Check if the nearest enemy is within a certain range
	diffX = obj_player.x - e.x;
	diffY = obj_player.y - e.y;
	if (diffX * sign(diffX) < 1200 and diffY * sign(diffY) < 700) {
		//If it is, go to the average position of the player and the enemy
		targetX = mean(obj_player.x, e.x);
		targetY = mean(obj_player.y, e.y);
	}
	else {
		//If not, follow the player
		targetX = obj_player.x;
		targetY = obj_player.y;
	}
}

//Moving the camera
x += (targetX - x) * 0.04;
y += (targetY - y) * 0.04;
camera_set_view_pos(view_camera[0],x-960,y-540);

if (fad >= 1) {
	game_end();
}