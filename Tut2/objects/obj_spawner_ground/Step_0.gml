/// @description Insert description here
// You can write your code in this editor

if(place_empty(x+50,y,obj_platform))
{
	var temp = instance_create_layer(x+50,y,"Instances",obj_platform);
	temp.sprite_index = spr_obj_ground_middle;

	// Keep shuffling the block over until 
	// right next to other block.
	
	if(place_meeting(temp.x - 1, temp.y, obj_platform))
	{

		temp.x -= 2;
		show_debug_message("True");
	}
}
