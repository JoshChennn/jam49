draw_self();
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (distance_to_object(obj_player) < 170) {
	if (popup == 0) {
		draw_text(obj_camera.x, obj_camera.y-500, "Press SPACE to BUY PINEAPPLE PEELS");
	}
	else {
		depth = -room_height+1;
		draw_text(obj_camera.x+300,obj_camera.y-300,"Next deal in "+string(floor(alarm[0]/60))+"s.");
		depth = -y;
	}
}