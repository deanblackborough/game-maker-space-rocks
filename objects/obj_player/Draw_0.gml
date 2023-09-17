/// @description Insert description here
// You can write your code in this editor

draw_self();

if (alarm[0] > 0) 
{
	draw_set_halign(fa_center);
	var _time = round(alarm[0] / 60);
	draw_set_alpha(0.6);
	draw_text(x, y - 60, _time);
	
	// Reset
	draw_set_alpha(1);
	draw_set_halign(fa_left);
}