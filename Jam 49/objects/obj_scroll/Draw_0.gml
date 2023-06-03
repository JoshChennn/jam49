draw_self();

if (image_index == 1) {
	//Find and determine player rank
	rank = LLPlayerRank();
	if rank == 1 pos = 0;
	else if rank > 1 and rank < 5 pos = 1;
	else pos = 2;
	
	draw_set_font(fnt_type);
	
	//KING
	if (pos == 0) {
		draw_set_color(c_green);
	}
	else {
		draw_set_color(c_black);
	}
	draw_set_halign(fa_left);
	draw_text(x-231,y-106,"1.");
	draw_text(x-200,y-106,string(LLHighscoresTopNamesList()[0]));
	draw_set_halign(fa_right);
	draw_text(x+168,y-106,string(LLHighscoresTopScoreList()[0]));
	
	//NOBLES
	for (var i = 0; i < 3; i++) {
		if (rank == i+2) {
			draw_set_color(c_green);
		}
		else {
			draw_set_color(c_black);
		}
		draw_set_halign(fa_left);
		draw_text(x-231,y-7+i*37,string(i+2)+".");
		draw_text(x-200,y-7+i*37,string(LLHighscoresTopNamesList()[i+1]));
		draw_set_halign(fa_right);
		draw_text(x+168,y-7+i*37,string(LLHighscoresTopScoreList()[i+1]));
	}
	
	//VILLAGERS
	if (pos != 2) {
		for (var i = 5; i < 8; i++) {
			draw_set_color(c_black);
			draw_set_halign(fa_left);
			draw_text(x-231,y-17+i*37,string(i)+".");
			draw_text(x-200,y-17+i*37,string(LLHighscoresTopNamesList()[i]));
			draw_set_halign(fa_right);
			draw_text(x+168,y-7+i*37,string(LLHighscoresTopScoreList()[i]));
		}
	}
	else {
		for (var i = rank-1; i < rank+1; i++) {
			if (rank == i) {
				draw_set_color(c_green);
			}
			else {
				draw_set_color(c_black);
			}
			draw_set_halign(fa_left);
			draw_text(x-231,y-17+i*37,string(i)+".");
			draw_text(x-200,y-17+i*37,string(LLHighscoresTopNamesList()[i]));
			draw_set_halign(fa_right);
			draw_text(x+168,y-7+i*37,string(LLHighscoresTopScoreList()[i]));
		}
	}
}