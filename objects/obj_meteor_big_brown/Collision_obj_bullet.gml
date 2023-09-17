/// @description When a bullet hits

audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.6, 1.1));

instance_destroy(other);

effect_create_above(ef_explosion, x, y, 1.25, c_white);

if (obj_game.powerup_time < 0) {
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	show_debug_message("We created a powerup!");
	obj_game.powerup_time = 20;
} 
else 
{
	show_debug_message("No powerup!, powerup time is {0}", obj_game.powerup_time);
}	

direction = random(360);
motion_add(image_angle, 0.4);

var _limit = random_range(1, 3);
show_debug_message("The limit for brown is set to {0}", _limit)

for (var _i = 0; _i < _limit; _i += 1)
{
	var _child = choose(obj_meteor_brown);
	instance_create_layer(x, y, "Instances", _child);
	show_debug_message("Created a brown child")
}

if instance_number(obj_meteor_big_brown) < 5
{
	x = -100;
}
else
{
    instance_destroy();
}

scr_player_score(100);