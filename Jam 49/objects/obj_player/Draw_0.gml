draw_self();

if (keyboard_check(ord("N"))){
	
	draw_sprite_ext(spr_bow,1,x+lengthdir_x(60,direction),y+lengthdir_y(60,direction),1,1,direction,-1,1);
	draw_set_color(c_white);
	draw_line_width(x+lengthdir_x(40-_stretch,direction),y+lengthdir_y(40-_stretch,direction),x+lengthdir_x(40,direction)+lengthdir_x(29,direction+90),y+lengthdir_y(40,direction)+lengthdir_y(29,direction+90),2);
	draw_line_width(x+lengthdir_x(40-_stretch,direction),y+lengthdir_y(40-_stretch,direction),x+lengthdir_x(40,direction)+lengthdir_x(28,direction-90),y+lengthdir_y(40,direction)+lengthdir_y(28,direction-90),2);
	if (instance_exists(obj_arrow)) draw_rectangle(x-5,y-30,x+5,y-40,false);

}

/*
draw_text(x, y - 32, dash_left);
draw_text(x, y - 48, hsp_dash);