// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_score(_base_score)
{
	if (instance_exists(obj_player))
	{	
		var _speed = obj_player.speed + 1;
		var _score = _base_score * _speed;

		show_debug_message("The Player speed is {0}",_speed);
		show_debug_message("The player scored {0}", _score);

		obj_game.points += _score;	
	}
}