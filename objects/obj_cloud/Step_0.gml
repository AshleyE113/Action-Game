/// @description Insert description here
// You can write your code in this editor

grow_rate--;

if (time_since_touched >= 0) 
{
	image_index = 3;
	instance_destroy(self);
	instance_destroy(self);	
	
		
}


if (grow_rate == 66)
{
image_index = 1;
}

if (grow_rate == 33)
{
image_index = 2;
}



