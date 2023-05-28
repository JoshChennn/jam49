if typing {
	if count < string_length(_text) { //Counting
		time++;
		if time >= spd {
			count++;
			time = 0;
		}
	}
	else { //Reached the end of the text
		count = string_length(_text);
		typing = false;
	}
}

//Drawing
draw_set_font(fnt_type);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(obj_camera.x,obj_camera.y-200,string_copy(_text,1,count));
