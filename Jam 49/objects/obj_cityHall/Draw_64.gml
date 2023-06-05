draw_self();
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
if (distance_to_object(obj_player) < 160) {
	draw_text(obj_camera.x, obj_camera.y+480, "Press SPACE to open settings");
}