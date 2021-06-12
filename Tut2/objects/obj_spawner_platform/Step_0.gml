/// @description Insert description here
// You can write your code in this editor


if(makePlatforms)
{
	//// More of a safety atm
	//if(createdPlatforms >= platformsToCreate)
	//{
	//	makePlatforms = false;	
	//}
	
	// Need to check if creation location is empty
	if(place_empty(x+32,y,obj_platform))
	{
	// Create a platfrom at its position.
	createdPlatforms++;
	
	var inst = instance_create_layer(x+32,y,"Instances",obj_platform);
	
	// If it is the first piece or last piece we will use the 
	// specidic sprites otherwise.
	if(createdPlatforms == 1)
	{
		inst.sprite_index = spr_obj_ground_left;	
	}
	else if(createdPlatforms == platformsToCreate)
	{
		inst.sprite_index = spr_obj_ground_right;
		makePlatforms = false;
	}
	else
	{
		inst.sprite_index = spr_obj_ground_middle;	
	}
	}
}