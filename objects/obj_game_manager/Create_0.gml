/// @description Insert description here
// You can write your code in this editor
current_cloud_num = 0;

min_cloud_num = 20;

max_cloud_number = 30;

//Cloud spawn (Play with numbers
//X

var cloud_width = sprite_get_width(spr_Clouds);

var x_buffer = cloud_width/2 //makes a margin for the clouds

var x_spacing = 1;

CLOUD_SPAWN_ARRAY_X = [];

var x_index = 0;

while (x_buffer + (cloud_width * x_spacing * x_index) < room_width)
{
CLOUD_SPAWN_ARRAY_X[x_index] = x_buffer + (cloud_width * x_spacing * x_index);
x_index++;
}

//Y

var cloud_height = sprite_get_height(spr_Clouds);

var y_buffer = cloud_height*2 //makes a margin for the clouds

var y_spacing = 2;

CLOUD_SPAWN_ARRAY_Y = [];

var y_index = 0;

while (y_buffer + (cloud_height * y_spacing * y_index) < room_height-200)
{
CLOUD_SPAWN_ARRAY_Y[y_index] = y_buffer + (cloud_height * y_spacing * y_index);
y_index++;
}

cloud_respawn = 3; 

repeat (max_cloud_number)
{	
	var column = irandom_range(0, array_length_1d(CLOUD_SPAWN_ARRAY_X) - 1);
	var row = irandom_range(0, array_length_1d(CLOUD_SPAWN_ARRAY_Y) - 1);

	var spawn_x = CLOUD_SPAWN_ARRAY_X[column];
	var spawn_y = CLOUD_SPAWN_ARRAY_Y[row];
	var new_clouds = instance_create_layer(spawn_x, spawn_y, "Clouds", obj_cloud);
}