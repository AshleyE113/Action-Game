/// @description Insert description here
// You can write your code in this editor
//Wow wee
x_movement = round(x_vel);
y_movement = round(y_vel);
//Player sprites

x_vel = x_vel < 0 ? max (x_vel, -max_x_vel) : min(x_vel, max_x_vel);

/*
if (x_vel < 0) 
{
x_vel = max (x_vel, -max_x_vel);
}
else
{
x_vel = min(x_vel, max_x_vel);
 
}

*/
//Brings the player down after jump
y_vel += grav;

//Rounds values up so GM can work with whole numbers 



//Redirects player once they hit the room's width
for (var i = 0; i < abs(x_movement); i++)
{
	
	if (x+sign(x_vel) >= room_width - sprite_width/2)
	{
		x_vel *= -1;
		
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
	
	} else if (x+sign(x_vel) <= sprite_width/2)
		{
			
		if (!audio_is_playing(snd_wall))
		{
			audio_play_sound(snd_wall, 0, 0);	
		}
		
		x_vel = -x_vel;	
		
		}
	x += sign(x_vel);
}

//Coll with top of cloud
var sign_of_y = sign(y_vel);
//While alive
if (!fall_out)
{
	while (y_movement != 0)
	{
		var colliding = false;
		var collide_with_this = noone;
		var hit_me = noone;
		//COLLISON BREAK DOWN 
		if (sign_of_y >= 0) // only check collisions if we're moving down
		{
			//image_index = 0;
			collide_with_this = instance_place(x, y+ sign_of_y, obj_cloud); //Player collides with cloud instance
			hit_me = instance_place(x, y+ sign_of_y, obj_Player_manager);
//One Way Colision________________________________________________________________
		//If not colliding...
		//Collide_with_this = Cloud
image_index = 0;
	if (collide_with_this != noone && dying != true)
		{
			
			if (!audio_is_playing(snd_jump))
				{
					audio_play_sound(snd_jump, 0, 0);
				}
						
			if (place_meeting(x,y, collide_with_this) == false)
			{
					colliding = true;
					
					
				if (collide_with_this.last_thing_touched == self) //Collided with cloud
				{
					instance_destroy(collide_with_this);
					collide_with_this.image_index = 3;
				
				}
					else 
					{
						collide_with_this.last_thing_touched = self;
						collide_with_this.time_since_touched = 0;
						
						
					}
				}
			}
		}
	
//______________________________________________________________________________________		
		//hit_me = player

		
		if (hit_me != noone)
			{
				if (!audio_is_playing(snd_stomp))
				{
					audio_play_sound(snd_stomp, 0, 0);
				}
			
				hit_me.image_index = 2;	
				if (place_meeting(x,y, hit_me) == false)
				{
					colliding = true;
					hit_me.dying = true;
					hit_me.image_index = 2;
					
					if (hit_me.dying == true)
					{
						hit_me.image_index = 2;
							//hit_me.image_index = 2;	
						hit_me.instance_respawn = current_time;
						hit_me.image_index = 2;
					}
						hit_me.image_index = 2;
				}
				else 
				{	
					//hit_me.image_index = 0;
					hit_me = self;
					//hit_me.alarm[1] = -1;
				}
			}
//_____________________________________________________________________________________		
		if (!colliding)
		{
			y+= sign_of_y;
			y_movement -= sign_of_y;
		}
		else
		{
			y = y + sign_of_y;
			y_vel = jump_vel;

			image_speed = 1;
			image_index = 0;
			break;
		}
	}
}

//Death animation_________________________________________________________________

if (y> 1100)
{
fall_out = true;	
dying = true;

}

if (dying == true)
{
if (!audio_is_playing(snd_revive))
		{
			audio_play_sound(snd_revive, 0, 0);
		}	
}

if (place_meeting(x,y, obj_floor) && !dying)
{	
	instance_respawn = current_time;
}
//Respawn

	if (dying == true && instance_respawn + 3000 < current_time)
	{
		show_debug_message("Revived!");
		y = 1100;
		y_vel = -30;
		dying = false;
		image_index = 1;
		fall_out = false;

	}