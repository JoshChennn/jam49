draw_self();


draw_sprite_ext(spr_bow,1,x+lengthdir_x(60,mouse_dir),y+lengthdir_y(60,mouse_dir),1,1,mouse_dir,-1,1);
draw_set_color(c_white);
draw_line_width(x+lengthdir_x(40-stretch,mouse_dir),y+lengthdir_y(40-stretch,mouse_dir),x+lengthdir_x(40,mouse_dir)+lengthdir_x(29,mouse_dir+90),y+lengthdir_y(40,mouse_dir)+lengthdir_y(29,mouse_dir+90),2);
draw_line_width(x+lengthdir_x(40-stretch,mouse_dir),y+lengthdir_y(40-stretch,mouse_dir),x+lengthdir_x(40,mouse_dir)+lengthdir_x(28,mouse_dir-90),y+lengthdir_y(40,mouse_dir)+lengthdir_y(28,mouse_dir-90),2);