//spawn those little fiends

var type_index;

if (capacity_used < enemy_max_capacity){
	
	repeat(irandom_range(1, 5)) {

		type_index = irandom(2);
		if (capacity_used + enemy_volume[type_index] <= enemy_max_capacity){
	
			var xx, yy;
		
			do {
				if (irandom(1) == 0){
					xx = irandom(room_width);
					yy = choose(96, room_height - 96);
				} else {
					xx = choose(96, room_width - 96);
					yy = irandom(room_height);			
				}
			} until place_empty(xx, yy, par_enemy_parent) and clamp(obj_camera.x-xx,obj_camera.x-960,obj_camera.x+960) != obj_camera.x-xx and clamp(obj_camera.y-yy,obj_camera.y-960,obj_camera.y+960) != obj_camera.y-yy;
		
			var enemy = instance_create_layer(xx, yy, "Instances", enemy_types[type_index])
			capacity_used += enemy_volume[type_index];
		
		}
	

	} 

}

alarm[0] = room_speed * 10;








/*
#################################
SPAWN ALL ENEMIES AT ONCE VERSION
#################################

//spawn those little fiends

var capacity_used = 0;
var enemy_types;
var type_index
enemy_types[0] = obj_enemy_01;
enemy_types[1] = obj_enemy_02;
enemy_types[2] = obj_enemy_03;

do {

	type_index = irandom(2);
	if (capacity_used + enemy_volume[type_index] <= enemy_max_capacity){
	
		var xx, yy;
		
		do {
			xx = x + irandom_range(-300, 300);
			yy = y + irandom_range(-64, 64);
		} until place_empty(xx, yy, par_enemy_parent);
		
		var enemy = instance_create_layer(xx, yy, "Instances", enemy_types[type_index])
		capacity_used += enemy_volume[type_index];
		
	}
	

} until capacity_used >= enemy_max_capacity

alarm[0] = room_speed * 10;