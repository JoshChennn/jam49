if (obj_player.hearts >= _id + 1) image_index = 2;
else if (obj_player.hearts > _id) image_index = 1;
else image_index = 0;

x = obj_player.x + (_id - 1) * 30;
y = obj_player.y + 50;