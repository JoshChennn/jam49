

draw_set_alpha(.1);
draw_set_color(c_black);
var offset = 32;
var height = 8;
var factor = .8;
draw_ellipse(x - ((y_origin - y) * factor + offset), y_origin + offset, x + ((y_origin - y) * factor + offset), y_origin + offset + height, false);
draw_set_alpha(1);
draw_set_color(c_white);


draw_self();