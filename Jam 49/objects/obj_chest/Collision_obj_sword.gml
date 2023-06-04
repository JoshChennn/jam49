if (other.swinging) && (flash_timer <= 0){

	hp--;
	flash_timer = 15;
	audio_play_sound(sfx_enemy_hit_heavy, 10, false, .65);

}

if (hp <= 0){
    
	audio_play_sound(sfx_chest_break, 10, false, 2);
	instance_destroy();
	repeat(irandom_range(5, 20)){
	
		instance_create_depth(x + irandom_range(-32, 32), y + irandom_range(-32, 32), depth, obj_gemstone);
	
	}


}