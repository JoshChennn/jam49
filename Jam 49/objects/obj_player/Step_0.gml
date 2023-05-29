//Movement variables
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_up = keyboard_check(ord("W")) or keyboard_check(vk_up);
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);
key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);

//Lucas' area stuff
#region //LUCAS' AREA: DIRECTION DETERMINATION

var closest_enemy = instance_nearest(x, y, par_combat_targets) 

if (distance_to_object(closest_enemy) <= 80){
	
	direction = (point_direction(x, y, closest_enemy.x, closest_enemy.y) div 45) * 45;
	
} else {
	//sketchy direction determination
	if (key_up && key_right) direction = 45;
	else if (key_up && key_left) direction = 135;
	else if (key_down && key_right) direction = 315;
	else if (key_down && key_left) direction = 225;
	else if (key_left) direction = 180;
	else if (key_up) direction = 90;
	else if (key_right) direction = 0;
	else if (key_down) direction = 270;
	else if (key_up && key_right) direction = 45;
	else if (key_up && key_left) direction = 135;
	else if (key_down && key_right) direction = 315;
	else if (key_down && key_left) direction = 225;
}

#endregion

//Lucas' area stuff
#region //LUCAS' AREA: PERFORM DASH

//perform dash
if (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(ord("A"))) dash_left++;
if (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(ord("D"))) dash_right++;
if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(ord("W"))) dash_up++;
if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(ord("S"))) dash_down++;

var dash_speed = 24;
var counter_max = 30;

//handle dash left
if (dash_left > 1){
	
	hsp_dash = -dash_speed;
	dash_left = 0;
	
} else if (dash_left > 0){

	if (dash_left_counter < counter_max)
		dash_left_counter++;
	else {
	
		dash_left = false;
		dash_left_counter = 0;
	
	}
	
}

//handle dash right
if (dash_right > 1){
	
	hsp_dash = dash_speed;
	dash_right = 0;
	
} else if (dash_right > 0){

	if (dash_right_counter < counter_max)
		dash_right_counter++;
	else {
	
		dash_right = false;
		dash_right_counter = 0;
	
	}
	
}

//handle dash up
if (dash_up > 1){
	
	vsp_dash = -dash_speed;
	dash_up = 0;
	
} else if (dash_up > 0){

	if (dash_up_counter < counter_max)
		dash_up_counter++;
	else {
	
		dash_up = false;
		dash_up_counter = 0;
	
	}
	
}

//handle dash down
if (dash_down > 1){
	
	vsp_dash = dash_speed;
	dash_down = 0;
	
} else if (dash_down > 0){

	if (dash_down_counter < counter_max)
		dash_down_counter++;
	else {
	
		dash_down = false;
		dash_down_counter = 0;
	
	}
	
}

//decrease dash timers
if (hsp_dash > 0) hsp_dash--;
else if (hsp_dash < 0) hsp_dash++;

if (vsp_dash > 0) vsp_dash--;
else if (vsp_dash < 0) vsp_dash++;

#endregion



//Actual movement
hsp = key_right - key_left;
vsp = key_down - key_up;

//If the player is pressing a key
if (hsp != 0 or vsp != 0) {
	//Speed up
	if (spd < spdMax) spd += acc;
	dir = point_direction(0,0,hsp,vsp);
}
else {
	//Slow down
	if (spd > 0) spd -= acc;
}
//Final movement

moveX = lengthdir_x(spd + hsp_dash * sign(hsp_dash), dir);
moveY = lengthdir_y(spd + vsp_dash * sign(vsp_dash), dir);

//Horizontal collision
if (place_meeting_obstacle(x+moveX,y)) {
	while(!place_meeting_obstacle(x+sign(moveX),y)) {
		x += sign(moveX);
	}
	moveX = 0;
}

x += moveX;

//Verticle collision
if (place_meeting_obstacle(x,y+moveY)) {
	while(!place_meeting_obstacle(x,y+sign(moveY))) {
		y += sign(moveY);
	}
	moveY = 0;
}
y += moveY;

depth = -y;

//If swinging sword
if swing {
	sword_dir += 15;
	sword.x = x+lengthdir_x(60,sword_dir);
	sword.y = y+lengthdir_y(60,sword_dir);
	sword.direction = point_direction(x,y,sword.x,sword.y);
	if (sword_dir >= swing_dir + 50) {
		instance_destroy(sword);
		swing = false;
	}
}


point_dir = point_dir + (angle_difference(dir,point_dir) * 0.5);

//If not pulling bow
if (!keyboard_check(ord("N"))) {
	if (arrow != 0 and _stretch > 10) {
		arrow.speed = _stretch;
		arrow = 0;
	}
	_stretch = 0;
}

#region BLINK MODE

	if (blink_mode){
	
			blink_timer++;
		
			if (blink_timer mod 10 == 0) blink++;
			if (blink > 1) blink = 0;
		
			if (blink) image_blend = c_red;
			else image_blend = c_white;
		
			if (blink_timer >= 40){
			
				blink_mode = 0;
				blink_timer = 0;
				image_blend = c_white;
				blink = 0;
				
			}	
	
	}

#endregion

//death
if (hearts <= 0) game_restart();

//sword cooldown
if (sword_cool_down > 0) sword_cool_down--;