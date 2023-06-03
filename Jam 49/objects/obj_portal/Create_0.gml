coll_player = false;
fade = 0;
fading = 0;
for (var i = 0; i < 6; i++) {
	var new_tower = instance_create_layer(0,0,"Instances",obj_tower);
	new_tower._id = i;
}