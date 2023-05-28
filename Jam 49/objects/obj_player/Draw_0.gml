draw_self();

if (keyboard_check(ord("N")) and global.bow_level > 0){
	
	draw_sprite_ext(spr_bow,1,x+lengthdir_x(60,point_dir),y+lengthdir_y(60,point_dir),1,1,point_dir,-1,1);
	draw_set_color(c_white);
	draw_line_width(x+lengthdir_x(40-_stretch,point_dir),y+lengthdir_y(40-_stretch,point_dir),x+lengthdir_x(40,point_dir)+lengthdir_x(29,point_dir+90),y+lengthdir_y(40,point_dir)+lengthdir_y(29,point_dir+90),2);
	draw_line_width(x+lengthdir_x(40-_stretch,point_dir),y+lengthdir_y(40-_stretch,point_dir),x+lengthdir_x(40,point_dir)+lengthdir_x(28,point_dir-90),y+lengthdir_y(40,point_dir)+lengthdir_y(28,point_dir-90),2);
	if (instance_exists(obj_arrow)) draw_rectangle(x-5,y-30,x+5,y-40,false);

}

/*
draw_text(x, y - 32, dash_left);
draw_text(x, y - 48, hsp_dash);