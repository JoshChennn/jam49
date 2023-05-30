if (distance_to_object(obj_player) < 180 and popup == 0) {
	//Popup
	popup = instance_create_layer(0,0,"Instances",obj_tutorialPopup);
	typer = instance_create_layer(0,0,"Instances",obj_typewriter);
	var price = find_upgrade_price(deal);
	typer._text = "Hallo, fellow heiumon!\nIt is I, LT658, another hoomahn on this planait!\nHere eez mei offer: I can make better your "+string(deal)+", for very good price of "+string(price)+" gems!\nWould you like to complete this transaction?\n(Press SPACE to exit)";
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