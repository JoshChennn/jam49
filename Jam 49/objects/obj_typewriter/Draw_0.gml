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
draw_set_font(fnt_trade);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x,y,string_copy(_text,1,count));
