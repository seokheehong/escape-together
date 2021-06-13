/// increases score by one when you collide with a coin
global.points += 1;
audio_play_sound(aCoin, 1, false);
instance_destroy(other);