//Wave stuff
if (enemies_to_go == 0 and enemies_alive == 0) {
	//New wave
	wave++;
	enemies_to_go = (5*wave)-1;
	enemy_cap = wave*3-1;
}
if (enemies_alive < enemy_cap and enemies_to_go > 0) {
	var looping = true;
	while (looping) {
		var space_left = min(enemy_cap-enemies_alive,enemies_to_go);
		var possible = false;
		var xx,yy;
		repeat (5) {
			if (irandom(1) == 0){
				xx = irandom(room_width);
				yy = choose(48, room_height - 48);
			} else {
				xx = choose(48, room_width - 48);
				yy = irandom(room_height);			
			}
			if (place_empty(xx, yy, par_enemy_parent) and clamp(obj_camera.x-xx,obj_camera.x-960,obj_camera.x+960) != obj_camera.x-xx and clamp(obj_camera.y-yy,obj_camera.y-960,obj_camera.y+960) != obj_camera.y-yy) {
				possible = true;
				break;
			}
		}
		if (!possible) looping = false;
		if (space_left >= enemy_volume[2]) {
			var new_enemy = irandom(2);
		}
		else if (space_left >= enemy_volume[1]) {
			var new_enemy = irandom(1);
		}
		else {
			var new_enemy = 0;
		}
		instance_create_layer(xx,yy,"Instances",enemy_types[new_enemy]);
		enemies_alive += enemy_volume[new_enemy];
		enemies_to_go -= enemy_volume[new_enemy];
		if (enemies_alive == enemy_cap or enemies_to_go <= 0) looping = false;
	}
}