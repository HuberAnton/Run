/// @description Insert description here
// You can write your code in this editor

if(global.activePlatforms <= random_range(0, global.activePlatforms))
{

repeat(irandom_range(2, 2))
{
	var tempHeight = irandom_range(100, room_height-50);
	
	// Do not want platforms to spawner on top of each other.
	if(!place_meeting(room_width + 33, tempHeight, obj_spawner_platform) 
	// Do not want platforms to spawn right next to old platforms on same row.
	&& !place_meeting(room_width - 33, tempHeight, obj_platform)
	
	&& !place_meeting(room_width + 32,tempHeight + 32, obj_spawner_platform)
	
	&& !place_meeting(room_width + 32,tempHeight - 32, obj_spawner_platform)
	)
	{
		var temp = instance_create_layer(room_width + 32,tempHeight,"Instances",obj_spawner_platform);
	
		temp.platformsToCreate = irandom_range(3, 50);
	
		temp.makePlatforms = true;
		global.activePlatforms++;
	}
}

}
// Choose platforms to spawn

// Don's spawn platforms within 1 space of each other.



// Choose to stop spawning ground