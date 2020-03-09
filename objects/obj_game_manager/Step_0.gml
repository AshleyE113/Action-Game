/// @description Insert description here
// You can write your code in this editor
//Cloud Spawn
current_cloud_num = instance_number(obj_cloud);

var target_num_of_clouds = 0;
if (current_cloud_num == 0)
{
target_num_of_clouds = max_cloud_number;
}
else
{
target_num_of_clouds = min_cloud_num;	
}

//Spawns between our min and max vals

if (current_cloud_num < max_cloud_number)
{
cloud_respawn--;
	if (cloud_respawn == 0)
	{
	var column = irandom_range(0, array_length_1d(CLOUD_SPAWN_ARRAY_X) - 1);
	var row = irandom_range(0, array_length_1d(CLOUD_SPAWN_ARRAY_Y) - 1);

	var spawn_x = CLOUD_SPAWN_ARRAY_X[column];
	var spawn_y = CLOUD_SPAWN_ARRAY_Y[row];
	var new_clouds = instance_create_layer(spawn_x, spawn_y, "Clouds", obj_cloud);
		current_cloud_num+=1;
		cloud_respawn = 2;	
	}


}
