if (room == rm_mirrorWorld) {
	draw_set_alpha(.3);
	draw_set_color(c_black);
	draw_ellipse(x-30,y-10,x+20,y+20,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

draw_self();