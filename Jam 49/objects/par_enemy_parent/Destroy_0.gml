var amount = floor(irandom_range(1, max_hlth / choose(3, 4, 5)));

if (irandom(5) == 0){
	
	repeat(amount){

		instance_create_depth(x + irandom_range(-64, 64), y - irandom_range(0, 48), depth - 1, obj_gemstone);

	}
	
}