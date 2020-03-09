/// @description Insert description here
// You can write your code in this editor
draw_self();

P1 = instance_find(obj_Player_manager, 0);

P2 = instance_find(obj_Player_manager, 1);

if (place_meeting(x,y+sign(y_vel), P2))
{
	draw_sprite_ext(spr_hit, all, x, y, 1, 1, 30, c_white, 1);
}

if (place_meeting(x,y+sign(y_vel), P1))
{
	draw_sprite_ext(spr_hit, all, x, y, 1, 1, 30, c_white, 1);
}

if (place_meeting(x,y, obj_floor))
{
	//depth = 200;
draw_sprite_ext(spr_hit, all, x,y, 1, 1, 30, c_white, 1);
}