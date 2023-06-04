coll_player = false;
fade = 0;
fading = 0;

tower_number = 6;
var angle = 360 / tower_number;
var distance = 600;

for (var i = 0; i < 360; i += angle) {
	
	var xx = x + lengthdir_x(distance, i);
	var yy = y + lengthdir_y(distance, i);
	var new_tower = instance_create_layer(xx, yy, "Instances", obj_tower);
	new_tower._id = i;
	new_tower.x_origin = xx;
	new_tower.y_origin = yy;
	
}