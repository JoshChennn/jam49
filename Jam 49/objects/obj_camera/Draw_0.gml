if (instance_exists(obj_camera)) {
	draw_set_alpha(fade);
	draw_set_color(c_black);
	draw_rectangle(obj_camera.x-960,obj_camera.y-540,obj_camera.x+960,obj_camera.y+540,false);
	//draw_text(obj_camera.x,obj_camera.y,string(obj_player.depth));
	//draw_text(obj_camera.x,obj_camera.y+20,string(depth));
	//draw_sprite_ext(spr_fade,0,obj_camera.x-960,obj_camera.y-540,1,1,0,-1,fade);
}