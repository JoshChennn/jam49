

draw_set_alpha(.1);
draw_set_color(c_black);
draw_ellipse(x - ((y_origin - y) * .25 + 12), y_origin + 12, x + ((y_origin - y) * .25 + 12), y_origin + 18, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_self();

