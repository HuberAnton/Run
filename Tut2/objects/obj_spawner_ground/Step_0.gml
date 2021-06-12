/// @description Insert description here
// You can write your code in this editor

if(place_empty(x+32,y,obj_platform)&& active)
{
	var temp = instance_create_layer(x+32,y,"Instances",obj_platform);
	
	// Check if a sprite before
	if(!place_meeting(x-32,y,obj_platform))
	{
		temp.sprite_index = spr_obj_ground_left;	
	}
	else if(stop)
	{
		temp.sprite_index = spr_obj_ground_right;
		active = false;	
	}
	else
	{
	temp.sprite_index = spr_obj_ground_middle;
	}
	
}
