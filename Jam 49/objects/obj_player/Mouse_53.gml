if !swing {
	swing_dir = point_direction(x,y,mouse_x,mouse_y);
	sword_dir = swing_dir - 50;
	swing = true;
	sword = instance_create_layer(x+lengthdir_x(60,sword_dir),y+lengthdir_y(60,sword_dir),"Instances",obj_sword);
	sword.direction = sword_dir;
}