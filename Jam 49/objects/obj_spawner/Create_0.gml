//how many enemy volume there can be
enemy_max_capacity = 50;
capacity_used = 0;

//how many of the capacity the enemy types use up
enemy_volume[0] = 1; //standard enemy
enemy_volume[1] = 3; //middle enemy
enemy_volume[2] = 5; //fat oaf lol

enemy_types[0] = obj_enemy_01;
enemy_types[1] = obj_enemy_02;
enemy_types[2] = obj_enemy_03;

//prepare to spwan those little fiends
alarm[0] = 20;

wave = 0;
enemies_to_go = 0;
enemies_alive = 0;
enemy_cap = 0;

//Wave system:
//1. Check if there is less monsters than in wave max (5*wave-2) for now
//2. Add more if needed
//3. Check if time to increase wave
//4. Check for boss wave *MAYBE*