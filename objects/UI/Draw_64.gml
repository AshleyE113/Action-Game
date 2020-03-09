/// @description Insert description here
// You can write your code in this editor
draw_set_font(GAME_TEXT);


var screen_width = window_get_width(); //700

draw_text_transformed_color(100, 10, string(global.P1Score), 2, 2, 0, c_green, c_green, c_lime, c_lime, 1);
draw_text_transformed_color(screen_width+150, 10, string(global.P2Score), 2, 2, 0, c_red, c_red, c_orange, c_orange, 1);

//Player 1

draw_set_halign(fa_left);

/*
if (Player1 == noone && Player2.fall_out == true)
{
	died_once = true;
	if (!died_once)
	{
		died_once = false;
	string(P1Score++);
	}
}

//Player 2

draw_set_halign(fa_right);

if (Player2 != noone && Player2.fall_out == true)
{
	died_once = true;
	if (!died_once)
	{
		died_once = false;
	P2Score--;
	}
}

if (Player2 != noone && Player1.fall_out)
{
	died_once = true;
	if (!died_once)
	{
		died_once = false;
	P2Score++;
	}
}
*/