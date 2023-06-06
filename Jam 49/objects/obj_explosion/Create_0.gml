hit_player = false;

from_deflect = false;

var location = (distance_to_object(obj_player) * .2) * -sign(x - obj_player.x);
if (distance_to_object(obj_player) < 400) audio_play_sound_at(sfx_explosion, location, y, 0, 100, 300, 1, false, 10);

timer = 0;