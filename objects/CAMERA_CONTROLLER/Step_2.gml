/// @description Insert description here
// You can write your code in this editor

var num_of_players = instance_number(obj_Player_manager);
var new_y = 0; //Follows highest player

for (index = 0; index < num_of_players; index++)
{
	var find_player = instance_find(obj_Player_manager, index);
	
	if (!find_player.fall_out)
	{
		new_y = find_player.y - (camera_get_view_height(view_camera[0])/2);
		break;
	}
}

cam_y = lerp(camera_get_view_y(view_camera[0]), new_y, 0.6);

//Puts room boundaries
cam_y = max(cam_y, 0);
cam_y = min(cam_y, room_height- camera_get_view_height(view_camera[0]));
x = 0;

camera_set_view_pos(view_camera[0], x, cam_y);

if (find_player.dying == true && find_player.instance_respawn + 3000 < current_time)
	{
		show_debug_message("Revived!");
		find_player.y = 1400;
		find_player.y_vel = -30;
		find_player.dying = false;
		find_player.image_index = 1;
		find_player.fall_out = false;
	}