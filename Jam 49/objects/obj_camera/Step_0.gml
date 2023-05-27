x += (obj_player.x - x) * 0.07;
y += (obj_player.y - y) * 0.07;

camera_set_view_pos(view_camera[0],x-960,y-540);