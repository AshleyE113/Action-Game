/// @description Insert description here
// You can write your code in this editor
var Player1 = instance_find(obj_Player_manager, 0);
var Player2 = instance_find(obj_Player_manager, 1);

P1_died_once = 1;
P2_died_once = 1;

if (Player1 != noone && Player1.fall_out == true)
{
	P1_died_once =0;
	P1_calculate_score = 0;
		
		if (!audio_is_playing(snd_suicide))
			{
				audio_play_sound(snd_suicide, 0, 0);
			}
}

if (P1_died_once == 0 && P1_calculate_score == 0)
	{
		P1_calculate_score = 1;
		global.P1Score--;
		Player1.fall_out = false;
		P1_died_once = 1;
	}
	
if (Player1 != noone && Player2.fall_out == true)
{
	P1_stop = 0;
	P1_add_on = 0;
}

if (P1_stop == 0 && P1_add_on == 0)
{
	P1_stop = 1;
	global.P1Score++;
	P1_add_on = 1;
	Player1.fall_out = false;
}
//__________________________________________________________________	
if (Player2 != noone && Player2.fall_out == true)
{
	P2_died_once = 0;
	P2_calculate_score = 0;
		if (!audio_is_playing(snd_suicide))
			{
				audio_play_sound(snd_suicide, 0, 0);
			}
}

if (P2_died_once == 0 && P2_calculate_score == 0)
{
	P2_calculate_score = 1;
	global.P2Score--;
	Player2.fall_out = false;
	P2_died_once = 1;
}

	
if (Player2 != noone && Player1.fall_out == true)
{
	P2_stop = 0;
	P2_add_on = 0;
	//show_debug_message(string(global.P1Score));	
}

if (P2_stop == 0 && P2_add_on == 0)
{
	P2_stop = 1;
	global.P2Score++;
	P2_add_on = 1;
	Player2.fall_out = false;
}