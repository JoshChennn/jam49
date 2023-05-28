if (other.deflect){

	hlth -= 10;
	with (other) instance_destroy();
	instance_create_depth(x, y, depth - 1, obj_explosion);

}