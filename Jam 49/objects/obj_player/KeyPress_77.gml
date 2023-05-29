if (!swing) && (sword_cool_down == 0) && (!keyboard_check(ord("N"))) {
	swing_dir = direction;
	sword_dir = swing_dir - 50;
	swing = true;
	sword = instance_create_layer(x+lengthdir_x(60,sword_dir),y+lengthdir_y(60,sword_dir),"Instances",obj_sword);
	sword.direction = sword_dir;
	sword_cool_down = 20;
}