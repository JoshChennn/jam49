if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_tutorialPopup);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	typer._text = "Hallo, fellow heiumon!\nIt is I, VanBethoven, another hoomahn!\nI can upgrade anysing you vant, as long as it's not garlic, hehe.\nHear is vat I am offereeng:\n(Press SPACE to exit, and R to refresh deal)";
	var time_left = instance_create_layer(0,0,"Instances",obj_timeLeft);
	time_left.text_x = 350;
	time_left.text_y = -300;
	time_left._parent = self;
}
else if popup != 0 and typer.typing == false {
	instance_destroy(popup);
	popup = 0;
	instance_destroy(typer);
	typer = 0;
	instance_destroy(obj_tradeButton);
}
else if popup != 0 and typer.typing {
	//Skip typing
	with (typer) {
		count = string_length(_text);
		typing = false;
	}
}