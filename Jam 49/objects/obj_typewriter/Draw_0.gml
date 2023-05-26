if typing {
	if count < string_length(text) { //Counting
		time++;
		if time >= spd {
			count++;
			time = 0;
		}
	}
	else { //Reached the end of the text
		count = string_length(text);
		typing = false;
	}
}
//Skip typing
if keyboard_check_pressed(key) {
	count = string_length(text);
}
//Drawing
draw_set_font(fnt_type);
draw_set_color(c_white);
draw_text(30,30,string_copy(text,1,count));
