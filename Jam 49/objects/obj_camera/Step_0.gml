if (!instance_exists(par_enemy_parent)) {
	targetX = obj_player.x;
	targetY = obj_player.y;
}
else {
	var e = instance_nearest(obj_player.x,obj_player.y,par_enemy_parent)
	with (obj_player) {
		if (distance_to_object(e) < 700) {
			obj_camera.targetX = mean(obj_player.x, e.x);
			obj_camera.targetY = mean(obj_player.y, e.y);
		}
		else {
			obj_camera.targetX = x;
			obj_camera.targetY = y;
		}
	}
	
	/*var distX = obj_player.x - e.x;
	var distY = obj_player.y - e.y;
	var w = distX * sign(distX) + 200;
	var h = distY * sign(distY) + 200;
	if (w > h) {
		targetW = w;
		targetH = w/16*9;
	}
	else {
		targetW = h/9*16;
		targetH = h;
	}
	camera_set_view_size(view_camera[0], targetW, targetH);*/

}

x += (targetX - x) * 0.04;
y += (targetY - y) * 0.04;

camera_set_view_pos(view_camera[0],x-960,y-540);
