moveX = 0;
moveY = 0;
dir = 0;
spdMax = 4;
spd = 0;
acc = 0.6;
depth = -1;
point_dir = 0;
sword_dir = 0;
hearts = 3;
hsp = 0;
vsp = 0;

sound_death_played = false;
pick_up_sounds_playing = 0;

gain_running_sound = 0;
running_sound = 0;
focus_potion_timer = 0;

dash_left = 0;
dash_right = 0;
dash_up = 0;
dash_down = 0;
dash_left_counter = 0;
dash_right_counter = 0;
dash_up_counter = 0;
dash_down_counter = 0;
hsp_dash = 0;
vsp_dash = 0;

blink_mode = false;
blink_timer = 0;
blink = 0;

//Create 3 hearts
for (var i = 0; i < 3; i++) {
	var a = instance_create_layer(x+(i-1)*30,y+50,"Instances",obj_heart);
	a._id = i;
}
_stretch = 0;
arrow = 0;
arrows = 0;
run_index = 0;
run_delay = 10;

global.sword_level = 1;
global.bow_level = 1;