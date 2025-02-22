var amount = floor(irandom_range(1, floor(max_hlth / choose(3, 5, 8, 10))));

if (hlth <= 0) {
	repeat(amount){
		instance_create_depth(x + irandom_range(-64, 64), y - irandom_range(0, 48), depth - 1, obj_gemstone);
	}
}

switch (object_get_name(object_index)) {
	case "obj_enemy_01":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[0];
		}
		break;
	case "obj_enemy_02":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[1];
		}
		break;
	case "obj_enemy_03":
		with (obj_spawner) {
			enemies_alive -= enemy_volume[2];
		}
		break;
}


// INCREASE EXP -- TEMPORARY
if (portal == false) && (hit_by_player) obj_game.exp_to_gain += floor(8 + max_hlth / 8);
portal = false;

if (irandom(50) == 0) && (!instance_exists(obj_focus_potion)) instance_create_depth(x + irandom_range(-64, 64), y - irandom_range(0, 48), depth - 1, obj_focus_potion);

//play death sound
var location = (distance_to_object(obj_player) * .2) * -sign(x - obj_player.x);
audio_play_sound_at(sfx_enemy_death, location, y, 0, 100, 300, 1, false, 10, 2, 0, random_range(.95, 1.05));


repeat(30) {
	var part = instance_create_depth(x,y,depth,obj_particle);
	part.fade = 0.01;
	part.direction = irandom_range(0,359);
	if irandom_range(0,5) == 0 part.image_blend = c_orange;
	else part.image_blend = c_black;
}