/// @description When a bullet hits

audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.6, 1.1));

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1.25, c_white);

direction = random(360);
motion_add(image_angle, 0.4);

instance_destroy();

scr_player_score(50);
