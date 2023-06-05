if (alarm[0] < 0){
	timer+=.1;
	y = y_origin + sin(timer) * 4;
}

if (irandom(2) == 0) image_index++;