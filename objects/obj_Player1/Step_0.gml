/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))) 
{
	x_vel-=5;	
}
if (keyboard_check(ord("D"))) 
{
	x_vel += 5;
}

// Inherit the parent event, run the logic defined in obj_player's Step Event now that we have our input
event_inherited();