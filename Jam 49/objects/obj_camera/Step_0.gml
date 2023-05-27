if (!instance_exists(par_enemy_parent)) {
	targetX = obj_player.x;
	targetY = obj_player.y;
	/*camera_set_view_size(view_camera[0], 1920, 1080);
	
	targetW = 1920;
	targetH = 1080;*/
}
else {
	var e = instance_nearest(obj_player.x,obj_player.y,par_enemy_parent)
	targetX = mean(obj_player.x, e.x);
	targetY = mean(obj_player.y, e.y);
	
	/*var distX = obj_player.x - e.x;
	var distY = obj_player.y - e.y;
	var w = distX * sign(distX) + 200;
	var h = distY * sign(distY) + 200;
	if (w > h) {
		targetH = w/16*9;
		targetW = w;
	}
	else {
		targetH = h;
		targetW = h/9*16;
	}
	camera_set_view_size(view_camera[0], targetW, targetH);*/

}

x += (targetX - x) * 0.07;
y += (targetY - y) * 0.07;

camera_set_view_pos(view_camera[0],x-1920/2,y-1080/2);
